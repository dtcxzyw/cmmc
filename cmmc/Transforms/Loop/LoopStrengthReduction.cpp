/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2023 CMMC Authors
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
        http://www.apache.org/licenses/LICENSE-2.0
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/Analysis/SCEVAnalysis.hpp>
#include <cmmc/Analysis/SCEVExpr.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Bits.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>

CMMC_NAMESPACE_BEGIN

extern Flag enableAggressive;

class LoopStrengthReduction final : public TransformPass<Function> {
    static Value* buildAddRec(const Type* type, PhiInst* refPhiInst, SCEV* scevExpr, Block* block,
                              IntrusiveListIterator<Instruction> iter, uint32_t order) {
        if(order + 1 == scevExpr->operands.size()) {
            return ConstantInteger::get(type, scevExpr->operands[order]->constant);
        }
        auto phi = make<PhiInst>(type);
        auto increment = buildAddRec(type, refPhiInst, scevExpr, block, iter, order + 1);
        auto inc = make<BinaryInst>(InstructionID::Add, phi, increment);
        const auto initial = ConstantInteger::get(type, scevExpr->operands[order]->constant);

        for(auto& [pred, val] : refPhiInst->incomings()) {
            if(pred == scevExpr->loop->latch) {
                phi->addIncoming(pred, inc);
            } else {
                phi->addIncoming(pred, initial);
            }
        }
        phi->insertBefore(scevExpr->loop->header, scevExpr->loop->header->instructions().begin());
        inc->insertBefore(block, iter);
        return phi;
    }

    static uint32_t getPhiCount(Block* block) {
        uint32_t phiCount = 0;
        for(auto& phi : block->instructions()) {
            if(phi.getInstID() == InstructionID::Phi) {
                ++phiCount;
            } else
                break;
        }
        return phiCount;
    }

    static constexpr uint32_t maxPhiCount = 9;

    static bool tryExpandSCEV(const SCEVAnalysisResult& scev, const DominateAnalysisResult& dom, Block* block, Instruction& inst,
                              bool beforeLoopParallel) {
        if(inst.getInstID() == InstructionID::Add || inst.getInstID() == InstructionID::Phi)
            return false;
        Value* v1;
        intmax_t i1;
        if(mul(any(v1), int_(i1))(MatchContext<Value>{ &inst }) && isPowerOf2(static_cast<size_t>(i1)))
            return false;

        auto scevExpr = scev.query(&inst);
        if(scevExpr && scevExpr->loop && scevExpr->instID == SCEVInstID::AddRec) {
            if(!dom.dominate(block, scevExpr->loop->latch))
                return false;

            bool allConstant = true;
            for(auto& operand : scevExpr->operands) {
                if(operand->instID != SCEVInstID::Constant) {
                    allConstant = false;
                    break;
                }
            }

            if(!allConstant)
                return false;
            if(scevExpr->operands.empty())
                return false;

            auto refPhi = scevExpr->loop->header->instructions().front();
            if(refPhi->getInstID() != InstructionID::Phi)
                return false;

            const auto phiCount = getPhiCount(scevExpr->loop->header);
            if(phiCount + scevExpr->operands.size() - 1 > maxPhiCount)
                return false;

            auto refPhiInst = refPhi->as<PhiInst>();
            // FIXME
            if(refPhiInst->incomings().size() != 2)
                return false;
            // Don't create too many phis
            if(beforeLoopParallel && scevExpr->operands.size() > 2)
                return false;

            const auto val = buildAddRec(inst.getType(), refPhiInst, scevExpr, block, inst.asIterator(), 0);
            inst.replaceWith(val);
            return true;
        }

        return false;
    }

    static bool tryExpandMulAddRecWithLoopInv(const SCEVAnalysisResult& scev, const DominateAnalysisResult& dom, Block* block,
                                              Instruction& inst, const mir::Target& target, Block* entryBlock) {
        Value *v1, *v2;
        if(mul(any(v1), any(v2))(MatchContext<Value>{ &inst })) {
            Value *initial, *inc, *step = nullptr;
            const Loop* loop;
            auto matchAddRec = [&](Value* val) {
                auto scevExpr = scev.query(val);
                if(scevExpr && scevExpr->instID == SCEVInstID::AddRec && scevExpr->loop && scevExpr->operands.size() == 2 &&
                   scevExpr->operands[0]->instID == SCEVInstID::Constant &&
                   scevExpr->operands[1]->instID == SCEVInstID::Constant) {
                    loop = scevExpr->loop;
                    initial = ConstantInteger::get(val->getType(), scevExpr->operands[0]->constant);
                    inc = ConstantInteger::get(val->getType(), scevExpr->operands[1]->constant);
                    return true;
                }
                return false;
            };
            auto matchLoopInvariant = [&](Value* val) {
                if(val->isConstant())  // should be handled by SCEV
                    return false;
                if(!val->getBlock())
                    return true;
                if(val->getBlock() == loop->header)
                    return false;
                return dom.dominate(val->getBlock(), loop->header);
            };
            if(matchAddRec(v1) && matchLoopInvariant(v2)) {
                step = v2;
            } else if(matchAddRec(v2) && matchLoopInvariant(v1)) {
                step = v1;
            }
            if(!step)
                return false;
            if(!dom.dominate(block, loop->latch))
                return false;

            auto refPhi = loop->header->instructions().front();
            if(refPhi->getInstID() != InstructionID::Phi)
                return false;
            const auto phiCount = getPhiCount(loop->header);
            if(phiCount + 1 > maxPhiCount)
                return false;

            auto refPhiInst = refPhi->as<PhiInst>();
            // FIXME
            if(refPhiInst->incomings().size() != 2)
                return false;

            IRBuilder builder{ target };
            if(step->getBlock()) {
                builder.setInsertPoint(step->getBlock(), std::next(step->as<Instruction>()->asIterator()));
            } else {
                builder.setInsertPoint(entryBlock, std::prev(entryBlock->instructions().end()));
            }
            const auto base = builder.makeOp<BinaryInst>(InstructionID::Mul, step, initial);
            const auto increament = builder.makeOp<BinaryInst>(InstructionID::Mul, step, inc);
            builder.setInsertPoint(refPhi->getBlock(), refPhi->getBlock()->instructions().begin());
            const auto val = builder.createPhi(base->getType());
            builder.setInsertPoint(loop->latch, std::prev(loop->latch->instructions().end()));
            const auto next = builder.makeOp<BinaryInst>(InstructionID::Add, val, increament);
            for(auto& [pred, incoming] : refPhiInst->incomings()) {
                if(pred == loop->latch) {
                    val->addIncoming(pred, next);
                } else {
                    val->addIncoming(pred, base);
                }
            }
            inst.replaceWith(val);

            return true;
        }

        return false;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        // auto& loopInfo = analysis.get<LoopAnalysis>(func);
        auto& scev = analysis.get<SCEVAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);

        bool modified = false;
        for(auto block : func.blocks()) {
            auto& instructions = block->instructions();

            for(auto& inst : instructions) {
                if((inst.getInstID() == InstructionID::Add || inst.getInstID() == InstructionID::Phi) &&
                   inst.users().useCount() < 4)
                    continue;

                if(tryExpandSCEV(scev, dom, block, inst,
                                 enableAggressive.get() && !func.attr().hasAttr(FunctionAttribute::ParallelBody))) {
                    modified = true;
                    continue;
                }
                if(tryExpandMulAddRecWithLoopInv(scev, dom, block, inst, analysis.module().getTarget(), func.entryBlock())) {
                    modified = true;
                    continue;
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopStrengthReduction"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopStrengthReduction);

CMMC_NAMESPACE_END

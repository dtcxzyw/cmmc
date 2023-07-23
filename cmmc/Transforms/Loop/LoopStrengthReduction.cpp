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
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>

CMMC_NAMESPACE_BEGIN

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

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        // auto& loopInfo = analysis.get<LoopAnalysis>(func);
        auto& scev = analysis.get<SCEVAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);

        bool modified = false;
        for(auto block : func.blocks()) {
            auto& instructions = block->instructions();

            for(auto& inst : instructions) {
                if(inst.getInstID() == InstructionID::Add || inst.getInstID() == InstructionID::Phi)
                    continue;
                auto scevExpr = scev.query(&inst);
                if(scevExpr && scevExpr->loop && scevExpr->instID == SCEVInstID::AddRec) {
                    if(!dom.dominate(block, scevExpr->loop->latch))
                        continue;

                    bool allConstant = true;
                    for(auto& operand : scevExpr->operands) {
                        if(operand->instID != SCEVInstID::Constant) {
                            allConstant = false;
                            break;
                        }
                    }

                    if(!allConstant)
                        continue;
                    if(scevExpr->operands.empty())
                        continue;

                    auto refPhi = scevExpr->loop->header->instructions().front();
                    if(refPhi->getInstID() != InstructionID::Phi)
                        continue;
                    auto refPhiInst = refPhi->as<PhiInst>();
                    // FIXME
                    if(refPhiInst->incomings().size() != 2)
                        continue;

                    const auto val = buildAddRec(inst.getType(), refPhiInst, scevExpr, block, inst.asIterator(), 0);
                    inst.replaceWith(val);
                    modified = true;
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

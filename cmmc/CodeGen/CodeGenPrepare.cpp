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

// Utils before lowering

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/SCEVAnalysis.hpp>
#include <cmmc/CodeGen/MultiplyByConstant.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <limits>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class DuplicateGEP final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        // TODO: common base opt

        for(auto k = 0; k < 2; ++k)
            for(auto block : func.blocks()) {
                std::unordered_map<Instruction*, uint64_t> instId;
                const auto increment = std::numeric_limits<uint64_t>::max() / 2 / (block->instructions().size() + 2);
                uint64_t idx = increment;
                for(auto& inst : block->instructions()) {
                    instId[&inst] = idx;
                    idx += increment;
                }

                for(auto& inst : block->instructions()) {
                    if(inst.getInstID() == InstructionID::Load || inst.getInstID() == InstructionID::Store ||
                       inst.getInstID() == InstructionID::PtrCast) {
                        const auto addr = inst.getOperand(0);
                        if(addr->isInstruction() && addr->getBlock() != block) {
                            const auto addrInst = addr->as<Instruction>();
                            if(addrInst->getInstID() != InstructionID::GetElementPtr &&
                               addrInst->getInstID() != InstructionID::PtrCast)
                                continue;

                            if(addrInst->getInstID() == InstructionID::PtrCast) {
                                if(!addrInst->getOperand(0)->is<GetElementPtrInst>())
                                    continue;
                            }

                            bool usedByPhi = false;
                            uint64_t minId = std::numeric_limits<uint64_t>::max();
                            Instruction* firstUse = nullptr;
                            for(auto user : addrInst->users()) {
                                if(user->getBlock() == block) {
                                    if(user->getInstID() == InstructionID::Phi) {
                                        usedByPhi = true;
                                        break;
                                    }
                                    auto id = instId.at(user);
                                    if(id < minId) {
                                        minId = id;
                                        firstUse = user;
                                    }
                                }
                            }

                            if(usedByPhi)
                                continue;

                            const auto dup = addrInst->clone();
                            dup->insertBefore(block, firstUse->asIterator());
                            const auto l = dup->asIterator() == block->instructions().begin() ?
                                0 :
                                instId.at(&*std::prev(dup->asIterator()));
                            const auto r = instId.at(firstUse);
                            instId[dup] = (l + r) / 2;
                            addrInst->replaceWithInBlock(block, dup);
                            modified = true;
                        }
                    }
                }
            }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "DuplicateGEP"sv;
    }
};

CMMC_TRANSFORM_PASS(DuplicateGEP);

class DuplicateCmp final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() == InstructionID::ConditionalBranch) {
                const auto cond = terminator->getOperand(0);
                if(cond->getBlock() && cond->getBlock() != block && cond->is<CompareInst>()) {
                    const auto condInst = cond->as<CompareInst>();
                    if(condInst->hasExactlyOneUse()) {
                        condInst->insertBefore(block, terminator->asIterator());
                        modified = true;
                    }
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "DuplicateCmp"sv;
    }
};

CMMC_TRANSFORM_PASS(DuplicateCmp);

class SDivWithPowerOf2 final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        bool modified = false;
        const auto i32 = IntegerType::get(32);
        for(auto block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                Value *v1, *v2, *one;
                if(inst.getType()->isSame(i32) &&
                   sdiv(any(v1), shl(capture(cint_(1), one), any(v2)))(MatchContext<Value>{ &inst })) {
                    if(inst.getOperand(1)->getBlock() == block)
                        continue;

                    IRBuilder builder{ analysis.module().getTarget() };
                    builder.setInsertPoint(block, inst.asIterator());

                    inst.mutableOperands()[1]->resetValue(builder.makeOp<BinaryInst>(InstructionID::Shl, one, v2));
                    modified = true;
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "SDivWithPowerOf2"sv;
    }
};

CMMC_TRANSFORM_PASS(SDivWithPowerOf2);

class SCEVGEP2Phi final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& dom = analysis.get<DominateAnalysis>(func);

        bool modified = false;
        std::vector<Block*> newBlocks;
        std::unordered_set<Instruction*> newGEPs;
        for(auto block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::GetElementPtr) {
                    if(newGEPs.count(&inst))
                        continue;

                    const auto idx = inst.arguments().back();
                    if(!idx->getType()->isInteger())
                        continue;
                    if(!idx->is<PhiInst>())
                        continue;

                    const auto idxPhi = idx->as<PhiInst>();
                    bool allInvariant = true;
                    for(auto operand : inst.operands()) {
                        if(operand == idxPhi)
                            continue;
                        if(operand->getBlock() &&
                           (operand->getBlock() == idxPhi->getBlock() ||
                            !dom.dominate(operand->getBlock(), idxPhi->getBlock()))) {
                            allInvariant = false;
                            break;
                        }
                    }
                    if(!allInvariant)
                        continue;

                    bool backedge = false;
                    for(auto& [pred, val] : idxPhi->incomings()) {
                        if(dom.dominate(idxPhi->getBlock(), pred)) {
                            Value *idxPhiVal = idxPhi, *inc;
                            if(add(exactly(idxPhiVal), any(inc))(MatchContext<Value>{ val->value })) {
                                backedge = true;
                                break;
                            }
                        }
                    }
                    if(!backedge)
                        continue;

                    const auto phi = make<PhiInst>(inst.getType());
                    std::vector<std::pair<Block*, Block*>> retargetWorkList;
                    for(auto& [pred, val] : idxPhi->incomings()) {
                        if(val->value == idxPhi) {
                            phi->addIncoming(pred, phi);
                            continue;
                        }

                        Value *inc, *idxPhiVal = idxPhi;
                        Instruction* newGep;
                        if(add(exactly(idxPhiVal), any(inc))(MatchContext<Value>{ val->value })) {
                            newGep = make<GetElementPtrInst>(phi, std::vector<Value*>{ inc });
                        } else {
                            newGep = inst.clone();
                            (*std::prev(newGep->mutableOperands().end(), 2))->resetValue(val->value);
                        }
                        newGEPs.insert(newGep);

                        phi->addIncoming(pred, newGep);
                        if(pred->getTerminator()->getInstID() == InstructionID::Branch) {
                            newGep->insertBefore(pred, std::prev(pred->instructions().end()));
                        } else {
                            const auto prebody = make<Block>(&func);
                            newGep->insertBefore(prebody, prebody->instructions().begin());
                            const auto terminator = make<BranchInst>(idxPhi->getBlock());
                            terminator->insertBefore(prebody, prebody->instructions().end());
                            newBlocks.push_back(prebody);
                            phi->addIncoming(prebody, newGep);

                            retargetWorkList.emplace_back(pred, prebody);
                            resetTarget(pred->getTerminator()->as<BranchInst>(), idxPhi->getBlock(), prebody);
                        }
                    }
                    phi->insertBefore(idxPhi->getBlock(), idxPhi->getBlock()->instructions().begin());
                    for(auto [pred, prebody] : retargetWorkList)
                        retargetBlock(idxPhi->getBlock(), pred, prebody);
                    inst.replaceWith(phi);

                    modified = true;
                }
            }
        }
        for(auto block : newBlocks)
            func.blocks().push_back(block);

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "SCEVGEP2Phi"sv;
    }
};

CMMC_TRANSFORM_PASS(SCEVGEP2Phi);

CMMC_NAMESPACE_END

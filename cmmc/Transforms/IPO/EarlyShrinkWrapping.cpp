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

#include <algorithm>
#include <cmmc/Analysis/PointerBaseAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <queue>
#include <string_view>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class EarlyShrinkWrapping final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        if(func.attr().hasAttr(FunctionAttribute::NoRecurse))
            return false;
        if(!func.isUsed())
            return false;
        auto& pointerBase = analysis.get<PointerBaseAnalysis>(func);

        auto terminator = func.entryBlock()->getTerminator();
        if(terminator->getInstID() != InstructionID::ConditionalBranch)
            return false;
        const auto branch = terminator->as<BranchInst>();
        if(branch->getTrueTarget() == branch->getFalseTarget())
            return false;
        if(branch->getTrueTarget()->getTerminator()->getInstID() != InstructionID::Ret &&
           branch->getFalseTarget()->getTerminator()->getInstID() != InstructionID::Ret)
            return false;

        auto exitBlock = branch->getTrueTarget()->getTerminator()->getInstID() == InstructionID::Ret ? branch->getTrueTarget() :
                                                                                                       branch->getFalseTarget();
        auto normalBlock = branch->getTrueTarget()->getTerminator()->getInstID() == InstructionID::Ret ?
            branch->getFalseTarget() :
            branch->getTrueTarget();
        // TODO: check both block

        std::unordered_set<Value*> used;
        used.insert(branch->getOperand(0));
        for(auto& inst : exitBlock->instructions()) {
            if(inst.getInstID() == InstructionID::Ret) {
                if(!inst.operands().empty())
                    used.insert(inst.getOperand(0));
            } else if(inst.getInstID() == InstructionID::Phi) {
                used.insert(inst.as<PhiInst>()->incomings().at(func.entryBlock())->value);
            } else if(!isMovableExpr(inst, false)) {
                return false;
            } else {
                for(auto operand : inst.operands())
                    used.insert(operand);
            }
        }

        Instruction* latestKeep = nullptr;
        for(auto& inst : func.entryBlock()->instructions()) {
            if(inst.getInstID() == InstructionID::Alloc) {
                latestKeep = &inst;
            } else if(inst.isTerminator()) {
                continue;
            } else if(used.count(&inst)) {
                latestKeep = &inst;
            } else if(!isNoSideEffectExpr(inst)) {
                if(inst.getInstID() == InstructionID::Store) {
                    const auto base = pointerBase.lookup(inst.getOperand(0));
                    if(base && base->is<StackAllocInst>()) {
                        continue;  // invisible for early exit
                    }
                }
                latestKeep = &inst;
            }
        }
        if(!latestKeep)
            return false;
        if(std::next(latestKeep->asIterator())->isTerminator())
            return false;

        const auto succBlock = make<Block>(&func);
        succBlock->setLabel(String::get("succ"));
        // entry -> succBlock -> normalBlock
        func.blocks().push_back(succBlock);
        for(auto it = std::next(latestKeep->asIterator()); it != func.entryBlock()->getTerminator()->asIterator();) {
            const auto next = std::next(it);
            it->insertBefore(succBlock, succBlock->instructions().end());
            it = next;
        }

        const auto succTerminator = make<BranchInst>(normalBlock);
        succTerminator->insertBefore(succBlock, succBlock->instructions().end());

        resetTarget(terminator, normalBlock, succBlock);
        retargetBlock(normalBlock, func.entryBlock(), succBlock);
        return true;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "EarlyShrinkWrapping"sv;
    }
};

CMMC_TRANSFORM_PASS(EarlyShrinkWrapping);

CMMC_NAMESPACE_END

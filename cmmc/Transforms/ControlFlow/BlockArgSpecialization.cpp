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
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/BlockTripCountEstimation.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

constexpr uint32_t maxInlineBlockSize = 5;

class BlockArgSpecialization final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& blockTripCount = analysis.get<BlockTripCountEstimation>(func);
        if(!blockTripCount.isAvailable())
            return false;
        auto& blocks = func.blocks();

        bool modified = false;
        std::decay_t<decltype(blocks)>::const_iterator next;
        for(auto iter = blocks.cbegin(); iter != blocks.cend(); iter = next) {
            next = std::next(iter);
            const auto block = *iter;
            const auto terminator = block->getTerminator();

            if(!terminator->isBranch())
                continue;

            const auto freq = blockTripCount.query(block);
            if(freq < coldBlockThreshold)
                continue;
            if(freq > primaryPathThreshold)
                continue;

            const auto branch = terminator->as<BranchInst>();
            if(branch->getTrueTarget() == branch->getFalseTarget())
                continue;

            const auto handleTarget = [&](Block*& targetBlock) {
                if(targetBlock->instructions().size() > maxInlineBlockSize)
                    return;
                if(hasCall(*targetBlock))
                    return;
                const auto targetTerminator = targetBlock->getTerminator();
                if(targetTerminator->isBranch()) {
                    const auto targetBranch = targetTerminator->as<BranchInst>();
                    if(targetBranch->getTrueTarget() == targetBlock || targetBranch->getFalseTarget() == targetBlock) {
                        return;  // handled by loop rotate
                    }
                } else {
                    // reduce returns
                    return;
                }

                bool hasPhi = false;
                for(auto& inst : targetBlock->instructions()) {
                    if(inst.getInstID() == InstructionID::Phi) {
                        hasPhi = true;
                        if(!inst.as<PhiInst>()->incomings().at(block)->value->isConstant())
                            return;
                    } else
                        break;
                }
                if(!hasPhi)
                    return;

                const auto targetBlockFreq = blockTripCount.query(targetBlock);
                if(targetBlockFreq <= freq * 0.5)
                    return;

                // TODO: remove this limitation by creating new phi nodes
                if([&] {
                       std::unordered_set<Value*> instructions;
                       for(auto& inst : targetBlock->instructions()) {
                           instructions.insert(&inst);
                       }
                       for(auto otherBlock : blocks) {
                           if(otherBlock == targetBlock)
                               continue;
                           for(auto& inst : otherBlock->instructions()) {
                               for(auto operand : inst.operands()) {
                                   if(operand->isInstruction() && instructions.count(operand)) {
                                       return true;
                                   }
                               }
                           }
                       }
                       return false;
                   }())
                    return;

                ReplaceMap replace;
                const auto newBlock = targetBlock->clone(replace, false);
                blocks.insert(next, newBlock);

                for(auto& inst : newBlock->instructions()) {
                    if(inst.getInstID() == InstructionID::Phi) {
                        inst.as<PhiInst>()->keepOneIncoming(block);
                    } else
                        break;
                }

                if(targetTerminator->isBranch()) {
                    const auto targetBranch = targetTerminator->as<BranchInst>();
                    applyForSuccessors(targetBranch, [&](Block* target) {
                        copyTarget(target, targetBlock, newBlock);  // NOLINT
                    });
                }
                removePhi(block, targetBlock);

                targetBlock = newBlock;
                modified = true;
            };

            applyForSuccessors(branch, handleTarget);
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "BlockArgSpecialization"sv;
    }
};

CMMC_TRANSFORM_PASS(BlockArgSpecialization);

CMMC_NAMESPACE_END

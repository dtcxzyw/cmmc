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
#include <cmmc/Analysis/BlockTripCountEstimation.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iostream>
#include <unordered_set>
#include <vector>

// Only process inter-block code moving
// Intra-block code moving will be handled at the code generation prepare stage.

CMMC_NAMESPACE_BEGIN

class CodeMove final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& blockTripCount = analysis.get<BlockTripCountEstimation>(func);
        if(!blockTripCount.isAvailable())
            return false;

        const auto& dom = analysis.get<DominateAnalysis>(func);

        bool modified = false;
        auto& target = analysis.module().getTarget();

        for(auto block : func.blocks()) {
            if(block == func.entryBlock())
                continue;

            const auto freq = blockTripCount.query(block);
            if(freq < coldBlockThreshold)
                continue;

            std::vector<Instruction*> moveOut;
            std::unordered_set<Value*> moveOutSet;

            for(auto& inst : block->instructions()) {
                if(!isMovableExpr(inst, true))
                    continue;

                // don't touch not natively supported instructions as GVN does
                if(!target.isNativeSupported(inst.getInstID()))
                    continue;

                bool canMove = true;
                for(auto operand : inst.operands()) {
                    if(operand->getBlock() == block) {
                        if(!moveOutSet.count(operand)) {
                            canMove = false;
                            break;
                        }
                    }
                }

                if(canMove) {
                    moveOut.push_back(&inst);
                    moveOutSet.insert(&inst);
                }
            }

            std::vector<std::pair<Instruction*, Block*>> moveTarget;
            std::unordered_map<Value*, Block*> moveTargetSet;

            for(auto inst : moveOut) {
                Block* targetBlock = func.entryBlock();
                auto updateTargetBlock = [&](Block* newBlock) {
                    if(targetBlock == newBlock)
                        return;

                    if(dom.dominate(targetBlock, newBlock)) {
                        targetBlock = newBlock;
                    } else {
                        assert(dom.dominate(newBlock, targetBlock));
                    }
                };

                bool valid = true;
                for(auto operand : inst->operands()) {
                    if(operand->getBlock() == block) {
                        if(auto iter = moveTargetSet.find(operand); iter != moveTargetSet.cend())
                            updateTargetBlock(iter->second);
                        else {
                            valid = false;
                            break;
                        }
                    } else if(operand->getBlock())
                        updateTargetBlock(operand->getBlock());
                }

                assert(targetBlock != block);

                if(!valid)
                    continue;

                // inst->dumpInst(std::cerr);
                // std::cerr << " : " << freq << " => " << blockTripCount.query(targetBlock) << '\n';
                if(blockTripCount.query(targetBlock) + significantBlockTripCountDifference >= freq)
                    continue;

                auto& dest = targetBlock->instructions();
                inst->insertBefore(targetBlock, std::prev(dest.end()));
                moveTargetSet.emplace(inst, targetBlock);
                modified = true;
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "CodeMove"sv;
    }
};

CMMC_TRANSFORM_PASS(CodeMove);

CMMC_NAMESPACE_END

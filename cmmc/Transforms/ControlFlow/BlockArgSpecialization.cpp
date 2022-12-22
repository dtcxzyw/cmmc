/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2022 Yingwei Zheng and Bingzhen Wang
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
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

constexpr uint32_t maxInlineBlockSize = 64;

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

            const auto branch = terminator->as<ConditionalBranchInst>();

            const auto handleTarget = [&](BranchTarget& target) {
                const auto targetBlock = target.getTarget();
                if(!targetBlock)
                    return;
                if(targetBlock->instructions().size() > maxInlineBlockSize)
                    return;

                if(!std::any_of(target.getArgs().cbegin(), target.getArgs().cend(), [](Value* arg) { return arg->isConstant(); }))
                    return;

                const auto targetBlockFreq = blockTripCount.query(targetBlock);
                if(targetBlockFreq - freq <= significantBlockTripCountDifference)
                    return;

                ReplaceMap replace;
                const auto newBlock = targetBlock->clone(replace);
                blocks.insert(next, newBlock);
                target.resetTarget(newBlock);
                modified = true;
            };

            handleTarget(branch->getTrueTarget());
            handleTarget(branch->getFalseTarget());
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "BlockArgSpecialization"sv;
    }
};

CMMC_TRANSFORM_PASS(BlockArgSpecialization);

CMMC_NAMESPACE_END

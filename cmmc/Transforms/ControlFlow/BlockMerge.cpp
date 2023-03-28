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

// func foo(int a, int b) -> int:
// entry(int a, int b):
//     int c = a + b;
//     br b1(c);
// b1(int c):
//     return c;
// ==>
// func foo(int a, int b) -> int:
// entry(int a, int b):
//     int c = a + b;
//     return c;

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class BlockMerge final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        auto tryMerge = [&] {
            std::unordered_map<Block*, uint32_t> blockRef;
            for(auto& block : func.blocks()) {
                const auto inst = block->getTerminator();
                if(!inst->isBranch())
                    continue;
                const auto branch = inst->as<BranchInst>();
                ++blockRef[branch->getTrueTarget()];
                ++blockRef[branch->getFalseTarget()];
            }
            std::unordered_set<Block*> deferred;
            for(auto block : func.blocks()) {
                if(deferred.count(block))
                    continue;  // merged
                const auto terminator = block->getTerminator();
                if(terminator->getInstID() != InstructionID::Branch)
                    continue;
                const auto branch = terminator->as<BranchInst>();
                const auto target = branch->getTrueTarget();
                assert(blockRef[target] >= 1);
                if(blockRef.at(target) == 1) {
                    auto& instsB = target->instructions();
                    if(instsB.front()->getInstID() == InstructionID::Phi)
                        continue;

                    auto& instsA = block->instructions();
                    instsA.pop_back();

                    for(auto inst : instsB)
                        inst->setBlock(block);
                    instsA.insert(instsA.cend(), instsB.cbegin(), instsB.cend());

                    const auto newTerminator = block->getTerminator();
                    if(newTerminator->isBranch()) {
                        const auto newBranch = newTerminator->as<BranchInst>();
                        retargetBlock(newBranch->getTrueTarget(), target, block);
                        if(newBranch->getFalseTarget())
                            retargetBlock(newBranch->getFalseTarget(), target, block);
                    }
                    deferred.insert(target);
                }
            }

            for(auto block : deferred)
                func.blocks().remove(block);
            return !deferred.empty();
        };

        bool modified = false;
        while(tryMerge())
            modified = true;
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "BlockMerge"sv;
    }
};

CMMC_TRANSFORM_PASS(BlockMerge);

CMMC_NAMESPACE_END

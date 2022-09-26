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
//     break b1(c);
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
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class BlockMerge final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        std::unordered_map<Block*, uint32_t> blockRef;
        for(auto& block : func.blocks()) {
            const auto inst = block->getTerminator();
            if(!inst->isBranch())
                continue;
            const auto branch = inst->as<ConditionalBranchInst>();
            ++blockRef[branch->getTrueTarget().getTarget()];
            ++blockRef[branch->getFalseTarget().getTarget()];
        }
        std::vector<Block*> deferred;
        for(auto& block : func.blocks()) {
            const auto inst = block->getTerminator();
            if(inst->getInstID() != InstructionID::Branch)
                continue;
            const auto branch = inst->as<ConditionalBranchInst>();
            const auto target = branch->getTrueTarget().getTarget();
            assert(blockRef[target] >= 1);
            if(blockRef.find(target)->second == 1) {
                auto& instsA = block->instructions();
                auto& instsB = target->instructions();
                const auto& argsA = branch->getTrueTarget().getArgs();
                const auto& argsB = target->args();
                assert(argsA.size() == argsB.size());
                for(uint32_t idx = 0; idx < argsB.size(); ++idx) {
                    const auto src = argsB[idx];
                    const auto dst = argsA[idx];
                    for(auto inst : instsB)
                        inst->replaceOperand(src, dst);
                }

                instsA.pop_back();
                for(auto inst : instsB)
                    inst->setBlock(block);
                instsA.insert(instsA.cend(), instsB.cbegin(), instsB.cend());
                deferred.push_back(target);
            }
        }

        for(auto block : deferred)
            func.blocks().remove(block);
        return !deferred.empty();
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }
};

CMMC_TRANSFORM_PASS(BlockMerge);

CMMC_NAMESPACE_END
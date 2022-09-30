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
//     break b2(c);
// b2(int c):
//     return c;
// ==>
// func foo(int a, int b) -> int:
// entry(int a, int b):
//     int c = a + b;
//     break b2(c);
// b1(int c):
//     break b2(c);
// b2(int c):
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

class CombineBranch final : public TransformPass<Function> {
    bool isForwardBlock(Block& block) const {
        return block.instructions().size() == 1 && block.getTerminator()->getInstID() == InstructionID::Branch;
    }

    void foldForward(ConditionalBranchInst* branch, BranchTarget& target) const {
        const auto nextBranch = target.getTarget()->getTerminator()->as<ConditionalBranchInst>();
        const auto& nextTarget = nextBranch->getTrueTarget();
        target.resetTarget(nextTarget.getTarget());
        const auto& args1 = target.getArgs();
        const auto& args2 = target.getTarget()->args();
        auto newArgs = nextTarget.getArgs();
        for(auto& arg : newArgs) {
            const auto iter = std::find(args2.cbegin(), args2.cend(), arg);
            if(iter != args2.cend()) {  // only replace block arguments, keep globals/constants
                const auto pos = iter - args2.cbegin();
                arg = args1[pos];
            }
        }
        branch->updateTargetArgs(target, std::move(newArgs));
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        std::unordered_set<Block*> forwardBlocks;
        for(auto block : func.blocks()) {
            if(isForwardBlock(*block))
                forwardBlocks.insert(block);
        }

        bool modified = false;
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->isBranch()) {
                auto branch = terminator->as<ConditionalBranchInst>();
                auto& trueTarget = branch->getTrueTarget();
                if(forwardBlocks.count(trueTarget.getTarget())) {
                    foldForward(branch, trueTarget);
                    modified = true;
                }
                auto& falseTarget = branch->getFalseTarget();
                if(forwardBlocks.count(falseTarget.getTarget())) {
                    foldForward(branch, falseTarget);
                    modified = true;
                }
            }
        }
        return modified;
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }
};

CMMC_TRANSFORM_PASS(CombineBranch);

CMMC_NAMESPACE_END

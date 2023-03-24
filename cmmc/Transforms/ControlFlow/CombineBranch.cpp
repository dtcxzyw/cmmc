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
//     br b2(c);
// b2(int c):
//     return c;
// ==>
// func foo(int a, int b) -> int:
// entry(int a, int b):
//     int c = a + b;
//     br b2(c);
// b1(int c):
//     br b2(c);
// b2(int c):
//     return c;

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class CombineBranch final : public TransformPass<Function> {
    static bool isForwardBlock(Block& block) {
        return block.instructions().size() == 1 && block.getTerminator()->getInstID() == InstructionID::Branch &&
            block.getTerminator()->as<BranchInst>()->getTrueTarget() != &block;
    }

    static void foldForward(Block* source, Block*& target) {
        const auto realTarget = target->getTerminator()->as<BranchInst>()->getTrueTarget();
        retargetBlock(realTarget, target, source);
        target = realTarget;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        std::unordered_set<Block*> forwardBlocks;
        for(auto block : func.blocks()) {
            if(isForwardBlock(*block))
                forwardBlocks.insert(block);
        }

        bool modified = false;
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->isBranch()) {
                auto branch = terminator->as<BranchInst>();
                auto& trueTarget = branch->getTrueTarget();
                if(trueTarget != block && forwardBlocks.count(trueTarget)) {
                    foldForward(block, trueTarget);
                    modified = true;
                }
                auto& falseTarget = branch->getFalseTarget();
                if(falseTarget != block && forwardBlocks.count(falseTarget)) {
                    foldForward(block, falseTarget);
                    modified = true;
                }
            }
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "CombineBranch"sv;
    }
};

CMMC_TRANSFORM_PASS(CombineBranch);

CMMC_NAMESPACE_END

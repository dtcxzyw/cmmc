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

// func add(int a, int b) -> int:
// entry(int a, int b):
//     int c = a + b;
//     cbr true, b2(1), b3(c);
// b2(int c):
//     return c;
// b3(int c):
//     reutrn c;
// ==>
// func add(int a, int b) -> int:
// entry(int a, int b):
//     int c = a + b;
//     br b2(1);
// b2(int c):
//     return c;
// b3(int c):
//     reutrn c;

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class SimplifyPartialUnreachableBranch final : public TransformPass<Function> {
    static bool isUnreachablePath(Block* block) {
        return block->instructions().size() == 1 && block->getTerminator()->getInstID() == InstructionID::Unreachable;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::ConditionalBranch)
                continue;
            auto branch = terminator->as<BranchInst>();
            auto& trueTarget = branch->getTrueTarget();
            auto& falseTarget = branch->getFalseTarget();
            const auto trueUnreachable = isUnreachablePath(trueTarget);
            const auto falseUnreachable = isUnreachablePath(falseTarget);
            if(!trueUnreachable && !falseUnreachable)
                continue;
            if(trueUnreachable != falseUnreachable) {
                if(terminator->getInstID() == InstructionID::Branch)
                    continue;
                auto& insts = block->instructions();
                insts.pop_back();
                const auto inst = make<BranchInst>(falseUnreachable ? trueTarget : falseTarget);
                inst->insertBefore(block, block->instructions().end());
            } else {
                auto& insts = block->instructions();
                insts.pop_back();
                const auto inst = make<UnreachableInst>();
                inst->insertBefore(block, block->instructions().end());
            }
            modified = true;
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "SimplifyPartialUnreachableBranch"sv;
    }
};

CMMC_TRANSFORM_PASS(SimplifyPartialUnreachableBranch);

CMMC_NAMESPACE_END

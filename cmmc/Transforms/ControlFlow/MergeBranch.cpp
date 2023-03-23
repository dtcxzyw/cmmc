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

// entry(int c):
//     cbr c, b2(1), b2(0);
// b2(int c):
//     return c;
// ==>
// entry(int c):
//     int arg = select c, 1, 0;
//     br b2(arg);
// b2(int c):
//     return c;

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class MergeBranch final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& target = analysis.module().getTarget();
        if(!target.isNativeSupported(InstructionID::Select))
            return false;

        bool modified = false;
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::ConditionalBranch)
                continue;
            auto branch = terminator->as<BranchInst>();
            auto& trueTarget = branch->getTrueTarget();
            auto& falseTarget = branch->getFalseTarget();
            if(trueTarget != falseTarget)
                continue;

            auto& insts = block->instructions();
            insts.pop_back();

            IRBuilder builder{ target, block };
            builder.makeOp<BranchInst>(trueTarget);
            modified = true;
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "MergeBranch"sv;
    }
};

CMMC_TRANSFORM_PASS(MergeBranch);

CMMC_NAMESPACE_END

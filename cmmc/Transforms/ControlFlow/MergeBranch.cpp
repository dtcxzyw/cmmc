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
//     cbreak c, b2(1), b2(0);
// b2(int c):
//     return c;
// ==>
// entry(int c):
//     int arg = select c, 1, 0;
//     break b2(arg);
// b2(int c):
//     return c;

#include <cmmc/Analysis/AnalysisPass.hpp>
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
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::ConditionalBranch)
                continue;
            const auto cond = terminator->getOperand(0);
            auto branch = terminator->as<ConditionalBranchInst>();
            auto& trueTarget = branch->getTrueTarget();
            auto& falseTarget = branch->getFalseTarget();
            if(trueTarget.getTarget() != falseTarget.getTarget())
                continue;

            auto& insts = block->instructions();
            insts.pop_back();

            const auto target = trueTarget.getTarget();
            const auto& trueArgs = trueTarget.getArgs();
            const auto& falseArgs = falseTarget.getArgs();

            IRBuilder builder;
            builder.setCurrentBlock(block);

            Vector<Value*> args;
            args.reserve(target->args().size());
            for(size_t idx = 0; idx < target->args().size(); ++idx) {
                const auto val = builder.makeOp<SelectInst>(cond, trueArgs[idx], falseArgs[idx]);
                args.push_back(val);
            }

            builder.makeOp<ConditionalBranchInst>(BranchTarget{ target, std::move(args) });
            modified = true;
        }
        return modified;
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }

    std::string_view name() const noexcept override {
        using namespace std::string_view_literals;
        return "MergeBranch"sv;
    }
};

CMMC_TRANSFORM_PASS(MergeBranch);

CMMC_NAMESPACE_END

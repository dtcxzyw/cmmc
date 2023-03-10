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
//     cbr c, b2(1), b2.indirect(0);
// b2.indirect(int c):
//     br b2(c);
// b2(int c):
//     return c;

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cstdint>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class LegalizeLLVMPhi final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& target = analysis.module().getTarget();

        bool modified = false;
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::ConditionalBranch)
                continue;
            auto branch = terminator->as<ConditionalBranchInst>();
            auto& trueTarget = branch->getTrueTarget();
            auto& falseTarget = branch->getFalseTarget();
            if(trueTarget.getTarget() != falseTarget.getTarget())
                continue;

            IRBuilder builder{ target };
            const auto forwardingBlock = builder.addBlock();
            forwardingBlock->setLabel(String::get(std::string{ falseTarget.getTarget()->getLabel().prefix() } + ".indirect"));
            const auto& falseTargetArgs = falseTarget.getTarget()->args();
            Vector<Value*> args;
            args.reserve(falseTargetArgs.size());
            for(auto arg : falseTargetArgs) {
                args.push_back(forwardingBlock->addArg(arg->getType()));
            }
            builder.setCurrentBlock(forwardingBlock);
            builder.makeOp<ConditionalBranchInst>(BranchTarget{ falseTarget.getTarget(), std::move(args) });

            falseTarget.resetTarget(forwardingBlock);

            modified = true;
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LegalizeLLVMPhi"sv;
    }
};

CMMC_TRANSFORM_PASS(LegalizeLLVMPhi);

CMMC_NAMESPACE_END

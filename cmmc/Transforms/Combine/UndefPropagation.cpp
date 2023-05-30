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

#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>

// Replace undef with an arbitrary value

CMMC_NAMESPACE_BEGIN

class UndefPropagation final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& target = analysis.module().getTarget();
        bool modified = false;

        for(auto block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::ConditionalBranch && inst.getOperand(0)->isUndefined()) {
                    const auto terminator = block->getTerminator()->as<BranchInst>();
                    block->instructions().pop_back();
                    IRBuilder builder{ target, block };
                    // builder.makeOp<UnreachableInst>();
                    const auto& trueTarget = terminator->getTrueTarget();
                    const auto& falseTarget = terminator->getFalseTarget();
                    // select a target
                    builder.makeOp<BranchInst>(terminator->getBranchProb() < 0.5 ? trueTarget : falseTarget);
                    modified = true;
                    break;
                }
                if(inst.getInstID() != InstructionID::Call && inst.canbeOperand()) {
                    bool hasUndef = false;
                    for(auto operand : inst.operands()) {
                        if(operand->isUndefined()) {
                            hasUndef = true;
                            break;
                        }
                    }
                    if(!hasUndef)
                        continue;
                    if(inst.getType()->isInteger()) {
                        modified |= inst.replaceWith(ConstantInteger::get(inst.getType(), 0));
                    }
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "UndefPropagation"sv;
    }
};

CMMC_TRANSFORM_PASS(UndefPropagation);

CMMC_NAMESPACE_END

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

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class Select2Branch final : public TransformPass<Function> {
    static bool isExpensive(InstructionID inst) {
        switch(inst) {
            case InstructionID::FDiv:
            case InstructionID::SDiv:
            case InstructionID::UDiv:
            case InstructionID::SRem:
            case InstructionID::URem:
            case InstructionID::Call:
            case InstructionID::Load:
                return true;
            default:
                return false;
        }
    }

    static bool shouldExpand(Value* val) {
        if(!val->isInstruction())
            return false;
        const auto inst = val->as<Instruction>();
        if(!inst->hasExactlyOneUse())
            return false;
        if(inst->getInstID() == InstructionID::Call) {
            auto callee = inst->lastOperand()->as<Function>();
            if(!callee->attr().hasAttr(FunctionAttribute::Stateless)) {
                return false;
            }
        }

        return isExpensive(inst->getInstID());
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        bool modified = false;
        for(auto iter = func.blocks().begin(); iter != func.blocks().end(); ++iter) {
            auto block = *iter;
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::Select) {
                    const auto cond = inst.getOperand(0);
                    const auto lhs = inst.getOperand(1);
                    const auto rhs = inst.getOperand(2);
                    const auto shouldExpandLhs = shouldExpand(lhs);
                    const auto shouldExpandRhs = shouldExpand(rhs);
                    if(shouldExpandLhs || shouldExpandRhs) {
                        const auto nextBlock = splitBlock(func.blocks(), iter, inst.asIterator());

                        IRBuilder builder{ analysis.module().getTarget() };
                        const auto phi = make<PhiInst>(inst.getType());
                        inst.replaceWith(phi);
                        block->instructions().erase(inst.asNode());
                        builder.setCurrentBlock(block);
                        const auto trueBlock = builder.addBlock();
                        const auto falseBlock = builder.addBlock();
                        builder.makeOp<BranchInst>(cond, defaultSelectProb, trueBlock, falseBlock);

                        builder.setCurrentBlock(trueBlock);
                        if(shouldExpandLhs)
                            lhs->as<Instruction>()->insertBefore(trueBlock, trueBlock->instructions().begin());
                        phi->addIncoming(trueBlock, lhs);
                        builder.makeOp<BranchInst>(nextBlock);

                        builder.setCurrentBlock(falseBlock);
                        if(shouldExpandRhs)
                            rhs->as<Instruction>()->insertBefore(falseBlock, falseBlock->instructions().begin());
                        phi->addIncoming(falseBlock, rhs);
                        builder.makeOp<BranchInst>(nextBlock);

                        phi->insertBefore(nextBlock, nextBlock->instructions().begin());

                        // TODO: merge into splitBlock
                        fixPhiNode(block, nextBlock);

                        modified = true;
                        break;
                    }
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "Select2Branch"sv;
    }
};

CMMC_TRANSFORM_PASS(Select2Branch);

CMMC_NAMESPACE_END

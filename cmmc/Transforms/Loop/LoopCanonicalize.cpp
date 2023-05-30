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

#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>

CMMC_NAMESPACE_BEGIN

class LoopCanonicalize final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        CMMC_UNUSED(analysis);
        bool modified = false;

        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::ConditionalBranch)
                continue;
            const auto cond = terminator->getOperand(0);
            if(!cond->is<CompareInst>())
                continue;
            const auto cmp = cond->as<CompareInst>();
            // make constants rhs
            if(cmp->getOperand(0)->isConstant() && !cmp->getOperand(1)->isConstant()) {
                auto& operands = cmp->mutableOperands();
                std::swap(operands[0], operands[1]);
                cmp->setOp(getReversedOp(cmp->getOp()));
                modified = true;
            }
            // le x c -> lt x c+1, ge x c -> ge x c-1
            if(cmp->getInstID() == InstructionID::SCmp) {
                intmax_t x;
                MatchContext<Value> matchCtx{ cmp->getOperand(1) };
                if(int_(x)(matchCtx)) {
                    const auto type = cmp->getOperand(1)->getType();
                    if(cmp->getOp() == CompareOp::LessEqual) {
                        const auto xn = ConstantInteger::get(type, x + 1);
                        // check overflow
                        if(x < xn->getSignExtended()) {
                            cmp->setOp(CompareOp::LessThan);
                            cmp->mutableOperands()[1]->resetValue(xn);
                            modified = true;
                        }
                    } else if(cmp->getOp() == CompareOp::GreaterEqual) {
                        const auto xn = ConstantInteger::get(type, x - 1);
                        // check underflow
                        if(x > xn->getSignExtended()) {
                            cmp->setOp(CompareOp::GreaterThan);
                            cmp->mutableOperands()[1]->resetValue(xn);
                            modified = true;
                        }
                    }
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopCanonicalize"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopCanonicalize);

CMMC_NAMESPACE_END

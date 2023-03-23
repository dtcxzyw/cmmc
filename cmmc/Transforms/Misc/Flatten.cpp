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

#include <algorithm>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class Flatten final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        if(analysis.module().types().empty())
            return false;

        std::list<Instruction*> todo;

        for(auto block : func.blocks()) {
            for(auto inst : block->instructions()) {
                if(inst->getInstID() == InstructionID::Alloc && inst->getType()->as<PointerType>()->getPointee()->isAggregate()) {
                    const auto type = inst->getType()->as<PointerType>()->getPointee();
                    if(type->isArray() && type->as<ArrayType>()->getElementCount() > 16U)
                        continue;
                    todo.push_back(inst);
                }
            }
        }
        if(todo.empty())
            return false;

        const auto isDirectUse = [](Instruction* inst) {
            return inst->getInstID() == InstructionID::GetElementPtr && inst->operands().size() == 3 &&
                cuint_(0)(MatchContext<Value>{ inst->getOperand(0), nullptr }) && inst->getOperand(1)->isConstant();
        };
        CMMC_UNUSED(isDirectUse);

        return false;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "Flatten"sv;
    }
};

CMMC_TRANSFORM_PASS(Flatten);

CMMC_NAMESPACE_END

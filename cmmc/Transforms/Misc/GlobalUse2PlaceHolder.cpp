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

#include <algorithm>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>

CMMC_NAMESPACE_BEGIN

class GlobalUse2PlaceHolder final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;

        for(auto block : func.blocks()) {
            auto& instructions = block->instructions();
            for(auto iter = instructions.begin(); iter != instructions.end(); ++iter) {
                auto& inst = *iter;
                if(inst.getInstID() == InstructionID::PtrCast && inst.getType()->isSame(inst.getOperand(0)->getType()))
                    continue;

                for(auto& operand : inst.mutableOperands()) {
                    if(operand->value->is<GlobalVariable>()) {
                        auto placeHolder = make<PtrCastInst>(operand->value, operand->value->getType());
                        operand->resetValue(placeHolder);
                        placeHolder->insertBefore(block, iter);
                        modified = true;
                    }
                }
            }
        }

        for(auto block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::PtrCast && inst.getType()->isSame(inst.getOperand(0)->getType())) {
                    const auto val = inst.getOperand(0);
                    if(!val->is<GlobalVariable>()) {
                        inst.replaceWith(val);
                        modified = true;
                    }
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "GlobalUse2PlaceHolder"sv;
    }
};

CMMC_TRANSFORM_PASS(GlobalUse2PlaceHolder);

CMMC_NAMESPACE_END

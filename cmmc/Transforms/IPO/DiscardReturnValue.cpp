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
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <iostream>
#include <queue>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class DiscardReturnValue final : public TransformPass<Function> {
    // TODO: Use module level analysis to reduce compile time
    static bool isUsed(Function& func, Module& module) {
        for(auto global : module.globals()) {
            if(global->isFunction()) {
                auto callerFunc = global->as<Function>();
                if(callerFunc->blocks().empty())
                    continue;
                for(auto block : callerFunc->blocks()) {
                    for(auto& inst : block->instructions()) {
                        for(auto operand : inst.operands()) {
                            if(operand->is<FunctionCallInst>()) {
                                const auto callee = operand->as<FunctionCallInst>()->operands().back();
                                if(callee == &func) {
                                    // TODO: generalize this case
                                    if(inst.getInstID() == InstructionID::Ret && callerFunc == &func)
                                        continue;
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        if(func.attr().hasAttr(FunctionAttribute::NoReturn))
            return false;
        if(func.attr().hasAttr(FunctionAttribute::NoSideEffect))
            return false;
        if(func.attr().hasAttr(FunctionAttribute::Entry))
            return false;
        if(func.getLinkage() != Linkage::Internal)
            return false;
        const auto retType = func.getType()->as<FunctionType>()->getRetType();
        if(retType->isVoid())
            return false;
        auto& module = analysis.module();
        if(isUsed(func, module))
            return false;

        const auto undef = make<UndefinedValue>(retType);
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() == InstructionID::Ret) {
                terminator->mutableOperands().front()->resetValue(undef);
            }
        }

        return true;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "DiscardReturnValue"sv;
    }
};

CMMC_TRANSFORM_PASS(DiscardReturnValue);

CMMC_NAMESPACE_END

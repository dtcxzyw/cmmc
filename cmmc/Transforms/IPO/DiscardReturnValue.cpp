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
    static bool isUsed(Function& func) {
        for(auto user : func.users()) {
            if(user->isUsed()) {
                for(auto ret : user->users()) {
                    if(ret->getInstID() == InstructionID::Ret && ret->getBlock()->getFunction() == &func)
                        continue;
                    return true;
                }
            }
        }
        return false;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
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
        if(isUsed(func))
            return false;

        auto funcType = func.getType()->as<FunctionType>();
        func.setType(make<FunctionType>(VoidType::get(), funcType->getArgTypes()));
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() == InstructionID::Ret) {
                terminator->mutableOperands().clear();
            }
        }
        for(auto call : func.users()) {
            call->setType(VoidType::get());
        }

        return true;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "DiscardReturnValue"sv;
    }
};

CMMC_TRANSFORM_PASS(DiscardReturnValue);

CMMC_NAMESPACE_END

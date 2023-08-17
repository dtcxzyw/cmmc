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
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cstdint>
#include <iterator>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class ImmutableScalarRefArg2Value final : public TransformPass<Module> {
    static bool isImmutableArgRef(FuncArgument* arg, uint32_t idx) {
        if(!arg->getType()->isPointer())
            return false;
        if(!arg->getType()->as<PointerType>()->getPointee()->isPrimitive())
            return false;
        if(!arg->isUsed())
            return false;
        for(auto user : arg->users()) {
            if(user->getInstID() == InstructionID::Load)
                continue;
            if(user->getInstID() == InstructionID::Call) {
                const auto callee = user->lastOperand();
                // TODO: support ref swaps
                auto isExactlyIthArg = [&] {
                    uint32_t y = 0;
                    for(auto val : user->arguments()) {
                        if(val == arg && y != idx)
                            return false;
                        ++y;
                    }
                    return true;
                };
                if(callee == arg->getFunc() && isExactlyIthArg())
                    continue;
            }
            return false;
        }
        return true;
    }

public:
    bool run(Module& mod, AnalysisPassManager&) const override {
        bool modified = false;
        std::vector<std::pair<Function*, const FunctionType*>> wrappers;

        for(auto global : mod.globals()) {
            if(global->isFunction()) {
                const auto func = global->as<Function>();
                if(func->blocks().empty())
                    continue;
                if(func->getLinkage() != Linkage::Internal)
                    continue;
                const auto type = func->getType();
                bool optArg = false;
                uint32_t idx = 0;
                for(auto arg : func->args()) {
                    if(isImmutableArgRef(arg, idx++)) {
                        const auto scalarType = arg->getType()->as<PointerType>()->getPointee();
                        arg->setType(scalarType);
                        for(auto user : arg->users())
                            if(user->getInstID() == InstructionID::Load) {
                                user->replaceWith(arg);
                                user->getBlock()->instructions().erase(user->asNode());
                            }
                        optArg = true;
                    }
                }
                if(optArg) {
                    func->updateTypeFromArgs();
                    wrappers.emplace_back(func, type->as<FunctionType>());
                    modified = true;
                }
            }
        }

        for(auto [func, type] : wrappers) {
            const auto wrapperFunc = make<Function>(String::get(std::string(func->getSymbol().prefix()) + "_cmmc_wrapper"), type);
            wrapperFunc->setLinkage(Linkage::Internal);
            std::vector<Value*> args;
            auto& argTypes = type->getArgTypes();
            args.reserve(argTypes.size());
            for(auto arg : argTypes)
                args.push_back(wrapperFunc->addArg(arg));
            IRBuilder builder{ mod.getTarget() };
            builder.setCurrentFunction(wrapperFunc);
            auto entry = builder.addBlock();
            builder.setCurrentBlock(entry);
            for(uint32_t idx = 0; idx < argTypes.size(); ++idx)
                if(!args[idx]->getType()->isSame(func->args()[idx]->getType())) {
                    args[idx] = builder.makeOp<LoadInst>(args[idx]);
                }
            auto call = builder.makeOp<FunctionCallInst>(func, args);
            if(call->getType()->isVoid())
                builder.makeOp<ReturnInst>();
            else
                builder.makeOp<ReturnInst>(call);
            mod.globals().push_back(wrapperFunc);

            for(auto iter = func->users().begin(); iter != func->users().end();) {
                auto next = std::next(iter);
                const auto instPos = iter.ref()->user->getBlock()->getFunction();
                if(instPos != func && instPos != wrapperFunc)
                    iter.ref()->resetValue(wrapperFunc);
                iter = next;
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ImmutableScalarRefArg2Value"sv;
    }
};

CMMC_TRANSFORM_PASS(ImmutableScalarRefArg2Value);

CMMC_NAMESPACE_END

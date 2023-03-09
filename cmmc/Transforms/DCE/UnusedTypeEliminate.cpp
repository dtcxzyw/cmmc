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

// Remove unused aggregates

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/BlockArgumentAnalysis.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class UnusedTypeEliminate final : public TransformPass<Module> {
public:
    bool run(Module& module, AnalysisPassManager&) const override {
        std::unordered_set<const Type*> types = { module.types().cbegin(), module.types().cend() };
        if(types.empty())
            return false;
        std::unordered_set<const Type*> visited;
        auto removeType = [&](auto&& self, const Type* type) {
            if(!visited.insert(type).second)
                return;
            if(type->isInteger() || type->isFloatingPoint() || type->isVoid()) {
                return;
            }
            if(type->isStruct()) {
                types.erase(type);
                for(auto& field : type->as<StructType>()->fields())
                    self(self, field.type);
            } else if(type->isArray()) {
                self(self, type->as<ArrayType>()->getScalarType());
            } else if(type->isPointer()) {
                self(self, type->as<PointerType>()->getPointee());
            } else if(type->isFunction()) {
                const auto funcType = type->as<FunctionType>();
                for(auto arg : funcType->getArgTypes())
                    self(self, arg);
                self(self, funcType->getRetType());
            } else
                reportNotImplemented(CMMC_LOCATION());
        };
        for(auto global : module.globals()) {
            removeType(removeType, global->getType());
            if(global->isFunction()) {
                for(auto block : global->as<Function>()->blocks()) {
                    for(auto arg : block->args())
                        removeType(removeType, arg->getType());
                    for(auto inst : block->instructions()) {
                        for(auto operand : inst->operands())
                            removeType(removeType, operand->getType());
                        removeType(removeType, inst->getType());
                    }
                    if(types.empty())
                        return false;
                }
            }
            if(types.empty())
                return false;
        }
        if(types.empty())
            return false;
        auto& usedTypes = module.types();
        usedTypes.erase(std::remove_if(usedTypes.begin(), usedTypes.end(), [&](const Type* t) { return types.count(t); }),
                        usedTypes.end());
        return true;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "UnusedTypeEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(UnusedTypeEliminate);

CMMC_NAMESPACE_END

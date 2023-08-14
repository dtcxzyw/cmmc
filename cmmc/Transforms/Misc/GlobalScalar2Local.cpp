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
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iostream>
#include <memory>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

// FIXME: support multiple exported functions
class GlobalScalar2Local final : public TransformPass<Module> {
    static constexpr size_t maxSize = 128;

    void initializeArray(IRBuilder& builder, Value* storage, const ArrayType* type, Value* value, Value* zeroScalar) const {
        const auto subType = type->getElementType();
        const auto subCount = type->getElementCount();
        const auto valueArray = dynamic_cast<ConstantArray*>(value);

        for(uint32_t idx = 0; idx < subCount; ++idx) {
            const auto addr = builder.makeOp<GetElementPtrInst>(
                storage,
                std::vector<Value*>{ builder.getZeroIndex(),
                                     ConstantInteger::get(builder.getIndexType(), static_cast<intmax_t>(idx)) });
            Value* subValue = nullptr;
            if(valueArray && idx < valueArray->values().size())
                subValue = valueArray->values()[idx];
            if(subType->isArray()) {
                initializeArray(builder, addr, subType->as<ArrayType>(), subValue, zeroScalar);
            } else {
                if(!subValue)
                    subValue = zeroScalar;
                builder.makeOp<StoreInst>(addr, subValue);
            }
        }
    }

public:
    bool run(Module& mod, AnalysisPassManager& analysis) const override {
        Function* entryFunc = nullptr;
        std::vector<GlobalVariable*> globalVars;
        std::vector<Function*> funcs;

        for(auto global : mod.globals()) {
            // global->dumpAsOperand(std::cerr);
            // std::cerr << '\n';
            if(auto func = dynamic_cast<Function*>(global)) {
                if(func->blocks().empty())
                    continue;
                if(func->attr().hasAttr(FunctionAttribute::Entry)) {
                    assert(!entryFunc);
                    entryFunc = func;
                } else {
                    if(!func->attr().hasAttr(FunctionAttribute::ParallelBody))
                        funcs.push_back(func);
                }
            } else {
                auto var = global->as<GlobalVariable>();
                if(var->getLinkage() == Linkage::Global)
                    continue;
                bool usedByParallelBody = false;
                for(auto user : var->users())
                    if(user->getBlock()->getFunction()->attr().hasAttr(FunctionAttribute::ParallelBody)) {
                        usedByParallelBody = true;
                        break;
                    }
                if(usedByParallelBody)
                    continue;

                const auto pointeeType = var->getType()->as<PointerType>()->getPointee();
                if(pointeeType->isPrimitive() ||
                   (pointeeType->isArray() && pointeeType->as<ArrayType>()->getScalarType()->isPrimitive() &&
                    pointeeType->getSize(mod.getTarget().getDataLayout()) <= maxSize
                    // &&!var->attr().hasAttr(GlobalVariableAttribute::ReadOnly)
                    )) {
                    globalVars.push_back(var);
                }
            }
        }

        if(!entryFunc)
            return false;

        if(globalVars.empty())
            return false;

        const auto& target = analysis.module().getTarget();
        IRBuilder builder{ target };
        const auto entryBlock = entryFunc->entryBlock();
        auto& instructions = entryBlock->instructions();
        builder.setInsertPoint(entryBlock, std::find_if_not(instructions.begin(), instructions.end(), [](Instruction& inst) {
                                   return inst.getInstID() == InstructionID::Alloc;
                               }));

        std::unordered_map<GlobalVariable*, std::unordered_map<Function*, Value*>> mapping;

        const auto getZeroScalar = [](const Type* scalarType) -> Value* {
            if(scalarType->isInteger()) {
                return ConstantInteger::get(scalarType, 0);
            }
            if(scalarType->isFloatingPoint()) {
                return make<ConstantFloatingPoint>(scalarType, 0.0);
            }
            reportNotImplemented(CMMC_LOCATION());
        };

        {
            for(auto var : globalVars) {
                const auto type = var->getType()->as<PointerType>()->getPointee();
                const auto alloc = builder.createAlloc(type, var->getAlignment());
                alloc->setLabel(var->getSymbol());
                if(auto val = var->initialValue()) {
                    if(auto valArray = dynamic_cast<ConstantArray*>(val)) {
                        initializeArray(builder, alloc, type->as<ArrayType>(), valArray,
                                        getZeroScalar(type->as<ArrayType>()->getScalarType()));
                    } else
                        builder.makeOp<StoreInst>(alloc, val);
                } else {
                    if(type->isArray()) {
                        initializeArray(builder, alloc, type->as<ArrayType>(), nullptr,
                                        getZeroScalar(type->as<ArrayType>()->getScalarType()));
                    } else
                        builder.makeOp<StoreInst>(alloc, getZeroScalar(type));
                }
                mapping[var].emplace(entryFunc, alloc);
            }
        }

        // modify func signatures
        std::unordered_map<Function*, std::unordered_set<Value*>> usedVars;
        for(auto var : globalVars) {
            for(auto user : var->users()) {
                usedVars[user->getBlock()->getFunction()].insert(var);
            }
        }
        std::unordered_map<Function*, std::unordered_set<Function*>> callers;
        for(auto func : funcs) {
            auto& callerSet = callers[func];
            for(auto user : func->users()) {
                callerSet.insert(user->getBlock()->getFunction());
            }
        }

        while(true) {
            bool changed = false;
            for(auto func : funcs) {
                auto& callerSet = callers[func];
                auto& usedVarSet = usedVars[func];
                for(auto caller : callerSet) {
                    if(caller == func)
                        continue;
                    auto& callerUsedVarSet = usedVars[caller];
                    for(auto var : usedVarSet) {
                        changed |= callerUsedVarSet.insert(var).second;
                    }
                }
            }
            if(!changed)
                break;
        }

        for(auto func : funcs) {
            auto& usedVarSet = usedVars[func];
            for(auto var : globalVars)
                if(usedVarSet.count(var))
                    mapping[var].emplace(func, func->addArg(var->getType()));
            func->updateTypeFromArgs();
        }

        // modify calls
        // TODO: function pointers?
        for(auto func : funcs) {
            auto& usedVarSet = usedVars[func];
            for(auto user : func->users()) {
                const auto call = dynamic_cast<FunctionCallInst*>(user);
                const auto caller = call->getBlock()->getFunction();
                assert(call->lastOperand() == func);
                for(auto var : globalVars)
                    if(usedVarSet.count(var))
                        call->addArgument(mapping.at(var).at(caller));
            }
        }

        for(auto var : globalVars) {
            auto& users = var->users();
            auto& map = mapping.at(var);
            for(auto iter = users.begin(); iter != users.end();) {
                auto next = std::next(iter);
                iter.ref()->resetValue(map.at(iter.ref()->user->getBlock()->getFunction()));
                iter = next;
            }
        }

        std::unordered_set<Value*> globalVarSet{ globalVars.begin(), globalVars.end() };
        auto& globals = mod.globals();
        globals.erase(std::remove_if(globals.begin(), globals.end(), [&](GlobalValue* var) { return globalVarSet.count(var); }),
                      globals.end());
        for(auto global : globalVars) {
            std::destroy_at(global);
        }

        return true;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "GlobalScalar2Local"sv;
    }
};

CMMC_TRANSFORM_PASS(GlobalScalar2Local);

CMMC_NAMESPACE_END

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
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cstdint>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

// FIXME: support multiple exported functions
class GlobalScalar2Local final : public TransformPass<Module> {
public:
    bool run(Module& mod, AnalysisPassManager&) const override {
        Function* exportedFunc = nullptr;
        std::vector<GlobalVariable*> globalVars;
        std::vector<Function*> funcs;

        for(auto global : mod.globals()) {
            if(auto func = dynamic_cast<Function*>(global)) {
                if(func->blocks().empty())
                    continue;

                if(func->getLinkage() == Linkage::Global) {
                    if(exportedFunc) {
                        exportedFunc = nullptr;  // multiple exported functions
                        break;
                    }
                    exportedFunc = func;
                } else {
                    funcs.push_back(func);
                }
            } else {
                auto var = global->as<GlobalVariable>();
                if(var->getLinkage() == Linkage::Global)
                    continue;

                if(var->getType()->as<PointerType>()->getPointee()->isPrimitive()) {
                    globalVars.push_back(var);
                }
            }
        }

        if(!exportedFunc)
            return false;

        const auto hasInternalCall = [&] {
            for(auto global : mod.globals()) {
                if(auto func = dynamic_cast<Function*>(global)) {
                    for(auto block : func->blocks())
                        for(auto inst : block->instructions()) {
                            if(inst->hasOperand(exportedFunc)) {
                                return true;
                            }
                        }
                }
                return false;
            }
            return true;
        };

        if(!exportedFunc->attr().hasAttr(FunctionAttribute::Entry) || hasInternalCall()) {
            globalVars.erase(
                std::remove_if(globalVars.begin(), globalVars.end(), [](GlobalVariable* var) { return var->initialValue(); }),
                globalVars.end());
        }

        if(globalVars.empty())
            return false;

        IRBuilder builder;
        builder.setInsertPoint(exportedFunc->entryBlock(), exportedFunc->entryBlock()->instructions().begin());

        std::unordered_map<Function*, std::unordered_map<Value*, Value*>> mapping;

        {
            auto& mainMapping = mapping[exportedFunc];
            for(auto var : globalVars) {
                const auto type = var->getType()->as<PointerType>()->getPointee();
                const auto alloc = builder.makeOp<StackAllocInst>(type);
                if(auto val = var->initialValue()) {
                    builder.makeOp<StoreInst>(alloc, val);
                }
                mainMapping.emplace(var, alloc);
            }
        }

        // modify func signatures & entry blocks
        for(auto func : funcs) {
            {
                const auto funcType = func->getType()->as<FunctionType>();
                auto& args = const_cast<Vector<const Type*>&>(funcType->getArgTypes());
                for(auto var : globalVars) {
                    args.push_back(var->getType());
                }
            }
            {
                auto& map = mapping[func];
                auto block = func->entryBlock();
                for(auto var : globalVars)
                    map.emplace(var, block->addArg(var->getType()));
            }
        }

        // modify calls
        // TODO: function pointers?
        std::unordered_set<Value*> funcSet{ funcs.cbegin(), funcs.cend() };
        funcs.push_back(exportedFunc);
        for(auto func : funcs) {
            for(auto block : func->blocks())
                for(auto inst : block->instructions()) {
                    if(auto call = dynamic_cast<FunctionCallInst*>(inst)) {
                        auto callee = call->operands().back();
                        if(auto calleeFunc = dynamic_cast<Function*>(callee)) {
                            if(funcSet.count(calleeFunc)) {
                                auto& operands = call->operands();
                                for(auto var : globalVars)
                                    operands.insert(std::prev(operands.cend()), var);
                            }
                        } else
                            reportNotImplemented();
                    }
                }
        }

        //  replace operands & back propagation
        for(auto func : funcs) {
            auto& map = mapping[func];
            for(auto block : func->blocks())
                replaceOperands(*block, map);
            blockArgPropagation(*func);
        }

        return true;
    }

    std::string_view name() const noexcept override {
        using namespace std::string_view_literals;
        return "GlobalScalar2Local"sv;
    }
};

CMMC_TRANSFORM_PASS(GlobalScalar2Local);

CMMC_NAMESPACE_END

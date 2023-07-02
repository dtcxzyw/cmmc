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
#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/Analysis/PointerBaseAnalysis.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cstdint>
#include <memory>
#include <queue>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class StoreOnlyGlobalEliminate final : public TransformPass<Module> {
public:
    bool run(Module& mod, AnalysisPassManager& analysis) const override {
        std::unordered_set<GlobalVariable*> globals;
        for(auto global : mod.globals()) {
            if(!global->isFunction()) {
                auto var = global->as<GlobalVariable>();
                if(var->getLinkage() == Linkage::Global)
                    continue;
                if(var->getType()->as<PointerType>()->getPointee()->isArray())
                    globals.insert(var);
            }
        }
        if(globals.empty())
            return false;
        for(auto global : mod.globals()) {
            if(global->isFunction()) {
                auto& func = *global->as<Function>();
                if(func.blocks().empty())
                    continue;
                auto& pointerBase = analysis.get<PointerBaseAnalysis>(func);
                auto& aliasSet = analysis.get<AliasAnalysis>(func);

                auto touchPtr = [&](Value* ptr) {
                    auto base = pointerBase.lookup(ptr);
                    if(base && base->is<GlobalVariable>()) {
                        globals.erase(base->as<GlobalVariable>());
                    } else {
                        std::vector<GlobalVariable*> toRemove;
                        for(auto var : globals)
                            if(!aliasSet.isDistinct(ptr, var)) {
                                toRemove.push_back(var);
                            }
                        for(auto var : toRemove)
                            globals.erase(var);
                    }
                };

                for(auto& block : func.blocks()) {
                    for(auto& inst : block->instructions()) {
                        if(inst.getInstID() == InstructionID::Load) {
                            auto ptr = inst.getOperand(0);
                            touchPtr(ptr);
                        } else if(inst.getInstID() == InstructionID::Call) {
                            auto callee = inst.lastOperand();
                            auto calleeFunc = callee->as<Function>();
                            if(calleeFunc->attr().hasAttr(FunctionAttribute::NoMemoryRead)) {
                                continue;
                            }
                            if(calleeFunc->blocks().empty()) {
                                // runtime calls
                                for(auto operand : inst.arguments()) {
                                    if(operand->getType()->isPointer()) {
                                        touchPtr(operand);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if(globals.empty())
            return false;
        bool modified = false;

        for(auto global : mod.globals()) {
            if(global->isFunction()) {
                auto& func = *global->as<Function>();
                if(func.blocks().empty())
                    continue;
                auto& pointerBase = analysis.get<PointerBaseAnalysis>(func);
                for(auto& block : func.blocks()) {
                    block->instructions().remove_if([&](Instruction* inst) {
                        if(inst->getInstID() == InstructionID::Store) {
                            auto ptr = inst->getOperand(0);
                            auto base = pointerBase.lookup(ptr);
                            if(!base)
                                return false;
                            auto baseGlobalVar = dynamic_cast<GlobalVariable*>(base);
                            if(baseGlobalVar && globals.count(baseGlobalVar)) {
                                modified = true;
                                return true;
                            }
                            return false;
                        }
                        return false;
                    });
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "StoreOnlyGlobalEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(StoreOnlyGlobalEliminate);

CMMC_NAMESPACE_END

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

#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/PointerBaseAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cstdint>
#include <iostream>
#include <queue>
#include <string_view>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class GlobalVarAttrInfer final : public TransformPass<Module> {
    static bool setReadOnly(Module& module, AnalysisPassManager& analysis) {
        std::list<GlobalVariable*> todo;
        for(auto global : module.globals()) {
            if(global->is<GlobalVariable>()) {
                const auto gv = global->as<GlobalVariable>();
                if(!gv->attr().hasAttr(GlobalVariableAttribute::ReadOnly) && gv->getLinkage() == Linkage::Internal) {
                    todo.push_back(gv);
                }
            }
        }

        if(todo.empty())
            return false;

        for(auto global : module.globals()) {
            if(!global->isFunction())
                continue;
            const auto func = global->as<Function>();
            if(!func->blocks().empty()) {
                auto& alias = analysis.get<AliasAnalysis>(*func);
                for(auto block : func->blocks()) {
                    for(auto& inst : block->instructions()) {
                        if(inst.getInstID() == InstructionID::Store || inst.getInstID() == InstructionID::AtomicAdd) {
                            const auto address = inst.getOperand(0);
                            todo.remove_if([&](GlobalVariable* gv) { return !alias.isDistinct(gv, address); });
                        } else if(inst.getInstID() == InstructionID::Call) {
                            const auto callee = inst.lastOperand()->as<Function>();
                            // external funcs
                            if(callee->blocks().empty() && !callee->attr().hasAttr(FunctionAttribute::NoMemoryWrite)) {
                                todo.remove_if([&](GlobalVariable* gv) {
                                    for(auto operand : inst.operands()) {
                                        if(operand->getType()->isPointer() && !alias.isDistinct(gv, operand))
                                            return true;
                                    }
                                    return false;
                                });
                            }
                        }
                    }
                    if(todo.empty())
                        return false;
                }
            }
            if(todo.empty())
                return false;
        }

        for(auto gv : todo)
            gv->attr().addAttr(GlobalVariableAttribute::ReadOnly);
        return !todo.empty();
    }

    static bool setFlexible(Module& module, AnalysisPassManager& analysis) {
        std::list<GlobalVariable*> todo;
        for(auto global : module.globals()) {
            if(global->is<GlobalVariable>()) {
                const auto gv = global->as<GlobalVariable>();
                if(!gv->attr().hasAttr(GlobalVariableAttribute::Flexible) && gv->getLinkage() == Linkage::Internal &&
                   gv->getType()->as<PointerType>()->getPointee()->isArray()) {
                    todo.push_back(gv);
                }
            }
        }

        if(todo.empty())
            return false;

        for(auto global : module.globals()) {
            if(!global->isFunction())
                continue;
            const auto func = global->as<Function>();
            if(!func->blocks().empty()) {
                auto& alias = analysis.get<AliasAnalysis>(*func);
                auto& base = analysis.get<PointerBaseAnalysis>(*func);
                for(auto block : func->blocks()) {
                    for(auto& inst : block->instructions()) {
                        if(inst.getInstID() == InstructionID::Call) {
                            const auto callee = inst.lastOperand()->as<Function>();
                            // external funcs
                            if(callee->blocks().empty()) {
                                todo.remove_if([&](GlobalVariable* gv) {
                                    for(auto operand : inst.operands()) {
                                        if(operand->getType()->isPointer() && !alias.isDistinct(gv, operand)) {
                                            const auto basePtr = base.lookup(operand);
                                            if(basePtr)
                                                return basePtr == gv;
                                            return true;
                                        }
                                    }
                                    return false;
                                });
                            }
                        }
                    }
                    if(todo.empty())
                        return false;
                }
            }
            if(todo.empty())
                return false;
        }

        for(auto gv : todo)
            gv->attr().addAttr(GlobalVariableAttribute::Flexible);
        return !todo.empty();
    }

    static bool setInitOnce(Module& module, AnalysisPassManager& analysis) {
        std::unordered_map<GlobalVariable*, uint32_t> todo;
        for(auto global : module.globals()) {
            if(global->is<GlobalVariable>()) {
                const auto gv = global->as<GlobalVariable>();
                if(!gv->attr().hasAttr(GlobalVariableAttribute::InitOnce) && gv->getLinkage() == Linkage::Internal &&
                   gv->getType()->as<PointerType>()->getPointee()->isPrimitive()) {
                    todo.emplace(gv, 0U);
                }
            }
        }

        if(todo.empty())
            return false;

        auto update = [&](Value* ptr, uint32_t count) {
            if(ptr->isGlobal())
                return;
            if(auto it = todo.find(ptr->as<GlobalVariable>()); it != todo.end()) {
                it->second += count;
                if(it->second > 1) {
                    todo.erase(it);
                }
            }
        };

        [[maybe_unused]] auto reportFail = [](Instruction& inst, Value* base) {
            inst.dumpInst(std::cerr);
            std::cerr << " failed\n";
            if(base) {
                std::cerr << "base: ";
                base->dumpAsOperand(std::cerr);
                std::cerr << '\n';
            } else
                std::cerr << "base is null\n";
        };

        for(auto global : module.globals()) {
            if(!global->isFunction())
                continue;
            const auto func = global->as<Function>();
            if(!func->blocks().empty()) {
                auto& pointerBase = analysis.get<PointerBaseAnalysis>(*func);

                for(auto block : func->blocks())
                    for(auto& inst : block->instructions()) {
                        switch(inst.getInstID()) {
                            case InstructionID::Store: {
                                auto base = pointerBase.lookup(inst.getOperand(0));
                                if(base && (base->isGlobal() || base->is<StackAllocInst>()))
                                    update(base, 1);
                                else {
                                    // reportFail(inst, base);
                                    return false;
                                }
                                break;
                            }
                            case InstructionID::AtomicAdd: {
                                auto base = pointerBase.lookup(inst.getOperand(0));
                                if(base && (base->isGlobal() || base->is<StackAllocInst>()))
                                    update(base, 2);
                                else {
                                    // reportFail(inst, base);
                                    return false;
                                }
                                break;
                            }
                            default:
                                break;
                        }
                    }
            }
        }

        if(todo.empty())
            return false;

        for(auto gv : todo)
            gv.first->attr().addAttr(GlobalVariableAttribute::InitOnce);
        return true;
    }

public:
    bool run(Module& module, AnalysisPassManager& analysis) const override {
        bool modified = false;
        modified |= setReadOnly(module, analysis);
        modified |= setFlexible(module, analysis);
        modified |= setInitOnce(module, analysis);
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "GlobalVarAttrInfer"sv;
    }
};

CMMC_TRANSFORM_PASS(GlobalVarAttrInfer);

CMMC_NAMESPACE_END

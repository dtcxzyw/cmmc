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

#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <queue>
#include <string_view>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class GlobalVarAttrInfer final : public TransformPass<Module> {
public:
    bool run(Module& module, AnalysisPassManager& analysis) const override {
        std::list<GlobalVariable*> todo;
        for(auto global : module.globals()) {
            if(global->is<GlobalVariable>()) {
                const auto gv = global->as<GlobalVariable>();
                if(!gv->attr().hasAttr(GlobalVariableAttribute::ReadOnly) && gv->getLinkage() == Linkage::Internal) {
                    todo.push_back(gv);
                }
            }
        }

        for(auto global : module.globals()) {
            if(!global->isFunction())
                continue;
            const auto func = global->as<Function>();
            if(!func->blocks().empty()) {
                auto& alias = analysis.get<AliasAnalysis>(*func);
                for(auto block : func->blocks()) {
                    for(auto inst : block->instructions()) {
                        if(inst->getInstID() == InstructionID::Store) {
                            const auto address = inst->getOperand(0);
                            todo.remove_if([&](GlobalVariable* gv) { return !alias.isDistinct(gv, address); });
                        } else if(inst->getInstID() == InstructionID::Call) {
                            const auto callee = inst->operands().back()->as<Function>();
                            // external funcs
                            if(callee->blocks().empty() && !callee->attr().hasAttr(FunctionAttribute::NoMemoryWrite)) {
                                todo.remove_if([&](GlobalVariable* gv) {
                                    for(auto operand : inst->operands()) {
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

        return true;
    }

    std::string_view name() const noexcept override {
        return "GlobalVarAttrInfer"sv;
    }
};

CMMC_TRANSFORM_PASS(GlobalVarAttrInfer);

CMMC_NAMESPACE_END

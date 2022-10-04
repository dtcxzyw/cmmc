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

// replace load with the last loaded/stored value
// ^entry(i32* %a, i32 %b):
//     store i32* %a with i32 0
//     i32 %c = load i32* %a;
//     ret i32 %c;
// ==>
// ^entry(i32* %a, i32* %b):
//     store i32* %a with i32 0
//     i32 %c = load i32* %a;
//     ret i32 0; // replace %c with 0

// TODO: handling branches:
// ^a(i1 %arg):
//     i32* %x = alloc i32;
//     cbr %arg, [^b i32* %x], [^c i32* %x];
// ^b(i32* %arg):
//     store i32* %arg with i32 1;
//     ubr [^d i32* %arg];
// ^c(i32* %arg):
//     store i32* %arg with i32 2;
//     ubr [^d i32* %arg];
// ^d(i32* %arg):
//     i32 %x = load i32* %arg;
// ==>
// ^a(i1 %arg):
//     i32* %x = alloc i32;
//     cbr %arg, [^b i32* %x], [^c i32* %x];
// ^b(i32* %arg):
//     store i32* %arg with i32 1;
//     ubr [^d i32 1];
// ^c(i32* %arg):
//     store i32* %arg with i32 2;
//     ubr [^d i32 2];
// ^d(i32 %x):
//

#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <iostream>
#include <queue>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class FunctionAttrInfer final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        if(!func.attr().hasAttr(FunctionAttribute::NoReturn)) {
            bool noReturn = true;
            for(auto block : func.blocks())
                if(block->getTerminator()->getInstID() == InstructionID::Ret) {
                    noReturn = false;
                    break;
                }
            if(noReturn) {
                func.attr().addAttr(FunctionAttribute::NoReturn);
                modified = true;
            }
        }

        if(!func.attr().hasAttr(FunctionAttribute::NoMemoryRead)) {
            auto hasLoad = [&] {
                for(auto block : func.blocks()) {
                    for(auto inst : block->instructions()) {
                        switch(inst->getInstID()) {
                            case InstructionID::Load: {
                                const auto addr = inst->getOperand(0);
                                // TODO: pointer coloring for GEP
                                if(addr->is<StackAllocInst>())
                                    continue;
                                return true;
                            }
                            case InstructionID::Call: {
                                const auto callee = inst->operands().back();
                                if(callee == &func)
                                    continue;
                                if(callee->is<Function>()) {
                                    if(!callee->as<Function>()->attr().hasAttr(FunctionAttribute::NoMemoryRead)) {
                                        return true;
                                    }
                                }
                                break;
                            }
                            default:
                                break;
                        }
                    }
                }
                return false;
            };

            if(!hasLoad()) {
                func.attr().addAttr(FunctionAttribute::NoMemoryRead);
                modified = true;
            }
        }

        if(!func.attr().hasAttr(FunctionAttribute::NoMemoryWrite)) {
            auto hasWrite = [&] {
                for(auto block : func.blocks()) {
                    for(auto inst : block->instructions()) {
                        switch(inst->getInstID()) {
                            case InstructionID::Store: {
                                const auto addr = inst->getOperand(0);
                                // TODO: pointer coloring for GEP
                                if(addr->is<StackAllocInst>())
                                    continue;
                                return true;
                            }
                            case InstructionID::Call: {
                                const auto callee = inst->operands().back();
                                if(callee == &func)
                                    continue;
                                if(callee->is<Function>()) {
                                    if(!callee->as<Function>()->attr().hasAttr(FunctionAttribute::NoMemoryWrite)) {
                                        return true;
                                    }
                                } else
                                    return true;
                            }
                            default:
                                break;
                        }
                    }
                }

                return false;
            };

            if(!hasWrite()) {
                func.attr().addAttr(FunctionAttribute::NoMemoryWrite);
                modified = true;
            }
        }

        if(func.attr().hasAttr(FunctionAttribute::NoMemoryWrite) && !func.attr().hasAttr(FunctionAttribute::NoSideEffect)) {
            auto hasSideEffect = [&] {
                for(auto block : func.blocks()) {
                    for(auto inst : block->instructions()) {
                        switch(inst->getInstID()) {
                            case InstructionID::Call: {
                                const auto callee = inst->operands().back();
                                if(callee == &func)
                                    continue;
                                if(callee->is<Function>()) {
                                    if(!callee->as<Function>()->attr().hasAttr(FunctionAttribute::NoSideEffect))
                                        return true;
                                } else
                                    return true;
                            }
                            default:
                                break;
                        }
                    }
                }

                return false;
            };

            if(!hasSideEffect()) {
                func.attr().addAttr(FunctionAttribute::NoSideEffect);
                modified = true;
            }
        }

        if(!func.attr().hasAttr(FunctionAttribute::Stateless)) {
            if(func.attr().hasAttr(FunctionAttribute::NoMemoryRead) && func.attr().hasAttr(FunctionAttribute::NoSideEffect)) {
                func.attr().addAttr(FunctionAttribute::Stateless);
                modified = true;
            }
        }

        if(!func.attr().hasAttr(FunctionAttribute::NoRecurse)) {
            auto hasSelfCall = [&] {
                for(auto block : func.blocks()) {
                    for(auto inst : block->instructions()) {
                        switch(inst->getInstID()) {
                            case InstructionID::Call: {
                                const auto callee = inst->operands().back();
                                if(callee == &func)
                                    return true;
                            }
                            default:
                                break;
                        }
                    }
                }

                return false;
            };

            if(!hasSelfCall()) {
                func.attr().addAttr(FunctionAttribute::NoRecurse);
                modified = true;
            }
        }

        return modified;
    }

    PassType type() const noexcept override {
        return PassType::AttributeInference;
    }
};

CMMC_TRANSFORM_PASS(FunctionAttrInfer);

CMMC_NAMESPACE_END

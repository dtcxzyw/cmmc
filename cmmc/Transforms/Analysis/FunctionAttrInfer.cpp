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

#include <cmmc/Analysis/PointerAddressSpaceAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <queue>
#include <string_view>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class FunctionAttrInfer final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& addressSpace = analysis.get<PointerAddressSpaceAnalysis>(func);

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
                                if(addressSpace.mustBe(addr, AddressSpaceType::InternalStack))
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
                                if(addressSpace.mustBe(addr, AddressSpaceType::InternalStack))
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

    [[nodiscard]] std::string_view name() const noexcept override {
        return "FunctionAttrInfer"sv;
    }
};

CMMC_TRANSFORM_PASS(FunctionAttrInfer);

CMMC_NAMESPACE_END

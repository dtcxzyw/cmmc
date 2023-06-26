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

#include <cmmc/Analysis/PointerBaseAnalysis.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

PointerBaseAnalysisResult PointerBaseAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    PointerBaseAnalysisResult result;
    auto& storage = result.storage();

    for(auto global : analysis.module().globals()) {
        if(!global->isFunction()) {
            storage[global] = global;
        }
    }

    while(true) {
        size_t before = storage.size();

        for(auto& block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                Value* dst = &inst;
                if(!inst.getType()->isPointer() || storage.count(dst))
                    continue;

                switch(inst.getInstID()) {
                    case InstructionID::Alloc:
                        storage[dst] = dst;
                        break;
                    case InstructionID::GetElementPtr: {
                        Value* src = inst.lastOperand();
                        if(auto iter = storage.find(src); iter != storage.end()) {
                            storage[dst] = iter->second;
                        }
                    } break;
                    case InstructionID::Select:
                        if(auto iter1 = storage.find(inst.getOperand(1)); iter1 != storage.end()) {
                            if(auto iter2 = storage.find(inst.getOperand(2)); iter2 != storage.end()) {
                                if(iter1->second == iter2->second) {
                                    storage[dst] = iter1->second;
                                }
                            }
                        }
                        break;
                    case InstructionID::Phi: {
                        Value* src = nullptr;
                        bool same = true;

                        for(auto [pred, val] : inst.as<PhiInst>()->incomings()) {
                            if(val->value == dst)
                                continue;
                            if(auto iter = storage.find(val->value); iter != storage.end()) {
                                if(!src || iter->second == src) {
                                    src = iter->second;
                                    continue;
                                }
                            }

                            same = false;
                            break;
                        }

                        if(same && src) {
                            storage[dst] = src;
                        }
                    } break;
                    default:
                        break;
                }
            }
        }

        if(storage.size() == before)
            break;
    }

    return result;
}

Value* PointerBaseAnalysisResult::lookup(Value* pointer) const {
    return mInfo.count(pointer) ? mInfo.at(pointer) : nullptr;
}

CMMC_NAMESPACE_END

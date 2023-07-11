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

#include <cmmc/Analysis/PointerAlignmentAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <queue>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

PointerAlignmentAnalysisResult PointerAlignmentAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    PointerAlignmentAnalysisResult result;
    auto& storage = result.storage();

    auto& dataLayout = analysis.module().getTarget().getDataLayout();

    std::queue<Instruction*> q;
    constexpr uint32_t maxEnqueueCount = 32;
    std::unordered_map<Instruction*, uint32_t> enqueueCount;
    std::unordered_set<Instruction*> inQueue;

    auto update = [&](TrackableValue* pointer, uint32_t newVal) {
        auto& val = storage[pointer];
        if(val != newVal) {
            val = newVal;

            for(auto user : pointer->users()) {
                if(user->getType()->isPointer() && user->getBlock()->getFunction() == &func) {
                    if(!inQueue.count(user)) {
                        if(enqueueCount[user]++ < maxEnqueueCount) {
                            q.push(user);
                            inQueue.insert(user);
                        }
                    }
                }
            }
        }
    };

    for(auto global : analysis.module().globals()) {
        if(!global->isFunction()) {
            // TODO: alignment for globals
            update(global, result.lookup(global, dataLayout));
        }
    }

    for(auto arg : func.args()) {
        if(arg->getType()->isPointer()) {
            // TODO: alignment for args
            update(arg, result.lookup(arg, dataLayout));
        }
    }

    for(auto block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            if(!inst.getType()->isPointer())
                continue;
            // TODO: alignment for allocas
            update(&inst, result.lookup(&inst, dataLayout));
        }
    }

    while(!q.empty()) {
        auto u = q.front();
        q.pop();
        inQueue.erase(u);

        switch(u->getInstID()) {
            case InstructionID::Phi: {
                uint32_t minVal = 16U;

                for(auto [k, v] : u->as<PhiInst>()->incomings())
                    minVal = std::min(minVal, result.lookup(v->value, dataLayout));
                update(u, minVal);
                break;
            }
            case InstructionID::Select: {
                update(u, std::min(result.lookup(u->getOperand(1), dataLayout), result.lookup(u->getOperand(2), dataLayout)));
                break;
            }
            case InstructionID::GetElementPtr: {
                // TODO
                // const auto baseAlignment = result.lookup(u->lastOperand(), dataLayout);

                // auto [constantOffset, offsets] = u->as<GetElementPtrInst>()->gatherOffsets(dataLayout);
                // const auto alignment = baseAlignment;
                break;
            }
            case InstructionID::PtrCast: {
                update(u, result.lookup(u->getOperand(0), dataLayout));
                break;
            }
            default:
                break;
        }
    }

    return result;
}

uint32_t PointerAlignmentAnalysisResult::lookup(Value* pointer, const DataLayout& dataLayout) const {
    if(auto iter = mInfo.find(pointer); iter != mInfo.end())
        return iter->second;
    return static_cast<uint32_t>(pointer->getType()->as<PointerType>()->getPointee()->getAlignment(dataLayout));
}

CMMC_NAMESPACE_END

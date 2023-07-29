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
#include <cmmc/Analysis/SCEVAnalysis.hpp>
#include <cmmc/Analysis/SCEVExpr.hpp>
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
    auto& scev = analysis.get<SCEVAnalysis>(func);
    PointerAlignmentAnalysisResult result;
    auto& storage = result.storage();

    auto& dataLayout = analysis.module().getTarget().getDataLayout();

    std::queue<Instruction*> q;
    constexpr uint32_t maxEnqueueCount = 32;
    std::unordered_map<Instruction*, uint32_t> enqueueCount;
    std::unordered_set<Instruction*> inQueue;

    auto update = [&](TrackableValue* pointer, uint32_t newVal) {
        auto& val = storage[pointer];
        if(val < newVal) {
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
            const auto var = global->as<GlobalVariable>();
            update(global, static_cast<uint32_t>(var->getAlignment()));
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
            if(inst.getInstID() == InstructionID::Alloc) {
                update(&inst, static_cast<uint32_t>(inst.as<StackAllocInst>()->getAlignment()));
            } else
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
                const auto baseAlignment = result.lookup(u->lastOperand(), dataLayout);
                auto [constantOffset, offsets] = u->as<GetElementPtrInst>()->gatherOffsets(dataLayout);
                // alignment = lowbit(baseAlign * k + constantOffset + offsets.index * offsets.stride)
                auto alignment = baseAlignment;
                if(constantOffset)
                    alignment = std::min(alignment, static_cast<uint32_t>(constantOffset & -constantOffset));
                for(auto& [stride, idx] : offsets) {
                    auto times = static_cast<intmax_t>(stride);
                    const auto scevExpr = scev.query(idx);
                    if(scevExpr && scevExpr->instID == SCEVInstID::AddRec &&
                       scevExpr->operands[0]->instID == SCEVInstID::Constant && scevExpr->operands[0]->constant == 0 &&
                       scevExpr->operands[1]->instID == SCEVInstID::Constant) {
                        times *= scevExpr->operands[1]->constant;
                    }

                    alignment = std::min(alignment, static_cast<uint32_t>(times & -times));
                }
                update(u, alignment);
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

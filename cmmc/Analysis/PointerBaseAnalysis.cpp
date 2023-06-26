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
#include <queue>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

PointerBaseAnalysisResult PointerBaseAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    PointerBaseAnalysisResult result;
    auto& storage = result.storage();

    std::unordered_map<Value*, std::vector<Instruction*>> graph;
    for(auto& block : func.blocks())
        for(auto& inst : block->instructions()) {
            if(!inst.getType()->isPointer())
                continue;

            switch(inst.getInstID()) {
                case InstructionID::GetElementPtr:
                    [[fallthrough]];
                case InstructionID::PtrCast:
                    graph[inst.lastOperand()].push_back(&inst);
                    break;
                case InstructionID::Select:
                    graph[inst.getOperand(1)].push_back(&inst);
                    graph[inst.getOperand(2)].push_back(&inst);
                    break;
                case InstructionID::Phi:
                    for(auto [pred, val] : inst.as<PhiInst>()->incomings())
                        if(val->value != &inst)
                            graph[val->value].push_back(&inst);
                    break;
                default:
                    break;
            }
        }

    std::queue<Instruction*> q;
    std::unordered_set<Instruction*> visiting;  // in queue + visited
    const auto setStorage = [&](Value* dst, Value* src, Instruction* inst) {
        assert(!storage.count(dst));
        storage[dst] = src;
        if(inst)
            visiting.insert(inst);

        for(auto child : graph[dst])
            if(visiting.insert(child).second) {
                q.push(child);
            }
    };

    for(auto global : analysis.module().globals())
        if(!global->isFunction())
            setStorage(global, global, nullptr);

    for(auto& block : func.blocks())
        for(auto& inst : block->instructions())
            if(inst.getType()->isPointer() && inst.getInstID() == InstructionID::Alloc)
                setStorage(&inst, &inst, &inst);

    while(!q.empty()) {
        auto inst = q.front();
        q.pop();
        visiting.erase(inst);

        switch(inst->getInstID()) {
            case InstructionID::GetElementPtr:
                [[fallthrough]];
            case InstructionID::PtrCast:
                setStorage(inst, storage.at(inst->lastOperand()), inst);  // guranteed to be in storage
                break;
            case InstructionID::Select:
                if(auto iter1 = storage.find(inst->getOperand(1)); iter1 != storage.end()) {
                    if(auto iter2 = storage.find(inst->getOperand(2)); iter2 != storage.end()) {
                        if(iter1->second == iter2->second)
                            setStorage(inst, iter1->second, inst);
                    }
                }
                break;
            case InstructionID::Phi: {
                Value* src = nullptr;
                bool same = true;

                for(auto [pred, val] : inst->as<PhiInst>()->incomings()) {
                    if(val->value == inst)
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

                if(same && src)
                    setStorage(inst, src, inst);
            } break;
            default:
                break;
        }
    }

    return result;
}

Value* PointerBaseAnalysisResult::lookup(Value* pointer) const {
    return mInfo.count(pointer) ? mInfo.at(pointer) : nullptr;
}

CMMC_NAMESPACE_END
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
    std::unordered_map<Instruction*, size_t> degree;
    for(auto& block : func.blocks())
        for(auto& inst : block->instructions()) {
            if(!inst.getType()->isPointer())
                continue;

            switch(inst.getInstID()) {
                case InstructionID::GetElementPtr:
                    [[fallthrough]];
                case InstructionID::PtrCast:
                    graph[inst.lastOperand()].push_back(&inst);
                    degree[&inst] = 1;
                    break;
                case InstructionID::Select:
                    graph[inst.getOperand(1)].push_back(&inst);
                    graph[inst.getOperand(2)].push_back(&inst);
                    degree[&inst] = 2;
                    break;
                case InstructionID::Phi: {
                    size_t size = 0;
                    for(auto [pred, val] : inst.as<PhiInst>()->incomings())
                        if(val->value != &inst) {
                            graph[val->value].push_back(&inst);
                            size++;
                        }
                    degree[&inst] = size;
                } break;
                default:
                    break;
            }
        }

    std::queue<Instruction*> q;
    const auto setStorage = [&](Value* dst, Value* src) {
        assert(!storage.count(dst));
        storage[dst] = src;

        for(auto child : graph[dst]) {
            assert(degree.at(child) > 0);
            if(--degree.at(child) == 0) {
                q.push(child);
            }
        }
    };

    for(auto global : analysis.module().globals())
        if(!global->isFunction())
            setStorage(global, global);

    for(auto& block : func.blocks())
        for(auto& inst : block->instructions())
            if(inst.getType()->isPointer() && inst.getInstID() == InstructionID::Alloc)
                setStorage(&inst, &inst);

    while(!q.empty()) {
        auto inst = q.front();
        q.pop();

        switch(inst->getInstID()) {
            case InstructionID::GetElementPtr:
                [[fallthrough]];
            case InstructionID::PtrCast:
                setStorage(inst, storage.at(inst->lastOperand()));
                break;
            case InstructionID::Select: {
                Value* src1 = storage.at(inst->getOperand(1));
                Value* src2 = storage.at(inst->getOperand(2));
                if(src1 == src2)
                    setStorage(inst, src1);
            } break;
            case InstructionID::Phi: {
                Value* src = nullptr;
                bool same = true;

                for(auto [pred, val] : inst->as<PhiInst>()->incomings()) {
                    if(val->value == inst)
                        continue;
                    Value* from = storage.at(val->value);
                    if(!src || from == src)
                        src = from;
                    else {
                        same = false;
                        break;
                    }
                }

                if(same && src)
                    setStorage(inst, src);
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

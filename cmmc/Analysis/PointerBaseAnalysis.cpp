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

constexpr uint32_t maxTraceDepth = 8;
static Value* traceInterProceduralInst(Instruction* inst, uint32_t depth);
static Value* traceInterProceduralVal(Value* val, uint32_t depth);
static Value* traceInterProceduralArg(Function& func, FuncArgument* arg, uint32_t idx, uint32_t depth) {
    if(depth > maxTraceDepth)
        return nullptr;
    Value* commonSrc = nullptr;

    for(auto user : func.users()) {
        assert(user->getInstID() == InstructionID::Call);
        const auto argVal = user->getOperand(idx);
        if(argVal == arg) {
            continue;
        }
        const auto src = traceInterProceduralVal(arg, depth + 1);
        if(!src)
            return nullptr;
        if(!commonSrc)
            commonSrc = src;
        else if(commonSrc != src)
            return nullptr;
    }

    return commonSrc;
}
static Value* traceInterProceduralVal(Value* val, uint32_t depth) {
    if(val->isGlobal() || val->is<StackAllocInst>())
        return val;
    if(val->isInstruction()) {
        return traceInterProceduralInst(val->as<Instruction>(), depth);
    }
    if(val->isArgument()) {
        uint32_t idx = 0;
        auto& func = *val->as<FuncArgument>()->getFunc();
        for(auto arg : func.args()) {
            if(arg == val) {
                return traceInterProceduralArg(func, arg, idx, depth);
            }
            ++idx;
        }
    }
    return nullptr;
}
static Value* traceInterProceduralInst(Instruction* inst, uint32_t depth) {
    if(depth > maxTraceDepth)
        return nullptr;

    switch(inst->getInstID()) {
        case InstructionID::GetElementPtr:
        case InstructionID::PtrCast:
            return traceInterProceduralVal(inst->lastOperand(), depth + 1);
        case InstructionID::Select: {
            auto src1 = traceInterProceduralVal(inst->getOperand(1), depth + 1);
            if(!src1)
                return nullptr;
            auto src2 = traceInterProceduralVal(inst->getOperand(2), depth + 1);
            if(src1 == src2)
                return src1;
        } break;
        case InstructionID::Phi: {
            Value* commonSrc = nullptr;

            for(auto [pred, val] : inst->as<PhiInst>()->incomings()) {
                if(val->value == inst)
                    continue;
                auto src = traceInterProceduralVal(val->value, depth + 1);
                if(!src)
                    return nullptr;
                if(commonSrc == nullptr)
                    commonSrc = src;
                else if(commonSrc != src) {
                    return nullptr;
                }
            }

            return commonSrc;
        } break;
        default:
            break;
    }

    return nullptr;
}

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
                case InstructionID::PtrCast:
                    graph[inst.lastOperand()].push_back(&inst);
                    degree[&inst] = 1;
                    break;
                case InstructionID::PtrAdd:
                    graph[inst.getOperand(0)].push_back(&inst);
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
    bool directlyUseGlobal = !q.empty();

    uint32_t argIdx = 0;
    Value* uniquePointerArg = nullptr;
    uint32_t argCount = 0;
    for(auto arg : func.args()) {
        if(arg->getType()->isPointer()) {
            if(auto base = traceInterProceduralArg(func, arg, argIdx, 0)) {
                setStorage(arg, base);
            }
            uniquePointerArg = arg;
            ++argCount;
        }
        ++argIdx;
    }

    if(!directlyUseGlobal && argCount == 1) {
        setStorage(uniquePointerArg, uniquePointerArg);
    }

    for(auto& block : func.blocks())
        for(auto& inst : block->instructions())
            if(inst.getType()->isPointer() && inst.getInstID() == InstructionID::Alloc)
                setStorage(&inst, &inst);

    while(!q.empty()) {
        auto inst = q.front();
        q.pop();

        switch(inst->getInstID()) {
            case InstructionID::GetElementPtr:
            case InstructionID::PtrCast:
                setStorage(inst, storage.at(inst->lastOperand()));
                break;
            case InstructionID::PtrAdd:
                setStorage(inst, storage.at(inst->getOperand(0)));
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

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

#include "cmmc/Config.hpp"
#include "cmmc/Support/Diagnostics.hpp"
#include <cmmc/Analysis/SimpleValueAnalysis.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

void SimpleValueAnalysis::next(Instruction* inst) {
    const auto update = [&](Value* base, Value* addr, Value* val) {
        auto& lastValue = mLastValue[base];
        std::vector<Value*> outdated;
        for(auto [ptr, val] : lastValue) {
            CMMC_UNUSED(val);
            if(ptr != addr && !mAliasSet.isDistinct(ptr, addr))
                outdated.push_back(val);
        }
        for(auto key : outdated)
            lastValue.erase(key);

        lastValue[addr] = val;
    };

    switch(inst->getInstID()) {
        case InstructionID::Load: {
            const auto addr = inst->getOperand(0);
            const auto base = mBasePointer.find(addr);
            if(base != mBasePointer.cend())
                update(base->second, addr, inst);
        } break;
        case InstructionID::Store: {
            const auto addr = inst->getOperand(0);
            const auto base = mBasePointer.find(addr);
            if(base != mBasePointer.cend())
                update(base->second, addr, inst->getOperand(1));
            else
                mLastValue.clear();  // discard all cached values
        } break;
        case InstructionID::Call: {
            const auto callee = inst->operands().back();
            if(auto func = dynamic_cast<Function*>(callee)) {
                if(!func->attr().hasAttr(FunctionAttribute::NoSideEffect))
                    mLastValue.clear();  // discard all cached values
            } else {
                mLastValue.clear();  // discard all cached values
            }
        } break;
        case InstructionID::Alloc: {
            mBasePointer.emplace(inst, inst);
            mLastValue[inst].emplace(inst, make<UndefinedValue>(inst->getType()));
        } break;
            // TODO: GEP
        default:
            break;
    }
}

void SimpleValueAnalysis::addAlias(Value* newPtr, Value* srcPtr) {
    assert(newPtr->getType()->isSame(srcPtr->getType()));
    const auto iter = mBasePointer.find(srcPtr);
    if(iter == mBasePointer.cend())
        return;
    const auto basePtr = iter->second;
    const auto it = mBasePointer.find(newPtr);
    if(it != mBasePointer.cend()) {
        if(it->second != basePtr) {  // mark as nondeterministic
            it->second = nullptr;
        }
    } else {
        mBasePointer.emplace(newPtr, basePtr);
        auto& value = mLastValue[basePtr];
        value[newPtr] = value[srcPtr];
    }
}

Value* SimpleValueAnalysis::getLastValue(Value* pointer) const {
    const auto iter = mBasePointer.find(pointer);
    if(iter == mBasePointer.cend())
        return nullptr;
    const auto it = mLastValue.find(iter->second);
    if(it == mLastValue.cend())
        return nullptr;
    const auto val = it->second.find(pointer);
    return val == it->second.cend() ? nullptr : val->second;
}

void SimpleValueAnalysis::merge(const SimpleValueAnalysis& rhs) {
    assert(&mAliasSet == &rhs.mAliasSet);

    for(auto [ptr, base] : rhs.mBasePointer) {
        const auto iter = mBasePointer.find(ptr);
        if(iter != mBasePointer.cend()) {
            if(iter->second != base)
                iter->second = nullptr;  // mark as nondeterministic
        } else {
            mBasePointer.emplace(ptr, base);
        }
    }

    for(auto& [base, table] : rhs.mLastValue) {
        auto& lastValue = mLastValue[base];
        for(auto [ptr, val] : table) {
            const auto iter = lastValue.find(ptr);
            if(iter == lastValue.cend())
                lastValue.emplace(ptr, val);
            else if(iter->second != val)  // TODO: call Value::isEqual?
                iter->second = nullptr;   // mark as nondeterministic
        }
    }
}

void SimpleValueAnalysis::completeMerge() {
    // remove nondeterministic bases and values
    auto cleanNondeterministic = [](std::unordered_map<Value*, Value*>& map) {
        std::vector<Value*> deferred;
        for(auto [ptr, val] : map)
            if(val == nullptr)
                deferred.push_back(ptr);
        for(auto ptr : deferred)
            map.erase(ptr);
    };

    cleanNondeterministic(mBasePointer);

    for(auto& [base, table] : mLastValue) {
        CMMC_UNUSED(base);
        cleanNondeterministic(table);
    }
}

CMMC_NAMESPACE_END

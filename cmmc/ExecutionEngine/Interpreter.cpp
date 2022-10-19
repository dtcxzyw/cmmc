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

#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/ExecutionEngine/Interpreter.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Type.hpp>
#include <cstdint>
#include <deque>
#include <optional>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

enum class ByteState : uint8_t { ReadWrite, ReadOnly, Undetermined, Poisoned };

// Byte-level simulation
class MemoryContext final {
    using ByteStorage = std::pair<ByteState, std::byte>;
    static_assert(sizeof(ByteStorage) == 2);
    static_assert(sizeof(uintptr_t) == 8);

    static constexpr uint64_t globalOffset = 0xf000'0000'0000'0000;
    static constexpr uint64_t stackOffset = 0x1000'0000'0000'0000;

    size_t mBudget;
    const DataLayout* mDataLayout;
    std::vector<ByteStorage> mGlobalStorage;
    std::unordered_map<GlobalVariable*, uintptr_t> mGlobalAlloc;
    std::vector<ByteStorage> mStackStorage;

    uintptr_t paddingTo(std::vector<ByteStorage>& storage, size_t base, size_t alignment) {
        CMMC_UNUSED(storage);
        CMMC_UNUSED(base);
        CMMC_UNUSED(alignment);
        return 0;
    }
    void makeUnknown(std::vector<ByteStorage>& storage, size_t base, size_t size) {
        CMMC_UNUSED(storage);
        CMMC_UNUSED(base);
        CMMC_UNUSED(size);
    }

public:
    MemoryContext(size_t budget, const DataLayout* dataLayout) : mBudget{ budget }, mDataLayout{ dataLayout } {}
    bool isExceeded() const noexcept {
        return (mGlobalStorage.size() + mStackStorage.size()) * 2 <= mBudget;
    }
    uintptr_t getGlobalVarAddress(GlobalVariable* var, bool initialize) {
        const auto iter = mGlobalAlloc.find(var);
        if(iter == mGlobalAlloc.cend())
            return iter->second;
        const auto alignment = var->getType()->getAlignment(*mDataLayout);
        const auto size = var->getType()->getSize(*mDataLayout);
        const auto ptr = paddingTo(mGlobalStorage, mGlobalStorage.size(), alignment);
        makeUnknown(mGlobalStorage, ptr, size);
        if(var->initialValue() && (initialize || var->attr().hasAttr(GlobalVariableAttribute::ReadOnly))) {
            // initialize with initialValue
            storeValue(ptr, var->initialValue());
        }
        mGlobalAlloc.emplace(var, ptr + globalOffset);
        return ptr;
    }
    uintptr_t stackPush(size_t size, size_t alignment);
    void stackPop(uintptr_t base);

    uint8_t load(uintptr_t ptr);
    void store(uintptr_t x, uint8_t y);

    void storeValue(uintptr_t val, ConstantValue* value);
};

class ExecutionContext final {
public:
};

Interpreter::Interpreter(size_t timeBudget, size_t memBudget, size_t maxRecursiveDepth, size_t maxRecordedSizeEffect)
    : mTimeBudget{ timeBudget }, mMemBudget{ memBudget }, mMaxRecursiveDepth{ maxRecursiveDepth }, mMaxRecordedSizeEffect{
          maxRecordedSizeEffect
      } {}

std::variant<Function*, SimulationFailReason> Interpreter::execute(Function& func,
                                                                   const std::vector<ConstantValue*>& arguments) const {
    CMMC_UNUSED(func);
    CMMC_UNUSED(arguments);

    return nullptr;
}

CMMC_NAMESPACE_END

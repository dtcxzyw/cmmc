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
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/ExecutionEngine/Interpreter.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>
#include <deque>
#include <map>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

enum class ByteState : uint8_t { Read = 1 << 0, Write = 1 << 1, Undetermined = 1 << 2 };

constexpr ByteState operator|(ByteState lhs, ByteState rhs) {
    return static_cast<ByteState>(static_cast<uint8_t>(lhs) | static_cast<uint8_t>(rhs));
}

constexpr ByteState operator|=(ByteState& lhs, ByteState rhs) {
    return lhs = lhs | rhs;
}

constexpr ByteState operator&(ByteState lhs, ByteState rhs) {
    return static_cast<ByteState>(static_cast<uint8_t>(lhs) & static_cast<uint8_t>(rhs));
}

constexpr ByteState operator&=(ByteState& lhs, ByteState rhs) {
    return lhs = lhs & rhs;
}

constexpr ByteState operator~(ByteState x) {
    return static_cast<ByteState>(~static_cast<uint8_t>(x));
}

constexpr bool hasTag(ByteState provided, ByteState required) {
    return (provided & required) == required;
}

// Byte-level simulation
class MemoryContext final {
    using ByteStorage = std::pair<ByteState, std::byte>;
    static_assert(sizeof(ByteStorage) == 2);
    static_assert(sizeof(uintptr_t) == 8);

    static constexpr uint64_t globalOffset = 0xf000'0000'0000'0000;
    static constexpr uint64_t stackOffset = 0x1000'0000'0000'0000;
    static constexpr ByteStorage invalidByte{ ByteState::Undetermined, {} };

    size_t mBudget;
    const DataLayout& mDataLayout;
    bool mHasMemoryError = false;
    std::vector<ByteStorage> mGlobalStorage;
    std::unordered_map<GlobalVariable*, uintptr_t> mGlobalAlloc;
    std::vector<ByteStorage> mStackStorage;
    std::map<uintptr_t, uintptr_t> mStackAlloc;  // [begin, end)

    void extendTo(std::vector<ByteStorage>& storage, size_t size) {
        while(storage.size() < size)
            storage.push_back({ ByteState::Undetermined, {} });
    }
    uintptr_t paddingTo(std::vector<ByteStorage>& storage, size_t base, size_t alignment) {
        const auto pos = (base / alignment + 1) * alignment;
        extendTo(storage, pos);
        for(size_t idx = base; idx != pos; ++idx) {
            storage[idx] = { ByteState::Undetermined, {} };
        }
        return pos;
    }
    void setTag(std::vector<ByteStorage>& storage, size_t base, size_t size, ByteState tag) {
        extendTo(storage, base + size);
        for(size_t idx = 0; idx != size; ++idx)
            storage[base + idx].first = tag;
    }

    void removeTag(std::vector<ByteStorage>& storage, size_t base, size_t size, ByteState tag) {
        extendTo(storage, base + size);
        for(size_t idx = 0; idx != size; ++idx)
            storage[base + idx].first &= ~tag;
    }

    ByteStorage load(std::vector<ByteStorage>& storage, uintptr_t ptr) {
        if(ptr < storage.size()) {
            const auto val = storage[ptr];
            if(hasTag(val.first, ByteState::Read))
                return val;
        }
        mHasMemoryError = true;
        return invalidByte;
    }
    void store(std::vector<ByteStorage>& storage, uintptr_t ptr, ByteStorage val) {
        if(ptr < storage.size()) {
            auto& ref = storage[ptr];
            if(hasTag(ref.first, ByteState::Write)) {
                if(hasTag(val.first, ByteState::Undetermined))
                    ref.first |= ByteState::Undetermined;
                else {
                    ref.first &= ~ByteState::Undetermined;
                    ref.second = val.second;
                }
                return;
            }
        }
        mHasMemoryError = true;
    }

public:
    MemoryContext(size_t budget, const DataLayout& dataLayout) : mBudget{ budget }, mDataLayout{ dataLayout } {
        mStackAlloc.emplace(16U, 16U);  // start
    }
    bool isExceeded() const noexcept {
        return (mGlobalStorage.size() + mStackStorage.size()) * 2 <= mBudget;
    }
    bool hasException() const noexcept {
        return mHasMemoryError;
    }
    uintptr_t getGlobalVarAddress(GlobalVariable* var, bool initialize) {
        const auto iter = mGlobalAlloc.find(var);
        if(iter == mGlobalAlloc.cend())
            return iter->second;
        const auto alignment = var->getType()->getAlignment(mDataLayout);
        const auto size = var->getType()->getSize(mDataLayout);
        const auto ptr = paddingTo(mGlobalStorage, mGlobalStorage.size(), alignment);
        setTag(mGlobalStorage, ptr, size, ByteState::Read | ByteState::Write | ByteState::Undetermined);
        if(var->initialValue() && (initialize || var->attr().hasAttr(GlobalVariableAttribute::ReadOnly))) {
            // initialize with initialValue
            storeValue(ptr + globalOffset, var->initialValue());
        }
        if(var->attr().hasAttr(GlobalVariableAttribute::ReadOnly))
            removeTag(mGlobalStorage, ptr, size, ByteState::Write);
        return ptr + globalOffset;
    }
    uintptr_t stackPush(size_t size, size_t alignment) {
        const auto [beg, end] = *mStackAlloc.rbegin();
        CMMC_UNUSED(beg);
        const auto ptr = paddingTo(mStackStorage, end, alignment);
        setTag(mStackStorage, ptr, size, ByteState::Undetermined | ByteState::Read | ByteState::Write);
        mStackAlloc.emplace(ptr, ptr + size);
        return ptr + stackOffset;
    }
    void stackPop(uintptr_t base) {
        base -= stackOffset;
        const auto iter = mStackAlloc.find(base);
        assert(iter != mStackAlloc.cend());
        const auto [begin, end] = *iter;
        setTag(mStackStorage, begin, end - begin, ByteState::Undetermined);
        mStackAlloc.erase(iter);
    }

    ByteStorage load(uintptr_t ptr) {
        if(ptr >= globalOffset)
            return load(mGlobalStorage, ptr - globalOffset);
        else {
            return load(mStackStorage, ptr - stackOffset);
        }
    }
    void store(uintptr_t ptr, ByteStorage val) {
        if(ptr >= globalOffset)
            return store(mGlobalStorage, ptr - globalOffset, val);
        else {
            return store(mStackStorage, ptr - stackOffset, val);
        }
    }

    void storeValue(uintptr_t ptr, Value* value) {
        const auto alignment = value->getType()->getAlignment(mDataLayout);
        if(ptr % alignment != 0) {
            mHasMemoryError = true;
            return;
        }
        if(value->isConstant()) {
            reportNotImplemented();
        } else {
            const auto size = value->getType()->getSize(mDataLayout);
            for(size_t idx = 0; idx < size; ++idx)
                store(ptr + idx, invalidByte);
        }
    }
};

Interpreter::Interpreter(size_t timeBudget, size_t memBudget, size_t maxRecursiveDepth, size_t maxRecordedSizeEffect)
    : mTimeBudget{ timeBudget }, mMemBudget{ memBudget }, mMaxRecursiveDepth{ maxRecursiveDepth },  //
      mMaxRecordedSizeEffect{ maxRecordedSizeEffect } {}

std::variant<Function*, SimulationFailReason> Interpreter::execute(Module& module, Function& func,
                                                                   const std::vector<ConstantValue*>& arguments) const {
    const auto& target = module.getTarget();
    const auto& dataLayout = target.getDataLayout();
    if(dataLayout.getPointerSize() != 8 || dataLayout.getEndian() != Endian::Little) {
        return SimulationFailReason::UnsupportedTarget;
    }

    MemoryContext ctx{ mMemBudget, dataLayout };

    CMMC_UNUSED(ctx);
    CMMC_UNUSED(func);
    CMMC_UNUSED(arguments);

    return nullptr;
}

CMMC_NAMESPACE_END

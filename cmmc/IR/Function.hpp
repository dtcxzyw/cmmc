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

#pragma once
#include <cmmc/IR/Attribute.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Value.hpp>
#include <ostream>

CMMC_NAMESPACE_BEGIN

enum class FunctionAttribute {
    NoMemoryRead = 1 << 0,
    NoMemoryWrite = 1 << 1,
    NoSideEffect = 1 << 2,
    Stateless = 1 << 3,
    NoAlias = 1 << 4,
    NoReturn = 1 << 5,
    NoRecurse = 1 << 6,
    Entry = 1 << 7
};

enum class CallingConvention { C, Fast };

enum class Intrinsic {
    none,
    // TODO: with alignment? memset.i8/memset.i32/memset.i64...
    memset,  // void memset(i8* ptr, size_t size) -> memset(ptr, 0, size)
    memcpy   // void memcpy(i8* dst, i8* src, size_t size)
};

class FuncArgument final : public Value {
    Function* mFunc;
    String mLabel;

public:
    FuncArgument(Function* func, const Type* type) noexcept : Value{ type }, mFunc{ func } {}
    void dump(std::ostream& out, const HighlightSelector& selector) const override;
    void dumpAsOperand(std::ostream& out) const override;
    void setLabel(String label);
    [[nodiscard]] ValueRank rank() const noexcept override {
        return ValueRank::Argument;
    }
    [[nodiscard]] const String& getLabel() const noexcept {
        return mLabel;
    }
    Function* getFunc() const noexcept {
        return mFunc;
    }
};

class Function final : public GlobalValue {
    Deque<FuncArgument*> mArgs;
    List<Block*> mBlocks;
    Attribute<FunctionAttribute> mAttr;
    CallingConvention mCallingConvention{ CallingConvention::C };
    Intrinsic mIntrinsic;

public:
    Function(String symbol, const FunctionType* type, Intrinsic intrinsic = Intrinsic::none)
        : GlobalValue{ symbol, type }, mIntrinsic{ intrinsic } {}
    [[nodiscard]] FuncArgument* getArg(uint32_t idx) const;
    FuncArgument* addArg(const Type* type);
    [[nodiscard]] auto& args() const noexcept {
        return mArgs;
    }
    [[nodiscard]] Block* entryBlock() const noexcept {
        return mBlocks.front();
    }
    List<Block*>& blocks() noexcept {
        return mBlocks;
    }
    void dump(std::ostream& out, const HighlightSelector& selector) const override;
    void dumpCFG(std::ostream& out) const;
    bool verify(std::ostream& out) const;
    [[nodiscard]] bool isFunction() const noexcept override {
        return true;
    }
    [[nodiscard]] CallingConvention getCallingConvention() const noexcept {
        return mCallingConvention;
    }
    auto& attr() noexcept {
        return mAttr;
    }
    [[nodiscard]] Intrinsic getIntrinsic() const noexcept {
        return mIntrinsic;
    }
};

CMMC_NAMESPACE_END

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

#pragma once
#include <cmmc/IR/Attribute.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <ostream>

CMMC_NAMESPACE_BEGIN

enum class FunctionAttribute {
    NoMemoryRead = 1 << 0,
    NoSideEffect = 1 << 1,
    Stateless = 1 << 2,
    NoAlias = 1 << 3,
    NoReturn = 1 << 4,
    NoRecurse = 1 << 5
};

enum class CallingConvention { C, Fast };

// TODO: intrinsic
class Function final : public GlobalValue {
    List<Block*> mBlocks;
    Attribute<FunctionAttribute> mAttr;
    CallingConvention mCallingConvention;

public:
    Function(String<Arena::Source::IR> symbol, FunctionType* type)
        : GlobalValue{ symbol, type }, mCallingConvention{ CallingConvention::C } {}
    Block* entryBlock() const noexcept {
        return mBlocks.front();
    }
    List<Block*>& blocks() noexcept {
        return mBlocks;
    }
    void dump(std::ostream& out) const override;
    bool verify(std::ostream& out) const;
    bool isFunction() const noexcept override {
        return true;
    }
    CallingConvention getCallingConvention() const noexcept {
        return mCallingConvention;
    }
    auto& attr() noexcept {
        return mAttr;
    }
};

CMMC_NAMESPACE_END

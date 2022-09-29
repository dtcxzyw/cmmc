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
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cstdint>
#include <ostream>

CMMC_NAMESPACE_BEGIN

class ConstantValue : public Value {
public:
    explicit ConstantValue(Type* type) : Value{ type } {}
    bool isConstant() const noexcept override {
        return true;
    }
};

class ConstantInteger final : public ConstantValue {
    intmax_t mValue;

public:
    ConstantInteger(Type* type, intmax_t value) : ConstantValue{ type }, mValue{ value } {
        assert(type->isInteger());
    }
    void dump(std::ostream& out) const override;

    uintmax_t getZeroExtended() const noexcept;
    intmax_t getSignExtended() const noexcept;
};

class ConstantFloatingPoint final : public ConstantValue {
    double mValue;

public:
    ConstantFloatingPoint(Type* type, double value) : ConstantValue{ type }, mValue{ value } {
        assert(type->isFloatingPoint());
    }
    void dump(std::ostream& out) const override;
    double getValue() const noexcept;
    bool isEqual(double val) const noexcept;
};

class ConstantOffset final : public ConstantValue {
    StructType* mBase;
    uint32_t mIndex;

public:
    ConstantOffset(StructType* base, uint32_t index)
        : ConstantValue{ base->fields()[index].type }, mBase{ base }, mIndex{ index } {}
    void dump(std::ostream& out) const override;
};

class UndefinedValue final : public ConstantValue {
public:
    explicit UndefinedValue(Type* type) : ConstantValue{ type } {
        assert(!type->isVoid());
    }
    void dump(std::ostream& out) const override;
};

CMMC_NAMESPACE_END

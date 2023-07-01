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
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cstdint>
#include <ostream>

CMMC_NAMESPACE_BEGIN

enum class ConstantRank { Integer, FloatingPoint, Offset, Unknown };

class ConstantValue : public Value {
protected:
    template <typename T, typename Callable>
    bool isEqualImpl(const ConstantValue* rhs, Callable callable) const {
        if(this == rhs)
            return true;
        if(auto rhsValue = dynamic_cast<const T*>(rhs)) {
            return callable(rhsValue);
        }
        return false;
    }

    virtual void dumpImpl(std::ostream& out) const = 0;

public:
    explicit ConstantValue(const Type* type) : Value{ type } {}
    ConstantValue(const ConstantValue&) = default;
    ConstantValue(ConstantValue&&) = default;
    ConstantValue& operator=(const ConstantValue&) = default;
    ConstantValue& operator=(ConstantValue&&) = default;
    void dump(std::ostream& out, const HighlightSelector& selector) const final;

    [[nodiscard]] virtual ConstantRank constantRank() const noexcept {
        return ConstantRank::Unknown;
    }
    [[nodiscard]] ValueRank rank() const noexcept override {
        return ValueRank::Constant;
    }
    virtual bool isEqual(const ConstantValue* rhs) const = 0;
    [[nodiscard]] virtual size_t hash() const = 0;
};

struct ConstantHasher final {
    size_t operator()(const ConstantValue* val) const {
        return val->hash();
    }
};

struct ConstantWeakEqual final {
    bool operator()(ConstantValue* lhs, ConstantValue* rhs) const {
        return lhs->isEqual(rhs);
    }
};

struct ConstantStrongEqual final {
    bool operator()(ConstantValue* lhs, ConstantValue* rhs) const {
        return lhs->getType()->isSame(rhs->getType()) && lhs->isEqual(rhs);
    }
};

class ConstantInteger final : public ConstantValue {
    intmax_t mValue;
    ConstantInteger(const Type* type, intmax_t value);

public:
    explicit ConstantInteger(const Type* type, intmax_t value, ExplicitConstruct) : ConstantInteger{ type, value } {}
    void dumpImpl(std::ostream& out) const override;

    [[nodiscard]] intmax_t getStorage() const noexcept;
    [[nodiscard]] uintmax_t getZeroExtended() const noexcept;
    [[nodiscard]] intmax_t getSignExtended() const noexcept;
    bool isEqual(const ConstantValue* rhs) const override;
    [[nodiscard]] size_t hash() const override;
    [[nodiscard]] ConstantRank constantRank() const noexcept override {
        return ConstantRank::Integer;
    }

    static ConstantInteger* getTrue() noexcept;
    static ConstantInteger* getFalse() noexcept;
    static ConstantInteger* get(const Type* type, intmax_t value);
};

class ConstantFloatingPoint final : public ConstantValue {
    double mValue;

public:
    ConstantFloatingPoint(const Type* type, double value) : ConstantValue{ type }, mValue{ value } {
        assert(type->isFloatingPoint());
    }
    [[nodiscard]] ConstantRank constantRank() const noexcept override {
        return ConstantRank::FloatingPoint;
    }
    void dumpImpl(std::ostream& out) const override;
    [[nodiscard]] double getValue() const noexcept;
    [[nodiscard]] bool isEqual(double val) const noexcept;
    bool isEqual(const ConstantValue* rhs) const override;
    [[nodiscard]] size_t hash() const override;
};

class ConstantOffset final : public ConstantValue {
    const StructType* mBase;
    uint32_t mIndex;

public:
    ConstantOffset(const StructType* base, uint32_t index) : ConstantValue{ VoidType::get() }, mBase{ base }, mIndex{ index } {}
    void dumpImpl(std::ostream& out) const override;
    [[nodiscard]] const StructType* base() const noexcept {
        return mBase;
    }
    [[nodiscard]] uint32_t index() const noexcept {
        return mIndex;
    }
    [[nodiscard]] ConstantRank constantRank() const noexcept override {
        return ConstantRank::Offset;
    }
    [[nodiscard]] String getName() const;
    bool isEqual(const ConstantValue* rhs) const override;
    [[nodiscard]] size_t hash() const override;
};

class ConstantArray final : public ConstantValue {
    Vector<ConstantValue*> mValues;

public:
    ConstantArray(const ArrayType* type, Vector<ConstantValue*> values) : ConstantValue{ type }, mValues{ std::move(values) } {}
    void dumpImpl(std::ostream& out) const override;
    [[nodiscard]] const Vector<ConstantValue*>& values() const noexcept {
        return mValues;
    }
    [[nodiscard]] Vector<ConstantValue*>& values() noexcept {
        return mValues;
    }
    bool isEqual(const ConstantValue* rhs) const override;
    [[nodiscard]] size_t hash() const override;
};

class ConstantStruct final : public ConstantValue {
    Vector<ConstantValue*> mValues;

public:
    ConstantStruct(const StructType* type, Vector<ConstantValue*> values) : ConstantValue{ type }, mValues{ std::move(values) } {}
    void dumpImpl(std::ostream& out) const override;
    [[nodiscard]] const Vector<ConstantValue*>& values() const noexcept {
        return mValues;
    }
    bool isEqual(const ConstantValue* rhs) const override;
    [[nodiscard]] size_t hash() const override;
};

class UndefinedValue final : public ConstantValue {
public:
    explicit UndefinedValue(const Type* type) : ConstantValue{ type } {
        assert(!type->isVoid());
    }
    [[nodiscard]] bool isUndefined() const noexcept override {
        return true;
    }
    void dumpImpl(std::ostream& out) const override;
    bool isEqual(const ConstantValue* rhs) const override;
    [[nodiscard]] size_t hash() const override;
};

CMMC_NAMESPACE_END

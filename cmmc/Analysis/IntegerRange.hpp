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
#include <cmmc/Config.hpp>
#include <cstdint>
#include <limits>
#include <optional>
#include <ostream>

CMMC_NAMESPACE_BEGIN

// only support i32
class IntegerRange final {
    uint32_t mKnownZeros, mKnownOnes;
    uint64_t mMaxUnsignedValue, mMinUnsignedValue;
    int64_t mMaxSignedValue, mMinSignedValue;

    void bit2Unsigned();
    void unsigned2Bit();
    void signed2Bit();
    void unsigned2Signed();
    void signed2Unsigned();

public:
    explicit IntegerRange();
    explicit IntegerRange(int64_t sval);
    explicit IntegerRange(class ConstantInteger* integer);

    static IntegerRange getNonNegative();

    void setUnsignedRange(uint64_t min, uint64_t max);
    void setSignedRange(int64_t min, int64_t max);
    void setKnownBits(uint32_t zeros, uint32_t ones);
    void sync();
    void print(std::ostream& out) const;

    bool operator==(const IntegerRange& rhs) const;
    bool operator!=(const IntegerRange& rhs) const;

    [[nodiscard]] bool isEmpty() const;
    [[nodiscard]] bool isFull() const;
    [[nodiscard]] bool isNonNegative() const noexcept {
        return mMinSignedValue >= 0;
    }
    [[nodiscard]] bool isPositive() const noexcept {
        return mMinSignedValue > 0;
    }
    [[nodiscard]] bool isNoSignedOverflow() const noexcept {
        return mMinSignedValue > std::numeric_limits<int32_t>::min() && mMaxSignedValue < std::numeric_limits<int32_t>::max();
    }

    [[nodiscard]] bool intersectWith(const IntegerRange& rhs) const;
    [[nodiscard]] std::optional<int64_t> inferConstant() const;
    // [suffix, length]
    [[nodiscard]] std::pair<uint32_t, uint32_t> inferSuffix() const;
    [[nodiscard]] uint32_t knownZeros() const noexcept {
        return mKnownZeros;
    }
    [[nodiscard]] uint32_t knownOnes() const noexcept {
        return mKnownOnes;
    }
    [[nodiscard]] uint64_t maxUnsignedValue() const noexcept {
        return mMaxUnsignedValue;
    }
    [[nodiscard]] uint64_t minUnsignedValue() const noexcept {
        return mMinUnsignedValue;
    }
    [[nodiscard]] int64_t maxSignedValue() const noexcept {
        return mMaxSignedValue;
    }
    [[nodiscard]] int64_t minSignedValue() const noexcept {
        return mMinSignedValue;
    }

    [[nodiscard]] IntegerRange intersectSet(const IntegerRange& rhs) const;
    [[nodiscard]] IntegerRange unionSet(const IntegerRange& rhs) const;

    [[nodiscard]] IntegerRange operator+(const IntegerRange& rhs) const;
    [[nodiscard]] IntegerRange operator-(const IntegerRange& rhs) const;
    [[nodiscard]] IntegerRange operator*(const IntegerRange& rhs) const;
    [[nodiscard]] IntegerRange sdiv(const IntegerRange& rhs) const;
    [[nodiscard]] IntegerRange udiv(const IntegerRange& rhs) const;
    [[nodiscard]] IntegerRange srem(const IntegerRange& rhs) const;
    [[nodiscard]] IntegerRange urem(const IntegerRange& rhs) const;

    [[nodiscard]] IntegerRange operator&(const IntegerRange& rhs) const;
    [[nodiscard]] IntegerRange operator|(const IntegerRange& rhs) const;
    [[nodiscard]] IntegerRange operator^(const IntegerRange& rhs) const;

    [[nodiscard]] IntegerRange shl(const IntegerRange& rhs) const;
    [[nodiscard]] IntegerRange lshr(const IntegerRange& rhs) const;
    [[nodiscard]] IntegerRange ashr(const IntegerRange& rhs) const;

    [[nodiscard]] IntegerRange smax(const IntegerRange& rhs) const;
    [[nodiscard]] IntegerRange smin(const IntegerRange& rhs) const;
    [[nodiscard]] IntegerRange abs() const;
    [[nodiscard]] IntegerRange neg() const;
};

CMMC_NAMESPACE_END

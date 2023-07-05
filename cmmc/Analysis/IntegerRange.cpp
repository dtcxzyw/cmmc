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

#include <algorithm>
#include <cassert>
#include <cmmc/Analysis/IntegerRange.hpp>
#include <cstdint>
#include <iostream>
#include <limits>
#include <optional>

CMMC_NAMESPACE_BEGIN

constexpr bool signedOverflow(int64_t x) {
    return x < std::numeric_limits<int32_t>::min() || x > std::numeric_limits<int32_t>::max();
}

constexpr bool unsignedOverflow(uint64_t x) {
    return x > std::numeric_limits<uint32_t>::max();
}

void IntegerRange::print(std::ostream& out) const {
    out << "Signed: [" << mMinSignedValue << ", " << mMaxSignedValue << "]\n";
    out << "Unsigned: [" << mMinUnsignedValue << ", " << mMaxUnsignedValue << "]\n";
    out << "KnownZeros: " << std::hex << mKnownZeros << std::dec << "\n";
    out << "KnownOnes: " << std::hex << mKnownOnes << std::dec << "\n";
}

void IntegerRange::bit2Unsigned() {
    const auto determined = mKnownOnes | mKnownZeros;
    const auto lcpLength = __builtin_clz(~determined);
    const auto mask = ~((0xffffffff << lcpLength) >> lcpLength);
    const uint64_t minV = mKnownOnes & mask;
    const uint64_t maxV = minV | (~mask);
    mMinUnsignedValue = std::max(mMinUnsignedValue, minV);
    mMaxUnsignedValue = std::min(mMaxUnsignedValue, maxV);
}
void IntegerRange::unsigned2Bit() {
    const auto common = static_cast<uint32_t>(mMinUnsignedValue ^ mMaxUnsignedValue);
    const auto lcpLength = __builtin_clz(common);
    const auto mask = ~((0xffffffff << lcpLength) >> lcpLength);
    mKnownOnes |= static_cast<uint32_t>(mMinUnsignedValue) & mask;
    mKnownZeros |= (~static_cast<uint32_t>(mMinUnsignedValue)) & mask;
}
void IntegerRange::signed2Bit() {
    const auto common = static_cast<uint32_t>(mMinSignedValue ^ mMaxSignedValue);
    const auto lcpLength = __builtin_clz(common);
    const auto mask = ~((0xffffffff << lcpLength) >> lcpLength);
    mKnownOnes |= static_cast<uint32_t>(mMinSignedValue) & mask;
    mKnownZeros |= (~static_cast<uint32_t>(mMinSignedValue)) & mask;
}
void IntegerRange::unsigned2Signed() {
    if(mMaxUnsignedValue <= std::numeric_limits<int32_t>::max()) {
        mMinSignedValue = std::max(mMinSignedValue, static_cast<int64_t>(mMinUnsignedValue));
        mMaxSignedValue = std::min(mMaxSignedValue, static_cast<int64_t>(mMaxUnsignedValue));
    }

    if(mMinUnsignedValue > std::numeric_limits<int32_t>::max()) {
        const int64_t minV = static_cast<int32_t>(mMinUnsignedValue);
        const int64_t maxV = static_cast<int32_t>(mMaxUnsignedValue);

        mMinSignedValue = std::max(mMinSignedValue, minV);
        mMaxSignedValue = std::min(mMaxSignedValue, maxV);
    }
}
void IntegerRange::signed2Unsigned() {
    if(mMinSignedValue >= 0) {
        mMinUnsignedValue = std::max(mMinUnsignedValue, static_cast<uint64_t>(mMinSignedValue));
        mMaxUnsignedValue = std::min(mMaxUnsignedValue, static_cast<uint64_t>(mMaxSignedValue));
    }

    if(mMaxSignedValue < 0) {
        const uint64_t minV = static_cast<uint32_t>(mMinSignedValue);
        const uint64_t maxV = static_cast<uint32_t>(mMaxSignedValue);

        mMinUnsignedValue = std::max(mMinUnsignedValue, minV);
        mMaxUnsignedValue = std::min(mMaxUnsignedValue, maxV);
    }
}

void IntegerRange::setUnsignedRange(uint64_t min, uint64_t max) {
    assert(min <= max);
    mMinUnsignedValue = min;
    mMaxUnsignedValue = max;
}
void IntegerRange::setSignedRange(int64_t min, int64_t max) {
    assert(min <= max);
    mMinSignedValue = min;
    mMaxSignedValue = max;
}
void IntegerRange::setKnownBits(uint32_t zeros, uint32_t ones) {
    assert((zeros & ones) == 0);
    mKnownOnes = ones;
    mKnownZeros = zeros;
}
void IntegerRange::sync() {
    // print(std::cerr << "origin\n");
    signed2Unsigned();
    // print(std::cerr << "s2u\n");
    unsigned2Bit();
    // print(std::cerr << "u2b\n");
    bit2Unsigned();
    // print(std::cerr << "b2u\n");
    unsigned2Signed();
    // print(std::cerr << "u2s\n");
    signed2Bit();
    // print(std::cerr << "s2b\n");
}

IntegerRange::IntegerRange() {
    setUnsignedRange(0, std::numeric_limits<uint32_t>::max());
    setSignedRange(std::numeric_limits<int32_t>::min(), std::numeric_limits<int32_t>::max());
    setKnownBits(0, 0);
}
IntegerRange::IntegerRange(int64_t sval) {
    const auto zval = static_cast<uint32_t>(sval);
    setUnsignedRange(zval, zval);
    setSignedRange(sval, sval);
    setKnownBits(~zval, zval);
}

bool IntegerRange::operator==(const IntegerRange& rhs) const {
    return mKnownZeros == rhs.mKnownZeros && mKnownOnes == rhs.mKnownOnes && mMaxUnsignedValue == rhs.mMaxUnsignedValue &&
        mMinUnsignedValue == rhs.mMinUnsignedValue && mMaxSignedValue == rhs.mMaxSignedValue &&
        mMinSignedValue == rhs.mMinSignedValue;
}
bool IntegerRange::operator!=(const IntegerRange& rhs) const {
    return !(*this == rhs);
}

bool IntegerRange::intersectWith(const IntegerRange& rhs) const {
    return std::max(mMinSignedValue, rhs.mMinSignedValue) <= std::min(mMaxSignedValue, rhs.mMaxSignedValue) &&
        std::max(mMinUnsignedValue, rhs.mMinUnsignedValue) <= std::min(mMaxUnsignedValue, rhs.mMaxUnsignedValue) &&
        (((mKnownZeros | rhs.mKnownZeros) & (mKnownOnes | rhs.mKnownOnes)) == 0);
}
std::optional<int64_t> IntegerRange::inferConstant() const {
    if(mMinSignedValue == mMaxSignedValue)
        return mMinSignedValue;
    if(mMinUnsignedValue == mMaxUnsignedValue)
        return static_cast<int32_t>(mMinUnsignedValue);
    if((mKnownOnes | mKnownZeros) == std::numeric_limits<uint32_t>::max())
        return static_cast<int32_t>(mKnownOnes);
    return std::nullopt;
}
IntegerRange IntegerRange::intersectSet(const IntegerRange& rhs) const {
    IntegerRange ret;
    ret.setSignedRange(std::max(mMinSignedValue, rhs.mMinSignedValue), std::min(mMaxSignedValue, rhs.mMaxSignedValue));
    ret.setUnsignedRange(std::max(mMinUnsignedValue, rhs.mMinUnsignedValue), std::min(mMaxUnsignedValue, rhs.mMaxUnsignedValue));
    ret.setKnownBits(mKnownZeros | rhs.mKnownZeros, mKnownOnes | rhs.mKnownOnes);
    ret.sync();
    return ret;
}
IntegerRange IntegerRange::unionSet(const IntegerRange& rhs) const {
    IntegerRange ret;
    ret.setSignedRange(std::min(mMinSignedValue, rhs.mMinSignedValue), std::max(mMaxSignedValue, rhs.mMaxSignedValue));
    ret.setUnsignedRange(std::min(mMinUnsignedValue, rhs.mMinUnsignedValue), std::max(mMaxUnsignedValue, rhs.mMaxUnsignedValue));
    ret.setKnownBits(mKnownZeros & rhs.mKnownZeros, mKnownOnes & rhs.mKnownOnes);
    ret.sync();
    return ret;
}

IntegerRange IntegerRange::operator+(const IntegerRange& rhs) const {
    IntegerRange ret;
    const auto signedLow = mMinSignedValue + rhs.mMinSignedValue, signedHigh = mMaxSignedValue + rhs.mMaxSignedValue;
    if(!signedOverflow(signedLow) && !signedOverflow(signedHigh))
        ret.setSignedRange(signedLow, signedHigh);
    const auto unsignedLow = mMinUnsignedValue + rhs.mMinUnsignedValue, unsignedHigh = mMaxUnsignedValue + rhs.mMaxUnsignedValue;
    if(!unsignedOverflow(unsignedLow) && !unsignedOverflow(unsignedHigh))
        ret.setUnsignedRange(mMinUnsignedValue + rhs.mMinUnsignedValue, mMaxUnsignedValue + rhs.mMaxUnsignedValue);
    ret.sync();
    return ret;
}
IntegerRange IntegerRange::operator-(const IntegerRange& rhs) const {
    IntegerRange ret;
    const auto signedLow = mMinSignedValue - rhs.mMaxSignedValue, signedHigh = mMaxSignedValue - rhs.mMinSignedValue;
    if(!signedOverflow(signedLow) && !signedOverflow(signedHigh))
        ret.setSignedRange(signedLow, signedHigh);
    const auto unsignedLow = mMinUnsignedValue - rhs.mMaxUnsignedValue, unsignedHigh = mMaxUnsignedValue - rhs.mMinUnsignedValue;
    if(!unsignedOverflow(unsignedLow) && !unsignedOverflow(unsignedHigh))
        ret.setUnsignedRange(unsignedLow, unsignedHigh);
    ret.sync();
    return ret;
}
IntegerRange IntegerRange::operator*(const IntegerRange& rhs) const {
    IntegerRange ret;
    const auto s1 = mMinSignedValue * rhs.mMinSignedValue, s2 = mMinSignedValue * rhs.mMaxSignedValue,
               s3 = mMaxSignedValue * rhs.mMinSignedValue, s4 = mMaxSignedValue * rhs.mMaxSignedValue;
    if(!signedOverflow(s1) && !signedOverflow(s2) && !signedOverflow(s3) && !signedOverflow(s4))
        ret.setSignedRange(std::min(std::min(s1, s2), std::min(s3, s4)), std::max(std::max(s1, s2), std::max(s3, s4)));
    const auto unsignedLow = mMinUnsignedValue * rhs.mMinUnsignedValue, unsignedHigh = mMaxUnsignedValue * rhs.mMaxUnsignedValue;
    if(!unsignedOverflow(unsignedLow) && !unsignedOverflow(unsignedHigh))
        ret.setUnsignedRange(unsignedLow, unsignedHigh);
    ret.sync();
    return ret;
}
IntegerRange IntegerRange::sdiv(const IntegerRange& rhs) const {
    IntegerRange ret;
    if(rhs.mMinSignedValue <= 0)
        return ret;
    const auto s1 = mMinSignedValue / rhs.mMinSignedValue, s2 = mMinSignedValue / rhs.mMaxSignedValue,
               s3 = mMaxSignedValue / rhs.mMinSignedValue, s4 = mMaxSignedValue / rhs.mMaxSignedValue;
    ret.setSignedRange(std::min(std::min(s1, s2), std::min(s3, s4)), std::max(std::max(s1, s2), std::max(s3, s4)));
    ret.sync();
    return ret;
}
IntegerRange IntegerRange::udiv(const IntegerRange& rhs) const {
    IntegerRange ret;
    if(rhs.mMinUnsignedValue == 0)
        return ret;
    const auto unsignedLow = mMinUnsignedValue / rhs.mMaxUnsignedValue, unsignedHigh = mMaxUnsignedValue / rhs.mMinUnsignedValue;
    ret.setUnsignedRange(unsignedLow, unsignedHigh);
    ret.sync();
    return ret;
}
IntegerRange IntegerRange::srem(const IntegerRange& rhs) const {
    IntegerRange ret;
    if(rhs.mMinSignedValue <= 0)
        return ret;
    ret.setSignedRange(-rhs.mMaxSignedValue + 1, rhs.mMaxSignedValue - 1);
    ret.sync();
    return ret;
}
IntegerRange IntegerRange::urem(const IntegerRange& rhs) const {
    IntegerRange ret;
    if(rhs.mMinUnsignedValue == 0)
        return ret;
    ret.setUnsignedRange(0, rhs.mMaxUnsignedValue - 1);
    ret.sync();
    return ret;
}

IntegerRange IntegerRange::operator&(const IntegerRange& rhs) const {
    IntegerRange ret;
    ret.setKnownBits(mKnownZeros | rhs.mKnownZeros, mKnownOnes & rhs.mKnownOnes);
    ret.sync();
    return ret;
}
IntegerRange IntegerRange::operator|(const IntegerRange& rhs) const {
    IntegerRange ret;
    ret.setKnownBits(mKnownZeros & rhs.mKnownZeros, mKnownOnes | rhs.mKnownOnes);
    ret.sync();
    return ret;
}
IntegerRange IntegerRange::operator^(const IntegerRange& rhs) const {
    IntegerRange ret;
    ret.setKnownBits((mKnownZeros & rhs.mKnownZeros) | (mKnownOnes & rhs.mKnownOnes),
                     (mKnownZeros & rhs.mKnownOnes) | (mKnownOnes & rhs.mKnownZeros));
    ret.sync();
    return ret;
}

IntegerRange IntegerRange::shl(const IntegerRange& rhs) const {
    // TODO
    CMMC_UNUSED(rhs);
    IntegerRange ret;
    return ret;
}
IntegerRange IntegerRange::lshr(const IntegerRange& rhs) const {
    // TODO
    CMMC_UNUSED(rhs);
    IntegerRange ret;
    return ret;
}
IntegerRange IntegerRange::ashr(const IntegerRange& rhs) const {
    // TODO
    CMMC_UNUSED(rhs);
    IntegerRange ret;
    return ret;
}

IntegerRange IntegerRange::smax(const IntegerRange& rhs) const {
    IntegerRange ret;
    ret.setSignedRange(std::max(mMinSignedValue, rhs.mMinSignedValue), std::max(mMaxSignedValue, rhs.mMaxSignedValue));
    ret.sync();
    return ret;
}
IntegerRange IntegerRange::smin(const IntegerRange& rhs) const {
    IntegerRange ret;
    ret.setSignedRange(std::min(mMinSignedValue, rhs.mMinSignedValue), std::min(mMaxSignedValue, rhs.mMaxSignedValue));
    ret.sync();
    return ret;
}
IntegerRange IntegerRange::abs() const {
    IntegerRange ret;
    if(mMinSignedValue < 0 && mMaxSignedValue >= 0) {
        ret.setSignedRange(0, std::max(std::abs(mMinSignedValue), std::abs(mMaxSignedValue)));
    } else if(mMinSignedValue != std::numeric_limits<int32_t>::min()) {
        auto s1 = std::abs(mMinSignedValue);
        auto s2 = std::abs(mMaxSignedValue);
        if(s1 > s2)
            std::swap(s1, s2);
        ret.setSignedRange(s1, s2);
    }
    ret.sync();
    return ret;
}

IntegerRange IntegerRange::neg() const {
    IntegerRange ret;
    if(mMinSignedValue != std::numeric_limits<int32_t>::min()) {
        ret.setSignedRange(-mMaxSignedValue, -mMinSignedValue);
    }
    ret.sync();
    return ret;
}

CMMC_NAMESPACE_END

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

#include <cmmc/Analysis/IntegerRangeAnalysis.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cstdint>
#include <limits>
#include <optional>
#include <queue>

CMMC_NAMESPACE_BEGIN

constexpr bool signedOverflow(int64_t x) {
    return x < std::numeric_limits<int32_t>::min() || x > std::numeric_limits<int32_t>::max();
}

constexpr bool unsignedOverflow(uint64_t x) {
    return x > std::numeric_limits<uint32_t>::max();
}

void IntegerRange::bit2Unsigned() {
    const auto determined = mKnownOnes | mKnownZeros;
    const auto lcpLength = __builtin_clzll(~determined);
    const auto mask = ~((1ULL << (64 - lcpLength)) - 1);
    const uint64_t minV = mKnownOnes & mask;
    const uint64_t maxV = minV | (~mask);
    mMinUnsignedValue = std::max(mMinUnsignedValue, minV);
    mMaxUnsignedValue = std::min(mMaxUnsignedValue, maxV);
}
void IntegerRange::unsigned2Bit() {
    const auto common = mMinUnsignedValue ^ mMaxUnsignedValue;
    const auto lcpLength = __builtin_clzll(common);
    const auto mask = ~((1ULL << (64 - lcpLength)) - 1);
    mKnownOnes |= common & mask;
    mKnownZeros |= (~common) & mask;
}
void IntegerRange::signed2Bit() {
    const auto common = static_cast<uint64_t>(mMinSignedValue ^ mMaxSignedValue);
    const auto lcpLength = __builtin_clzll(common);
    const auto mask = ~((1ULL << (64 - lcpLength)) - 1);
    mKnownOnes |= common & mask;
    mKnownZeros |= (~common) & mask;
}
void IntegerRange::unsigned2Signed() {
    if(mMaxUnsignedValue <= std::numeric_limits<int32_t>::max()) {
        mMinSignedValue = std::max(mMinSignedValue, static_cast<int64_t>(mMinUnsignedValue));
        mMaxSignedValue = std::min(mMaxSignedValue, static_cast<int64_t>(mMaxUnsignedValue));
    }

    if(mMinUnsignedValue > std::numeric_limits<int32_t>::max()) {
        const int64_t maxV = static_cast<int32_t>(mMinUnsignedValue);
        const int64_t minV = static_cast<int32_t>(mMaxUnsignedValue);

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
        const uint64_t maxV = static_cast<uint32_t>(mMinSignedValue);
        const uint64_t minV = static_cast<uint32_t>(mMaxSignedValue);

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
void IntegerRange::setKnownBits(uint64_t zeros, uint64_t ones) {
    assert((zeros & ones) == 0);
    mKnownOnes = ones;
    mKnownZeros = zeros;
}
void IntegerRange::sync() {
    signed2Unsigned();
    unsigned2Bit();
    bit2Unsigned();
    unsigned2Signed();
    signed2Bit();
}

IntegerRange::IntegerRange() {
    setUnsignedRange(0, std::numeric_limits<uint32_t>::max());
    setSignedRange(std::numeric_limits<int32_t>::min(), std::numeric_limits<int32_t>::max());
    setKnownBits(~static_cast<uint64_t>(std::numeric_limits<uint32_t>::max()), 0);
}
IntegerRange::IntegerRange(ConstantInteger* integer) {
    assert(integer->getType()->as<IntegerType>()->getBitwidth() == 32);
    const auto sval = integer->getSignExtended();
    const auto zval = integer->getZeroExtended();
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

IntegerRange IntegerRange::intersectSet(const IntegerRange& rhs) const {
    IntegerRange ret;
    ret.setSignedRange(std::max(mMinSignedValue, rhs.mMinSignedValue), std::min(mMaxSignedValue, mMaxSignedValue));
    ret.setUnsignedRange(std::max(mMinUnsignedValue, rhs.mMinUnsignedValue), std::min(mMaxUnsignedValue, rhs.mMaxUnsignedValue));
    ret.setKnownBits(mKnownZeros | rhs.mKnownZeros, mKnownOnes | rhs.mKnownOnes);
    ret.sync();
    return ret;
}
IntegerRange IntegerRange::unionSet(const IntegerRange& rhs) const {
    IntegerRange ret;
    ret.setSignedRange(std::min(mMinSignedValue, rhs.mMinSignedValue), std::max(mMaxSignedValue, mMaxSignedValue));
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
    const auto unsignedLow = mMinUnsignedValue / rhs.mMinUnsignedValue, unsignedHigh = mMaxUnsignedValue / rhs.mMaxUnsignedValue;
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
    ret.setKnownBits(mKnownZeros | rhs.mKnownZeros, mKnownOnes | rhs.mKnownOnes);
    ret.sync();
    return ret;
}
IntegerRange IntegerRange::operator|(const IntegerRange& rhs) const {
    IntegerRange ret;
    ret.setKnownBits(mKnownZeros & rhs.mKnownZeros, mKnownOnes & rhs.mKnownOnes);
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

IntegerRange IntegerRangeAnalysisResult::query(Value* val) const {
    if(auto cint = dynamic_cast<ConstantInteger*>(val))
        return IntegerRange(cint);
    if(auto iter = mRanges.find(val); iter != mRanges.cend())
        return iter->second;
    return IntegerRange{};
}

IntegerRangeAnalysisResult IntegerRangeAnalysis::run(Function& func, AnalysisPassManager&) {
    std::unordered_map<Value*, IntegerRange> ret;

    std::unordered_set<Instruction*> inQueue;
    std::queue<Instruction*> q;
    const auto i32 = IntegerType::get(32);
    for(auto block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            if(inst.getType()->isSame(i32)) {
                ret[&inst] = IntegerRange{};
                q.push(&inst);
                inQueue.insert(&inst);
            }
        }
    }

    auto getRange = [&](Value* val) {
        if(auto cint = dynamic_cast<ConstantInteger*>(val))
            return IntegerRange(cint);
        if(auto iter = ret.find(val); iter != ret.cend())
            return iter->second;
        return IntegerRange{};
    };
    auto update = [&](Instruction* inst, const IntegerRange& newRange) {
        auto& range = ret[inst];
        const auto intersection = range.intersectSet(newRange);
        if(range != intersection) {
            range = intersection;
            for(auto user : inst->users()) {
                if(user->getType()->isSame(i32) && !inQueue.count(user)) {
                    q.push(user);
                    inQueue.insert(user);
                }
            }
        }
    };

    // TODO: gep range hint

    while(!q.empty()) {
        auto* inst = q.front();
        q.pop();
        inQueue.erase(inst);
        auto getOperandRange = [&](uint32_t idx) { return getRange(inst->getOperand(idx)); };

        switch(inst->getInstID()) {
            case InstructionID::Add: {
                update(inst, getOperandRange(0) + getOperandRange(1));
                break;
            }
            case InstructionID::Sub: {
                update(inst, getOperandRange(0) - getOperandRange(1));
                break;
            }
            case InstructionID::Mul: {
                update(inst, getOperandRange(0) * getOperandRange(1));
                break;
            }
            case InstructionID::SDiv: {
                update(inst, getOperandRange(0).sdiv(getOperandRange(1)));
                break;
            }
            case InstructionID::UDiv: {
                update(inst, getOperandRange(0).udiv(getOperandRange(1)));
                break;
            }
            case InstructionID::SRem: {
                update(inst, getOperandRange(0).srem(getOperandRange(1)));
                break;
            }
            case InstructionID::URem: {
                update(inst, getOperandRange(0).urem(getOperandRange(1)));
                break;
            }
            case InstructionID::And: {
                update(inst, getOperandRange(0) & getOperandRange(1));
                break;
            }
            case InstructionID::Or: {
                update(inst, getOperandRange(0) | getOperandRange(1));
                break;
            }
            case InstructionID::Xor: {
                update(inst, getOperandRange(0) ^ getOperandRange(1));
                break;
            }
            case InstructionID::Shl: {
                update(inst, getOperandRange(0).shl(getOperandRange(1)));
                break;
            }
            case InstructionID::LShr: {
                update(inst, getOperandRange(0).lshr(getOperandRange(1)));
                break;
            }
            case InstructionID::AShr: {
                update(inst, getOperandRange(0).ashr(getOperandRange(1)));
                break;
            }
            case InstructionID::SMax: {
                update(inst, getOperandRange(0).smax(getOperandRange(1)));
                break;
            }
            case InstructionID::SMin: {
                update(inst, getOperandRange(0).smin(getOperandRange(1)));
                break;
            }
            case InstructionID::Abs: {
                update(inst, getOperandRange(0).abs());
                break;
            }
            case InstructionID::Select: {
                update(inst, getOperandRange(1).unionSet(getOperandRange(2)));
                break;
            }
            case InstructionID::Phi: {
                std::optional<IntegerRange> range;
                for(auto operand : inst->operands()) {
                    const auto subRange = getRange(operand);
                    if(range)
                        *range = range->unionSet(subRange);
                    else
                        range = subRange;
                }

                if(range.has_value())
                    update(inst, *range);

                break;
            }
            case InstructionID::SignedTrunc:
            case InstructionID::UnsignedTrunc: {
                update(inst, getOperandRange(0));
                break;
            }
            case InstructionID::SExt: {
                const auto width = inst->getOperand(0)->getType()->as<IntegerType>()->getBitwidth();
                const auto maxv = (1LL << (width - 1)) - 1;
                const auto minv = -maxv - 1;
                IntegerRange range;
                range.setSignedRange(minv, maxv);
                range.sync();

                update(inst, range);
                break;
            }
            case InstructionID::ZExt: {
                const auto width = inst->getOperand(0)->getType()->as<IntegerType>()->getBitwidth();
                const auto maxv = (1ULL << width) - 1;
                IntegerRange range;
                range.setUnsignedRange(0, maxv);
                range.sync();

                update(inst, range);
                break;
            }
            default:
                break;
        }
    }

    return IntegerRangeAnalysisResult{ std::move(ret) };
}

CMMC_NAMESPACE_END

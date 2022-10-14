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
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cstdint>
#include <type_traits>

CMMC_NAMESPACE_BEGIN

template <typename T, typename Derived>
class GenericMatcher {
public:
    bool operator()(Value* value) const noexcept {
        if(auto val = dynamic_cast<T*>(value)) {
            return (static_cast<const Derived*>(this))->handle(val);
        }
        return false;
    }
};

class AnyMatcher {
    Value*& mValue;

public:
    explicit AnyMatcher(Value*& value) noexcept : mValue{ value } {}
    bool operator()(Value* val) const noexcept {
        mValue = val;
        return true;
    }
};

inline auto any(Value*& val) {
    return AnyMatcher{ val };
}

template <bool IsSigned>
class ConstantIntegerMatcher final : public GenericMatcher<ConstantInteger, ConstantIntegerMatcher<IsSigned>> {
    using Value = std::conditional_t<IsSigned, intmax_t, uintmax_t>;
    Value& mVal;

public:
    explicit ConstantIntegerMatcher(Value& val) noexcept : mVal{ val } {}
    bool handle(ConstantInteger* value) const noexcept {
        if constexpr(IsSigned)
            mVal = value->getSignExtended();
        else
            mVal = value->getZeroExtended();

        return true;
    }
};

template <bool IsSigned>
class ConstantIntegerValueMatcher final : public GenericMatcher<ConstantInteger, ConstantIntegerValueMatcher<IsSigned>> {
    using Value = std::conditional_t<IsSigned, intmax_t, uintmax_t>;
    Value mVal;

public:
    constexpr explicit ConstantIntegerValueMatcher(Value val) noexcept : mVal{ val } {}
    bool handle(ConstantInteger* value) const noexcept {
        if constexpr(IsSigned)
            return mVal == value->getSignExtended();
        else
            return mVal == value->getZeroExtended();
    }
};

inline auto int_(intmax_t& val) noexcept {
    return ConstantIntegerMatcher<true>{ val };
}
inline auto uint_(uintmax_t& val) noexcept {
    return ConstantIntegerMatcher<false>{ val };
}
constexpr auto cint_(intmax_t val) noexcept {
    return ConstantIntegerValueMatcher<true>{ val };
}
constexpr auto cuint_(uintmax_t val) noexcept {
    return ConstantIntegerValueMatcher<false>{ val };
}

class ConstantFloatingPointMatcher final : public GenericMatcher<ConstantFloatingPoint, ConstantFloatingPointMatcher> {
    double& mVal;

public:
    explicit ConstantFloatingPointMatcher(double& val) noexcept : mVal{ val } {}
    bool handle(ConstantFloatingPoint* value) const noexcept {
        mVal = value->getValue();
        return true;
    }
};
class ConstantFloatingPointValueMatcher final : public GenericMatcher<ConstantFloatingPoint, ConstantFloatingPointValueMatcher> {
    double mVal;

public:
    constexpr explicit ConstantFloatingPointValueMatcher(double val) noexcept : mVal{ val } {}
    bool handle(ConstantFloatingPoint* value) const noexcept {
        return value->isEqual(mVal);
    }
};

inline auto fp_(double& val) noexcept {
    return ConstantFloatingPointMatcher{ val };
}
constexpr auto cfp_(double val) noexcept {
    return ConstantFloatingPointValueMatcher{ val };
}

template <typename ValMatcher>
class UnaryOpMatcher final : public GenericMatcher<UnaryInst, UnaryOpMatcher<ValMatcher>> {
    InstructionID mTarget;
    ValMatcher mMatcher;

public:
    explicit UnaryOpMatcher(InstructionID target, ValMatcher matcher) noexcept : mTarget{ target }, mMatcher{ matcher } {}
    bool handle(UnaryInst* value) const noexcept {
        return value->getInstID() == mTarget && mMatcher(value->getOperand(0));
    }
};

template <typename T>
auto not_(T value) noexcept {
    return UnaryOpMatcher{ InstructionID::Not, value };
}

template <typename T>
auto neg(T value) noexcept {
    return UnaryOpMatcher{ InstructionID::Neg, value };
}

template <typename T>
auto fneg(T value) noexcept {
    return UnaryOpMatcher{ InstructionID::FNeg, value };
}

template <bool IsCommutative, typename LhsMatcher, typename RhsMatcher>
class BinaryOpMatcher final : public GenericMatcher<BinaryInst, BinaryOpMatcher<IsCommutative, LhsMatcher, RhsMatcher>> {
    InstructionID mTarget;
    LhsMatcher mLhsMatcher;
    RhsMatcher mRhsMatcher;

public:
    explicit BinaryOpMatcher(InstructionID target, LhsMatcher lhsMatcher, RhsMatcher rhsMatcher) noexcept
        : mTarget{ target }, mLhsMatcher{ lhsMatcher }, mRhsMatcher{ rhsMatcher } {}
    bool handle(BinaryInst* value) const noexcept {
        if(value->getInstID() != mTarget)
            return false;
        if(mLhsMatcher(value->getOperand(0)) && mRhsMatcher(value->getOperand(1)))
            return true;
        if constexpr(IsCommutative)
            return mLhsMatcher(value->getOperand(1)) && mRhsMatcher(value->getOperand(0));
        return false;
    }
};

template <typename Lhs, typename Rhs>
auto add(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<true, Lhs, Rhs>{ InstructionID::Add, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto sub(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<false, Lhs, Rhs>{ InstructionID::Sub, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto mul(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<true, Lhs, Rhs>{ InstructionID::Mul, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto sdiv(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<false, Lhs, Rhs>{ InstructionID::SDiv, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto udiv(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<false, Lhs, Rhs>{ InstructionID::UDiv, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto srem(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<false, Lhs, Rhs>{ InstructionID::SRem, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto urem(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<false, Lhs, Rhs>{ InstructionID::URem, lhs, rhs };
}

template <typename Lhs, typename Rhs>
auto shl(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<false, Lhs, Rhs>{ InstructionID::Shl, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto ashr(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<false, Lhs, Rhs>{ InstructionID::AShr, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto lshr(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<false, Lhs, Rhs>{ InstructionID::LShr, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto and_(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<true, Lhs, Rhs>{ InstructionID::And, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto or_(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<true, Lhs, Rhs>{ InstructionID::Or, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto xor_(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<true, Lhs, Rhs>{ InstructionID::Xor, lhs, rhs };
}

template <typename Lhs, typename Rhs>
auto fadd(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<true, Lhs, Rhs>{ InstructionID::FAdd, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto fsub(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<false, Lhs, Rhs>{ InstructionID::FSub, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto fmul(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<true, Lhs, Rhs>{ InstructionID::FMul, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto fdiv(Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<false, Lhs, Rhs>{ InstructionID::FDiv, lhs, rhs };
}

template <typename LhsMatcher, typename RhsMatcher>
class CompareMatcher final : public GenericMatcher<CompareInst, CompareMatcher<LhsMatcher, RhsMatcher>> {
    InstructionID mTarget;
    CompareOp& mCompare;
    LhsMatcher mLhsMatcher;
    RhsMatcher mRhsMatcher;

public:
    explicit CompareMatcher(InstructionID target, CompareOp& compare, LhsMatcher lhsMatcher, RhsMatcher rhsMatcher) noexcept
        : mTarget{ target }, mCompare{ compare }, mLhsMatcher{ lhsMatcher }, mRhsMatcher{ rhsMatcher } {}
    bool handle(CompareInst* value) const noexcept {
        if(value->getInstID() != mTarget)
            return false;
        mCompare = value->getOp();
        if(mLhsMatcher(value->getOperand(0)) && mRhsMatcher(value->getOperand(1)))
            return true;
        if(mLhsMatcher(value->getOperand(1)) && mRhsMatcher(value->getOperand(0))) {
            mCompare = getReversedOp(mCompare);
            return true;
        }
        return false;
    }
};

template <typename Lhs, typename Rhs>
auto scmp(CompareOp& compare, Lhs lhs, Rhs rhs) {
    return CompareMatcher{ InstructionID::SCmp, compare, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto ucmp(CompareOp& compare, Lhs lhs, Rhs rhs) {
    return CompareMatcher{ InstructionID::UCmp, compare, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto fcmp(CompareOp& compare, Lhs lhs, Rhs rhs) {
    return CompareMatcher{ InstructionID::FCmp, compare, lhs, rhs };
}

// x*y+z
template <typename XMatcher, typename YMatcher, typename ZMatcher>
class FMAMatcher final : public GenericMatcher<FMAInst, FMAMatcher<XMatcher, YMatcher, ZMatcher>> {
    XMatcher mX;
    YMatcher mY;
    ZMatcher mZ;

public:
    explicit FMAMatcher(XMatcher x, YMatcher y, ZMatcher z) noexcept : mX{ x }, mY{ y }, mZ{ z } {}
    bool handle(FMAInst* value) const noexcept {
        if(!mZ(value->getOperand(2)))
            return false;
        if(mX(value->getOperand(0)) && mY(value->getOperand(1)))
            return true;
        return mX(value->getOperand(1)) && mY(value->getOperand(0));
    }
};

template <typename X, typename Y, typename Z>
auto fma_(X x, Y y, Z z) {
    return FMAMatcher{ x, y, z };
}

template <typename CondMatcher, typename LhsMatcher, typename RhsMatcher>
class SelectMatcher final : public GenericMatcher<SelectInst, SelectMatcher<CondMatcher, LhsMatcher, RhsMatcher>> {
    CondMatcher mX;
    LhsMatcher mY;
    RhsMatcher mZ;

public:
    explicit SelectMatcher(CondMatcher x, LhsMatcher y, RhsMatcher z) noexcept : mX{ x }, mY{ y }, mZ{ z } {}
    bool handle(SelectInst* value) const noexcept {
        return mX(value->getOperand(0)) && mY(value->getOperand(1)) && mZ(value->getOperand(2));
    }
};

template <typename X, typename Y, typename Z>
auto select(X x, Y y, Z z) {
    return SelectMatcher{ x, y, z };
}

CMMC_NAMESPACE_END

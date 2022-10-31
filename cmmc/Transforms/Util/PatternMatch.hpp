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
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>
#include <type_traits>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

template <typename ValueType>
struct MatchContext final {
    ValueType* value;
    std::unordered_map<Value*, Value*>* replace;

    explicit MatchContext(ValueType* value, std::unordered_map<Value*, Value*>* replace) : value{ value }, replace{ replace } {};

    template <typename T = ValueType>
    MatchContext<Value> getOperand(uint32_t idx) const {
        if constexpr(std::is_base_of_v<Instruction, T>) {
            auto val = value->getOperand(idx);
            if(replace) {
                if(auto iter = replace->find(value); iter != replace->cend())
                    val = iter->second;
            }
            return MatchContext<Value>{ val, replace };
        } else {
            static_assert(staticAssertionFail<T>, "Unsupported operation");
        }
    }
};

template <typename T, typename Derived>
class GenericMatcher {
public:
    bool operator()(const MatchContext<Value>& ctx) const noexcept {
        if(auto val = dynamic_cast<T*>(ctx.value)) {
            return (static_cast<const Derived*>(this))->handle(MatchContext<T>{ val, ctx.replace });
        }
        return false;
    }
};

class AnyMatcher {
    Value*& mValue;

public:
    explicit AnyMatcher(Value*& value) noexcept : mValue{ value } {}
    bool operator()(const MatchContext<Value>& ctx) const noexcept {
        mValue = ctx.value;
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
    bool handle(const MatchContext<ConstantInteger>& ctx) const noexcept {
        if constexpr(IsSigned)
            mVal = ctx.value->getSignExtended();
        else
            mVal = ctx.value->getZeroExtended();

        return true;
    }
};

template <bool IsSigned>
class ConstantIntegerValueMatcher final : public GenericMatcher<ConstantInteger, ConstantIntegerValueMatcher<IsSigned>> {
    using Value = std::conditional_t<IsSigned, intmax_t, uintmax_t>;
    Value mVal;

public:
    constexpr explicit ConstantIntegerValueMatcher(Value val) noexcept : mVal{ val } {}
    bool handle(const MatchContext<ConstantInteger>& ctx) const noexcept {
        if constexpr(IsSigned)
            return mVal == ctx.value->getSignExtended();
        else
            return mVal == ctx.value->getZeroExtended();
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
    bool handle(const MatchContext<ConstantFloatingPoint>& ctx) const noexcept {
        mVal = ctx.value->getValue();
        return true;
    }
};
class ConstantFloatingPointValueMatcher final : public GenericMatcher<ConstantFloatingPoint, ConstantFloatingPointValueMatcher> {
    double mVal;

public:
    constexpr explicit ConstantFloatingPointValueMatcher(double val) noexcept : mVal{ val } {}
    bool handle(const MatchContext<ConstantFloatingPoint>& ctx) const noexcept {
        return ctx.value->isEqual(mVal);
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
    bool handle(const MatchContext<UnaryInst>& ctx) const noexcept {
        return ctx.value->getInstID() == mTarget && mMatcher(ctx.getOperand(0));
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
    bool handle(const MatchContext<BinaryInst>& ctx) const noexcept {
        if(ctx.value->getInstID() != mTarget)
            return false;
        if(mLhsMatcher(ctx.getOperand(0)) && mRhsMatcher(ctx.getOperand(1)))
            return true;
        if constexpr(IsCommutative)
            return mLhsMatcher(ctx.getOperand(1)) && mRhsMatcher(ctx.getOperand(0));
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
    bool handle(const MatchContext<CompareInst>& ctx) const noexcept {
        if(ctx.value->getInstID() != mTarget)
            return false;
        mCompare = ctx.value->getOp();
        if(mLhsMatcher(ctx.getOperand(0)) && mRhsMatcher(ctx.getOperand(1)))
            return true;
        if(mLhsMatcher(ctx.getOperand(1)) && mRhsMatcher(ctx.getOperand(0))) {
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
    bool handle(const MatchContext<FMAInst>& ctx) const noexcept {
        if(!mZ(ctx.getOperand(2)))
            return false;
        if(mX(ctx.getOperand(0)) && mY(ctx.getOperand(1)))
            return true;
        return mX(ctx.getOperand(1)) && mY(ctx.getOperand(0));
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
    bool handle(const MatchContext<SelectInst>& ctx) const noexcept {
        return mX(ctx.getOperand(0)) && mY(ctx.getOperand(1)) && mZ(ctx.getOperand(2));
    }
};

template <typename X, typename Y, typename Z>
auto select(X x, Y y, Z z) {
    return SelectMatcher{ x, y, z };
}

CMMC_NAMESPACE_END

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

    explicit MatchContext(ValueType* val) : value{ val } {};

    template <typename T = ValueType>
    [[nodiscard]] MatchContext<Value> getOperand(uint32_t idx) const {
        if constexpr(std::is_base_of_v<Instruction, T>) {
            const auto val = value->getOperand(idx);
            return MatchContext<Value>{ val };
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
            return (static_cast<const Derived*>(this))->handle(MatchContext<T>{ val });
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
    [[nodiscard]] bool handle(const MatchContext<ConstantInteger>& ctx) const noexcept {
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
    [[nodiscard]] bool handle(const MatchContext<ConstantInteger>& ctx) const noexcept {
        if constexpr(IsSigned)
            return mVal == ctx.value->getSignExtended();
        else
            return mVal == ctx.value->getZeroExtended();
    }
};

// NOLINTNEXTLINE
inline auto int_(intmax_t& val) noexcept {
    return ConstantIntegerMatcher<true>{ val };
}
// NOLINTNEXTLINE
inline auto uint_(uintmax_t& val) noexcept {
    return ConstantIntegerMatcher<false>{ val };
}
// NOLINTNEXTLINE
constexpr auto cint_(intmax_t val) noexcept {
    return ConstantIntegerValueMatcher<true>{ val };
}
// NOLINTNEXTLINE
constexpr auto cuint_(uintmax_t val) noexcept {
    return ConstantIntegerValueMatcher<false>{ val };
}

class ConstantFloatingPointMatcher final : public GenericMatcher<ConstantFloatingPoint, ConstantFloatingPointMatcher> {
    double& mVal;

public:
    explicit ConstantFloatingPointMatcher(double& val) noexcept : mVal{ val } {}
    [[nodiscard]] bool handle(const MatchContext<ConstantFloatingPoint>& ctx) const noexcept {
        mVal = ctx.value->getValue();
        return true;
    }
};
class ConstantFloatingPointValueMatcher final : public GenericMatcher<ConstantFloatingPoint, ConstantFloatingPointValueMatcher> {
    double mVal;

public:
    constexpr explicit ConstantFloatingPointValueMatcher(double val) noexcept : mVal{ val } {}
    [[nodiscard]] bool handle(const MatchContext<ConstantFloatingPoint>& ctx) const noexcept {
        return ctx.value->isEqual(mVal);
    }
};

// NOLINTNEXTLINE
inline auto fp_(double& val) noexcept {
    return ConstantFloatingPointMatcher{ val };
}
// NOLINTNEXTLINE
constexpr auto cfp_(double val) noexcept {
    return ConstantFloatingPointValueMatcher{ val };
}

template <typename ValMatcher>
class UnaryOpMatcher final : public GenericMatcher<UnaryInst, UnaryOpMatcher<ValMatcher>> {
    InstructionID mTarget;
    ValMatcher mMatcher;

public:
    explicit UnaryOpMatcher(InstructionID target, ValMatcher matcher) noexcept : mTarget{ target }, mMatcher{ matcher } {}
    [[nodiscard]] bool handle(const MatchContext<UnaryInst>& ctx) const noexcept {
        return ctx.value->getInstID() == mTarget && mMatcher(ctx.getOperand(0));
    }
};

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
    [[nodiscard]] bool handle(const MatchContext<BinaryInst>& ctx) const noexcept {
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
auto commutative(InstructionID id, Lhs lhs, Rhs rhs) {
    return BinaryOpMatcher<true, Lhs, Rhs>{ id, lhs, rhs };
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
auto and_(Lhs lhs, Rhs rhs) {  // NOLINT
    return BinaryOpMatcher<true, Lhs, Rhs>{ InstructionID::And, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto or_(Lhs lhs, Rhs rhs) {  // NOLINT
    return BinaryOpMatcher<true, Lhs, Rhs>{ InstructionID::Or, lhs, rhs };
}
template <typename Lhs, typename Rhs>
auto xor_(Lhs lhs, Rhs rhs) {  // NOLINT
    return BinaryOpMatcher<true, Lhs, Rhs>{ InstructionID::Xor, lhs, rhs };
}

template <typename T>
auto not_(T value) noexcept {  // NOLINT
    return xor_(value, cint_(-1));
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
    [[nodiscard]] bool handle(const MatchContext<CompareInst>& ctx) const noexcept {
        if(mTarget != InstructionID::None && ctx.value->getInstID() != mTarget)
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
template <typename Lhs, typename Rhs>
auto xcmp(CompareOp& compare, Lhs lhs, Rhs rhs) {
    return CompareMatcher{ InstructionID::None, compare, lhs, rhs };
}

template <typename Matcher>
class CastMatcher final : public GenericMatcher<CastInst, CastMatcher<Matcher>> {
    InstructionID mTarget;
    Matcher mMatcher;

public:
    explicit CastMatcher(InstructionID target, Matcher matcher) noexcept : mTarget{ target }, mMatcher{ matcher } {}
    [[nodiscard]] bool handle(const MatchContext<CastInst>& ctx) const noexcept {
        return (ctx.value->getInstID() == mTarget) && mMatcher(ctx.getOperand(0));
    }
};

template <typename Value>
auto zext(Value value) {
    return CastMatcher{ InstructionID::ZExt, value };
}

template <typename Value>
auto sext(Value value) {
    return CastMatcher{ InstructionID::SExt, value };
}

// x*y+z
template <typename XMatcher, typename YMatcher, typename ZMatcher>
class FMAMatcher final : public GenericMatcher<FMAInst, FMAMatcher<XMatcher, YMatcher, ZMatcher>> {
    XMatcher mX;
    YMatcher mY;
    ZMatcher mZ;

public:
    explicit FMAMatcher(XMatcher x, YMatcher y, ZMatcher z) noexcept : mX{ x }, mY{ y }, mZ{ z } {}
    [[nodiscard]] bool handle(const MatchContext<FMAInst>& ctx) const noexcept {
        if(!mZ(ctx.getOperand(2)))
            return false;
        if(mX(ctx.getOperand(0)) && mY(ctx.getOperand(1)))
            return true;
        return mX(ctx.getOperand(1)) && mY(ctx.getOperand(0));
    }
};

template <typename X, typename Y, typename Z>
auto fma_(X x, Y y, Z z) {  // NOLINT
    return FMAMatcher{ x, y, z };
}

template <typename CondMatcher, typename LhsMatcher, typename RhsMatcher>
class SelectMatcher final : public GenericMatcher<SelectInst, SelectMatcher<CondMatcher, LhsMatcher, RhsMatcher>> {
    CondMatcher mX;
    LhsMatcher mY;
    RhsMatcher mZ;

public:
    explicit SelectMatcher(CondMatcher x, LhsMatcher y, RhsMatcher z) noexcept : mX{ x }, mY{ y }, mZ{ z } {}
    [[nodiscard]] bool handle(const MatchContext<SelectInst>& ctx) const noexcept {
        return mX(ctx.getOperand(0)) && mY(ctx.getOperand(1)) && mZ(ctx.getOperand(2));
    }
};

template <typename X, typename Y, typename Z>
auto select(X x, Y y, Z z) {
    return SelectMatcher{ x, y, z };
}

template <typename Matcher>
class CaptureMatcher {
    Matcher mMatcher;
    Value*& mValue;

public:
    explicit CaptureMatcher(Matcher matcher, Value*& value) noexcept : mMatcher{ matcher }, mValue{ value } {}
    bool operator()(const MatchContext<Value>& ctx) const noexcept {
        if(mMatcher(ctx)) {
            mValue = ctx.value;
            return true;
        }
        return false;
    }
};

template <typename Matcher>
auto capture(Matcher m, Value*& val) {
    return CaptureMatcher{ m, val };
}

template <typename Matcher>
class PtrToIntCastMatcher final : public GenericMatcher<PtrToIntInst, PtrToIntCastMatcher<Matcher>> {
    Matcher mOperand;

public:
    explicit PtrToIntCastMatcher(Matcher operand) noexcept : mOperand{ operand } {}
    [[nodiscard]] bool handle(const MatchContext<PtrToIntInst>& ctx) const noexcept {
        return mOperand(ctx.getOperand(0));
    }
};

template <typename Matcher>
auto ptr2int(Matcher m) {
    return PtrToIntCastMatcher{ m };
}

template <typename Matcher>
class IntToPtrCastMatcher final : public GenericMatcher<IntToPtrInst, IntToPtrCastMatcher<Matcher>> {
    Matcher mOperand;

public:
    explicit IntToPtrCastMatcher(Matcher operand) noexcept : mOperand{ operand } {}
    [[nodiscard]] bool handle(const MatchContext<IntToPtrInst>& ctx) const noexcept {
        return mOperand(ctx.getOperand(0));
    }
};

template <typename Matcher>
auto int2ptr(Matcher m) {
    return IntToPtrCastMatcher{ m };
}

CMMC_NAMESPACE_END

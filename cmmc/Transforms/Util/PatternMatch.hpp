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

class ConstantIntegerMatcher final : public GenericMatcher<ConstantInteger, ConstantIntegerMatcher> {
    intmax_t& mVal;

public:
    explicit ConstantIntegerMatcher(intmax_t& val) noexcept : mVal{ val } {}
    bool handle(ConstantInteger* value) const noexcept {
        mVal = value->getValue();
        return true;
    }
};

inline auto int_(intmax_t& val) noexcept {
    return ConstantIntegerMatcher{ val };
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

inline auto fp_(double& val) noexcept {
    return ConstantFloatingPointMatcher{ val };
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
class BinaryOpMatcher final : public GenericMatcher<UnaryInst, BinaryOpMatcher<IsCommutative, LhsMatcher, RhsMatcher>> {
    InstructionID mTarget;
    LhsMatcher mLhsMatcher;
    RhsMatcher mRhsMatcher;

public:
    explicit BinaryOpMatcher(InstructionID target, LhsMatcher lhsMatcher, RhsMatcher rhsMatcher) noexcept
        : mTarget{ target }, mLhsMatcher{ lhsMatcher }, mRhsMatcher{ rhsMatcher } {}
    bool handle(UnaryInst* value) const noexcept {
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

CMMC_NAMESPACE_END

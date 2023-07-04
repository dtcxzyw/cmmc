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
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cstdint>
#include <limits>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

// only support i32
class IntegerRange final {
    uint64_t mKnownZeros, mKnownOnes;
    uint64_t mMaxUnsignedValue, mMinUnsignedValue;
    int64_t mMaxSignedValue, mMinSignedValue;

    void bit2Unsigned();
    void unsigned2Bit();
    void signed2Bit();
    void unsigned2Signed();
    void signed2Unsigned();

public:
    explicit IntegerRange();
    explicit IntegerRange(ConstantInteger* integer);

    void setUnsignedRange(uint64_t min, uint64_t max);
    void setSignedRange(int64_t min, int64_t max);
    void setKnownBits(uint64_t zeros, uint64_t ones);
    void sync();

    bool operator==(const IntegerRange& rhs) const;
    bool operator!=(const IntegerRange& rhs) const;

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
};

class IntegerRangeAnalysisResult final {
    std::unordered_map<Value*, IntegerRange> mRanges;

public:
    explicit IntegerRangeAnalysisResult(std::unordered_map<Value*, IntegerRange> ranges) : mRanges{ std::move(ranges) } {}
    IntegerRange query(Value* val) const;
};

class IntegerRangeAnalysis final : public FuncAnalysisPassWrapper<IntegerRangeAnalysis, IntegerRangeAnalysisResult> {
public:
    static IntegerRangeAnalysisResult run(Function& func, AnalysisPassManager& analysis);
};

CMMC_NAMESPACE_END

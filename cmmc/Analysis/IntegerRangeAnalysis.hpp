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
#include <cmmc/IR/Function.hpp>
#include <cstdint>
#include <limits>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

struct IntegerRange final {
    uint32_t bitWidth;
    uintmax_t mask;
    uintmax_t times;
    bool isSignedRangeValid, isUnsignedRangeValid, isNonZero;
    uintmax_t maxUnsignedValue, minUnsignedValue;
    uintmax_t maxSignedValue, minSignedValue;

    [[nodiscard]] bool isNonNegative() const noexcept;
};

class IntegerRangeAnalysisResult final {
    std::unordered_map<Value*, IntegerRange> mRanges;

public:
    explicit IntegerRangeAnalysisResult(std::unordered_map<Value*, IntegerRange> ranges) : mRanges{ std::move(ranges) } {}
    const IntegerRange& query(Value* val) const;
};

class IntegerRangeAnalysis final : public FuncAnalysisPassWrapper<IntegerRangeAnalysis, IntegerRangeAnalysisResult> {
public:
    static IntegerRangeAnalysisResult run(Function& func, AnalysisPassManager& analysis);
};

CMMC_NAMESPACE_END

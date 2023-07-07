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
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/IntegerRange.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cstdint>
#include <limits>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class IntegerRangeAnalysisResult final {
    std::unordered_map<Value*, IntegerRange> mRanges;
    std::unordered_map<Value*, std::unordered_map<Block*, IntegerRange>> mContextualRanges;

public:
    auto& storage() {
        return mRanges;
    }
    auto& contextualStorage() {
        return mContextualRanges;
    }
    IntegerRange query(Value* val, const DominateAnalysisResult& dom, Instruction* ctx, uint32_t depth) const;
};

class IntegerRangeAnalysis final : public FuncAnalysisPassWrapper<IntegerRangeAnalysis, IntegerRangeAnalysisResult> {
public:
    static IntegerRangeAnalysisResult run(Function& func, AnalysisPassManager& analysis);
};

CMMC_NAMESPACE_END

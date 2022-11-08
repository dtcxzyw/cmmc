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
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Function.hpp>
#include <cstdint>

CMMC_NAMESPACE_BEGIN

class AliasAnalysisResult final {
    std::unordered_set<uint64_t> mDistinctPairs;
    std::vector<std::unordered_set<uint32_t>> mDistinctGroups;
    std::unordered_map<Value*, std::vector<uint32_t>> mPointerAttributes;

public:
    void addPair(uint32_t attr1, uint32_t attr2);
    void addDistinctGroup(std::unordered_set<uint32_t> group);
    void addValue(Value* p, std::vector<uint32_t> attrs);
    bool isDistinct(Value* p1, Value* p2) const;
    const std::vector<uint32_t>& inheritFrom(Value* value) const;
    bool appendAttr(Value* p, const std::vector<uint32_t>& newAttrs);
    bool appendAttr(Value* p, uint32_t newAttr);
    const std::unordered_map<Value*, std::vector<uint32_t>>& pointerAttrs() const noexcept {
        return mPointerAttributes;
    }
};

class AliasAnalysis final : public FuncAnalysisPassWrapper<AliasAnalysis, AliasAnalysisResult> {
public:
    static AliasAnalysisResult run(Function& func, AnalysisPassManager& analysis);
};

CMMC_NAMESPACE_END

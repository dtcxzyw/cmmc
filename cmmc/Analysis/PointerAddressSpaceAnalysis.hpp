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
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cstdint>

CMMC_NAMESPACE_BEGIN

enum class AddressSpaceType { InternalStack = 1 << 0 };

class PointerAddressSpaceAnalysisResult final {
    std::unordered_map<Value*, AddressSpaceType> mMappings;

public:
    void addTag(Value* ptr, AddressSpaceType space);
    bool isTagged(Value* ptr) const;
    AddressSpaceType getAddressSpace(Value* ptr) const;
    bool mayBe(Value* ptr, AddressSpaceType space) const;
    bool mustBe(Value* ptr, AddressSpaceType space) const;
};

class PointerAddressSpaceAnalysis final
    : public FuncAnalysisPassWrapper<PointerAddressSpaceAnalysis, PointerAddressSpaceAnalysisResult> {
public:
    static PointerAddressSpaceAnalysisResult run(Function& func, AnalysisPassManager& analysis);
};

CMMC_NAMESPACE_END

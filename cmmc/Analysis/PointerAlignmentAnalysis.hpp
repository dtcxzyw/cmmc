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
#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cstdint>
#include <vector>

CMMC_NAMESPACE_BEGIN

class PointerAlignmentAnalysisResult final {
    std::unordered_map<Value*, uint32_t> mInfo;

public:
    std::unordered_map<Value*, uint32_t>& storage() {
        return mInfo;
    }
    uint32_t lookup(Value* pointer, const DataLayout& dataLayout) const;
};

class PointerAlignmentAnalysis final : public FuncAnalysisPassWrapper<PointerAlignmentAnalysis, PointerAlignmentAnalysisResult> {
public:
    static PointerAlignmentAnalysisResult run(Function& func, AnalysisPassManager& analysis);
};

CMMC_NAMESPACE_END

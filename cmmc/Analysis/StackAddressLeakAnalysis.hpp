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
#include <limits>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class StackAddressLeakAnalysisResult final {
    std::unordered_map<Value*, std::unordered_set<Instruction*>> mModifyingCalls;
    std::unordered_map<Value*, std::unordered_set<Instruction*>> mReadingCalls;

public:
    explicit StackAddressLeakAnalysisResult(std::unordered_map<Value*, std::unordered_set<Instruction*>> modifyingCalls,
                                            std::unordered_map<Value*, std::unordered_set<Instruction*>> readingCalls)
        : mModifyingCalls{ std::move(modifyingCalls) }, mReadingCalls{ std::move(readingCalls) } {}
    bool mayModify(Instruction* callInst, Value* alloc) const;
    bool mayRead(Instruction* callInst, Value* alloc) const;
};

class StackAddressLeakAnalysis final : public FuncAnalysisPassWrapper<StackAddressLeakAnalysis, StackAddressLeakAnalysisResult> {
public:
    static StackAddressLeakAnalysisResult run(Function& func, AnalysisPassManager& analysis);
};

CMMC_NAMESPACE_END

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
#include <vector>

CMMC_NAMESPACE_BEGIN

class CallGraphSCCAnalysisResult final {
    std::vector<Function*> mOrder;          // callee --> caller
    std::vector<Function*> mReversedOrder;  // caller --> callee

public:
    explicit CallGraphSCCAnalysisResult(std::vector<Function*> order);
    [[nodiscard]] const std::vector<Function*>& getOrder() const noexcept;
    [[nodiscard]] const std::vector<Function*>& getReversedOrder() const noexcept;
};

class CallGraphSCCAnalysis final : public ModuleAnalysisPassWrapper<CallGraphSCCAnalysis, CallGraphSCCAnalysisResult> {
public:
    static CallGraphSCCAnalysisResult run(Module& module, AnalysisPassManager& analysis);
};

CMMC_NAMESPACE_END

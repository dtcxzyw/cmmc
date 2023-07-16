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

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/Analysis/SCEVAnalysis.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <iterator>

CMMC_NAMESPACE_BEGIN

class LoopStrengthReduction final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& loopInfo = analysis.get<LoopAnalysis>(func);
        auto& scev = analysis.get<SCEVAnalysis>(func);
        CMMC_UNUSED(loopInfo);
        CMMC_UNUSED(scev);
        return false;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopStrengthReduction"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopStrengthReduction);

CMMC_NAMESPACE_END

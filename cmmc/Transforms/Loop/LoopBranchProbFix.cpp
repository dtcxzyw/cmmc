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

// Update branch probilities of static loops

#include <cmath>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>

CMMC_NAMESPACE_BEGIN

class LoopBranchProbFix final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& loopInfo = analysis.get<LoopAnalysis>(func);
        bool modified = false;
        for(auto& loop : loopInfo.loops) {
            if(!loop.bound->is<ConstantInteger>())
                continue;
            if(!loop.initial->is<ConstantInteger>())
                continue;
            const auto initial = loop.initial->as<ConstantInteger>()->getSignExtended();
            const auto bound = loop.bound->as<ConstantInteger>()->getSignExtended();
            assert(loop.step);
            if((loop.step > 0 && initial + loop.step >= bound) || ((loop.step < 0 && initial + loop.step <= bound)))
                continue;  // handled by loop elimination
            const auto size = (bound - initial + loop.step + (loop.step > 0 ? -1 : 1)) / loop.step;
            assert(size >= 0);

            const auto prob = 1.0 - 1.0 / static_cast<double>(size);
            const auto branch = loop.latch->getTerminator()->as<ConditionalBranchInst>();
            const auto oldProb = branch->getBranchProb();

            if(std::fabs(oldProb - prob) > 1e-8) {
                branch->updateBranchProb(prob);
                modified = true;
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopBranchProbFix"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopBranchProbFix);

CMMC_NAMESPACE_END

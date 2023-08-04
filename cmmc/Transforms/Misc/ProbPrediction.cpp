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

#include <cmath>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>

CMMC_NAMESPACE_BEGIN

class ProbPrediction final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& dom = analysis.get<DominateAnalysis>(func);
        bool modified = false;
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() == InstructionID::ConditionalBranch) {
                const auto branch = terminator->as<BranchInst>();
                const auto trueTarget = branch->getTrueTarget();
                const auto falseTarget = branch->getFalseTarget();
                const auto prob = branch->getBranchProb();
                if(std::fabs(prob - defaultIfThenProb) < 1e-5) {
                    if(trueTarget == falseTarget)
                        continue;
                    if(!dom.reachable(trueTarget) || !dom.reachable(falseTarget))
                        continue;
                    const auto d1 = dom.subTreeSize(trueTarget);
                    const auto d2 = dom.subTreeSize(falseTarget);
                    if(d1 != d2) {
                        const auto biasedProb = 0.8;
                        branch->updateBranchProb(d1 > d2 ? biasedProb : 1.0 - biasedProb);
                        modified = true;
                    }
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ProbPrediction"sv;
    }
};

CMMC_TRANSFORM_PASS(ProbPrediction);

CMMC_NAMESPACE_END

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
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <iterator>

CMMC_NAMESPACE_BEGIN

class FinalValueReplacement final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& loopInfo = analysis.get<LoopAnalysis>(func);

        bool modified = false;
        for(auto& loop : loopInfo.loops) {
            // FIXME
            if(loop.header != loop.latch)
                continue;
            if(loop.step != 1 && loop.step != -1)
                continue;
            const auto next = loop.next;
            if(!next->is<TrackableValue>())
                continue;
            const auto finalValue = loop.bound;
            const auto trackable = next->as<TrackableValue>();
            for(auto iter = trackable->users().begin(); iter != trackable->users().end();) {
                const auto nextIter = std::next(iter);

                if(iter.ref()->user->getBlock() != loop.header) {
                    iter.ref()->resetValue(finalValue);
                }

                iter = nextIter;
            }
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "FinalValueReplacement"sv;
    }
};

CMMC_TRANSFORM_PASS(FinalValueReplacement);

CMMC_NAMESPACE_END

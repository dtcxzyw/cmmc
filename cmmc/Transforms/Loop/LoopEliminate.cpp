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

// Unused loop elimination (only apply for simple loops)

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>

CMMC_NAMESPACE_BEGIN

class LoopEliminate final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& loopInfo = analysis.get<LoopAnalysis>(func);

        bool modified = false;
        for(auto& loop : loopInfo.loops) {
            // innermost loop
            if(loop.header != loop.latch)
                continue;
            if(!loop.bound->is<ConstantInteger>())
                continue;
            if(!loop.initial->is<ConstantInteger>())
                continue;
            const auto initial = loop.initial->as<ConstantInteger>()->getSignExtended();
            const auto bound = loop.bound->as<ConstantInteger>()->getSignExtended();
            // execute at most once
            if((loop.step > 0 && initial + loop.step >= bound) || ((loop.step < 0 && initial + loop.step <= bound))) {
                // remove backedge
                modified = true;
                const auto terminator = loop.latch->getTerminator()->as<BranchInst>();
                terminator->mutableOperands()[0]->resetValue(ConstantInteger::getFalse());
            }
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopEliminate);

CMMC_NAMESPACE_END

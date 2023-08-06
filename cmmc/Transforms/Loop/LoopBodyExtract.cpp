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
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iostream>
#include <vector>

CMMC_NAMESPACE_BEGIN

class LoopBodyExtract final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& loopInfo = analysis.get<LoopAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        auto& cfg = analysis.get<CFGAnalysis>(func);

        bool modified = false;
        for(auto& loop : loopInfo.loops) {
            if(loop.header == loop.latch)
                continue;
            // loop.header->dumpAsTarget(std::cerr);
            // std::cerr << '\n';

            std::unordered_set<Block*> body;
            if(collectLoopBody(loop.header, loop.latch, dom, cfg, body)) {
                // std::cerr << "detect body\n";
                // for(auto b : body) {
                //     b->dump(std::cerr, Noop{});
                // }
                // std::cerr << '\n';
                // modified = true;
            }
            CMMC_UNUSED(dom);
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopBodyExtract"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopBodyExtract);

CMMC_NAMESPACE_END

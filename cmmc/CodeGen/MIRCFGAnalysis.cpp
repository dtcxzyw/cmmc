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

#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/MIRCFGAnalysis.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <iostream>
#include <variant>

CMMC_MIR_NAMESPACE_BEGIN

const std::vector<MIRBlockEdge>& CFGAnalysisResult::predecessors(const MIRBasicBlock* block) const {
    return mInfo.at(block).predecessors;
}
const std::vector<MIRBlockEdge>& CFGAnalysisResult::successors(const MIRBasicBlock* block) const {
    return mInfo.at(block).successors;
}

CFGAnalysisResult calcCFG(const MIRFunction& func, const CodeGenContext& ctx) {
    assert(ctx.flags.endsWithTerminator);
    CFGAnalysisResult result;
    auto& map = result.storage();
    auto& blocks = func.blocks();

    for(auto& block : blocks) {
        auto& ref = map[block.get()];
        CMMC_UNUSED(ref);
    }

    const auto connect = [&](MIRBasicBlock* src, MIRBasicBlock* dst, double prob) {
        map[src].successors.push_back({ dst, prob });
        map[dst].predecessors.push_back({ src, prob });
    };

    for(auto iter = blocks.cbegin(); iter != blocks.cend(); ++iter) {
        const auto& block = *iter;
        const auto next = std::next(iter);

        assert(block->verify(std::cerr, ctx));
        const auto& terminator = block->instructions().back();
        MIRBasicBlock* targetBlock;
        double prob;
        if(ctx.instInfo.matchBranch(terminator, targetBlock, prob)) {
            if(requireFlag(ctx.instInfo.getInstInfo(terminator).getInstFlag(), InstFlagNoFallthrough)) {
                // Unconditional
                connect(block.get(), targetBlock, 1.0);
            } else {
                // Conditional
                if(next != blocks.cend()) {
                    if(next->get() == targetBlock) {
                        connect(block.get(), targetBlock, 1.0);
                    } else {
                        connect(block.get(), targetBlock, prob);
                        connect(block.get(), next->get(), 1.0 - prob);
                    }
                } else
                    connect(block.get(), targetBlock, prob);
            }
        }
    }

    return result;
}

CMMC_MIR_NAMESPACE_END

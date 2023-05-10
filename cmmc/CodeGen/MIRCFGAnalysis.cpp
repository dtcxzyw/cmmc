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

CFGAnalysisResult calcCFG(const MIRFunction& func) {
    CMMC_UNUSED(func);
    CFGAnalysisResult result;
    /*
    auto& map = result.storage();
    auto& blocks = func.blocks();

    for(auto& block : blocks) {
        auto& ref = map[block.get()];
        CMMC_UNUSED(ref);
    }

    const auto connect = [&](const MIRBasicBlock* src, const MIRBasicBlock* dst, double freq) {
        map[src].successors.push_back({ dst, freq });
        map[dst].predecessors.push_back({ src, freq });
    };

    for(auto iter = blocks.cbegin(); iter != blocks.cend(); ++iter) {
        const auto& block = *iter;
        const auto next = std::next(iter);

        assert(block->verify(std::cerr, true));
        const auto& lastInst = block->instructions().back();
        std::visit(Overload{ [&](const BranchCompareMInst& inst) {
                                if(next != blocks.cend()) {
                                    if(next->get() == inst.targetBlock) {
                                        connect(block.get(), inst.targetBlock, 1.0);
                                    } else {
                                        connect(block.get(), inst.targetBlock, inst.branchProb);
                                        connect(block.get(), next->get(), 1.0 - inst.branchProb);
                                    }
                                } else
                                    connect(block.get(), inst.targetBlock, inst.branchProb);
                            },
                             [&](const BranchMInst& inst) { connect(block.get(), inst.targetBlock, 1.0); }, [&](const auto&) {} },
                   lastInst);
    }
    */

    return result;
}

CMMC_MIR_NAMESPACE_END

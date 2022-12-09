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

#include <cmmc/CodeGen/GMIRCFGAnalysis.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <iostream>
#include <variant>

CMMC_NAMESPACE_BEGIN

const std::vector<const GMIRBasicBlock*>& GMIRCFGAnalysisResult::predecessors(const GMIRBasicBlock* block) const {
    return mInfo.at(block).predecessors;
}
const std::vector<const GMIRBasicBlock*>& GMIRCFGAnalysisResult::successors(const GMIRBasicBlock* block) const {
    return mInfo.at(block).successors;
}

GMIRCFGAnalysisResult calcGMIRCFG(const GMIRFunction& func) {
    GMIRCFGAnalysisResult result;
    auto& map = result.storage();
    auto& blocks = func.blocks();

    const auto connect = [&](const GMIRBasicBlock* src, const GMIRBasicBlock* dst) {
        map[src].successors.push_back(dst);
        map[dst].predecessors.push_back(src);
    };

    for(auto iter = blocks.cbegin(); iter != blocks.cend(); ++iter) {
        const auto& block = *iter;
        const auto next = std::next(iter);

        assert(block->verify(std::cerr, true));
        const auto& lastInst = block->instructions().back();
        std::visit(Overload{ [&](const BranchCompareMInst& inst) {
                                connect(block.get(), inst.targetBlock);
                                if(next != blocks.cend())
                                    connect(block.get(), next->get());
                            },
                             [&](const BranchMInst& inst) { connect(block.get(), inst.targetBlock); },
                             [&](const auto&) {
                                 if(next != blocks.cend())
                                     connect(block.get(), next->get());
                             } },
                   lastInst);
    }

    return result;
}

CMMC_NAMESPACE_END

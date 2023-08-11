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

CMMC_NAMESPACE_BEGIN

const std::vector<Block*>& CFGAnalysisResult::predecessors(Block* block) const {
    return mInfo.at(block).predecessors;
}
const std::vector<Block*>& CFGAnalysisResult::successors(Block* block) const {
    return mInfo.at(block).successors;
}

CFGAnalysisResult CFGAnalysis::run(Function& func, AnalysisPassManager&) {
    CFGAnalysisResult result;
    auto& storage = result.storage();
    for(auto block : func.blocks()) {
        auto& self = storage[block];
        const auto terminator = block->getTerminator();
        if(terminator->isBranch()) {
            if(terminator->getInstID() == InstructionID::Switch) {
                const auto switchInst = terminator->as<SwitchInst>();
                auto targets = switchInst->getUniqueSuccessors();
                for(auto target : targets) {
                    self.successors.emplace_back(target);
                    storage[target].predecessors.emplace_back(block);
                }
            } else {
                const auto branch = terminator->as<BranchInst>();
                const auto trueTarget = branch->getTrueTarget();
                const auto falseTarget = branch->getFalseTarget();
                self.successors.emplace_back(trueTarget);
                storage[trueTarget].predecessors.emplace_back(block);
                if(falseTarget && falseTarget != trueTarget) {
                    self.successors.emplace_back(falseTarget);
                    storage[falseTarget].predecessors.emplace_back(block);
                }
            }
        }
    }
    assert(storage[func.entryBlock()].predecessors.empty());
    return result;
}

CMMC_NAMESPACE_END

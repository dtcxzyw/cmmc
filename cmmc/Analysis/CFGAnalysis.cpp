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

#include <cmmc/Analysis/CFGAnalysis.hpp>

CMMC_NAMESPACE_BEGIN

const std::vector<std::pair<Block*, BranchTarget*>>& CFGAnalysisResult::predecessors(Block* block) const {
    assert(mInfo.count(block));
    return mInfo.find(block)->second.predecessors;
}
const std::vector<std::pair<Block*, BranchTarget*>>& CFGAnalysisResult::successors(Block* block) const {
    assert(mInfo.count(block));
    return mInfo.find(block)->second.successors;
}

CFGAnalysisResult CFGAnalysis::run(Function& func, AnalysisPassManager&) {
    CFGAnalysisResult result;
    auto& storage = result.storage();
    for(auto block : func.blocks()) {
        auto& self = storage[block];
        const auto terminator = block->getTerminator();
        if(terminator->isBranch()) {
            const auto branch = terminator->as<ConditionalBranchInst>();
            auto& trueTarget = branch->getTrueTarget();
            auto& falseTarget = branch->getFalseTarget();
            self.successors.emplace_back(trueTarget.getTarget(), &trueTarget);
            storage[trueTarget.getTarget()].predecessors.emplace_back(block, &trueTarget);
            if(falseTarget.getTarget()) {
                self.successors.emplace_back(falseTarget.getTarget(), &falseTarget);
                storage[falseTarget.getTarget()].predecessors.emplace_back(block, &falseTarget);
            }
        }
    }
    return result;
}

CMMC_NAMESPACE_END

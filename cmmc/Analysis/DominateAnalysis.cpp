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
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <functional>
#include <iostream>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

// TODO: build DomTree and LCA query data structure
bool DominateAnalysisResult::dominate(Block* a, Block* b) const {
    return mDomSet.find(a)->second.count(b);
}

// TODO: use faster algorithm instead of the naive O(VE) algorithm
// Please refer to https://tanujkhattar.wordpress.com/2016/01/11/dominator-tree-of-a-directed-graph/
DominateAnalysisResult DominateAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    const auto& cfg = analysis.get<CFGAnalysis>(func);

    std::unordered_set<Block*> visited;
    std::function<void(Block*)> color = [&](Block* block) {
        if(visited.count(block))
            return;
        visited.insert(block);
        for(auto [succBlock, succTarget] : cfg.successors(block)) {
            CMMC_UNUSED(succTarget);
            color(succBlock);
        }
    };

    color(func.entryBlock());
    std::unordered_set<Block*> reachable;
    reachable.swap(visited);

    std::unordered_map<Block*, std::unordered_set<Block*>> ret;

    for(auto block : func.blocks()) {
        visited = { block };
        color(func.entryBlock());

        auto& set = ret[block];

        for(auto b : reachable)
            if(!visited.count(b))
                set.insert(b);
    }

    /*
    func.dump(std::cerr);
    for(auto [block, set] : ret) {
        block->dumpAsTarget(std::cerr);
        std::cerr << ": ";
        for(auto b : set) {
            b->dumpAsTarget(std::cerr);
            std::cerr << ", ";
        }
        std::cerr << std::endl;
    }*/

    return DominateAnalysisResult{ ret };
}

CMMC_NAMESPACE_END

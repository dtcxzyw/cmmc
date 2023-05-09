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

#include <algorithm>
#include <cmmc/Analysis/CallGraphSCC.hpp>
#include <cmmc/Support/Graph.hpp>
#include <cstdint>
#include <iterator>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

CallGraphSCCAnalysisResult::CallGraphSCCAnalysisResult(std::vector<Function*> order) : mOrder{ std::move(order) } {
    mReversedOrder.reserve(mOrder.size());
    std::reverse_copy(mOrder.cbegin(), mOrder.cend(), std::back_inserter(mReversedOrder));
}

const std::vector<Function*>& CallGraphSCCAnalysisResult::getOrder() const noexcept {
    return mOrder;
}
const std::vector<Function*>& CallGraphSCCAnalysisResult::getReversedOrder() const noexcept {
    return mReversedOrder;
}

CallGraphSCCAnalysisResult CallGraphSCCAnalysis::run(Module& module, AnalysisPassManager&) {
    std::unordered_map<Function*, uint32_t> idxMap;
    std::vector<Function*> funcMap;

    uint32_t allocateID = 0;
    for(auto global : module.globals()) {
        if(!global->isFunction())
            continue;

        const auto func = global->as<Function>();
        idxMap.emplace(func, allocateID++);
        funcMap.push_back(func);
    }

    const auto size = allocateID;
    Graph graph(size);
    for(auto [func, u] : idxMap) {
        for(auto block : func->blocks()) {
            for(auto inst : block->instructions()) {
                if(inst->getInstID() != InstructionID::Call)
                    continue;
                const auto callee = inst->operands().back();
                if(auto calleeFunc = dynamic_cast<Function*>(callee)) {
                    const auto v = idxMap.at(calleeFunc);
                    graph[u].emplace_back(v);
                }
            }
        }
    }

    const auto [ccnt, col] = calcSCC(graph);

    std::vector<std::unordered_set<uint32_t>> dag(ccnt);
    std::vector<std::vector<uint32_t>> scc(ccnt);
    std::vector<uint32_t> degreeOut(ccnt);
    for(uint32_t u = 0; u < size; ++u) {
        const auto cu = col[u];
        scc[cu].push_back(u);
        for(auto v : graph[u]) {
            const auto cv = col[v];
            if(cu == cv)
                continue;
            if(dag[cv].emplace(cu).second)
                ++degreeOut[cu];
        }
    }

    std::vector<Function*> order;
    order.reserve(idxMap.size());

    std::queue<uint32_t> q;
    for(uint32_t u = 0; u < ccnt; ++u) {
        if(degreeOut[u] == 0)
            q.push(u);
    }

    while(!q.empty()) {
        const auto u = q.front();
        order.emplace_back(funcMap[u]);
        q.pop();

        for(auto v : dag[u]) {
            if(--degreeOut[v] == 0)
                q.push(v);
        }
    }

    return CallGraphSCCAnalysisResult{ std::move(order) };
}

CMMC_NAMESPACE_END

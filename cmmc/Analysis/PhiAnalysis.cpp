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

#include <algorithm>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/PhiAnalysis.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/Support/Graph.hpp>
#include <iostream>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <variant>
#include <vector>

CMMC_NAMESPACE_BEGIN

const std::variant<Value*, PhiNode>& PhiAnalysisResult::query(BlockArgument* arg) const {
    return mPhiNodes.at(arg);
}

PhiAnalysisResult PhiAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    auto& cfg = analysis.get<CFGAnalysis>(func);

    NodeIndex nodeID = 0;
    std::unordered_map<Value*, NodeIndex> nodeMap;
    const auto allocateID = [&](Value* val) {
        if(!nodeMap.count(val))
            nodeMap[val] = nodeID++;
    };

    for(auto block : func.blocks()) {
        for(uint32_t idx = 0; idx < block->args().size(); ++idx) {
            const auto arg = block->getArg(idx);
            allocateID(arg);
            for(auto [predBlock, predTarget] : cfg.predecessors(block)) {
                const auto provided = predTarget->getArgs()[idx];
                allocateID(provided);
            }
        }
    }

    const auto size = nodeID;

    Graph graph(size);

    for(auto block : func.blocks()) {
        for(uint32_t idx = 0; idx < block->args().size(); ++idx) {
            const auto arg = block->getArg(idx);
            const auto src = nodeMap.at(arg);
            for(auto [predBlock, predTarget] : cfg.predecessors(block)) {
                const auto provided = predTarget->getArgs()[idx];
                const auto dst = nodeMap.at(provided);
                graph[src].push_back(dst);
            }
        }
    }

    // build SCC
    const auto [ccnt, col] = calcSCC(graph);

    // build DAG
    std::vector<std::unordered_set<NodeIndex>> dag(ccnt);
    std::vector<std::vector<NodeIndex>> group(ccnt);
    std::vector<NodeIndex> degreeIn(ccnt);

    for(NodeIndex i = 0; i < size; ++i) {
        const auto cu = col[i];
        group[cu].push_back(i);
        for(auto v : graph[i]) {
            const auto cv = col[v];
            if(cu == cv)
                continue;
            if(dag[cv].insert(cu).second) {
                ++degreeIn[cu];
            }
        }
    }

    graph = {};

    const auto& dom = analysis.get<DominateAnalysis>(func);

    std::vector<Value*> invMap(size);
    for(auto [val, id] : nodeMap)
        invMap[id] = val;

    std::vector<PhiNode> phiNodes(ccnt);
    std::queue<NodeIndex> q;
    for(NodeIndex i = 0; i < ccnt; ++i)
        if(degreeIn[i] == 0) {
            auto& g = group[i];
            if(g.size() == 1 && !invMap[g[0]]->is<BlockArgument>()) {
                phiNodes[i] = { invMap[g[0]] };
            } else if(!g.empty()) {
                std::list<BlockArgument*> args;

                for(auto idx : g) {
                    const auto cur = invMap[idx]->as<BlockArgument>();

                    auto dominated = false;
                    args.remove_if([&](BlockArgument* rhs) {
                        if(dom.dominate(rhs->getBlock(), cur->getBlock())) {
                            dominated = true;
                            return false;
                        }
                        return dom.dominate(cur->getBlock(), rhs->getBlock());
                    });
                    if(!dominated)
                        args.push_back(cur);
                }

                phiNodes[i] = { args.begin(), args.end() };
            }

            q.push(i);
        }

    while(!q.empty()) {
        const auto u = q.front();
        q.pop();

        auto& g1 = phiNodes[u];
        std::sort(g1.begin(), g1.end());
        g1.erase(std::unique(g1.begin(), g1.end()), g1.end());

        for(auto v : dag[u]) {
            auto& g2 = phiNodes[v];
            g2.insert(g2.cend(), g1.cbegin(), g1.cend());
            if(--degreeIn[v] == 0)
                q.push(v);
        }
    }

    degreeIn = {};

    // map result
    /*
    std::cerr << "groups: \n"sv;
    for(NodeIndex i = 0; i < ccnt; ++i) {
        std::cerr << "group "sv << i << ':';
        for(NodeIndex j = 0; j < size; ++j) {
            if(col[j] == i) {
                std::cerr << ' ';
                invMap[j]->dumpAsOperand(std::cerr);
            }
        }
        std::cerr << "->"sv;
        for(auto v : phiNodes[i]) {
            std::cerr << ' ';
            v->dumpAsOperand(std::cerr);
        }
        std::cerr << '\n';
    }
    std::cerr << '\n';
    */

    std::unordered_map<BlockArgument*, std::variant<Value*, PhiNode>> ret;
    for(auto [val, id] : nodeMap) {
        if(auto arg = dynamic_cast<BlockArgument*>(val)) {
            const auto& g = phiNodes[col[id]];
            auto& res = ret[arg];

            if(g.size() == 1) {
                if(g.front() != arg)
                    res = g.front();
                else
                    res = PhiNode{};
            } else {
                PhiNode copy;
                for(auto v : g) {
                    if(v != arg)
                        copy.push_back(v);
                }
                if(copy.size() == 1)
                    res = copy.front();
                else
                    res = std::move(copy);
            }
        }
    }

    return PhiAnalysisResult{ std::move(ret) };
}

CMMC_NAMESPACE_END

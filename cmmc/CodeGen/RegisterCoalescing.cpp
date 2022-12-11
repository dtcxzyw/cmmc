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
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cmmc/Support/Graph.hpp>
#include <limits>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <variant>
#include <vector>

CMMC_NAMESPACE_BEGIN

void registerCoalescing(GMIRFunction& func) {
    auto& pool = func.pools().pools[AddressSpace::VirtualReg];
    std::vector<std::pair<NodeIndex, NodeIndex>> edges;
    std::unordered_map<uint32_t, NodeIndex> nodeMap;
    NodeIndex idCount = 0;
    const auto getID = [&](const Operand& op) {
        if(const auto iter = nodeMap.find(op.id); iter != nodeMap.cend())
            return iter->second;
        return nodeMap[op.id] = idCount++;
    };

    for(auto& block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            if(std::holds_alternative<CopyMInst>(inst)) {
                const auto& copy = std::get<CopyMInst>(inst);
                if(copy.indirectDst || copy.indirectSrc)
                    continue;
                if(copy.dst.addressSpace == AddressSpace::VirtualReg && copy.src.addressSpace == AddressSpace::VirtualReg) {
                    const auto dstClass = pool.getType(copy.dst);
                    const auto srcClass = pool.getType(copy.src);
                    // FIXME: just bitcast?
                    if(dstClass->isSame(srcClass)) {
                        edges.emplace_back(getID(copy.src), getID(copy.dst));
                    }
                }
            }
        }
    }

    const auto size = idCount;
    if(size <= 1)
        return;

    Graph graph(size);
    for(auto [u, v] : edges)
        graph[u].push_back(v);
    edges = {};

    const auto [ccnt, col] = calcSCC(graph);
    std::vector<std::unordered_set<NodeIndex>> dag(ccnt);
    std::vector<NodeIndex> degreeIn(ccnt);

    for(NodeIndex u = 0; u < size; ++u) {
        const auto cu = col[u];
        for(auto v : graph[u]) {
            const auto cv = col[v];
            if(cu != cv) {
                dag[cu].insert(cv);
                ++degreeIn[cv];
            }
        }
    }

    std::queue<NodeIndex> q;
    constexpr auto invalidMap = std::numeric_limits<NodeIndex>::max();
    std::vector<NodeIndex> realColor(ccnt, invalidMap);
    for(NodeIndex u = 0; u < ccnt; ++u)
        if(degreeIn[u] == 0) {
            realColor[u] = u;
            q.push(u);
        }

    while(!q.empty()) {
        const auto u = q.front();
        q.pop();
        const auto self = realColor[u];

        for(auto v : dag[u]) {
            auto& map = realColor[v];
            if(map == invalidMap) {
                map = self;
            } else if(map != self && map != v) {
                map = v;  // break the chain
            }

            if(--degreeIn[v] == 0)
                q.push(v);
        }
    }

    std::unordered_map<NodeIndex, uint32_t> allocated;
    std::unordered_map<uint32_t, uint32_t> mapOperand;

    const auto getOperand = [&](NodeIndex key, const Type* type) -> uint32_t {
        if(const auto iter = allocated.find(key); iter != allocated.cend())
            return iter->second;
        return allocated[key] = pool.allocate(type).id;
    };

    for(auto [op, idx] : nodeMap) {
        const auto key = realColor[col[idx]];
        mapOperand.emplace(op, getOperand(key, pool.getType(Operand{ AddressSpace::VirtualReg, op })));
    }

    forEachOperands(func, [&](Operand& op) {
        if(op.addressSpace == AddressSpace::VirtualReg) {
            if(const auto iter = mapOperand.find(op.id); iter != mapOperand.cend())
                op.id = iter->second;
        }
    });

    removeIdentityCopies(func);
}

CMMC_NAMESPACE_END

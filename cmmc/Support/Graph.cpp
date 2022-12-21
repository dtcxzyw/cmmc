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

#include <cmmc/Support/Graph.hpp>

CMMC_NAMESPACE_BEGIN

std::pair<NodeIndex, std::vector<NodeIndex>> calcSCC(const Graph& graph) {
    const auto size = graph.size();
    std::vector<NodeIndex> dfn(size), low(size), st(size), col(size);
    NodeIndex top = 0, ccnt = 0, icnt = 0;
    std::vector<bool> flag(size);
    const auto dfs = [&](auto&& self, NodeIndex u) -> void {
        dfn[u] = low[u] = ++icnt;
        flag[u] = true;
        st[top++] = u;
        for(auto v : graph[u]) {
            if(dfn[v]) {
                if(flag[v])
                    low[u] = std::min(low[u], dfn[v]);
            } else {
                self(self, v);
                low[u] = std::min(low[u], low[v]);
            }
        }
        if(dfn[u] == low[u]) {
            NodeIndex c = ccnt++, v;
            do {
                v = st[--top];
                flag[v] = false;
                col[v] = c;
            } while(u != v);
        }
    };

    for(NodeIndex i = 0; i < size; ++i)
        if(!dfn[i])
            dfs(dfs, i);
    return { ccnt, std::move(col) };
}

CMMC_NAMESPACE_END

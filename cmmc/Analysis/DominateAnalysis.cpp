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

#include "cmmc/Config.hpp"
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <functional>
#include <iostream>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

// TODO: Verify implementation, consider Tarjan LCA.
bool DominateAnalysisResult::dominate(Block* a, Block* b) const {
    auto lca = [&](Block* x, Block* y) {
        if(mDDep.at(x) > mDDep.at(y)) std::swap(x, y);
        size_t diff = mDDep.at(y) - mDDep.at(x);
        for(size_t i = 0; diff > 0; i++, diff>>=1)
            if(diff & 1) y = mDFa.at(y)[i];
        if(x != y) {
            for(size_t i = 30; i > 0 && x != y; i--)
                if(mDFa.at(x)[i] != mDFa.at(y)[i])
                    x = mDFa.at(x)[i], y = mDFa.at(y)[i];
            x = mDFa.at(x)[0];
        }
        return x;
    };

    return
    !(mDDep.count(a) && mDDep.count(b)) ? false
    : a == b ? false
    : mDomTree.find(a)->second.count(b) ? true
    : lca(a, b) == a;
}

DominateAnalysisResult DominateAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    const auto& cfg = analysis.get<CFGAnalysis>(func);
    Block* entryBlk = func.entryBlock();

    size_t cnt = 1;
    std::unordered_map<Block*, std::unordered_set<Block*>> e, g, tree;
    std::unordered_map<Block*, Block*> fa;
    std::unordered_map<Block*, size_t> dfn;
    std::vector<Block*> dfseq;
    std::unordered_map<Block*, Block*> f;

    auto color = [&](auto&& self, Block* cur, Block* prev) {
        assert(cur != nullptr);
        if(dfn.count(cur))
            return;
        if(prev != nullptr)
            tree[prev].insert(cur), fa[cur] = prev;
        dfn[cur] = cnt++;
        dfseq.push_back(cur);
        for(auto [succBlk, succTgt] : cfg.successors(cur)) {
            CMMC_UNUSED(succTgt);
            e[cur].insert(succBlk), g[succBlk].insert(cur);
            self(self, succBlk, cur);
        }
    };

    color(color, entryBlk, nullptr);

    std::unordered_map<Block*, Block*> ran, idom, sdom;
    auto merge = [&](auto&& self, Block* blk){
        if(f[blk] == blk) return blk;
        Block* res = self(self, f[blk]);
        if(dfn[sdom[ran[f[blk]]]] < dfn[sdom[ran[blk]]])
            ran[blk] = ran[f[blk]];
        return f[blk] = res;
    };

    std::unordered_map<Block*, std::vector<Block*>> tr;

    for(auto [tblk, dfno] : dfn){
        CMMC_UNUSED(dfno);
        sdom[tblk] = tblk;
        f[tblk] = ran[tblk] = tblk;
    }

    for(auto it = dfseq.rbegin(); it != dfseq.rend(); it++) {
        Block* blk = *it;
        if(blk == entryBlk) continue;
        for(Block* fablk : g[blk]){
            if(!dfn.count(fablk)) continue;
            merge(merge, fablk);
            if(dfn[sdom[ran[fablk]]] < dfn[sdom[blk]])
                sdom[blk] = sdom[ran[fablk]];
        }
        f[blk] = fa[blk];
        tr[sdom[blk]].push_back(blk);
        blk = fa[blk];
        for(Block* tblk : tr[blk]) {
            merge(merge, tblk);
            if(blk == sdom[ran[tblk]]) idom[tblk] = blk;
            else idom[tblk] = ran[tblk];
        }
        tr[blk].clear();
    }
    for(Block* blk : dfseq) {
        if(blk == entryBlk) continue;
        if(idom[blk] != sdom[blk])
            idom[blk] = idom[idom[blk]];
    }

    std::unordered_map<Block*, std::unordered_set<Block*>> dtree;

    for(auto [u, v] : idom) {
        dtree[v].insert(u);
    }

    std::unordered_set<Block*> dVisited;
    std::unordered_map<Block*, size_t> dDep;
    std::unordered_map<Block*, std::vector<Block*>> dFa;
    dDep[entryBlk] = 0;
    dFa[entryBlk] = { entryBlk };
    for(size_t i = 1; i < 31; i++)
        dFa[entryBlk].push_back(dFa[dFa[entryBlk][i-1]][i-1]);

    auto dColor = [&](auto&& self, Block* cur, Block* prev) {
        if(dVisited.count(cur))
            return;
        if (prev != nullptr) {
            dFa[cur].push_back(prev);
            for(size_t i = 1; i < 31; i++)
                dFa[cur].push_back(dFa[dFa[cur][i-1]][i-1]);
            dDep[cur] = dDep[prev] + 1;
        }
        for(auto v : dtree[cur]) {
            self(self, v, cur);
        }
    };

    dColor(dColor, entryBlk, nullptr);

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

    return DominateAnalysisResult{ std::tuple{entryBlk, dtree, dDep, dFa} };
}

CMMC_NAMESPACE_END

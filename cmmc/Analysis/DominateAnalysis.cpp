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
#include <cstdint>
#include <functional>
#include <iostream>
#include <limits>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

DominateAnalysisResult::DominateAnalysisResult(std::unordered_map<Block*, DomTreeNode::NodeIndex> invMap,
                                               std::vector<DomTreeNode> domTree)
    : mDomTreeInvMap{ std::move(invMap) }, mDomTree{ std::move(domTree) } {
    mOrder.reserve(mDomTree.size());
    for(auto& node : mDomTree)
        mOrder.push_back(node.block);

    mReservedOrder.reserve(mDomTree.size());
    std::reverse_copy(mOrder.cbegin(), mOrder.cend(), mReservedOrder.begin());
}

const Block* DominateAnalysisResult::parent(Block* node) const {
    const auto idx = getIndex(node);
    if(idx == DomTreeNode::invalidNode)
        return nullptr;
    const auto parentidx = mDomTree[idx].parent();
    if(parentidx == DomTreeNode::invalidNode)
        return nullptr;
    return mDomTree[parentidx].block;
}

DomTreeNode::NodeIndex DominateAnalysisResult::getIndex(Block* block) const {
    const auto iter = mDomTreeInvMap.find(block);
    if(iter != mDomTreeInvMap.cend())
        return iter->second;
    return DomTreeNode::invalidNode;
}

Block* DominateAnalysisResult::lca(Block* a, Block* b) const {
    const auto lhs = mDomTreeInvMap.find(a);
    const auto rhs = mDomTreeInvMap.find(b);
    if(lhs == mDomTreeInvMap.cend() || rhs == mDomTreeInvMap.cend())
        return nullptr;
    auto u = lhs->second, v = rhs->second;
    if(mDomTree[u].depth > mDomTree[v].depth)
        std::swap(u, v);
    auto diff = mDomTree[v].depth - mDomTree[u].depth;
    for(uint32_t i = 0; diff; ++i, diff >>= 1)
        if(diff & 1)
            v = mDomTree[v].ancestor[i];
    if(u != v) {
        for(auto i = DomTreeNode::maxDepth; i && u != v; --i)
            if(auto pu = mDomTree[u].ancestor[i], pv = mDomTree[v].ancestor[i]; pu != pv)
                u = pu, v = pv;
        u = mDomTree[u].parent();
    }

    return mDomTree[u].block;
}

bool DominateAnalysisResult::dominate(Block* a, Block* b) const {
    const auto lhs = mDomTreeInvMap.find(a);
    const auto rhs = mDomTreeInvMap.find(b);
    if(lhs == mDomTreeInvMap.cend() || rhs == mDomTreeInvMap.cend())
        return false;
    const auto u = lhs->second, v = rhs->second;
    return u <= v && v < u + mDomTree[u].size;
}

DominateAnalysisResult DominateAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    const auto& cfg = analysis.get<CFGAnalysis>(func);
    Block* entryBlk = func.entryBlock();

    DomTreeNode::NodeIndex cnt = 0;
    std::unordered_map<Block*, std::unordered_set<Block*>> e, g, tree;
    std::unordered_map<Block*, Block*> fa;
    std::unordered_map<Block*, uint32_t> dfn;
    std::vector<Block*> dfseq;
    std::unordered_map<Block*, Block*> f;

    auto color = [&](auto&& self, Block* cur, Block* parent) {
        assert(cur != nullptr);
        if(dfn.count(cur))
            return;
        if(parent != nullptr)
            tree[parent].insert(cur), fa[cur] = parent;
        dfn[cur] = ++cnt;
        dfseq.push_back(cur);
        for(auto [succBlk, succTgt] : cfg.successors(cur)) {
            CMMC_UNUSED(succTgt);
            e[cur].insert(succBlk), g[succBlk].insert(cur);
            self(self, succBlk, cur);
        }
    };

    color(color, entryBlk, nullptr);

    std::unordered_map<Block*, Block*> ran, idom, sdom;
    auto merge = [&](auto&& self, Block* blk) {
        if(f[blk] == blk)
            return blk;
        Block* res = self(self, f[blk]);
        if(dfn[sdom[ran[f[blk]]]] < dfn[sdom[ran[blk]]])
            ran[blk] = ran[f[blk]];
        return f[blk] = res;
    };

    std::unordered_map<Block*, std::vector<Block*>> tr;

    for(auto [tblk, dfno] : dfn) {
        CMMC_UNUSED(dfno);
        sdom[tblk] = tblk;
        f[tblk] = ran[tblk] = tblk;
    }

    for(auto it = dfseq.rbegin(); it != dfseq.rend(); it++) {
        Block* blk = *it;
        if(blk == entryBlk)
            continue;
        for(Block* fablk : g[blk]) {
            if(!dfn.count(fablk))
                continue;
            merge(merge, fablk);
            if(dfn[sdom[ran[fablk]]] < dfn[sdom[blk]])
                sdom[blk] = sdom[ran[fablk]];
        }
        f[blk] = fa[blk];
        tr[sdom[blk]].push_back(blk);
        blk = fa[blk];
        for(Block* tblk : tr[blk]) {
            merge(merge, tblk);
            if(blk == sdom[ran[tblk]])
                idom[tblk] = blk;
            else
                idom[tblk] = ran[tblk];
        }
        tr[blk].clear();
    }
    for(Block* blk : dfseq) {
        if(blk == entryBlk)
            continue;
        if(idom[blk] != sdom[blk])
            idom[blk] = idom[idom[blk]];
    }

    std::unordered_map<Block*, std::vector<Block*>> children;

    for(auto [u, v] : idom)
        children[v].push_back(u);

    std::unordered_map<Block*, DomTreeNode::NodeIndex> invMap;
    std::vector<DomTreeNode> domTree;
    domTree.resize(dfn.size());

    cnt = 0;
    constexpr auto invalidNode = DomTreeNode::invalidNode;

    auto dfs = [&](auto&& self, Block* curBlock, DomTreeNode::NodeIndex p) -> DomTreeNode::NodeIndex {
        const auto u = cnt++;
        invMap[curBlock] = u;
        auto& node = domTree[u];
        node.block = curBlock;
        node.depth = (p == invalidNode ? 0 : domTree[p].depth + 1);
        node.ancestor[0] = p;
        node.size = 1;

        for(uint32_t i = 1; i <= DomTreeNode::maxDepth; i++) {
            const auto v = domTree[u].ancestor[i - 1];
            domTree[u].ancestor[i] = (v == invalidNode ? invalidNode : domTree[v].ancestor[i - 1]);
        }

        if(auto iter = children.find(curBlock); iter != children.cend())
            for(auto v : iter->second) {
                const auto child = self(self, v, u);
                node.size += domTree[child].size;
            }
        return u;
    };

    dfs(dfs, entryBlk, invalidNode);

    /*
    func.dump(std::cerr);
    for(auto [block, set] : ret) {
        block->dumpAsTarget(std::cerr);
        std::cerr << ": "sv;
        for(auto b : set) {
            b->dumpAsTarget(std::cerr);
            std::cerr << ", "sv;
        }
        std::cerr << std::endl;
    }*/

    return DominateAnalysisResult{ std::move(invMap), std::move(domTree) };
}

CMMC_NAMESPACE_END

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

#pragma once
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cstdint>
#include <limits>
#include <unordered_map>
#include <variant>
#include <vector>

CMMC_NAMESPACE_BEGIN

struct DomTreeNode final {
    static constexpr uint32_t maxDepth = 20;
    using NodeIndex = uint32_t;
    static constexpr auto invalidNode = std::numeric_limits<NodeIndex>::max();

    std::array<NodeIndex, maxDepth + 1> ancestor;
    Block* block;

    NodeIndex depth;
    NodeIndex size;  // inclusive

    [[nodiscard]] NodeIndex parent() const noexcept {
        return ancestor[0];
    }
};

class DominateAnalysisResult final {
    std::unordered_map<Block*, DomTreeNode::NodeIndex> mDomTreeInvMap;
    std::vector<DomTreeNode> mDomTree;
    std::vector<Block*> mOrder, mReservedOrder;

public:
    explicit DominateAnalysisResult(std::unordered_map<Block*, DomTreeNode::NodeIndex> invMap, std::vector<DomTreeNode> domTree);

    DomTreeNode::NodeIndex getIndex(Block* block) const;
    bool reachable(Block* block) const;
    Block* parent(Block* node) const;
    const std::vector<Block*>& blocks() const {
        return mOrder;
    }
    const std::vector<Block*>& reversedBlocks() const {
        return mReservedOrder;
    }

    Block* lca(Block* a, Block* b) const;
    // a dominates b?
    bool dominate(Block* a, Block* b) const;
};

class DominateAnalysis final : public FuncAnalysisPassWrapper<DominateAnalysis, DominateAnalysisResult> {
public:
    static DominateAnalysisResult run(Function& func, AnalysisPassManager& analysis);
};

CMMC_NAMESPACE_END

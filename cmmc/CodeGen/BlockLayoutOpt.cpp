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
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/GMIRCFGAnalysis.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>
#include <limits>
#include <memory>
#include <numeric>
#include <random>
#include <unordered_map>
#include <variant>
#include <vector>

CMMC_NAMESPACE_BEGIN

using NodeIndex = uint32_t;
using BlockSeq = std::vector<NodeIndex>;
using CostT = double;

static CostT evalCost(BlockSeq& seq, std::vector<NodeIndex>& invMap, const std::vector<std::pair<NodeIndex, NodeIndex>>& edges,
                      const std::vector<uint32_t>& weights, uint32_t bufferSize) {
    assert(seq[0] == 0);
    for(uint32_t idx = 0; idx < seq.size(); ++idx)
        invMap[seq[idx]] = idx;
    uint32_t cost = 0, totalJumpSize = 0;

    // TODO: provided by subtarget
    constexpr uint32_t branchPenalty = 5;
    constexpr uint32_t bufferFlushPenalty = 100;

    for(auto [u, v] : edges) {
        if(u == v)
            continue;
        auto p1 = invMap[u];
        auto p2 = invMap[v];
        bool backward = false;
        if(p1 > p2) {
            std::swap(p1, p2);
            backward = true;
        }
        uint32_t jumpSize = 0;
        for(uint32_t i = p1 + 1; i < p2; ++i)
            jumpSize += weights[i];
        totalJumpSize += jumpSize;
        if(jumpSize > bufferSize || backward) {
            cost += bufferFlushPenalty;
        } else if(jumpSize != 0) {
            cost += branchPenalty;
        }
    }
    return cost + 1.0 / (1.0 + exp(-static_cast<double>(totalJumpSize)));
}

static void solveBruteForce(BlockSeq& seq, const std::vector<std::pair<NodeIndex, NodeIndex>>& edges,
                            const std::vector<uint32_t>& weights, uint32_t bufferSize) {
    std::vector<NodeIndex> invMap(seq.size());
    BlockSeq best;
    CostT bestCost = 1e10;
    do {
        const auto cost = evalCost(seq, invMap, edges, weights, bufferSize);
        if(cost < bestCost) {
            bestCost = cost;
            best = seq;
        }
    } while(std::next_permutation(seq.begin() + 1, seq.end()));
    seq = std::move(best);
}

static CostT localSearch(BlockSeq& seq, std::vector<NodeIndex>& invMap, const std::vector<std::pair<uint32_t, uint32_t>>& edges,
                         const std::vector<uint32_t>& weights, uint32_t bufferSize, std::mt19937_64& urbg) {
    constexpr uint32_t mutateCount = 100;
    CostT bestCost = evalCost(seq, invMap, edges, weights, bufferSize);
    std::uniform_int_distribution<uint32_t> selector{ 1, static_cast<uint32_t>(seq.size()) - 1 };
    for(uint32_t idx = 0; idx < mutateCount; ++idx) {
        const auto p1 = selector(urbg);
        const auto p2 = selector(urbg);
        if(p1 == p2)
            continue;
        std::swap(seq[p1], seq[p2]);
        const auto cost = evalCost(seq, invMap, edges, weights, bufferSize);
        if(cost < bestCost)
            bestCost = cost;
        else
            std::swap(seq[p1], seq[p2]);
    }
    return bestCost;
}

static void solveGA(BlockSeq& seq, const std::vector<std::pair<NodeIndex, NodeIndex>>& edges,
                    const std::vector<uint32_t>& weights, uint32_t bufferSize) {
    // std::random_device entropySrc;
    // std::mt19937_64 urbg(entropySrc());
    // deterministic mutation for testing
    std::mt19937_64 urbg(998244353ULL);

    constexpr uint32_t popSize = 20;
    constexpr uint32_t crossCount = 5;
    constexpr uint32_t iteration = 400;
    std::vector<NodeIndex> invMap(seq.size());
    std::vector<std::pair<BlockSeq, CostT>> pop;
    for(uint32_t k = 0; k < popSize; ++k) {
        const auto cost = evalCost(seq, invMap, edges, weights, bufferSize);
        pop.emplace_back(seq, cost);
        std::shuffle(seq.begin() + 1, seq.end(), urbg);
    }
    for(uint32_t k = 0; k < iteration; ++k) {
        std::uniform_int_distribution<uint32_t> selector{ 0, static_cast<uint32_t>(pop.size()) - 1 };
        std::uniform_int_distribution<uint32_t> slicer{ 1, static_cast<uint32_t>(seq.size()) - 1 };
        for(uint32_t i = 0; i < crossCount; ++i) {
            const auto p1 = selector(urbg);
            const auto p2 = selector(urbg);
            if(p1 == p2)
                continue;
            // p1: [0, start) [end, seq.size())
            // p2: [start, end)
            auto start = slicer(urbg);
            auto end = slicer(urbg);
            if(start > end)
                std::swap(start, end);
            BlockSeq newSeq = pop[p1].first;
            std::vector<bool> used(seq.size());
            for(uint32_t idx = 0; idx < start; ++idx)
                used[newSeq[idx]] = true;
            for(uint32_t idx = end; idx < seq.size(); ++idx)
                used[newSeq[idx]] = true;
            uint32_t freePos = start;
            auto& seq2 = pop[p2].first;
            for(uint32_t idx = 0; idx < seq.size(); ++idx) {
                if(!used[seq2[idx]])
                    newSeq[freePos++] = seq2[idx];
            }
            const auto cost = localSearch(newSeq, invMap, edges, weights, bufferSize, urbg);
            pop.emplace_back(std::move(newSeq), cost);
        }
        std::sort(pop.begin(), pop.end(), [](const auto& lhs, const auto& rhs) { return lhs.second < rhs.second; });
        if(pop.size() >= popSize)
            pop.resize(popSize);
    }
    seq = std::move(pop[0].first);
}

void optimizeBlockLayout(GMIRFunction& func, const Target& target) {
    if(func.blocks().size() <= 2)
        return;

    const auto& cfg = calcGMIRCFG(func);
    const auto& subTarget = target.getSubTarget();
    CMMC_UNUSED(subTarget);

    // build graph
    std::vector<uint32_t> weights;
    std::vector<std::pair<uint32_t, uint32_t>> edges;
    std::unordered_map<const GMIRBasicBlock*, uint32_t> idxMap;
    uint32_t idx = 0;
    for(auto& block : func.blocks()) {
        idxMap[block.get()] = idx++;
        weights.emplace_back(block->instructions().size());  // estimated code size
    }
    idx = 0;
    for(auto& block : func.blocks()) {
        const auto blockIdx = idx++;
        for(auto successor : cfg.successors(block.get())) {
            assert(idxMap.count(successor));
            edges.emplace_back(blockIdx, idxMap.at(successor));
        }
    }

    // sort graph
    BlockSeq seq(func.blocks().size());
    std::iota(seq.begin(), seq.end(), 0U);

    const auto bufferSize = subTarget.microOpBufferSize();
    if(seq.size() <= 10) {
        solveBruteForce(seq, edges, weights, bufferSize);
    } else {
        solveGA(seq, edges, weights, bufferSize);
    }

    // apply changes
    std::vector<std::unique_ptr<GMIRBasicBlock>> newBlocks;
    newBlocks.reserve(seq.size());
    for(auto& block : func.blocks()) {
        newBlocks.emplace_back(std::move(block));
    }

    func.blocks().clear();
    for(uint32_t i = 0; i < newBlocks.size(); ++i)
        func.blocks().emplace_back(std::move(newBlocks[seq[i]]));

    for(auto iter = func.blocks().cbegin(); iter != func.blocks().cend(); ++iter) {
        auto& block = *iter;
        const auto nextIter = std::next(iter);

        const auto& terminator = block->instructions().back();
        const auto ensureNext = [&](const GMIRBasicBlock* next) {
            if(nextIter == func.blocks().cend() || nextIter->get() != next) {
                const auto newLabel = String::get((std::string{ block->label().prefix() } + ".next").c_str());
                auto newBlock = std::make_unique<GMIRBasicBlock>(newLabel, &func);
                newBlock->instructions().push_back(BranchMInst{ next });
                newBlock->usedStackObjects() = block->usedStackObjects();
                iter = func.blocks().insert(nextIter, std::move(newBlock));
            }
        };

        if(std::holds_alternative<BranchCompareMInst>(terminator)) {
            auto& branchInst = std::get<BranchCompareMInst>(terminator);
            const auto& successors = cfg.successors(block.get());
            assert(successors.size() == 2);
            if(branchInst.targetBlock == successors[0]) {
                ensureNext(successors[1]);
            } else
                ensureNext(successors[0]);
        }
    }
}

CMMC_NAMESPACE_END

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
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>
#include <limits>
#include <numeric>
#include <random>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

using BlockSeq = std::vector<uint32_t>;
using CostT = double;

static CostT evalCost(BlockSeq& seq, std::vector<uint32_t>& invMap, const std::vector<std::pair<uint32_t, uint32_t>>& edges,
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

static void solveBruteForce(BlockSeq& seq, const std::vector<std::pair<uint32_t, uint32_t>>& edges,
                            const std::vector<uint32_t>& weights, uint32_t bufferSize) {
    std::vector<uint32_t> invMap(seq.size());
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

static uint32_t localSearch(BlockSeq& seq, std::vector<uint32_t>& invMap, const std::vector<std::pair<uint32_t, uint32_t>>& edges,
                            const std::vector<uint32_t>& weights, uint32_t bufferSize, std::mt19937_64& urbg) {
    constexpr uint32_t mutateCount = 20;
    BlockSeq best = seq;
    CostT bestCost = evalCost(seq, invMap, edges, weights, bufferSize);
    CostT lastCost = bestCost;
    std::uniform_int_distribution<uint32_t> selector{ 1, static_cast<uint32_t>(seq.size()) - 1 };
    for(uint32_t idx = 0; idx < mutateCount; ++idx) {
        const auto p1 = selector(urbg);
        const auto p2 = selector(urbg);
        if(p1 == p2)
            continue;
        std::swap(seq[p1], seq[p2]);
        const auto cost = evalCost(seq, invMap, edges, weights, bufferSize);
        if(cost < bestCost) {
            bestCost = cost;
            best = seq;
        }

        if(cost < lastCost)  // accept the mutation
            lastCost = cost;
        else
            std::swap(seq[p1], seq[p2]);
    }
    seq = std::move(best);
    return bestCost;
}

static void solveGA(BlockSeq& seq, const std::vector<std::pair<uint32_t, uint32_t>>& edges, const std::vector<uint32_t>& weights,
                    uint32_t bufferSize) {
    std::random_device entropySrc;
    std::mt19937_64 urbg(entropySrc());

    constexpr uint32_t popSize = 20;
    constexpr uint32_t crossCount = 20;
    constexpr uint32_t iteration = 100;
    std::vector<uint32_t> invMap(seq.size());
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
    CMMC_UNUSED(func);
    CMMC_UNUSED(target);
    CMMC_UNUSED(solveGA);
    CMMC_UNUSED(solveBruteForce);

    /*
    const auto& info = target.getTargetInstInfo();
    // make sure that all blocks end with exactly single unconditional branch

    // build graph
    std::vector<uint32_t> weights;
    std::vector<std::pair<uint32_t, uint32_t>> edges;
    std::unordered_map<GMIRBasicBlock*, uint32_t> idxMap;
    uint32_t idx = 0;
    for(auto& block : func.blocks()) {
        idxMap[&block] = idx++;
        weights.emplace_back(block.instructions().size());  // estimated code size
    }
    idx = 0;
    for(auto& block : func.blocks()) {
        const auto blockIdx = idx++;
        for(auto successor : block->successors) {
            auto& pre = successor->predecessors;
            assert(std::find(pre.cbegin(), pre.cend(), block) != pre.cend());
            CMMC_UNUSED(pre);
            assert(idxMap.count(successor));
            edges.emplace_back(blockIdx, idxMap.find(successor)->second);
        }
    }

    // sort graph
    BlockSeq seq(func.blocks().size());
    std::iota(seq.begin(), seq.end(), 0U);

    const auto bufferSize = target.getSubTarget().getOpBufferSize();
    if(seq.size() <= 10) {
        solveBruteForce(seq, edges, weights, bufferSize);
    } else {
        solveGA(seq, edges, weights, bufferSize);
    }
    */

    /* FIXME: apply changes
    Vector<GMIRBasicBlock*> newBlock(seq.size());
    for(uint32_t idx = 0; idx < newBlock.size(); ++idx)
        newBlock[idx] = func.basicblocks[seq[idx]];
    func.basicblocks = std::move(newBlock);
    */

    // eliminate 'goto next block' and merge blocks
    // TODO
}

CMMC_NAMESPACE_END

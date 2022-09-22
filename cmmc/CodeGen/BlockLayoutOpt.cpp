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

static uint32_t evalCost(BlockSeq& seq, std::vector<uint32_t>& invMap, const std::vector<std::pair<uint32_t, uint32_t>>& edges,
                         const std::vector<uint32_t>& weights) {
    assert(seq[0] == 0);
    for(uint32_t idx = 0; idx < seq.size(); ++idx)
        invMap[seq[idx]] = idx;
    uint32_t cost = 0;
    for(auto [u, v] : edges) {
        if(u == v)
            continue;
        auto p1 = invMap[u];
        auto p2 = invMap[v];
        if(p1 > p2)
            std::swap(p1, p2);
        for(uint32_t i = p1 + 1; i < p2; ++i)
            cost += weights[i];
    }
    return cost;
}

static void solveBruteForce(BlockSeq& seq, const std::vector<std::pair<uint32_t, uint32_t>>& edges,
                            const std::vector<uint32_t>& weights) {
    std::vector<uint32_t> invMap(seq.size());
    BlockSeq best;
    uint32_t bestCost = std::numeric_limits<uint32_t>::max();
    do {
        const auto cost = evalCost(seq, invMap, edges, weights);
        if(cost < bestCost) {
            bestCost = cost;
            best = seq;
        }
    } while(std::next_permutation(seq.begin() + 1, seq.end()));
    seq = std::move(best);
}

static uint32_t localSearch(BlockSeq& seq, std::vector<uint32_t>& invMap, const std::vector<std::pair<uint32_t, uint32_t>>& edges,
                            const std::vector<uint32_t>& weights, std::mt19937_64& urbg) {
    constexpr uint32_t mutateCount = 20;
    BlockSeq best = seq;
    uint32_t bestCost = evalCost(seq, invMap, edges, weights);
    uint32_t lastCost = bestCost;
    std::uniform_int_distribution<uint32_t> selector{ 1, static_cast<uint32_t>(seq.size()) - 1 };
    for(uint32_t idx = 0; idx < mutateCount; ++idx) {
        const auto p1 = selector(urbg);
        const auto p2 = selector(urbg);
        if(p1 == p2)
            continue;
        std::swap(seq[p1], seq[p2]);
        const auto cost = evalCost(seq, invMap, edges, weights);
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

static void solveGA(BlockSeq& seq, const std::vector<std::pair<uint32_t, uint32_t>>& edges,
                    const std::vector<uint32_t>& weights) {
    std::random_device entropySrc;
    std::mt19937_64 urbg(entropySrc());

    constexpr uint32_t popSize = 20;
    constexpr uint32_t crossCount = 20;
    constexpr uint32_t iteration = 100;
    std::vector<uint32_t> invMap(seq.size());
    std::vector<std::pair<BlockSeq, uint32_t>> pop;
    for(uint32_t k = 0; k < popSize; ++k) {
        const auto cost = evalCost(seq, invMap, edges, weights);
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
            const auto cost = localSearch(newSeq, invMap, edges, weights, urbg);
            pop.emplace_back(std::move(newSeq), cost);
        }
        std::sort(pop.begin(), pop.end(), [](const auto& lhs, const auto& rhs) { return lhs.second < rhs.second; });
        if(pop.size() >= popSize)
            pop.resize(popSize);
    }
    seq = std::move(pop[0].first);
}

void optimizeBlockLayout(MachineFunction& func, const Target& target) {
    const auto& info = target.getTargetInstInfo();
    for(auto block : func.basicblocks) {
        if(block->instructions.empty() || !info.isTerminator(block->instructions.back())) {
            reportFatal("A valid machine basic block must end with explicit terminator");
        }
    }
    // eliminate blocks with single unconditional branch

    // build graph
    std::vector<uint32_t> weights;
    std::vector<std::pair<uint32_t, uint32_t>> edges;
    std::unordered_map<MachineBasicBlock*, uint32_t> idxMap;
    uint32_t idx = 0;
    for(auto block : func.basicblocks) {
        idxMap[block] = idx++;
        weights.emplace_back(block->instructions.size());  // estimated code size
    }
    idx = 0;
    for(auto block : func.basicblocks) {
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
    BlockSeq seq(func.basicblocks.size());
    std::iota(seq.begin(), seq.end(), 0U);

    if(seq.size() <= 10) {
        solveBruteForce(seq, edges, weights);
    } else {
        solveGA(seq, edges, weights);
    }

    // eliminate 'goto next block' and merge blocks
    // TODO
}

CMMC_NAMESPACE_END

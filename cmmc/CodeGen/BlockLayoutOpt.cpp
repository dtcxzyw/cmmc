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
#include <cassert>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/MIRCFGAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Graph.hpp>
#include <cmmc/Support/Options.hpp>
#include <cstdint>
#include <iostream>
#include <limits>
#include <memory>
#include <numeric>
#include <queue>
#include <random>
#include <unordered_map>
#include <unordered_set>
#include <variant>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

static StringOpt blockPlacementAlgo;  // NOLINT

CMMC_INIT_OPTIONS_BEGIN
blockPlacementAlgo.withDefault("Pettis-Hansen")
    .setName("placement-algo", 'M')
    .setDesc("The algorithm for machine block placement");
CMMC_INIT_OPTIONS_END

using NodeIndex = uint32_t;
using BlockSeq = std::vector<NodeIndex>;
using CostT = double;

struct BranchEdge final {
    NodeIndex source;
    NodeIndex target;
    double prob;
};

// ExtTsp algorithm, see also https://reviews.llvm.org/D113424 and
// the CGO'19 paper for BOLT: https://research.fb.com/publications/bolt-a-practical-binary-optimizer-for-data-centers-and-beyond/

static CostT evalExtTspScore(const BlockSeq& seq, const std::vector<uint32_t>& weights, const std::vector<double>& freq,
                             const std::vector<BranchEdge>& edges) {
    CMMC_UNUSED(seq);
    CMMC_UNUSED(weights);
    CMMC_UNUSED(freq);
    CMMC_UNUSED(edges);
    reportNotImplemented(CMMC_LOCATION());
}
static BlockSeq solveExtTsp(const std::vector<uint32_t>& weights, const std::vector<double>& freq,
                            const std::vector<BranchEdge>& edges) {
    CMMC_UNUSED(weights);
    CMMC_UNUSED(freq);
    CMMC_UNUSED(edges);
    CMMC_UNUSED(evalExtTspScore);
    reportNotImplemented(CMMC_LOCATION());
}

// Pettis-Hansen algorithm, O(VlogV+E)
static BlockSeq solvePettisHansen(const std::vector<uint32_t>& weights, const std::vector<double>& freq,
                                  const std::vector<BranchEdge>& edges) {
    CMMC_UNUSED(weights);
    const auto blockCount = weights.size();
    // Stage1: chain decomposition
    std::vector<uint32_t> fa;
    fa.reserve(blockCount);
    std::vector<std::pair<uint32_t, std::list<uint32_t>>> chains;
    chains.reserve(blockCount);
    for(uint32_t idx = 0; idx < blockCount; ++idx) {
        chains.push_back({ std::numeric_limits<uint32_t>::max(), { idx } });
        fa.push_back(idx);
    }
    std::vector<std::pair<BranchEdge, double>> edgeInfo;
    edgeInfo.reserve(edges.size());
    for(auto& edge : edges) {
        edgeInfo.emplace_back(edge, freq[edge.source] * edge.prob);
    }
    auto findFaImpl = [&](uint32_t u, auto&& self) {
        if(fa[u] == u)
            return u;
        return fa[u] = self(fa[u], self);
    };
    auto findFa = [&](uint32_t u) { return findFaImpl(u, findFaImpl); };
    // in decreasing order
    std::sort(edgeInfo.begin(), edgeInfo.end(), [](auto& lhs, auto& rhs) { return lhs.second > rhs.second; });
    Graph graph(blockCount);
    uint32_t p = 0;

    constexpr auto dumpCFG = false;
    if(dumpCFG) {
        std::cerr << "digraph G {\n";
    }

    for(auto& [e, f] : edgeInfo) {
        CMMC_UNUSED(f);
        auto& [u, v, prob] = e;
        if(dumpCFG) {
            std::cerr << u << " -> " << v << "[label = " << f << ",color=";
        }
        if(u == v) {
            if(dumpCFG)
                std::cerr << "blue]\n";
            continue;
        }
        graph[u].push_back(v);
        auto& [pv, cv] = chains[v];
        if(findFa(v) != v) {
            if(dumpCFG)
                std::cerr << "blue]\n";
            continue;  // merged
        }
        const auto fu = findFa(u);
        if(fu == v) {
            if(dumpCFG)
                std::cerr << "blue]\n";
            continue;  // merged
        }
        auto& [pu, cu] = chains[fu];
        if(cu.back() != u) {
            if(dumpCFG)
                std::cerr << "blue]\n";
            continue;  // merged
        }
        pu = std::min(std::min(pu, pv), ++p);
        cu.splice(cu.cend(), cv);
        fa[v] = fu;
        // std::cerr << "merge " << u << " " << v << '\n';
        if(dumpCFG)
            std::cerr << "red]\n";
    }

    if(dumpCFG) {
        for(uint32_t idx = 0; idx < blockCount; ++idx)
            std::cerr << idx << " [label=\"" << idx << " @ " << freq[idx]
                      << "\", color = " << (findFa(idx) == idx ? "green" : "black") << "]\n";
        std::cerr << "}\n";
    }

    // Stage2: code layout
    assert(findFa(0) == 0);  // entry block
    std::priority_queue<uint32_t, std::vector<uint32_t>, std::function<bool(uint32_t, uint32_t)>> workList{
        [&](uint32_t lhs, uint32_t rhs) { return chains[lhs].first > chains[rhs].first; }
    };
    std::unordered_set<uint32_t> inserted;
    std::unordered_set<uint32_t> insertedWorkList;
    workList.push(0);
    insertedWorkList.insert(0);
    std::vector<uint32_t> seq;
    seq.reserve(blockCount);
    while(!workList.empty()) {
        auto k = workList.top();
        workList.pop();
        // chains[k].second.sort([&](uint32_t a, uint32_t b) {
        //     if(a == 0)
        //         return true;
        //     if(b == 0)
        //         return false;
        //     return weights[a] > weights[b];
        // });
        for(auto u : chains[k].second) {
            if(inserted.insert(u).second)
                seq.push_back(u);
        }
        for(auto u : chains[k].second) {
            for(auto v : graph[u]) {
                if(inserted.count(v))
                    continue;
                auto head = findFa(v);
                if(insertedWorkList.insert(head).second)
                    workList.push(head);
            }
        }
    }
    // for(auto& edge : edges) {
    //     std::cerr << edge.source << ' ' << edge.target << ' ' << edge.prob << '\n';
    // }
    // for(uint32_t idx = 0; idx < blockCount; ++idx)
    //     std::cerr << idx << ' ' << findFa(idx) << '\n';
    // for(auto u : seq)
    //     std::cerr << u << ' ';
    // std::cerr << '\n';
    // if(seq.size() != blockCount)
    //     reportUnreachable(CMMC_LOCATION());
    return seq;
}

static CostT evalCost(const BlockSeq& seq, std::vector<NodeIndex>& invMap, const std::vector<BranchEdge>& edges,
                      const std::vector<double>& freq, const std::vector<uint32_t>& weights, uint32_t bufferSize) {
    assert(seq[0] == 0);
    for(uint32_t idx = 0; idx < seq.size(); ++idx)
        invMap[seq[idx]] = idx;
    CostT cost = 0.0, totalJumpSize = 0.0;

    // TODO: provided by subtarget
    constexpr uint32_t branchPenalty = 5;
    constexpr uint32_t bufferFlushPenalty = 100;

    for(auto [u, v, prob] : edges) {
        auto p1 = invMap[u];
        auto p2 = invMap[v];
        // const auto w = freq[p1] * prob;
        CMMC_UNUSED(freq);
        const auto w = prob;

        bool backward = false;
        if(p1 >= p2) {
            std::swap(p1, p2);
            ++p2;
            backward = true;
        }
        uint32_t jumpSize = 0;
        for(uint32_t i = p1 + 1; i < p2; ++i)
            jumpSize += weights[seq[i]];
        totalJumpSize += jumpSize * w;
        if(jumpSize > bufferSize || backward) {
            cost += bufferFlushPenalty * w;
        } else if(jumpSize != 0) {
            cost += branchPenalty * w;
        }
    }
    return cost + 1.0 / (1.0 + exp(-totalJumpSize));
}

static void solveBruteForce(BlockSeq& seq, const std::vector<BranchEdge>& edges, const std::vector<double>& freq,
                            const std::vector<uint32_t>& weights, uint32_t bufferSize) {
    std::vector<NodeIndex> invMap(seq.size());
    BlockSeq best;
    CostT bestCost = 1e10;
    do {
        const auto cost = evalCost(seq, invMap, edges, freq, weights, bufferSize);
        if(cost < bestCost) {
            bestCost = cost;
            best = seq;
        }
    } while(std::next_permutation(seq.begin() + 1, seq.end()));
    seq = std::move(best);
}

static CostT localSearch(BlockSeq& seq, std::vector<NodeIndex>& invMap, const std::vector<BranchEdge>& edges,
                         const std::vector<double>& freq, const std::vector<uint32_t>& weights, uint32_t bufferSize,
                         std::mt19937_64& urbg) {
    constexpr uint32_t mutateCount = 100;
    CostT bestCost = evalCost(seq, invMap, edges, freq, weights, bufferSize);
    std::uniform_int_distribution<uint32_t> selector{ 1, static_cast<uint32_t>(seq.size()) - 1 };
    for(uint32_t idx = 0; idx < mutateCount; ++idx) {
        const auto p1 = selector(urbg);
        const auto p2 = selector(urbg);
        if(p1 == p2)
            continue;
        std::swap(seq[p1], seq[p2]);
        const auto cost = evalCost(seq, invMap, edges, freq, weights, bufferSize);
        if(cost < bestCost)
            bestCost = cost;
        else
            std::swap(seq[p1], seq[p2]);
    }
    return bestCost;
}

static void solveGA(BlockSeq& seq, const std::vector<BranchEdge>& edges, const std::vector<double>& freq,
                    const std::vector<uint32_t>& weights, uint32_t bufferSize) {
    // std::random_device entropySrc;
    // std::mt19937_64 urbg(entropySrc());
    // deterministic mutation for testing
    std::mt19937_64 urbg(998244353ULL);  // NOLINT(cert-msc51-cpp, cert-msc32-c)

    constexpr uint32_t popSize = 20;
    constexpr uint32_t crossCount = 5;
    constexpr uint32_t iteration = 50;
    std::vector<NodeIndex> invMap(seq.size());
    std::vector<std::pair<BlockSeq, CostT>> pop;
    for(uint32_t k = 0; k < popSize; ++k) {
        const auto cost = evalCost(seq, invMap, edges, freq, weights, bufferSize);
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
            const auto cost = localSearch(newSeq, invMap, edges, freq, weights, bufferSize, urbg);
            pop.emplace_back(std::move(newSeq), cost);
        }
        std::sort(pop.begin(), pop.end(), [](const auto& lhs, const auto& rhs) { return lhs.second < rhs.second; });
        if(pop.size() >= popSize)
            pop.resize(popSize);
    }
    seq = std::move(pop[0].first);
}

void optimizeBlockLayout(MIRFunction& func, CodeGenContext& ctx) {
    if(func.blocks().size() <= 2)
        return;

    const auto cfg = calcCFG(func, ctx);
    // func.dump(std::cerr, ctx);
    // TODO: sche model

    // build graph
    std::vector<uint32_t> weights;
    weights.reserve(func.blocks().size());
    std::vector<BranchEdge> edges;
    std::unordered_map<const MIRBasicBlock*, uint32_t> idxMap;
    std::vector<double> freq;
    const auto blockFreq = calcFreq(func, cfg);
    {
        uint32_t idx = 0;
        for(auto& block : func.blocks()) {
            idxMap[block.get()] = idx++;
            weights.emplace_back(block->instructions().size());  // estimated code size
        }
        idx = 0;
        freq.reserve(weights.size());
        for(auto& block : func.blocks()) {
            const auto blockIdx = idx++;
            freq.emplace_back(blockFreq.query(block.get()));
            for(auto [successor, prob] : cfg.successors(block.get())) {
                assert(idxMap.count(successor));
                edges.push_back({ blockIdx, idxMap.at(successor), prob });
            }
        }
    }

    // sort graph
    BlockSeq seq;

    if(blockPlacementAlgo.get() == "GA") {
        seq.resize((func.blocks().size()));
        std::iota(seq.begin(), seq.end(), 0U);

        const auto bufferSize = 128;  // TODO
        if(seq.size() <= 10) {
            solveBruteForce(seq, edges, freq, weights, bufferSize);
        } else {
            solveGA(seq, edges, freq, weights, bufferSize);
        }
    } else if(blockPlacementAlgo.get() == "Pettis-Hansen") {
        seq = solvePettisHansen(weights, freq, edges);
    } else if(blockPlacementAlgo.get() == "ExtTSP") {
        // Ext-TSP algo
        seq = solveExtTsp(weights, freq, edges);
    } else {
        DiagnosticsContext::get().attach<UnrecognizedInput>("block placement method", blockPlacementAlgo.get()).reportFatal();
    }
    assert(seq[0] == 0);  // entry block

    // apply changes
    std::vector<std::unique_ptr<MIRBasicBlock>> newBlocks;
    newBlocks.reserve(func.blocks().size());
    for(auto& block : func.blocks()) {
        newBlocks.emplace_back(std::move(block));
    }

    func.blocks().clear();
    for(auto idx : seq)
        func.blocks().emplace_back(std::move(newBlocks[idx]));

    for(auto iter = func.blocks().cbegin(); iter != func.blocks().cend();) {
        auto& block = *iter;
        const auto nextIter = std::next(iter);

        const auto& terminator = block->instructions().back();
        const auto ensureNext = [&](MIRBasicBlock* next) {
            if(nextIter == func.blocks().cend() || nextIter->get() != next) {
                auto newBlock = makeUnique<MIRBasicBlock>(block->symbol().withID(static_cast<int32_t>(ctx.nextId())), &func);
                newBlock->instructions().emplace_back(ctx.instInfo.emitGoto(next));
                func.blocks().insert(nextIter, std::move(newBlock));
            }
        };

        MIRBasicBlock* targetBlock;
        double prob;
        if(ctx.instInfo.matchConditionalBranch(terminator, targetBlock, prob)) {
            const auto& successors = cfg.successors(block.get());
            if(successors.size() == 2) {
                if(targetBlock == successors[0].block) {
                    ensureNext(successors[1].block);
                } else
                    ensureNext(successors[0].block);
            } else if(successors.size() == 1) {
                ensureNext(successors[0].block);
            } else
                reportUnreachable(CMMC_LOCATION());
        }

        iter = nextIter;
    }
}

CMMC_MIR_NAMESPACE_END

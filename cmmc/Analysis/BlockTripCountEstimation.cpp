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

// E_{entry} = 1
// E_{block} = \sum_{pred} E{pred} * P(pred->block)

#include <cmath>
#include <cmmc/Analysis/BlockTripCountEstimation.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>
#include <iostream>
#include <limits>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

double BlockTripCountEstimationResult::query(Block* block) const {
    return mExpectedCount.at(block);
}

BlockTripCountEstimationResult BlockTripCountEstimation::run(Function& func, AnalysisPassManager&) {
    constexpr size_t maxSupportedBlockSize = 1000;
    if(func.blocks().size() > maxSupportedBlockSize)
        return { {} };

    const auto n = func.blocks().size();
    uint32_t allocateID = 0;
    std::unordered_map<Block*, uint32_t> nodeMap;
    for(auto block : func.blocks())
        nodeMap.emplace(block, allocateID++);
    std::vector<double> a(n * n);

    const auto mat = [&](uint32_t i, uint32_t j) -> double& { return a[i * n + j]; };
    // Construct problem
    for(uint32_t i = 0; i < n; ++i)
        mat(i, i) = 1.0;

    const auto addEdge = [&](uint32_t u, Block* v, double prob) { mat(nodeMap.at(v), u) -= prob; };

    for(auto block : func.blocks()) {
        const auto terminator = block->getTerminator();
        if(!terminator->isBranch())
            continue;
        const auto u = nodeMap.at(block);
        const auto branch = terminator->as<ConditionalBranchInst>();
        if(branch->getInstID() == InstructionID::ConditionalBranch) {
            const auto prob = branch->getBranchProb();
            addEdge(u, branch->getTrueTarget().getTarget(), prob);
            addEdge(u, branch->getFalseTarget().getTarget(), 1.0 - prob);
        } else {
            addEdge(u, branch->getTrueTarget().getTarget(), 1.0);
        }
    }

    // LUP
    constexpr double eps = 1e-8;
    std::vector<uint32_t> p(n);

    for(uint32_t i = 0; i < n; ++i)
        p[i] = i;

    for(uint32_t i = 0; i < n; ++i) {
        uint32_t x = std::numeric_limits<uint32_t>::max();
        double maxv = eps;
        for(uint32_t j = i; j < n; ++j) {
            const auto pivot = std::fabs(mat(i, j));
            if(pivot > maxv) {
                maxv = pivot;
                x = j;
                break;
            }
        }
        if(maxv == eps)
            return { {} };

        if(i != x) {
            std::swap(p[i], p[x]);
            for(uint32_t j = 0; j < n; ++j)
                std::swap(mat(i, j), mat(x, j));
        }
        const auto pivot = mat(i, i);
        for(uint32_t j = i + 1; j < n; ++j) {
            mat(j, i) /= pivot;
            const auto scale = mat(j, i);
            for(uint32_t k = i + 1; k < n; ++k)
                mat(j, k) -= scale * mat(i, k);
        }
    }

    std::vector<double> c(n), d(n);
    for(uint32_t i = 0; i < n; ++i) {
        double sum = (p[i] == 0 ? 1.0 : 0.0);
        for(uint32_t j = 0; j < i; ++j)
            sum -= mat(i, j) * c[j];
        c[i] = sum;
    }
    for(int32_t i = static_cast<int32_t>(n - 1); i >= 0; --i) {
        auto sum = c[i];
        for(uint32_t j = i + 1; j < n; ++j)
            sum -= mat(i, j) * d[j];

        d[i] = sum / mat(i, i);
    }

    /*
    func.dump(std::cerr);
    for(auto block : func.blocks()) {
        const auto i = nodeMap.at(block);

        std::cerr << i << ' ';
        block->dumpAsTarget(std::cerr);
        std::cerr << ' ' << d[i] << std::endl;
        if(d[i] < 0.0) {
            DiagnosticsContext::get().attach<Reason>("invalid trip count").reportFatal();
        }
    }
    */

    std::unordered_map<Block*, double> res;
    for(auto block : func.blocks())
        res.emplace(block, d[nodeMap.at(block)]);

    return { std::move(res) };
}

CMMC_NAMESPACE_END

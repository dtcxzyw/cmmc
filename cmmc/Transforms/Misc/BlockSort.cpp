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
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <limits>
#include <queue>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

// Simple BFS with post heuristic
// not for performance, just for readability
bool sortBlocks(Function& func) {
    if(func.blocks().size() <= 1)
        return false;

    std::unordered_map<Block*, uint32_t> weight;
    constexpr uint32_t branchTrueCost = 100;
    constexpr uint32_t branchFalseCost = 101;
    constexpr uint32_t ubrCost = 2;
    constexpr uint32_t brCost = 0;
    constexpr uint32_t retCost = 10;
    constexpr uint32_t unreachableCost = 1'000'000;

    std::queue<Block*> q{ { func.entryBlock() } };
    const auto addTarget = [&](Block* block, uint32_t w) {
        if(weight.emplace(block, w).second)
            q.push(block);
    };

    while(!q.empty()) {
        const auto u = q.front();
        q.pop();
        auto& val = weight[u];
        const auto terminator = u->getTerminator();
        switch(terminator->getInstID()) {
            case InstructionID::Branch: {
                const auto& branch = terminator->as<BranchInst>();
                addTarget(branch->getTrueTarget(), val + branchTrueCost);
                val += brCost;
                break;
            }
            case InstructionID::ConditionalBranch: {
                const auto& branch = terminator->as<BranchInst>();
                addTarget(branch->getTrueTarget(), val + branchTrueCost);
                addTarget(branch->getFalseTarget(), val + branchFalseCost);
                val += ubrCost;
                break;
            }
            case InstructionID::Unreachable: {
                val += unreachableCost;
                break;
            }
            case InstructionID::Ret: {
                val += retCost;
                break;
            }
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }

    for(auto& block : func.blocks())
        if(!weight.count(block))
            weight[block] = std::numeric_limits<uint32_t>::max();

    const auto comp = [&](Block* lhs, Block* rhs) { return weight[lhs] < weight[rhs]; };
    bool modified = !std::is_sorted(func.blocks().begin(), func.blocks().end(), comp);
    if(modified)
        func.blocks().sort(comp);
    return modified;
}

class BlockSort final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        return sortBlocks(func);
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "BlockSort"sv;
    }
};

CMMC_TRANSFORM_PASS(BlockSort);

CMMC_NAMESPACE_END

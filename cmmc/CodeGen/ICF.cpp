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
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/MIRCFGAnalysis.hpp>
#include <cstddef>
#include <functional>
#include <unordered_map>
#include <variant>

CMMC_MIR_NAMESPACE_BEGIN

/*

static bool isIdentical(MIRBasicBlock* lhs, MIRBasicBlock* rhs, const GMIRCFGAnalysisResult& cfg) {
    // TODO: check used stack objects?
    auto& inst1 = lhs->instructions();
    auto& inst2 = rhs->instructions();
    if(inst1.size() != inst2.size())
        return false;

    auto iter1 = inst1.cbegin();
    auto iter2 = inst2.cbegin();
    while(iter1 != inst1.cend()) {
        if(!(*iter1 == *iter2))
            return false;
        ++iter1;
        ++iter2;
    }

    auto& successors1 = cfg.successors(lhs);
    auto& successors2 = cfg.successors(rhs);

    for(auto& edge : successors1) {
        if(std::none_of(successors2.cbegin(), successors2.cend(), [&](auto& successor) { return edge.block == successor.block; }))
            return false;
    }
    return true;
}

void identicalCodeFolding(MIRFunction& func) {
    const auto cfg = calcGMIRCFG(func);

    std::unordered_map<size_t, std::vector<MIRBasicBlock*>> blocks;
    std::unordered_map<const MIRBasicBlock*, MIRBasicBlock*> replace;
    for(auto& block : func.blocks()) {
        size_t hash = std::hash<size_t>{}(block->instructions().size());
        for(auto successor : cfg.successors(block.get()))
            hash ^= std::hash<const MIRBasicBlock*>{}(successor.block);
        auto& set = blocks[hash];

        bool insertNew = true;
        for(auto rhs : set) {
            if(isIdentical(block.get(), rhs, cfg)) {
                replace.emplace(block.get(), rhs);
                insertNew = false;
                break;
            }
        }
        if(insertNew)
            set.push_back(block.get());
    }

    if(replace.empty())
        return;

    for(auto& block : func.blocks()) {
        if(auto iter = replace.find(block.get()); iter != replace.cend()) {
            const auto redirectTarget = iter->second;
            block->instructions().clear();
            block->instructions().emplace_back(BranchMInst{ redirectTarget });
        }
    }
    while(redirectGoto(func))  // apply before code layout
        ;
}

*/

CMMC_MIR_NAMESPACE_END

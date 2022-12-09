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

// Notice: don't use CFGAnalysis since the unique terminator assumption is not true now

#include <cassert>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <unordered_set>
#include <variant>

CMMC_NAMESPACE_BEGIN

static bool removeUnreachableBlocks(GMIRFunction& func) {
    CMMC_UNUSED(func);
    return false;
}

static bool removeGotoNext(GMIRFunction& func) {
    bool modified = false;
    for(auto iter = func.blocks().cbegin(); iter != func.blocks().cend(); ++iter) {
        const auto next = std::next(iter);
        if(next == func.blocks().cend())
            break;

        const auto& block = *iter;
        const auto& nextBlock = next->get();

        while(!block->instructions().empty()) {
            const auto& last = block->instructions().back();
            if(std::holds_alternative<BranchMInst>(last) && std::get<BranchMInst>(last).targetBlock == nextBlock) {
                block->instructions().pop_back();
                modified = true;
            } else
                break;
        }
    }
    return modified;
}

static bool removeEmptyBlocks(GMIRFunction& func) {
    std::unordered_map<const GMIRBasicBlock*, const GMIRBasicBlock*> redirects;
    std::vector<const GMIRBasicBlock*> currentEmptySet;
    const auto commit = [&](GMIRBasicBlock* target) {
        for(auto block : currentEmptySet) {
            redirects.emplace(block, target);
        }
        currentEmptySet.clear();
    };
    for(auto& block : func.blocks()) {
        if(block->instructions().empty()) {
            currentEmptySet.push_back(block.get());
        } else {
            commit(block.get());
        }
    }

    if(currentEmptySet.size() >= 2) {
        currentEmptySet.pop_back();
        commit(func.blocks().back().get());
    }

    for(auto& block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            const auto replaceTarget = [&](const GMIRBasicBlock*& blockRef) {
                const auto iter = redirects.find(blockRef);
                if(iter != redirects.cend())
                    blockRef = iter->second;
            };
            std::visit(Overload{ [&](BranchMInst& inst) { replaceTarget(inst.targetBlock); },
                                 [&](BranchCompareMInst& inst) { replaceTarget(inst.targetBlock); }, [](auto&&) {} },
                       inst);
        }
    }

    func.blocks().remove_if([&](auto& ptr) { return redirects.count(ptr.get()); });

    return !redirects.empty();
}

void simplifyCFG(GMIRFunction& func) {
    while(true) {
        bool modified = false;
        modified |= removeUnreachableBlocks(func);
        modified |= removeGotoNext(func);
        // modified |= redirectGoto(func);
        modified |= removeEmptyBlocks(func);

        if(!modified)
            return;
    }
}

CMMC_NAMESPACE_END

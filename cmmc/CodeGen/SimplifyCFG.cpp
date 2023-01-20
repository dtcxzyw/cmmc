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

#include <algorithm>
#include <cassert>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <variant>
#include <vector>

CMMC_NAMESPACE_BEGIN

bool redirectGoto(GMIRFunction& func) {
    std::unordered_map<const GMIRBasicBlock*, const GMIRBasicBlock*> redirect;
    for(auto& block : func.blocks()) {
        if(block->instructions().size() != 1)
            continue;
        const auto& inst = block->instructions().front();
        if(std::holds_alternative<BranchMInst>(inst)) {
            auto& branch = std::get<BranchMInst>(inst);
            redirect.emplace(block.get(), branch.targetBlock);
        }
    }

    if(redirect.empty())
        return false;

    bool modified = false;
    auto tryReplace = [&](const GMIRBasicBlock*& targetBlock) {
        if(auto iter = redirect.find(targetBlock); iter != redirect.cend()) {
            targetBlock = iter->second;
            modified = true;
        }
    };
    for(auto& block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            if(std::holds_alternative<BranchMInst>(inst)) {
                auto& branch = std::get<BranchMInst>(inst);
                tryReplace(branch.targetBlock);
            } else if(std::holds_alternative<BranchCompareMInst>(inst)) {
                auto& branch = std::get<BranchCompareMInst>(inst);
                tryReplace(branch.targetBlock);
            }
        }
    }
    return modified;
}

static bool removeUnreachableCode(GMIRFunction& func) {
    std::unordered_set<const GMIRBasicBlock*> visit;
    std::queue<GMIRBasicBlock*> q;
    std::unordered_map<GMIRBasicBlock*, GMIRBasicBlock*> nextMap;
    GMIRBasicBlock* prev = nullptr;
    for(auto& block : func.blocks()) {
        if(prev)
            nextMap.emplace(prev, block.get());
        prev = block.get();
    }
    q.push(func.blocks().front().get());
    visit.emplace(q.front());

    bool modified = false;

    while(!q.empty()) {
        const auto u = q.front();
        q.pop();

        const auto touchNext = [&] {
            const auto next = nextMap.find(u);
            if(next != nextMap.cend()) {
                const auto targetBlock = next->second;
                if(visit.emplace(targetBlock).second) {
                    q.push(targetBlock);
                }
            }
        };

        auto& instructions = u->instructions();
        bool stop = false;
        for(auto iter = instructions.begin(); iter != instructions.end(); ++iter) {
            std::visit(Overload{ [&](const RetMInst&) { stop = true; },
                                 [&](const BranchMInst& inst) {
                                     if(visit.emplace(inst.targetBlock).second) {
                                         q.push(const_cast<GMIRBasicBlock*>(inst.targetBlock));  // NOLINT
                                     }
                                     stop = true;
                                 },
                                 [&](const BranchCompareMInst& inst) {
                                     if(visit.emplace(inst.targetBlock).second) {
                                         q.push(const_cast<GMIRBasicBlock*>(inst.targetBlock));  // NOLINT
                                     }
                                 },
                                 [&](const UnreachableMInst&) { stop = true; }, [](const auto&) {} },
                       *iter);
            if(stop) {
                const auto start = std::next(iter);
                if(start != instructions.cend()) {
                    instructions.erase(start, instructions.cend());
                    modified = true;
                }
                break;
            }
        }

        if(!stop)
            touchNext();
    }

    const auto oldCount = func.blocks().size();
    func.blocks().remove_if([&](auto& block) { return !visit.count(block.get()); });
    const auto newCount = func.blocks().size();

    return modified || oldCount != newCount;
}

static bool removeUnusedLabels(GMIRFunction& func) {
    std::unordered_set<const GMIRBasicBlock*> usedLabels;
    usedLabels.insert(func.blocks().front().get());

    for(auto& block : func.blocks()) {
        for(auto& instruction : block->instructions()) {
            std::visit(Overload{ [&](BranchMInst& inst) { usedLabels.insert(inst.targetBlock); },
                                 [&](BranchCompareMInst& inst) { usedLabels.insert(inst.targetBlock); }, [](auto&&) {} },
                       instruction);
        }
    }

    if(usedLabels.size() == func.blocks().size())
        return false;

    GMIRBasicBlock* lastAvailable = nullptr;

    for(auto& block : func.blocks()) {
        if(usedLabels.count(block.get())) {
            lastAvailable = block.get();
        } else {
            for(auto& instruction : block->instructions()) {
                std::visit(Overload{ [&](BranchMInst& inst) { usedLabels.insert(inst.targetBlock); },
                                     [&](BranchCompareMInst& inst) { usedLabels.insert(inst.targetBlock); }, [](auto&&) {} },
                           instruction);
            }
            assert(lastAvailable);
            lastAvailable->instructions().insert(lastAvailable->instructions().cend(), block->instructions().cbegin(),
                                                 block->instructions().cend());
            lastAvailable->usedStackObjects().merge(block->usedStackObjects());
        }
    }

    func.blocks().remove_if([&](const auto& block) { return !usedLabels.count(block.get()); });

    return true;
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
        for(auto& instruction : block->instructions()) {
            const auto replaceTarget = [&](const GMIRBasicBlock*& blockRef) {
                const auto iter = redirects.find(blockRef);
                if(iter != redirects.cend())
                    blockRef = iter->second;
            };
            std::visit(Overload{ [&](BranchMInst& inst) { replaceTarget(inst.targetBlock); },
                                 [&](BranchCompareMInst& inst) { replaceTarget(inst.targetBlock); }, [](auto&&) {} },
                       instruction);
        }
    }

    func.blocks().remove_if([&](auto& ptr) { return redirects.count(ptr.get()); });

    return !redirects.empty();
}

static bool conditional2Unconditional(GMIRFunction& func) {
    bool modified = false;
    for(auto iter = func.blocks().begin(); iter != func.blocks().end();) {
        const auto next = std::next(iter);
        if(next == func.blocks().end())
            break;

        const auto currentBlock = iter->get();
        const auto nextBlock = next->get();

        auto& terminator = currentBlock->instructions().back();
        if(std::holds_alternative<BranchCompareMInst>(terminator)) {
            const auto conditional = std::get<BranchCompareMInst>(terminator);
            if(conditional.targetBlock == nextBlock) {
                terminator = BranchMInst{ nextBlock };
                modified = true;
            }
        }

        iter = next;
    }
    return modified;
}

void simplifyCFG(GMIRFunction& func) {
    while(true) {
        bool modified = false;
        modified |= removeUnreachableCode(func);
        modified |= removeGotoNext(func);
        modified |= redirectGoto(func);
        modified |= removeEmptyBlocks(func);
        modified |= removeUnusedLabels(func);

        if(!modified)
            return;
    }
}

void simplifyCFGWithUniqueTerminator(GMIRFunction& func) {
    while(true) {
        bool modified = false;
        modified |= conditional2Unconditional(func);
        modified |= redirectGoto(func);

        if(!modified)
            return;
    }
}

CMMC_NAMESPACE_END

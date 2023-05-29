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

// Notice: don't use CFGAnalysis since the unique terminator assumption is not true now

#include <algorithm>
#include <cassert>
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <variant>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

bool redirectGoto(MIRFunction& func, const CodeGenContext& ctx) {
    std::unordered_map<const MIRBasicBlock*, MIRBasicBlock*> redirect;
    for(auto& block : func.blocks()) {
        if(block->instructions().size() != 1)
            continue;
        const auto& inst = block->instructions().front();
        MIRBasicBlock* targetBlock;
        if(ctx.instInfo.matchUnconditionalBranch(inst, targetBlock)) {
            redirect.emplace(block.get(), targetBlock);
        }
    }

    if(redirect.empty())
        return false;

    bool modified = false;
    for(auto& block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            MIRBasicBlock* targetBlock;
            double prob;
            if(ctx.instInfo.matchBranch(inst, targetBlock, prob)) {
                if(auto iter = redirect.find(targetBlock); iter != redirect.cend()) {
                    ctx.instInfo.redirectBranch(inst, iter->second);
                    modified = true;
                }
            }
        }
    }
    return modified;
}

static bool removeUnreachableCode(MIRFunction& func, const CodeGenContext& ctx) {
    std::unordered_set<const MIRBasicBlock*> visit;
    std::queue<MIRBasicBlock*> q;
    std::unordered_map<MIRBasicBlock*, MIRBasicBlock*> nextMap;
    MIRBasicBlock* prev = nullptr;
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
            auto& inst = *iter;
            MIRBasicBlock* targetBlock;
            double prob;
            if(ctx.instInfo.matchBranch(inst, targetBlock, prob)) {
                if(visit.emplace(targetBlock).second) {
                    q.push(targetBlock);
                }
            }
            if(requireFlag(ctx.instInfo.getInstInfo(inst).getInstFlag(), InstFlagTerminator | InstFlagNoFallthrough)) {
                stop = true;
            }

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

static bool removeUnusedLabels(MIRFunction& func, const CodeGenContext& ctx) {
    MIRBasicBlock* targetBlock;
    double prob;
    std::unordered_set<const MIRBasicBlock*> usedLabels;
    usedLabels.insert(func.blocks().front().get());

    for(auto& block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            if(ctx.instInfo.matchBranch(inst, targetBlock, prob)) {
                usedLabels.insert(targetBlock);
            }
        }
    }

    if(usedLabels.size() == func.blocks().size())
        return false;

    MIRBasicBlock* lastAvailable = nullptr;

    for(auto& block : func.blocks()) {
        if(usedLabels.count(block.get())) {
            lastAvailable = block.get();
        } else {
            for(auto& inst : block->instructions()) {
                if(ctx.instInfo.matchBranch(inst, targetBlock, prob)) {
                    usedLabels.insert(targetBlock);
                }
            }
            assert(lastAvailable);
            lastAvailable->instructions().insert(lastAvailable->instructions().cend(), block->instructions().cbegin(),
                                                 block->instructions().cend());
        }
    }

    func.blocks().remove_if([&](const auto& block) { return !usedLabels.count(block.get()); });

    return true;
}

static bool removeGotoNext(MIRFunction& func, const CodeGenContext& ctx) {
    bool modified = false;
    for(auto iter = func.blocks().cbegin(); iter != func.blocks().cend(); ++iter) {
        const auto next = std::next(iter);
        if(next == func.blocks().cend())
            break;

        const auto& block = *iter;
        const auto& nextBlock = next->get();

        while(!block->instructions().empty()) {
            const auto& last = block->instructions().back();
            MIRBasicBlock* targetBlock;
            if(ctx.instInfo.matchUnconditionalBranch(last, targetBlock) && targetBlock == nextBlock) {
                block->instructions().pop_back();
                modified = true;
            } else
                break;
        }
    }
    return modified;
}

static bool removeEmptyBlocks(MIRFunction& func, const CodeGenContext& ctx) {
    std::unordered_map<const MIRBasicBlock*, MIRBasicBlock*> redirects;
    std::vector<const MIRBasicBlock*> currentEmptySet;
    const auto commit = [&](MIRBasicBlock* target) {
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
            MIRBasicBlock* targetBlock;
            double prob;
            if(ctx.instInfo.matchBranch(inst, targetBlock, prob)) {
                if(const auto iter = redirects.find(targetBlock); iter != redirects.cend())
                    ctx.instInfo.redirectBranch(inst, iter->second);
            }
        }
    }

    func.blocks().remove_if([&](auto& ptr) { return redirects.count(ptr.get()); });

    return !redirects.empty();
}

static bool conditional2Unconditional(MIRFunction& func, const CodeGenContext& ctx) {
    assert(ctx.flags.endsWithTerminator);
    bool modified = false;
    for(auto iter = func.blocks().begin(); iter != func.blocks().end();) {
        const auto next = std::next(iter);
        if(next == func.blocks().end())
            break;

        const auto currentBlock = iter->get();
        const auto nextBlock = next->get();
        auto& instructions = currentBlock->instructions();
        auto& terminator = instructions.back();
        MIRBasicBlock* targetBlock;
        double prob;
        if(ctx.instInfo.matchConditionalBranch(terminator, targetBlock, prob)) {
            if(targetBlock == nextBlock) {
                instructions.back() = ctx.instInfo.emitGoto(nextBlock);
                modified = true;
            }
        }

        iter = next;
    }
    return modified;
}

void simplifyCFG(MIRFunction& func, const CodeGenContext& ctx) {
    while(true) {
        bool modified = false;
        modified |= removeUnreachableCode(func, ctx);
        modified |= removeGotoNext(func, ctx);
        modified |= redirectGoto(func, ctx);
        modified |= removeEmptyBlocks(func, ctx);
        modified |= removeUnusedLabels(func, ctx);
        modified |= genericPeepholeOpt(func, ctx);

        if(!modified)
            return;
    }
}

void simplifyCFGWithUniqueTerminator(MIRFunction& func, const CodeGenContext& ctx) {
    assert(ctx.flags.endsWithTerminator);
    while(true) {
        bool modified = false;
        modified |= conditional2Unconditional(func, ctx);
        modified |= redirectGoto(func, ctx);
        modified |= genericPeepholeOpt(func, ctx);

        if(!modified)
            return;
    }
}

CMMC_MIR_NAMESPACE_END

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

#include <cassert>
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/MIRCFGAnalysis.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>
#include <iostream>
#include <limits>
#include <variant>

CMMC_MIR_NAMESPACE_BEGIN

// FIXME: TailDuplication defeats BlockLayout opt.

void tailDuplication(MIRFunction& func, CodeGenContext& ctx) {
    assert(ctx.flags.endsWithTerminator);
    simplifyCFGWithUniqueTerminator(func, ctx);
    auto& heuristic = ctx.target.getOptHeuristic();

    for(uint32_t k = 0; k < heuristic.duplicationIterations; ++k) {
        const auto cfg = calcCFG(func, ctx);
        std::unordered_map<MIRBasicBlock*, std::vector<MIRBasicBlock*>> successors;
        for(auto& block : func.blocks()) {
            auto& blockSucc = successors[block.get()];
            for(auto [succ, prob] : cfg.successors(block.get())) {
                CMMC_UNUSED(prob);
                blockSucc.push_back(succ);
            }
        }

        auto isReturn = [&](const MIRInst& inst) {
            return ctx.registerInfo && requireFlag(ctx.instInfo.getInstInfo(inst).getInstFlag(), InstFlagReturn);
        };

        auto isUnconditionalBranch = [&](const MIRInst& inst) {
            MIRBasicBlock* tmp;
            return ctx.instInfo.matchUnconditionalBranch(inst, tmp);
        };
        auto isConditionalBranch = [&](const MIRInst& inst) {
            MIRBasicBlock* tmp;
            double prob;
            return ctx.instInfo.matchConditionalBranch(inst, tmp, prob);
        };

        bool dontCopyBranchJumps = false;
        if(heuristic.branchLimit != std::numeric_limits<uint32_t>::max()) {
            uint32_t branchCount = 0;
            for(auto& block : func.blocks()) {
                if(isConditionalBranch(block->instructions().back())) {
                    ++branchCount;
                    if(branchCount >= heuristic.branchLimit / 2) {
                        dontCopyBranchJumps = true;
                        break;
                    }
                }
            }
        }

        auto hasCall = [&](const MIRBasicBlock& block) {
            for(auto& inst : block.instructions()) {
                auto& instInfo = ctx.instInfo.getInstInfo(inst);
                if(requireFlag(instInfo.getInstFlag(), InstFlagCall)) {
                    return true;
                }
            }
            return false;
        };

        bool modified = false;
        for(auto iter = func.blocks().begin(); iter != func.blocks().end();) {
            const auto nextIter = std::next(iter);

            const auto block = iter->get();
            auto& instructions = block->instructions();
            const auto& terminator = instructions.back();
            MIRBasicBlock* targetBlock;
            if(ctx.instInfo.matchUnconditionalBranch(terminator, targetBlock)) {
                if(targetBlock != block &&
                   !(nextIter != func.blocks().end() && nextIter->get() == targetBlock) &&  // should be handled by SimplifyCFG
                   !isReturn(targetBlock->instructions().back()) &&                         // unify return
                   targetBlock->instructions().size() <= heuristic.duplicationThreshold &&
                   (!dontCopyBranchJumps ||
                    isUnconditionalBranch(
                        targetBlock->instructions().back()))  // don't duplicate branch jumps that needs BTB/RAS entries
                   && !hasCall(*targetBlock)) {
                    instructions.pop_back();
                    instructions.insert(instructions.cend(), targetBlock->instructions().cbegin(),
                                        targetBlock->instructions().cend());
                    // fix CFG

                    const auto ensureNext = [&](MIRBasicBlock* next) {
                        if(nextIter == func.blocks().cend() || nextIter->get() != next) {
                            auto newBlock = std::make_unique<MIRBasicBlock>(
                                block->symbol().withID(static_cast<int32_t>(ctx.nextId())), &func, next->getTripCount());
                            newBlock->instructions().emplace_back(ctx.instInfo.emitGoto(next));
                            func.blocks().insert(nextIter, std::move(newBlock));
                        }
                    };

                    MIRBasicBlock* target;
                    double prob;
                    auto& newSucc = successors.at(block);
                    if(ctx.instInfo.matchConditionalBranch(instructions.back(), target, prob)) {
                        const auto& succ = successors.at(targetBlock);
                        if(succ.size() == 2) {
                            if(target == succ[0]) {
                                ensureNext(succ[1]);
                            } else
                                ensureNext(succ[0]);
                        } else if(succ.size() == 1) {
                            ensureNext(succ[0]);
                        } else
                            reportUnreachable(CMMC_LOCATION());
                        const auto nextBlock = std::next(iter)->get();
                        if(target != nextBlock)
                            newSucc = { target, nextBlock };
                        else
                            newSucc = { target };
                    } else if(ctx.instInfo.matchUnconditionalBranch(instructions.back(), target)) {
                        newSucc = { target };
                    } else {
                        newSucc = {};
                    }

                    modified = true;
                }
            }

            iter = nextIter;
        }
        if(!modified)
            return;

        simplifyCFGWithUniqueTerminator(func, ctx);
        while(genericPeepholeOpt(func, ctx))
            ;
        // func.dump(std::cerr, ctx);
    }
}

CMMC_MIR_NAMESPACE_END

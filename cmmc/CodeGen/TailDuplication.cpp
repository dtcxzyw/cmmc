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

#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/MIRCFGAnalysis.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <iostream>
#include <variant>

CMMC_MIR_NAMESPACE_BEGIN

// FIXME: TailDuplication defeats BlockLayout opt.
// TODO: provided by schedule model?
constexpr size_t duplicationThreshold = 10;
constexpr size_t duplicationIterations = 10;

void tailDuplication(MIRFunction& func, CodeGenContext& ctx) {
    simplifyCFGWithUniqueTerminator(func, ctx);

    for(uint32_t k = 0; k < duplicationIterations; ++k) {
        const auto cfg = calcCFG(func, ctx);
        std::unordered_map<MIRBasicBlock*, std::vector<MIRBasicBlock*>> successors;
        for(auto& block : func.blocks()) {
            auto& blockSucc = successors[block.get()];
            for(auto [succ, prob] : cfg.successors(block.get())) {
                CMMC_UNUSED(prob);
                blockSucc.push_back(succ);
            }
        }

        bool modified = false;
        for(auto iter = func.blocks().begin(); iter != func.blocks().end();) {
            const auto nextIter = std::next(iter);

            const auto block = iter->get();
            auto& instructions = block->instructions();
            const auto& terminator = instructions.back();
            MIRBasicBlock* targetBlock;
            if(ctx.instInfo.matchUnconditionalBranch(terminator, targetBlock)) {
                if(targetBlock != block && targetBlock->instructions().size() <= duplicationThreshold) {
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

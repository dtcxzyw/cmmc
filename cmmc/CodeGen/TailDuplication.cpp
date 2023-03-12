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

#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/GMIRCFGAnalysis.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <variant>

CMMC_NAMESPACE_BEGIN

constexpr size_t duplicationThreshold = 5;

void tailDuplication(GMIRFunction& func) {
    while(redirectGoto(func))
        ;

    for(uint32_t k = 0; k < duplicationThreshold; ++k) {
        const auto cfg = calcGMIRCFG(func);

        bool modified = false;
        for(auto iter = func.blocks().begin(); iter != func.blocks().end();) {
            const auto nextIter = std::next(iter);

            const auto block = iter->get();
            auto& instructions = block->instructions();
            const auto& terminator = instructions.back();
            if(std::holds_alternative<BranchMInst>(terminator)) {
                const auto targetBlock = std::get<BranchMInst>(terminator).targetBlock;

                if(targetBlock != block && targetBlock->instructions().size() <= duplicationThreshold) {
                    instructions.pop_back();
                    instructions.insert(instructions.cend(), targetBlock->instructions().cbegin(),
                                        targetBlock->instructions().cend());
                    auto& usedStackObjects = block->usedStackObjects();
                    for(auto obj : targetBlock->usedStackObjects())
                        usedStackObjects.insert(obj);
                    // fix CFG

                    const auto ensureNext = [&](const GMIRBasicBlock* next) {
                        if(nextIter == func.blocks().cend() || nextIter->get() != next) {
                            auto newBlock = std::make_unique<GMIRBasicBlock>(&func, next->getTripCount());
                            newBlock->instructions().emplace_back(BranchMInst{ next });
                            newBlock->usedStackObjects() = block->usedStackObjects();
                            func.blocks().insert(nextIter, std::move(newBlock));
                        }
                    };

                    if(std::holds_alternative<BranchCompareMInst>(instructions.back())) {
                        const auto& branchInst = std::get<BranchCompareMInst>(instructions.back());

                        const auto& successors = cfg.successors(targetBlock);
                        if(successors.size() == 2) {
                            if(branchInst.targetBlock == successors[0].block) {
                                ensureNext(successors[1].block);
                            } else
                                ensureNext(successors[0].block);
                        } else if(successors.size() == 1) {
                            ensureNext(successors[0].block);
                        } else
                            reportUnreachable(CMMC_LOCATION());
                    }

                    modified = true;
                }
            }

            iter = nextIter;
        }
        if(!modified)
            return;

        while(redirectGoto(func))
            ;
    }
}

CMMC_NAMESPACE_END
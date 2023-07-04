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

// b1:
//    phi ...
//    br b2
// b2:
//    phi
// ->
// b2:
//    phi

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class PhiMerge final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        bool modified = false;
        while(true) {
            auto& cfg = analysis.get<CFGAnalysis>(func);

            bool changed = false;
            for(auto block : func.blocks()) {
                bool valid = true;
                for(auto& inst : block->instructions()) {
                    if(!(inst.getInstID() == InstructionID::Phi || inst.getInstID() == InstructionID::Branch)) {
                        valid = false;
                        break;
                    }
                }
                if(!valid)
                    continue;

                const auto terminator = block->getTerminator();
                const auto targetBlock = terminator->as<BranchInst>()->getTrueTarget();

                // handled by SCCEliminate
                if(targetBlock == block)
                    continue;
                // at least one Phi inst
                if(block->instructions().front()->getInstID() != InstructionID::Phi)
                    continue;
                // handled by BlockMerge
                if(targetBlock->instructions().front()->getInstID() != InstructionID::Phi)
                    continue;

                for(auto& inst : block->instructions()) {
                    if(inst.getInstID() == InstructionID::Phi) {
                        if(inst.users().useCount() > 1) {
                            valid = false;
                            break;
                        }
                        for(auto user : inst.users()) {
                            if(user->getBlock() != targetBlock || user->getInstID() != InstructionID::Phi) {
                                valid = false;
                                break;
                            }
                            if(user->as<PhiInst>()->incomings().at(block)->value != &inst) {
                                valid = false;
                                break;
                            }
                        }
                        if(!valid)
                            break;
                    }
                }
                if(!valid)
                    continue;

                for(auto prev : cfg.predecessors(block)) {
                    for(auto prevSucc : cfg.successors(prev)) {
                        if(prevSucc == targetBlock) {
                            valid = false;
                            break;
                        }
                    }
                }
                if(!valid)
                    continue;

                for(auto prev : cfg.predecessors(block)) {
                    resetTarget(prev->getTerminator()->as<BranchInst>(), block, targetBlock);

                    for(auto& inst : targetBlock->instructions()) {
                        if(inst.getInstID() == InstructionID::Phi) {
                            auto phi = inst.as<PhiInst>();
                            auto val = phi->incomings().at(block);
                            if(val->value->getBlock() == block) {
                                phi->addIncoming(prev, val->value->as<PhiInst>()->incomings().at(prev)->value);
                            } else {
                                phi->addIncoming(prev, val->value);
                            }
                        } else
                            break;
                    }
                }

                for(auto& inst : targetBlock->instructions()) {
                    if(inst.getInstID() == InstructionID::Phi) {
                        auto phi = inst.as<PhiInst>();
                        phi->removeSource(block);
                    } else
                        break;
                }

                {
                    DisableValueRefCheckScope scope;
                    block->instructions().clear();
                }
                func.blocks().remove(block);
                changed = true;
                break;
            }

            if(changed) {
                analysis.invalidateFunc(func);
                modified = true;
            } else
                break;
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "PhiMerge"sv;
    }
};

CMMC_TRANSFORM_PASS(PhiMerge);

CMMC_NAMESPACE_END

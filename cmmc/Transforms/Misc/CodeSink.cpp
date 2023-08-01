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
#include <cmmc/Analysis/BlockTripCountEstimation.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Config.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <unordered_set>
#include <vector>

// Only processing inter-block code sinking
// Intra-block code sinking will be handled at the code generation stage (Schedule).

CMMC_NAMESPACE_BEGIN

class CodeSink final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& blockTripCount = analysis.get<BlockTripCountEstimation>(func);
        if(!blockTripCount.isAvailable())
            return false;

        const auto& cfg = analysis.get<CFGAnalysis>(func);
        const auto& dom = analysis.get<DominateAnalysis>(func);

        bool modified = false;
        // auto& target = analysis.module().getTarget();

        for(auto block : func.blocks()) {
            const auto freq = blockTripCount.query(block);
            if(freq < coldBlockThreshold)
                continue;

            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::ConditionalBranch)
                continue;
            const auto branch = terminator->as<BranchInst>();
            const auto trueTarget = branch->getTrueTarget();
            const auto falseTarget = branch->getFalseTarget();
            if(trueTarget == falseTarget)
                continue;

            const auto shouldMoveToTarget = [&](Block* targetBlock) {
                if(block == targetBlock)
                    return false;

                for(auto pred : cfg.predecessors(targetBlock)) {
                    if(pred != block) {
                        return false;
                    }
                }
                return blockTripCount.query(targetBlock) < freq - 1e-8;
            };

            const auto moveToTrueTarget = shouldMoveToTarget(trueTarget);
            const auto moveToFalseTarget = shouldMoveToTarget(falseTarget);
            if(!moveToTrueTarget && !moveToFalseTarget)
                continue;

            const auto tryMove = [&](Instruction* inst, Block* target) {
                for(auto userBlock : func.blocks()) {
                    const auto domination = dom.dominate(target, userBlock);
                    for(auto& userInst : userBlock->instructions()) {
                        if(userInst.getInstID() == InstructionID::Phi) {
                            for(auto [pred, val] : userInst.as<PhiInst>()->incomings()) {
                                if(val->value == inst && !dom.dominate(target, pred)) {
                                    return false;
                                }
                            }
                        } else {
                            bool used = false;
                            for(auto operand : userInst.operands())
                                if(operand == inst) {
                                    used = true;
                                    break;
                                }
                            if(used && !domination) {
                                return false;
                            }
                        }
                    }
                }

                // apply motion
                auto& instructions = target->instructions();
                // TODO: getFirstNonPhi?
                auto iter = instructions.begin();
                while(iter != instructions.end() && iter->getInstID() == InstructionID::Phi)
                    ++iter;
                inst->insertBefore(target, iter);
                return true;
            };

            auto& instructions = block->instructions();
            std::unordered_set<Instruction*> moved;
            for(auto iter = instructions.begin(); iter != instructions.end();) {
                auto next = std::next(iter);
                auto& inst = *iter;
                if(isMovableExpr(inst, false)) {
                    if(moveToTrueTarget) {
                        if(tryMove(&inst, trueTarget)) {
                            modified = true;
                        }
                    } else if(moveToFalseTarget) {
                        if(tryMove(&inst, falseTarget)) {
                            modified = true;
                        }
                    }
                }
                iter = next;
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "CodeSink"sv;
    }
};

CMMC_TRANSFORM_PASS(CodeSink);

CMMC_NAMESPACE_END

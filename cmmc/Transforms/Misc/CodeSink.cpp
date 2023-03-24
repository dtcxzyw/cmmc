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

#include <algorithm>
#include <cmmc/Analysis/BlockTripCountEstimation.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Config.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cstdint>
#include <unordered_set>
#include <vector>

// Only processing inter-block code sinking
// Intra-block code sinking will be handled at the code generation stage (Schedule).

CMMC_NAMESPACE_BEGIN

/*
class CodeSink final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& blockTripCount = analysis.get<BlockTripCountEstimation>(func);
        if(!blockTripCount.isAvailable())
            return false;

        const auto& cfg = analysis.get<CFGAnalysis>(func);

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
            const auto cond = branch->getOperand(0);
            const auto& trueTarget = branch->getTrueTarget();
            const auto& falseTarget = branch->getFalseTarget();
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
                return blockTripCount.query(targetBlock) < freq - significantBlockTripCountDifference;
            };

            const auto moveToTrueTarget = shouldMoveToTarget(trueTarget);
            const auto moveToFalseTarget = shouldMoveToTarget(falseTarget);
            if(!moveToTrueTarget && !moveToFalseTarget)
                continue;

            std::unordered_set<Instruction*> trueDep, falseDep;
            const auto addDep = [](Instruction* inst, std::unordered_set<Instruction*>& dep) {
                dep.insert(inst);
                for(auto operand : inst->operands())
                    if(operand->isInstruction())
                        dep.insert(operand->as<Instruction>());
            };

            auto& instructions = block->instructions();
            for(auto iter = instructions.rbegin(); iter != instructions.rend(); ++iter) {
                const auto inst = *iter;
                if(inst->isTerminator())
                    continue;
                const auto usedByBoth = cond == inst || !isNoSideEffectExpr(*inst);

                const auto usedByTrue = usedByBoth || trueDep.count(inst);
                if(usedByTrue) {
                    addDep(inst, trueDep);
                }

                const auto usedByFalse = usedByBoth || falseDep.count(inst);
                if(usedByFalse) {
                    addDep(inst, falseDep);
                }
            }

            ReplaceMap replaceTrue, replaceFalse;

            for(auto iter = instructions.rbegin(); iter != instructions.rend(); ++iter) {
                const auto inst = *iter;
                if(inst->isTerminator())
                    continue;

                const auto usedByTrue = trueDep.count(inst);
                const auto usedByFalse = falseDep.count(inst);
                if(usedByTrue && usedByFalse)
                    continue;
                if(!usedByTrue && !usedByFalse)  // unused insts
                    continue;
                if(usedByTrue && !moveToTrueTarget)
                    continue;
                if(usedByFalse && !moveToFalseTarget)
                    continue;

                const auto& selectedTarget = usedByTrue ? trueTarget : falseTarget;
                const auto targetBlock = selectedTarget;

                const auto newInst = inst->clone();
                auto& dest = targetBlock->instructions();
                dest.insert(dest.begin(), newInst);
                newInst->setBlock(targetBlock);
                auto& replace = usedByTrue ? replaceTrue : replaceFalse;
                replace.emplace(inst, newInst);

                modified = true;
            }

            replaceOperands(*trueTarget, replaceTrue);
            replaceOperands(*falseTarget, replaceFalse);
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "CodeSink"sv;
    }
};

CMMC_TRANSFORM_PASS(CodeSink);
*/

CMMC_NAMESPACE_END

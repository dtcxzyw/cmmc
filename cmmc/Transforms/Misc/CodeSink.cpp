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
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
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

class CodeSink final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& blockTripCount = analysis.get<BlockTripCountEstimation>(func);
        if(!blockTripCount.isAvailable())
            return false;

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
            const auto branch = terminator->as<ConditionalBranchInst>();
            const auto cond = branch->getOperand(0);
            const auto& trueTarget = branch->getTrueTarget();
            const auto& falseTarget = branch->getFalseTarget();
            if(trueTarget.getTarget() == falseTarget.getTarget())
                continue;

            const auto moveToTrueTarget = dom.dominate(block, trueTarget.getTarget()) &&
                blockTripCount.query(trueTarget.getTarget()) < freq - significantBlockTripCountDifference;
            const auto moveToFalseTarget = dom.dominate(block, falseTarget.getTarget()) &&
                blockTripCount.query(falseTarget.getTarget()) < freq - significantBlockTripCountDifference;
            if(!moveToTrueTarget && !moveToFalseTarget)
                continue;

            std::unordered_set<Instruction*> trueDep, falseDep;
            const auto hasArg = [](Value* val, const BranchTarget& branchTarget) {
                auto& args = branchTarget.getArgs();
                return std::any_of(args.begin(), args.end(), [val](Value* arg) { return val == arg; });
            };
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

                const auto usedByTrue = usedByBoth || trueDep.count(inst) || hasArg(inst, trueTarget);
                if(usedByTrue) {
                    addDep(inst, trueDep);
                }

                const auto usedByFalse = usedByBoth || falseDep.count(inst) || hasArg(inst, falseTarget);
                if(usedByFalse) {
                    addDep(inst, falseDep);
                }
            }

            std::unordered_map<Value*, BlockArgument*> argMap;
            const auto buildArgMap = [&](const BranchTarget& branchTarget) {
                const auto& args1 = branchTarget.getArgs();
                const auto& args2 = branchTarget.getTarget()->args();
                for(uint32_t idx = 0; idx < args1.size(); ++idx)
                    argMap.emplace(args1[idx], args2[idx]);
            };
            buildArgMap(trueTarget);
            buildArgMap(falseTarget);

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
                const auto targetBlock = selectedTarget.getTarget();

                const auto newInst = inst->clone();
                auto& dest = targetBlock->instructions();
                dest.insert(dest.begin(), newInst);
                newInst->setBlock(targetBlock);
                auto& replace = usedByTrue ? replaceTrue : replaceFalse;
                replace.emplace(inst, newInst);

                if(auto it = argMap.find(inst); it != argMap.cend())
                    replace.emplace(it->second, newInst);
                modified = true;
            }

            replaceOperands(*trueTarget.getTarget(), replaceTrue);
            replaceOperands(*falseTarget.getTarget(), replaceFalse);
        }

        if(modified)
            blockArgPropagation(func);
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "CodeSink"sv;
    }
};

CMMC_TRANSFORM_PASS(CodeSink);

CMMC_NAMESPACE_END

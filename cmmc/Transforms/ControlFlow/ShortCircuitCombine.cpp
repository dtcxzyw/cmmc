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

// TODO: generalize this pass
// block: nextCond common
// nextCond: common

// Logical and:
// ^b1:
//    cbr c1, ^b2, ^b4
// ^b2:
//    cbr c2, ^b3, ^b4
// ^b3:
//    xxx
// ^b4:
//    xxx
// ==>
// ^b1:
//    c3 = and c1, c2
//    cbr c3, ^b3, ^b4
// ^b2:
//    cbr c2, ^b3, ^b4
// ^b3:
//    xxx
// ^b4:
//    xxx

// Logical or:
// ^b1:
//    cbr c1, ^b3, ^b2
// ^b2:
//    cbr c2, ^b3, ^b4
// ^b3:
//    xxx
// ^b4:
//    xxx
// ==>
// ^b1:
//    c3 = or c1, c2
//    cbr c3, ^b3, ^b4
// ^b2:
//    cbr c2, ^b3, ^b4
// ^b3:
//    xxx
// ^b4:
//    xxx

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

constexpr size_t inlineInstThreshold = 4;
constexpr size_t inlineLoadThreshold = 1;

class ShortCircuitCombine final : public TransformPass<Function> {
    static bool shouldFold(Block& block, const std::unordered_set<Instruction*>& crossUses) {
        size_t loadCount = 0;
        if(block.instructions().size() > inlineInstThreshold)
            return false;
        if(block.getTerminator()->getInstID() != InstructionID::ConditionalBranch)
            return false;
        for(auto& inst : block.instructions()) {
            // TODO: handle inter-block uses
            if(crossUses.count(&inst)) {
                return false;
            }
            switch(inst.getInstID()) {
                case InstructionID::Phi:
                case InstructionID::Store:
                case InstructionID::AtomicAdd:
                case InstructionID::Call:
                // It is not safe to speculate division, since SIGFPE may be raised.
                case InstructionID::SDiv:
                case InstructionID::UDiv:
                case InstructionID::SRem:
                case InstructionID::URem:
                    return false;
                case InstructionID::Load: {
                    const auto addr = inst.getOperand(0);
                    if(addr->isGlobal() || addr->is<StackAllocInst>()) {
                        if(++loadCount > inlineLoadThreshold)
                            return false;
                    } else
                        return false;
                } break;
                default:
                    break;
            }
        }
        return true;
    }

    static bool combineLogicalAnd(Block* block, AnalysisPassManager& analysis,
                                  const std::unordered_set<Instruction*>& crossUses) {
        const auto branch = block->getTerminator()->as<BranchInst>();
        const auto nextCond = branch->getTrueTarget();
        if(nextCond == block)
            return false;
        if(!shouldFold(*nextCond, crossUses))
            return false;
        const auto exiting = branch->getFalseTarget();
        if(exiting == block || exiting == nextCond)
            return false;
        const auto nextBranch = nextCond->getTerminator()->as<BranchInst>();
        if(nextBranch->getFalseTarget() != exiting)
            return false;

        if(!hasSamePhiValue(exiting, block, nextCond))
            return false;

        const auto body = nextBranch->getTrueTarget();
        if(body == block || body == nextCond || body == exiting)
            return false;

        auto& instructions = block->instructions();
        instructions.pop_back();
        ReplaceMap replace;
        for(auto& inst : nextCond->instructions()) {
            if(inst.isTerminator())
                break;
            const auto newInst = inst.clone();
            newInst->insertBefore(block, instructions.end());
            applyReplace(newInst, replace);
            if(inst.canbeOperand())
                replace.emplace(&inst, newInst);
        }

        IRBuilder builder(analysis.module().getTarget(), block);
        const auto condLhs = branch->getOperand(0);
        auto condRhs = nextBranch->getOperand(0);
        if(auto iter = replace.find(condRhs); iter != replace.cend())
            condRhs = iter->second;
        const auto cond = builder.makeOp<BinaryInst>(InstructionID::And, condLhs, condRhs);
        builder.makeOp<BranchInst>(cond, branch->getBranchProb() * nextBranch->getBranchProb(), body, exiting);

        copyTarget(body, nextCond, block);
        return true;
    }

    static bool combineLogicalOr(Block* block, AnalysisPassManager& analysis, const std::unordered_set<Instruction*>& crossUses) {
        const auto branch = block->getTerminator()->as<BranchInst>();
        const auto body = branch->getTrueTarget();
        if(body == block)
            return false;

        const auto nextCond = branch->getFalseTarget();
        if(nextCond == block || nextCond == body)
            return false;
        if(!shouldFold(*nextCond, crossUses))
            return false;
        if(nextCond->getTerminator()->getInstID() != InstructionID::ConditionalBranch)
            return false;
        const auto nextBranch = nextCond->getTerminator()->as<BranchInst>();
        if(nextBranch->getTrueTarget() != body)
            return false;
        const auto exiting = nextBranch->getFalseTarget();
        if(exiting == block || exiting == body || exiting == nextCond)
            return false;

        if(!hasSamePhiValue(body, block, nextCond))
            return false;

        auto& instructions = block->instructions();
        instructions.pop_back();
        ReplaceMap replace;
        for(auto& inst : nextCond->instructions()) {
            if(inst.isTerminator())
                break;
            const auto newInst = inst.clone();
            newInst->insertBefore(block, instructions.end());
            applyReplace(newInst, replace);
            if(inst.canbeOperand())
                replace.emplace(&inst, newInst);
        }

        IRBuilder builder(analysis.module().getTarget(), block);
        const auto condLhs = branch->getOperand(0);
        auto condRhs = nextBranch->getOperand(0);
        if(auto iter = replace.find(condRhs); iter != replace.cend())
            condRhs = iter->second;
        const auto cond = builder.makeOp<BinaryInst>(InstructionID::Or, condLhs, condRhs);
        builder.makeOp<BranchInst>(cond, 1.0 - (1.0 - branch->getBranchProb()) * (1.0 - nextBranch->getBranchProb()), body,
                                   exiting);

        copyTarget(exiting, nextCond, block);
        return true;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& target = analysis.module().getTarget();
        const auto andSupport = target.isNativeSupported(InstructionID::And);
        const auto orSupport = target.isNativeSupported(InstructionID::Or);

        std::unordered_set<Instruction*> crossUses;
        for(auto block : func.blocks())
            for(auto& inst : block->instructions())
                for(auto operand : inst.operands())
                    if(operand->getBlock() && operand->getBlock() != block) {
                        crossUses.insert(operand->as<Instruction>());
                    }

        bool modified = false;

        for(auto block : func.blocks()) {
            if(block->getTerminator()->getInstID() != InstructionID::ConditionalBranch)
                continue;
            if(andSupport && combineLogicalAnd(block, analysis, crossUses)) {
                modified = true;
                continue;
            }
            if(orSupport && combineLogicalOr(block, analysis, crossUses)) {
                modified = true;
                continue;
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ShortCircuitCombine"sv;
    }
};

CMMC_TRANSFORM_PASS(ShortCircuitCombine);

CMMC_NAMESPACE_END

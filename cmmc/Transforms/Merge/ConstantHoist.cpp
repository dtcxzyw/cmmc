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

// Hoist constants of similar blocks

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <functional>
#include <iterator>
#include <unordered_map>
#include <unordered_set>
#include <vector>

// TODO: inst order-agonistic compare

CMMC_NAMESPACE_BEGIN

struct ConstantPair final {
    uint32_t idx;
    Instruction* lhs;
    Value* lhsOperand;
    Instruction* rhs;
    Value* rhsOperand;
};

class ConstantHoist final : public TransformPass<Function> {
    static bool isEqual(Block* lhs, Block* rhs, std::vector<ConstantPair>& pairs) {
        if(lhs->instructions().size() != rhs->instructions().size())
            return false;
        uint32_t alloc = 0;
        std::unordered_map<Value*, uint32_t> lhsOperands;
        std::unordered_map<Value*, uint32_t> rhsOperands;
        for(auto lhsIter = lhs->instructions().begin(), rhsIter = rhs->instructions().begin();
            lhsIter != lhs->instructions().end(); ++lhsIter, ++rhsIter) {
            auto& lhsInst = *lhsIter;
            auto& rhsInst = *rhsIter;
            if(!lhsInst.isEqual(&rhsInst))
                return false;

            lhsOperands[&lhsInst] = rhsOperands[&rhsInst] = ++alloc;
        }
        for(auto lhsIter = lhs->instructions().begin(), rhsIter = rhs->instructions().begin();
            lhsIter != lhs->instructions().end(); ++lhsIter, ++rhsIter) {
            auto& lhsInst = *lhsIter;
            auto& rhsInst = *rhsIter;

            if(lhsInst.getInstID() == InstructionID::Phi)
                continue;

            if(lhsInst.operands().size() != rhsInst.operands().size())
                return false;
            for(uint32_t idx = 0; idx < lhsInst.operands().size(); ++idx) {
                const auto lhsOperand = lhsInst.getOperand(idx);
                const auto rhsOperand = rhsInst.getOperand(idx);
                if(!lhsOperand->getType()->isSame(rhsOperand->getType()))
                    return false;

                if(lhsOperand->getBlock() == lhs && rhsOperand->getBlock() == rhs) {
                    if(lhsOperands.at(lhsOperand) != rhsOperands.at(rhsOperand))
                        return false;
                } else if(lhsOperand->getBlock() == lhs || rhsOperand->getBlock() == rhs) {
                    return false;
                } else if(lhsOperand != rhsOperand) {  // globals/constants/other values
                    // Don't hoist pointer of local allocas since it defeats AA and Mem2Reg.
                    if(lhsOperand->is<StackAllocInst>() || rhsOperand->is<StackAllocInst>())
                        return false;

                    if(!lhsOperand->getType()->isFunction())
                        pairs.push_back({ idx, &lhsInst, lhsOperand, &rhsInst, rhsOperand });
                    else
                        return false;
                }
            }
        }

        auto checkTarget = [&](Block* target) {
            if(!target)
                return true;
            for(auto& inst : target->instructions()) {
                if(inst.getInstID() == InstructionID::Phi) {
                    const auto phi = inst.as<PhiInst>();
                    auto& incomings = phi->incomings();
                    if(incomings.at(lhs) != incomings.at(rhs))
                        return false;
                } else
                    break;
            }
            return true;
        };

        const auto terminator = lhs->getTerminator();
        if(terminator->isBranch()) {
            if(terminator->getInstID() == InstructionID::Switch)
                return false;

            const auto branch = terminator->as<BranchInst>();
            if(!checkTarget(branch->getTrueTarget())) {
                return false;
            }
            if(branch->getFalseTarget() && branch->getTrueTarget() != branch->getFalseTarget() &&
               !checkTarget(branch->getFalseTarget())) {
                return false;
            }
        }

        return true;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& moduleTarget = analysis.module().getTarget();
        if(!moduleTarget.isNativeSupported(InstructionID::Select))
            return false;
        const auto& cfg = analysis.get<CFGAnalysis>(func);

        bool modified = false;
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::ConditionalBranch)
                continue;
            const auto branch = terminator->as<BranchInst>();
            const auto trueTarget = branch->getTrueTarget();
            const auto falseTarget = branch->getFalseTarget();

            if(trueTarget == falseTarget || trueTarget == block || falseTarget == block)
                continue;
            if(cfg.predecessors(trueTarget).size() != 1 || cfg.predecessors(falseTarget).size() != 1)
                continue;
            std::vector<ConstantPair> pairs;
            if(!isEqual(trueTarget, falseTarget, pairs))
                continue;

            modified = true;
            const auto cond = branch->getOperand(0);
            IRBuilder builder{ moduleTarget };
            builder.setInsertPoint(block, std::prev(block->instructions().end()));

            for(auto [idx, lhsInst, lhsValue, rhsInst, rhsValue] : pairs) {
                const auto val = builder.makeOp<SelectInst>(cond, lhsValue, rhsValue);
                // TODO: inst->setOperand(idx, val)
                lhsInst->mutableOperands()[idx]->resetValue(val);
                rhsInst->mutableOperands()[idx]->resetValue(val);
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ConstantHoist"sv;
    }
};

CMMC_TRANSFORM_PASS(ConstantHoist);

CMMC_NAMESPACE_END

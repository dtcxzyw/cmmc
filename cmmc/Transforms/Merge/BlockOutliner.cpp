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

// Merge same blocks

#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <functional>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class BlockOutliner final : public TransformPass<Function> {
    bool isEqual(Block* lhs, Block* rhs) const {
        auto& lhsArgs = lhs->args();
        auto& rhsArgs = rhs->args();
        if(lhsArgs.size() != rhsArgs.size())
            return false;
        if(lhs->instructions().size() != rhs->instructions().size())
            return false;
        uint32_t alloc = 0;
        std::unordered_map<Value*, uint32_t> lhsOperands;
        std::unordered_map<Value*, uint32_t> rhsOperands;
        const auto allocOperand = [&](Value* lhsValue, Value* rhsValue) {
            lhsOperands[lhsValue] = rhsOperands[rhsValue] = ++alloc;
        };
        for(size_t idx = 0; idx < lhsArgs.size(); ++idx) {
            if(!lhsArgs[idx]->getType()->isSame(rhsArgs[idx]->getType()))
                return false;
            allocOperand(lhsArgs[idx], rhsArgs[idx]);
        }
        for(auto lhsIter = lhs->instructions().begin(), rhsIter = rhs->instructions().begin();
            lhsIter != lhs->instructions().end(); ++lhsIter, ++rhsIter) {
            const auto lhsInst = *lhsIter;
            const auto rhsInst = *rhsIter;

            if(lhsInst->getInstID() != rhsInst->getInstID())
                return false;
            if(!lhsInst->getType()->isSame(rhsInst->getType()))
                return false;

            if(lhsInst->operands().size() != rhsInst->operands().size())
                return false;
            for(size_t idx = 0; idx < lhsInst->operands().size(); ++idx) {
                const auto lhsOperand = lhsInst->getOperand(idx);
                const auto rhsOperand = rhsInst->getOperand(idx);
                if(lhsOperand->getBlock() == lhs && rhsOperand->getBlock() == rhs) {
                    if(lhsOperands.find(lhsOperand)->second != rhsOperands.find(rhsOperand)->second)
                        return false;
                } else if(lhsOperand != rhsOperand) {  // globals/constants
                    return false;
                }
            }
            allocOperand(lhsInst, rhsInst);
        }

        if(lhs->getTerminator()->isBranch()) {
            auto lhsTerminator = lhs->getTerminator()->as<ConditionalBranchInst>();
            auto rhsTerminator = rhs->getTerminator()->as<ConditionalBranchInst>();
            if(lhsTerminator->getTrueTarget().getTarget() != rhsTerminator->getTrueTarget().getTarget())
                return false;
            if(lhsTerminator->getFalseTarget().getTarget() != rhsTerminator->getFalseTarget().getTarget())
                return false;
        }

        return true;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        std::unordered_map<Block*, Block*> replace;
        // block-level merge
        std::vector<Block*> blocks;
        for(auto block : func.blocks()) {
            bool unique = true;
            for(auto rhs : blocks)
                if(isEqual(block, rhs)) {
                    replace.emplace(block, rhs);
                    unique = false;
                    break;
                }
            if(unique)
                blocks.push_back(block);
        }
        bool modified = false;
        for(auto block : func.blocks()) {
            auto terminator = block->getTerminator();
            if(terminator->isBranch()) {
                auto branch = terminator->as<ConditionalBranchInst>();
                auto handleTarget = [&](BranchTarget& target) {
                    if(!target.getTarget())
                        return;
                    if(auto iter = replace.find(target.getTarget()); iter != replace.cend()) {
                        target.resetTarget(iter->second);
                        modified = true;
                    }
                };
                handleTarget(branch->getTrueTarget());
                handleTarget(branch->getFalseTarget());
            }
        }
        return modified;
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }

    std::string_view name() const noexcept override {
        using namespace std::string_view_literals;
        return "BlockOutliner"sv;
    }
};

CMMC_TRANSFORM_PASS(BlockOutliner);

CMMC_NAMESPACE_END

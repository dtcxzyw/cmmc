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
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <functional>
#include <unordered_map>
#include <unordered_set>

// TODO: inst order-agonistic compare

CMMC_NAMESPACE_BEGIN

class BlockOutliner final : public TransformPass<Function> {
    static bool isEqual(Block* lhs, Block* rhs) {
        if(lhs->instructions().size() != rhs->instructions().size())
            return false;
        uint32_t alloc = 0;
        std::unordered_map<Value*, uint32_t> lhsOperands;
        std::unordered_map<Value*, uint32_t> rhsOperands;
        const auto allocOperand = [&](Value* lhsValue, Value* rhsValue) {
            lhsOperands[lhsValue] = rhsOperands[rhsValue] = ++alloc;
        };
        for(auto lhsIter = lhs->instructions().begin(), rhsIter = rhs->instructions().begin();
            lhsIter != lhs->instructions().end(); ++lhsIter, ++rhsIter) {
            const auto lhsInst = *lhsIter;
            const auto rhsInst = *rhsIter;

            if(!lhsInst->isEqual(rhsInst))
                return false;

            if(lhsInst->operands().size() != rhsInst->operands().size())
                return false;
            for(uint32_t idx = 0; idx < lhsInst->operands().size(); ++idx) {
                const auto lhsOperand = lhsInst->getOperand(idx);
                const auto rhsOperand = rhsInst->getOperand(idx);
                if(lhsOperand->getBlock() == lhs && rhsOperand->getBlock() == rhs) {
                    if(lhsOperands.at(lhsOperand) != rhsOperands.at(rhsOperand))
                        return false;
                } else if(lhsOperand != rhsOperand) {  // globals/constants
                    return false;
                }
            }
            allocOperand(lhsInst, rhsInst);
        }

        return true;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& moduleTarget = analysis.module().getTarget();

        std::unordered_map<Block*, Block*> replace;
        // block-level merge
        std::unordered_map<size_t, std::vector<Block*>> blocks;
        const auto entry = func.entryBlock();
        for(auto block : func.blocks()) {
            if(block == entry)
                continue;
            const auto key = block->instructions().size();
            auto& blockGroup = blocks[key];

            bool unique = true;
            for(auto rhs : blockGroup)
                if(isEqual(block, rhs)) {
                    replace.emplace(block, rhs);
                    unique = false;
                    break;
                }
            if(unique)
                blockGroup.push_back(block);
        }
        bool modified = false;
        // handle entry block

        for(auto& block : blocks[entry->instructions().size()]) {
            if(isEqual(block, entry)) {
                entry->instructions().clear();
                IRBuilder builder{ moduleTarget, entry };
                builder.makeOp<BranchInst>(block);
                modified = true;
                break;
            }
        }

        // handle other blocks
        for(auto block : func.blocks()) {
            auto terminator = block->getTerminator();
            if(terminator->isBranch()) {
                auto branch = terminator->as<BranchInst>();
                auto handleTarget = [&](Block* target) {
                    if(!target)
                        return;
                    if(auto iter = replace.find(target); iter != replace.cend()) {
                        // target.resetTarget(iter->second);
                        reportNotImplemented(CMMC_LOCATION());
                        modified = true;
                    }
                };
                handleTarget(branch->getTrueTarget());
                handleTarget(branch->getFalseTarget());
            }
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "BlockOutliner"sv;
    }
};

CMMC_TRANSFORM_PASS(BlockOutliner);

CMMC_NAMESPACE_END

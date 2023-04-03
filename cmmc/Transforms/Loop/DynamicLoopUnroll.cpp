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

// Loop unrolling without interval information (only apply for simple loops)

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cstdlib>
#include <new>

constexpr uint32_t unrollBlockSize = 16U;

CMMC_NAMESPACE_BEGIN

class DynamicLoopUnroll final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& loopInfo = analysis.get<LoopAnalysis>(func);
        auto& cfg = analysis.get<CFGAnalysis>(func);
        const auto& target = analysis.module().getTarget();

        bool modified = false;
        for(auto& loop : loopInfo.loops) {
            // innermost loop
            if(loop.header != loop.latch)
                continue;
            if(loop.header->instructions().size() > maxUnrollBodySize)
                continue;
            // handled by static loop unroll
            if(loop.bound->isConstant() && loop.initial->isConstant())
                continue;

            const auto terminator = loop.latch->getTerminator();
            const auto cond = terminator->getOperand(0);

            {
                const auto op = cond->as<CompareInst>()->getOp();
                // doesn't support NotEqual
                if(op != CompareOp::LessThan && op != CompareOp::GreaterThan)
                    continue;
            }

            modified = true;
            std::vector<Block*> insertedBlocks;

            Block* prev = loop.latch;
            const auto retarget = [&](Block* block, bool nocheck) {
                auto prevTerminator = prev->getTerminator()->as<BranchInst>();
                if(nocheck) {
                    prev->instructions().pop_back();
                    IRBuilder builder{ target, prev };
                    prevTerminator = builder.makeOp<BranchInst>(prevTerminator->getTrueTarget());
                }
                prevTerminator->getTrueTarget() = block;
            };
            const auto append = [&](bool nocheck) {
                ReplaceMap replace;
                const auto block = loop.header->clone(replace);
                insertedBlocks.push_back(block);
                retarget(block, nocheck);
                prev = block;
            };

            // super blocks
            Block* head;

            {
                head = make<Block>(&func);
                PhiInst* indvar = nullptr;
                Value* bound = loop.bound;
                assert(indvar);
                assert(bound->isConstant() || bound->getBlock() == head);

                constexpr auto header = "super.header"sv;
                head->setLabel(String::get(header));
                insertedBlocks.push_back(head);
                for(auto block : cfg.predecessors(loop.latch)) {
                    if(block != loop.latch) {
                        // branchTarget->resetTarget(head);
                        reportNotImplemented(CMMC_LOCATION());
                    }
                }

                IRBuilder builder{ target, head };
                const auto batchEnd = builder.makeOp<BinaryInst>(
                    InstructionID::Add, indvar, ConstantInteger::get(indvar->getType(), loop.step * (unrollBlockSize - 1)));

                const auto batchCond = cond->as<CompareInst>()->clone();
                head->instructions().push_back(batchCond);
                batchCond->operands()[0] = batchEnd;
                batchCond->operands()[1] = bound;
                batchCond->setBlock(head);
                builder.setInsertPoint(head, head->instructions().end());

                constexpr auto exitProb =
                    1.0 / (1 + static_cast<double>(estimatedLoopTripCount) / static_cast<double>(unrollBlockSize));
                CMMC_UNUSED(exitProb);
                reportNotImplemented(CMMC_LOCATION());
                // FIXME
                // builder.makeOp<BranchInst>(batchCond, 1.0 - exitProb, loop.latch, loop.latch);
                prev = head;
            }

            for(uint32_t idx = 0; idx < unrollBlockSize; ++idx)
                append(idx != 0);

            // reset terminator
            {
                const auto superBlockTerminator = prev->getTerminator()->as<BranchInst>();
                superBlockTerminator->getTrueTarget() = head;
                constexpr auto exitProb = 1.0 /
                    static_cast<double>(unrollBlockSize)  // the trip count is divided by unrollBlockSize
                    / (static_cast<double>(estimatedLoopTripCount) /
                       static_cast<double>(unrollBlockSize))  // number of super blocks
                    ;
                superBlockTerminator->updateBranchProb(1.0 - exitProb);
            }

            auto& blocks = func.blocks();
            const auto iter = std::find(blocks.cbegin(), blocks.cend(), loop.latch);
            for(auto block : insertedBlocks)
                blocks.insert(iter, block);
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "DynamicLoopUnroll"sv;
    }
};

CMMC_TRANSFORM_PASS(DynamicLoopUnroll);

CMMC_NAMESPACE_END

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
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cstdlib>
#include <iostream>
#include <new>

constexpr uint32_t maxUnrollBlockSize = 16U;
constexpr uint32_t maxBodySize = 64U;

CMMC_NAMESPACE_BEGIN

class DynamicLoopUnroll final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& loopInfo = analysis.get<LoopAnalysis>(func);
        auto& cfg = analysis.get<CFGAnalysis>(func);
        bool modified = false;
        for(auto& loop : loopInfo.loops) {
            // innermost loop
            if(loop.header != loop.latch)
                continue;
            if(loop.header->instructions().size() > maxBodySize)
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
                auto terminator = prev->getTerminator()->as<ConditionalBranchInst>();
                if(nocheck) {
                    prev->instructions().pop_back();
                    IRBuilder builder{ prev };
                    terminator = builder.makeOp<ConditionalBranchInst>(terminator->getTrueTarget());
                }
                terminator->getTrueTarget().resetTarget(block);
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
                BlockArgument* indvar = nullptr;
                Value* bound = loop.bound;
                for(auto arg : loop.latch->args()) {
                    const auto headerArg = head->addArg(arg->getType());

                    if(arg == loop.inductionVar)
                        indvar = headerArg;
                    if(arg == loop.bound)
                        bound = headerArg;
                }
                assert(indvar);
                assert(bound->isConstant() || bound->getBlock() == head);

                constexpr auto header = "super.header"sv;
                head->setLabel(String::get(header));
                insertedBlocks.push_back(head);
                for(auto [block, target] : cfg.predecessors(loop.latch)) {
                    if(block != loop.latch)
                        target->resetTarget(head);
                }

                IRBuilder builder{ head };
                const auto batchEnd =
                    builder.makeOp<BinaryInst>(InstructionID::Add, indvar->getType(), indvar,
                                               ConstantInteger::get(indvar->getType(), loop.step * (maxUnrollBlockSize - 1)));

                const auto batchCond = cond->as<CompareInst>()->clone();
                head->instructions().push_back(batchCond);
                batchCond->operands()[0] = batchEnd;
                batchCond->operands()[1] = bound;
                batchCond->setBlock(head);
                builder.setInsertPoint(head, head->instructions().end());
                Vector<Value*> args{ head->args().cbegin(), head->args().cend() };
                builder.makeOp<ConditionalBranchInst>(batchCond, BranchTarget{ loop.latch, args },
                                                      BranchTarget{ loop.latch, args });
                prev = head;
            }

            for(uint32_t idx = 0; idx < maxUnrollBlockSize; ++idx)
                append(idx != 0);

            // reset terminator
            prev->getTerminator()->as<ConditionalBranchInst>()->getTrueTarget().resetTarget(head);

            auto& blocks = func.blocks();
            const auto iter = std::find(blocks.cbegin(), blocks.cend(), loop.latch);
            for(auto block : insertedBlocks)
                blocks.insert(iter, block);
        }

        if(modified)
            blockArgPropagation(func);

        return modified;
    }

    std::string_view name() const noexcept override {
        return "DynamicLoopUnroll"sv;
    }
};

CMMC_TRANSFORM_PASS(DynamicLoopUnroll);

CMMC_NAMESPACE_END

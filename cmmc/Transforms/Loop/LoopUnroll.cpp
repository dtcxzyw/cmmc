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

// Loop unrolling (only apply for simple loops)

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdlib>
#include <iostream>
#include <new>

constexpr uint32_t maxUnrollBlockSize = 16U;
constexpr uint32_t maxUnrollSize = 64U;
CMMC_NAMESPACE_BEGIN

class LoopUnroll final : public TransformPass<Function> {
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
            if(!loop.bound->is<ConstantInteger>())
                continue;
            if(!loop.initial->is<ConstantInteger>())
                continue;
            const auto initial = loop.initial->as<ConstantInteger>()->getSignExtended();
            const auto bound = loop.bound->as<ConstantInteger>()->getSignExtended();
            assert(loop.step != 0);
            if((loop.step > 0 && initial + loop.step >= bound) || ((loop.step < 0 && initial + loop.step <= bound)))
                continue;  // handled by loop elimination
            const auto size = (bound - initial) / loop.step;
            assert(size >= 0);

            auto epilogueSize = size > maxUnrollSize ? size % maxUnrollSize : size;
            const auto epilogueStart = initial + (size - epilogueSize) * loop.step;
            assert(epilogueStart != initial || epilogueSize > 0);

            modified = true;
            std::vector<Block*> insertedBlocks;

            Block* prev = loop.latch;
            const auto retarget = [&](Block* block) {
                auto terminator = prev->getTerminator()->as<ConditionalBranchInst>();
                prev->instructions().pop_back();
                IRBuilder builder{ target, prev };
                terminator = builder.makeOp<ConditionalBranchInst>(terminator->getTrueTarget());
                terminator->getTrueTarget().resetTarget(block);
            };
            const auto append = [&]() {
                ReplaceMap replace;
                const auto block = loop.header->clone(replace);
                insertedBlocks.push_back(block);
                retarget(block);
                prev = block;
            };
            const auto startValue = ConstantInteger::get(loop.bound->getType(), epilogueStart);
            if(epilogueStart != initial) {
                // super blocks
                Block* head;

                {
                    ReplaceMap replace;
                    head = loop.header->clone(replace);
                    insertedBlocks.push_back(head);
                    for(auto [block, branchTarget] : cfg.predecessors(loop.latch)) {
                        branchTarget->resetTarget(head);
                    }
                    prev = head;
                }

                for(uint32_t idx = 1; idx < maxUnrollBlockSize; ++idx)
                    append();

                const auto terminator = prev->getTerminator()->as<ConditionalBranchInst>();
                // reset terminator
                terminator->getTrueTarget().resetTarget(head);
                terminator->getOperand(0)->as<CompareInst>()->replaceOperand(loop.bound, startValue);

                const auto tripCount = (size - epilogueSize) / maxUnrollBlockSize;
                const auto exitProb = 1.0 / static_cast<double>(tripCount);
                terminator->updateBranchProb(1.0 - exitProb);
            }
            bool keepOldBlock = false;
            if(epilogueSize) {
                Block* head;
                {
                    ReplaceMap replace;
                    head = loop.latch->clone(replace);
                    insertedBlocks.push_back(head);
                    if(prev == loop.latch) {
                        --epilogueSize;
                        keepOldBlock = true;
                    } else {
                        const auto terminator = prev->getTerminator()->as<ConditionalBranchInst>();
                        auto args = terminator->getTrueTarget().getArgs();
                        const auto nextValue = terminator->getOperand(0)->as<CompareInst>()->getOperand(0);
                        for(auto& arg : args)
                            if(arg == nextValue)
                                arg = startValue;
                        terminator->updateTargetArgs(terminator->getFalseTarget(), args);
                        terminator->getFalseTarget().resetTarget(head);
                    }

                    prev = head;
                }

                for(uint32_t idx = 1; idx < epilogueSize; ++idx) {
                    append();
                }

                // remove backedge
                {
                    const auto terminator = prev->getTerminator()->as<ConditionalBranchInst>();
                    prev->instructions().pop_back();
                    IRBuilder builder{ target, prev };
                    builder.makeOp<ConditionalBranchInst>(terminator->getFalseTarget());
                }

                // retarget to head
                if(keepOldBlock) {
                    prev = loop.latch;
                    retarget(head);
                }
            }

            auto& blocks = func.blocks();
            const auto iter = std::find(blocks.cbegin(), blocks.cend(), loop.latch);
            const auto next = std::next(iter);
            // if(!keepOldBlock)
            //     blocks.erase(iter);
            for(auto block : insertedBlocks)
                blocks.insert(next, block);
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopUnroll"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopUnroll);

CMMC_NAMESPACE_END

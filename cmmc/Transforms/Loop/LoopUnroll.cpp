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
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdlib>
#include <iostream>
#include <new>
#include <unordered_map>

constexpr uint32_t maxUnrollBlockSize = 16U;
constexpr uint32_t maxUnrollSize = 64U;
CMMC_NAMESPACE_BEGIN

class LoopUnroll final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& loopInfo = analysis.get<LoopAnalysis>(func);
        const auto& cfg = analysis.get<CFGAnalysis>(func);
        const auto& dom = analysis.get<DominateAnalysis>(func);
        const auto& target = analysis.module().getTarget();

        bool modified = false;
        for(auto& loop : loopInfo.loops) {
            // innermost loop
            if(loop.header != loop.latch)
                continue;
            if(loop.header->instructions().size() > maxUnrollBodySize)  // TODO: only count non-phi instructions?
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
            const auto size = (bound - initial + loop.step + (loop.step > 0 ? -1 : 1)) / loop.step;
            assert(size >= 0);

            auto epilogueSize = size > maxUnrollSize ? size % maxUnrollBlockSize : size;
            const auto epilogueStart = initial + (size - epilogueSize) * loop.step;
            assert(epilogueStart != initial || epilogueSize > 0);

            modified = true;
            std::vector<Block*> insertedBlocks;
            std::unordered_map<Block*, ReplaceMap> replaceMap;

            Block* prev = loop.latch;
            const auto retarget = [&](Block* block) {
                prev->instructions().pop_back();
                IRBuilder builder{ target, prev };
                builder.makeOp<BranchInst>(block);
                for(auto inst : block->instructions()) {
                    if(inst->getInstID() == InstructionID::Phi) {
                        ReplaceMap replace;
                        const auto phi = inst->as<PhiInst>();
                        for(auto [pred, val] : phi->incomings()) {
                            CMMC_UNUSED(val);
                            if(pred != loop.latch) {
                                phi->removeSource(pred);
                                break;
                            }
                        }

                        if(loop.latch != prev && phi->incomings().count(loop.latch)) {
                            // block->dump(std::cerr, HighlightInst{ phi });
                            phi->replaceSource(loop.latch, prev);
                        }
                        if(replaceMap.count(prev)) {
                            const auto val = phi->incomings().at(prev);
                            auto& map = replaceMap.at(prev);
                            if(map.count(val))
                                phi->replaceOperand(val, map.at(val));
                        }
                    } else
                        break;
                }
            };
            const auto append = [&]() {
                ReplaceMap replace;
                const auto block = loop.header->clone(replace);
                replaceMap[block] = std::move(replace);
                insertedBlocks.push_back(block);
                retarget(block);
                prev = block;
            };
            const auto startValue = ConstantInteger::get(loop.bound->getType(), epilogueStart);
            Block* latestBlock = nullptr;
            if(epilogueStart != initial) {
                // super blocks
                Block* head;

                {
                    ReplaceMap replace;
                    head = loop.header->clone(replace);
                    replaceMap[head] = std::move(replace);
                    insertedBlocks.push_back(head);
                    for(auto block : cfg.predecessors(loop.latch)) {
                        resetTarget(block->getTerminator()->as<BranchInst>(), loop.latch, head);
                    }
                    prev = head;
                }

                for(uint32_t idx = 1; idx < maxUnrollBlockSize; ++idx)
                    append();

                const auto terminator = prev->getTerminator()->as<BranchInst>();
                // reset terminator
                terminator->getTrueTarget() = head;
                terminator->getOperand(0)->as<CompareInst>()->replaceOperand(loop.bound, startValue);
                const auto& replace = replaceMap[prev];
                for(auto inst : head->instructions()) {
                    if(inst->getInstID() == InstructionID::Phi) {
                        const auto phi = inst->as<PhiInst>();
                        auto val = phi->incomings().at(loop.latch);
                        if(replace.count(val))
                            val = replace.at(val);
                        phi->removeSource(loop.latch);
                        phi->addIncoming(prev, val);
                    } else
                        break;
                }

                const auto tripCount = (size - epilogueSize) / maxUnrollBlockSize;
                const auto exitProb = 1.0 / static_cast<double>(tripCount);
                terminator->updateBranchProb(1.0 - exitProb);
                latestBlock = prev;
            }
            if(epilogueSize) {
                Block* head;
                {
                    {
                        ReplaceMap replace;
                        head = loop.latch->clone(replace);
                        replaceMap[head] = std::move(replace);
                        insertedBlocks.push_back(head);
                    }

                    if(prev == loop.latch) {
                        for(auto block : cfg.predecessors(loop.latch)) {
                            resetTarget(block->getTerminator()->as<BranchInst>(), loop.latch, head);
                        }
                    } else {
                        const auto terminator = prev->getTerminator()->as<BranchInst>();
                        terminator->getFalseTarget() = head;
                        auto& replace = replaceMap[prev];
                        for(auto inst : head->instructions()) {
                            if(inst->getInstID() == InstructionID::Phi) {
                                const auto phi = inst->as<PhiInst>();
                                auto val = phi->incomings().at(loop.latch);
                                if(replace.count(val))
                                    val = replace.at(val);
                                std::vector<Block*> todo;
                                todo.reserve(phi->incomings().size());
                                for(auto [pred, value] : phi->incomings()) {
                                    CMMC_UNUSED(value);
                                    todo.push_back(pred);
                                }
                                for(auto pred : todo)
                                    phi->removeSource(pred);
                                phi->addIncoming(prev, val);
                            } else
                                break;
                        }
                    }

                    prev = head;
                }

                for(uint32_t idx = 1; idx < epilogueSize; ++idx) {
                    append();
                }

                latestBlock = prev;

                // remove backedge
                {
                    const auto terminator = prev->getTerminator()->as<BranchInst>();
                    prev->instructions().pop_back();
                    IRBuilder builder{ target, prev };
                    builder.makeOp<BranchInst>(terminator->getFalseTarget());
                }
            }

            const auto& replace = replaceMap.at(latestBlock);
            for(auto block : dom.blocks()) {
                if(dom.dominate(loop.latch, block) && loop.latch != block) {
                    replaceOperandsInBlock(*block, replace);
                }
                for(auto inst : block->instructions()) {
                    if(inst->getInstID() == InstructionID::Phi) {
                        const auto phi = inst->as<PhiInst>();
                        if(phi->incomings().count(loop.latch)) {
                            auto val = phi->incomings().at(loop.latch);
                            phi->removeSource(loop.latch);
                            if(replace.count(val))
                                val = replace.at(val);
                            phi->addIncoming(latestBlock, val);
                        } else
                            break;
                    } else
                        break;
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

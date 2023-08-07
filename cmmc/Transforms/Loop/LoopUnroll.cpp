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

// Loop unrolling (only apply for static simple loops)

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <new>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class LoopUnroll final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        // func.dump(std::cerr, Noop{});
        const auto& loopInfo = analysis.get<LoopAnalysis>(func);
        const auto& cfg = analysis.get<CFGAnalysis>(func);
        const auto& target = analysis.module().getTarget();
        const auto& heuristic = target.getOptHeuristic();

        bool modified = false;
        for(auto& loop : loopInfo.loops) {
            // innermost loop
            if(loop.header != loop.latch)
                continue;
            if(std::abs(loop.step) > maxStep)
                continue;
            const auto blockSize = std::max(2U, estimateBlockSize(loop.header, false)) - 1U;
            if(blockSize * 2 > heuristic.maxUnrollBodySize)
                continue;
            if(hasCall(*loop.header, true))
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

            const auto maxUnrollSize = heuristic.maxUnrollBodySize / blockSize;
            // std::cerr << maxUnrollSize << ' ' << heuristic.maxUnrollBodySize << ' ' << blockSize << '\n';
            const auto epilogueSize = size > maxUnrollSize ? size % heuristic.unrollBlockSize : size;
            if(std::max(epilogueSize, epilogueSize == size ? 0U : heuristic.unrollBlockSize) > maxUnrollSize)
                continue;
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
                for(auto& inst : block->instructions()) {
                    if(inst.getInstID() == InstructionID::Phi) {
                        ReplaceMap replace;
                        const auto phi = inst.as<PhiInst>();
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
                            if(map.count(val->value)) {
                                const auto rep = map.at(val->value);
                                val->resetValue(rep);
                            }
                        }
                    } else
                        break;
                }
            };
            const auto append = [&]() {
                ReplaceMap replace;
                const auto block = loop.header->clone(replace, false);
                replaceMap[block] = std::move(replace);
                insertedBlocks.push_back(block);
                retarget(block);
                prev = block;
            };
            const auto startValue = ConstantInteger::get(loop.bound->getType(), epilogueStart);
            Block* head;
            if(epilogueStart != initial) {
                // super blocks

                {
                    ReplaceMap replace;
                    head = loop.header->clone(replace, false);
                    replaceMap[head] = std::move(replace);
                    insertedBlocks.push_back(head);
                    for(auto block : cfg.predecessors(loop.latch)) {
                        resetTarget(block->getTerminator()->as<BranchInst>(), loop.latch, head);
                    }
                    prev = head;
                }

                for(uint32_t idx = epilogueSize ? 1 : 2; idx < heuristic.unrollBlockSize; ++idx)
                    append();

                if(!epilogueSize) {
                    // use original block directly
                    retarget(loop.latch);
                    prev = loop.latch;
                }

                const auto terminator = prev->getTerminator()->as<BranchInst>();
                // reset terminator
                terminator->getTrueTarget() = head;
                // loop.bound -> startValue
                terminator->getOperand(0)->as<CompareInst>()->mutableOperands()[1]->resetValue(startValue);
                const auto& replace = replaceMap[prev];
                for(auto& inst : head->instructions()) {
                    if(inst.getInstID() == InstructionID::Phi) {
                        const auto phi = inst.as<PhiInst>();
                        auto val = phi->incomings().at(loop.latch)->value;
                        if(replace.count(val))
                            val = replace.at(val);
                        phi->removeSource(loop.latch);
                        phi->addIncoming(prev, val);
                    } else
                        break;
                }

                const auto tripCount = (size - epilogueSize) / heuristic.unrollBlockSize;
                const auto exitProb = 1.0 / static_cast<double>(tripCount);
                terminator->updateBranchProb(1.0 - exitProb);
            }

            if(epilogueSize) {
                auto exitSuperBlock = [&] {
                    const auto terminator = prev->getTerminator()->as<BranchInst>();
                    terminator->getFalseTarget() = head;
                };

                if(epilogueSize == 1) {
                    for(auto& inst : loop.latch->instructions()) {
                        if(inst.getInstID() == InstructionID::Phi) {
                            const auto phi = inst.as<PhiInst>();
                            phi->clear();
                            const auto val = replaceMap.at(head).at(phi)->as<PhiInst>()->incomings().at(prev)->value;
                            phi->addIncoming(prev, val);
                        } else
                            break;
                    }
                    head = loop.latch;
                    exitSuperBlock();
                    prev = loop.latch;
                } else {
                    {
                        ReplaceMap replace;
                        head = loop.latch->clone(replace, false);
                        replaceMap[head] = std::move(replace);
                        insertedBlocks.push_back(head);
                    }

                    if(prev == loop.latch) {
                        for(auto block : cfg.predecessors(loop.latch)) {
                            resetTarget(block->getTerminator()->as<BranchInst>(), loop.latch, head);
                        }
                        for(auto& inst : head->instructions()) {
                            if(inst.getInstID() == InstructionID::Phi) {
                                const auto phi = inst.as<PhiInst>();
                                phi->removeSource(loop.latch);
                            } else
                                break;
                        }
                    } else {
                        exitSuperBlock();
                        auto& replace = replaceMap[prev];
                        for(auto& inst : head->instructions()) {
                            if(inst.getInstID() == InstructionID::Phi) {
                                const auto phi = inst.as<PhiInst>();
                                auto val = phi->incomings().at(loop.latch)->value;
                                if(replace.count(val))
                                    val = replace.at(val);
                                phi->clear();
                                phi->addIncoming(prev, val);
                            } else
                                break;
                        }
                    }

                    prev = head;

                    for(uint32_t idx = 2; idx < epilogueSize; ++idx) {
                        append();
                    }

                    {
                        retarget(loop.latch);
                        prev = loop.latch;
                    }
                }

                // remove backedge
                const auto terminator = prev->getTerminator()->as<BranchInst>();
                const auto exiting = terminator->getFalseTarget();
                prev->instructions().pop_back();
                const auto branch = make<BranchInst>(exiting);
                branch->insertBefore(prev, prev->instructions().end());
            }

            auto& blocks = func.blocks();
            const auto iter = std::find(blocks.cbegin(), blocks.cend(), loop.latch);
            for(auto block : insertedBlocks)
                blocks.insert(iter, block);
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopUnroll"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopUnroll);

CMMC_NAMESPACE_END

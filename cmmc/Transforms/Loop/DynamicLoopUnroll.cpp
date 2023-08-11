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

// Loop unrolling without interval information (only apply for simple loops)

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/IntegerRange.hpp>
#include <cmmc/Analysis/IntegerRangeAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Tune.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <new>

CMMC_NAMESPACE_BEGIN

class DynamicLoopUnroll final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        if(!queryTuneOpt("dyn_loop_unroll", 1))
            return false;

        auto& rangeInfo = analysis.get<IntegerRangeAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        auto& loopInfo = analysis.get<LoopAnalysis>(func);
        auto& cfg = analysis.get<CFGAnalysis>(func);
        const auto& target = analysis.module().getTarget();
        // func.dump(std::cerr, Noop{});
        const auto& heuristic = target.getOptHeuristic();

        bool modified = false;
        for(auto& loop : loopInfo.loops) {
            // loop.header->dump(std::cerr, Noop{});
            // loop.latch->dump(std::cerr, Noop{});
            // innermost loop
            if(loop.header != loop.latch)
                continue;
            if(std::abs(loop.step) > maxStep)
                continue;
            // handled by static loop unroll
            if(loop.bound->isConstant() && loop.initial->isConstant())
                continue;
            if(loop.header->getTransformMetadata().scalarBlock)
                continue;
            if(hasCall(*loop.header, true))
                continue;
            if((std::max(2U, estimateBlockSize(loop.header, true)) - 1U) * heuristic.unrollBlockSize >
               heuristic.maxUnrollBodySize)
                continue;
            uint32_t loopTripCount = estimatedLoopTripCount;
            if(loop.bound->getType()->as<IntegerType>()->getBitwidth() == 32 && loop.step > 0) {
                const auto ctx = loop.header->instructions().front();
                const auto initial = rangeInfo.query(loop.initial, dom, ctx, 5);
                const auto bound = rangeInfo.query(loop.bound, dom, ctx, 5);
                const auto size = (bound - initial).sdiv(IntegerRange{ loop.step });
                if(size.maxSignedValue() < heuristic.unrollBlockSize)
                    continue;
                loopTripCount = std::min(static_cast<uint32_t>(size.maxSignedValue()), estimatedLoopTripCount);
            }

            const auto terminator = loop.latch->getTerminator();
            const auto cond = terminator->getOperand(0);

            {
                const auto op = cond->as<CompareInst>()->getOp();
                // doesn't support NotEqual
                if(op != CompareOp::ICmpSignedLessThan && op != CompareOp::ICmpSignedGreaterThan)
                    continue;
            }

            modified = true;
            loop.header->getTransformMetadata().scalarBlock = true;
            ++loop.header->getTransformMetadata().unrollCount;
            std::vector<Block*> insertedBlocks;
            std::unordered_map<Block*, ReplaceMap> replaceMap;

            Block* prev = nullptr;
            // TODO: remove duplicate code
            const auto retarget = [&](Block* block, bool nocheck) {
                if(nocheck) {
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
                } else {
                    auto prevTerminator = prev->getTerminator()->as<BranchInst>();
                    prevTerminator->getTrueTarget() = block;
                    const auto& replaceHeader = replaceMap.at(prev);
                    const auto& replaceClone = replaceMap.at(block);
                    for(auto& inst : loop.latch->instructions()) {
                        if(inst.getInstID() == InstructionID::Phi) {
                            const auto superBlockPhi = replaceClone.at(&inst)->as<PhiInst>();
                            const auto initial = replaceHeader.at(&inst);
                            superBlockPhi->clear();
                            superBlockPhi->addIncoming(prev, initial);
                        } else
                            break;
                    }
                }
            };
            const auto append = [&](bool nocheck) {
                ReplaceMap replace;
                const auto block = loop.header->clone(replace, false);
                block->getTransformMetadata().scalarBlock = false;
                replaceMap[block] = std::move(replace);
                insertedBlocks.push_back(block);
                retarget(block, nocheck);
                prev = block;
            };

            // super blocks
            Block *head, *scalarHead, *scalarFinal;

            {
                scalarHead = make<Block>(&func);
                scalarFinal = make<Block>(&func);
                head = make<Block>(&func);
                Value* indvar = loop.inductionVar;
                Value* bound = loop.bound;

                constexpr auto header = "super.header"sv;
                head->setLabel(String::get(header));
                insertedBlocks.push_back(head);
                scalarHead->setLabel(String::get("scalar.header"sv));
                insertedBlocks.push_back(scalarHead);
                scalarFinal->setLabel(String::get("scalar.final"sv));
                insertedBlocks.push_back(scalarFinal);
                for(auto block : cfg.predecessors(loop.latch)) {
                    if(block != loop.latch) {
                        resetTarget(block->getTerminator()->as<BranchInst>(), loop.latch, head);
                    }
                }

                IRBuilder builder{ target, head };

                ReplaceMap replace;
                for(auto& inst : loop.latch->instructions()) {
                    if(inst.getInstID() == InstructionID::Phi) {
                        const auto phi = inst.as<PhiInst>();
                        const auto newPhi = builder.createPhi(phi->getType());
                        for(auto [pred, val] : phi->incomings()) {
                            newPhi->addIncoming(pred, val->value);
                        }
                        replace.emplace(phi, newPhi);
                    } else
                        break;
                }

                const auto batchEnd = builder.makeOp<BinaryInst>(
                    InstructionID::Add, replace.at(indvar),
                    ConstantInteger::get(indvar->getType(), loop.step * heuristic.unrollBlockSize + (loop.step > 0 ? -1 : 1)));
                replaceMap[head] = std::move(replace);

                const auto batchCond = cond->as<CompareInst>()->clone()->as<CompareInst>();
                batchCond->insertBefore(head, head->instructions().end());
                batchCond->mutableOperands()[0]->resetValue(batchEnd);
                batchCond->mutableOperands()[1]->resetValue(bound);
                builder.setInsertPoint(head, head->instructions().end());

                auto exitProb = 1.0 / (1 + static_cast<double>(loopTripCount) / static_cast<double>(heuristic.unrollBlockSize));
                builder.makeOp<BranchInst>(batchCond, 1.0 - exitProb, loop.latch /*place holder*/, scalarHead);
                prev = head;
            }

            for(uint32_t idx = 0; idx < heuristic.unrollBlockSize; ++idx)
                append(idx != 0);

            // reset terminator
            {
                prev->instructions().pop_back();
                IRBuilder builder{ target, prev };
                builder.makeOp<BranchInst>(head);
            }

            // fix phi nodes of the header
            {
                auto& replace = replaceMap.at(prev);
                for(auto& inst : head->instructions()) {
                    if(inst.getInstID() == InstructionID::Phi) {
                        const auto phi = inst.as<PhiInst>();
                        auto val = phi->incomings().at(loop.latch)->value;
                        if(auto iter = replace.find(val); iter != replace.cend())
                            val = iter->second;
                        phi->removeSource(loop.latch);
                        phi->addIncoming(prev, val);
                    } else
                        break;
                }
            }

            // build scalar head
            {
                IRBuilder builder{ target, scalarHead };
                auto& replace = replaceMap.at(head);
                const auto indVar = replace.at(loop.inductionVar);
                const auto scalarCond =
                    builder.makeOp<CompareInst>(InstructionID::ICmp, cond->as<CompareInst>()->getOp(), indVar, loop.bound);
                builder.makeOp<BranchInst>(scalarCond, 1.0 - 1.0 / static_cast<double>(heuristic.unrollBlockSize), loop.latch,
                                           scalarFinal);
            }

            // build scalar final
            {
                IRBuilder builder{ target, scalarFinal };
                auto& replaceHead = replaceMap.at(head);
                auto& replacePrev = replaceMap.at(prev);
                for(auto& inst : loop.latch->instructions()) {
                    bool usedByOuter = false;
                    for(auto user : inst.users()) {
                        if(user->getBlock() != loop.latch) {
                            usedByOuter = true;
                            break;
                        }
                    }

                    if(!usedByOuter)
                        continue;

                    const auto phi = builder.createPhi(inst.getType());
                    if(inst.getInstID() == InstructionID::Phi)
                        phi->addIncoming(scalarHead, replaceHead.at(&inst));
                    else {
                        const auto val = replacePrev.at(&inst);
                        const auto refPhi = head->instructions().front()->as<PhiInst>();
                        const auto undef = make<UndefinedValue>(val->getType());
                        const auto headPhi = make<PhiInst>(val->getType());
                        headPhi->insertBefore(head, head->instructions().begin());
                        for(auto& [pred, v] : refPhi->incomings()) {
                            if(pred == prev) {
                                headPhi->addIncoming(prev, val);
                            } else {
                                headPhi->addIncoming(pred, undef);
                            }
                        }
                        phi->addIncoming(scalarHead, headPhi);
                    }
                    phi->addIncoming(loop.latch, &inst);

                    for(auto it = inst.users().begin(); it != inst.users().end();) {
                        auto next = std::next(it);
                        const auto userBlock = it.ref()->user->getBlock();
                        if(userBlock != loop.latch && userBlock != scalarFinal) {
                            it.ref()->resetValue(phi);
                        }
                        it = next;
                    }
                }

                // fix terminator
                const auto latchTerminator = loop.latch->getTerminator()->as<BranchInst>();
                const auto exit = latchTerminator->getFalseTarget();
                latchTerminator->getFalseTarget() = scalarFinal;

                double prob = 0;
                for(uint32_t i = 1; i < heuristic.unrollBlockSize; ++i) {
                    prob += 1.0 - 1.0 / static_cast<double>(heuristic.unrollBlockSize);
                }
                prob /= (static_cast<double>(heuristic.unrollBlockSize) - 1.0);
                latchTerminator->updateBranchProb(prob);
                builder.makeOp<BranchInst>(exit);

                retargetBlock(exit, loop.latch, scalarFinal);
            }

            // fix phi nodes of the scalar block
            {
                const auto& replaceHeader = replaceMap.at(head);
                for(auto& inst : loop.latch->instructions()) {
                    if(inst.getInstID() == InstructionID::Phi) {
                        const auto phi = inst.as<PhiInst>();
                        const auto headerPhi = replaceHeader.at(&inst)->as<PhiInst>();
                        phi->keepOneIncoming(loop.latch);
                        phi->addIncoming(scalarHead, headerPhi);
                    } else
                        break;
                }
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

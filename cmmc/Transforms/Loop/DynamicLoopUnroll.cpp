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
#include <cstdlib>
#include <iostream>
#include <new>

CMMC_NAMESPACE_BEGIN

class DynamicLoopUnroll final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
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
            if((std::max(2U, estimateBlockSize(loop.header)) - 1U) * heuristic.unrollBlockSize > heuristic.maxUnrollBodySize)
                continue;
            if(hasCall(*loop.header))
                continue;
            // handled by static loop unroll
            if(loop.bound->isConstant() && loop.initial->isConstant())
                continue;
            if(loop.header->getTransformMetadata().scalarBlock)
                continue;

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
            std::vector<Block*> insertedBlocks;
            std::unordered_map<Block*, ReplaceMap> replaceMap;

            Block* prev = loop.latch;
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
                replaceMap[block] = std::move(replace);
                insertedBlocks.push_back(block);
                retarget(block, nocheck);
                prev = block;
            };

            // super blocks
            Block* head;

            {
                head = make<Block>(&func);
                Value* indvar = loop.inductionVar;
                Value* bound = loop.bound;

                constexpr auto header = "super.header"sv;
                head->setLabel(String::get(header));
                insertedBlocks.push_back(head);
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
                    ConstantInteger::get(indvar->getType(),
                                         loop.step * heuristic.unrollBlockSize));  // larger bound to keep one exiting edge
                replaceMap[head] = std::move(replace);

                const auto batchCond = cond->as<CompareInst>()->clone();
                batchCond->insertBefore(head, head->instructions().end());
                // TODO: batchCond->setOperand(idx, val)
                batchCond->mutableOperands()[0]->resetValue(batchEnd);
                batchCond->mutableOperands()[1]->resetValue(bound);
                builder.setInsertPoint(head, head->instructions().end());

                auto exitProb =
                    1.0 / (1 + static_cast<double>(estimatedLoopTripCount) / static_cast<double>(heuristic.unrollBlockSize));
                builder.makeOp<BranchInst>(batchCond, 1.0 - exitProb, loop.latch /*place holder*/, loop.latch);
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

            // fix phi nodes of the scalar block
            {
                const auto& replaceHeader = replaceMap.at(head);
                for(auto& inst : loop.latch->instructions()) {
                    if(inst.getInstID() == InstructionID::Phi) {
                        const auto phi = inst.as<PhiInst>();
                        const auto headerPhi = replaceHeader.at(&inst)->as<PhiInst>();
                        phi->keepOneIncoming(loop.latch);
                        phi->addIncoming(head, headerPhi);
                    } else
                        break;
                }
            }

            // fix branch prob of the scalar block
            {
                auto scalarTerminator = loop.header->getTerminator()->as<BranchInst>();
                const auto exitProb = 1.0 / static_cast<double>(heuristic.unrollBlockSize);
                scalarTerminator->updateBranchProb(1.0 - exitProb);
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

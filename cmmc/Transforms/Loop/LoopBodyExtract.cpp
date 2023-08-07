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

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <initializer_list>
#include <iostream>
#include <iterator>
#include <ratio>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

class LoopBodyExtract final : public TransformPass<Function> {
    static bool runImpl(Function& func, AnalysisPassManager& analysis) {
        auto& loopInfo = analysis.get<LoopAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        auto& cfg = analysis.get<CFGAnalysis>(func);

        bool modified = false;
        for(auto& loop : loopInfo.loops) {
            if(loop.header == loop.latch)
                continue;
            uint32_t phiCount = 0;
            for(auto& inst : loop.header->instructions())
                if(inst.getInstID() == InstructionID::Phi)
                    ++phiCount;
                else
                    break;
            // at most 1 BIV + 1 GIV
            // FIXME: support more GIV
            if(phiCount > 2)
                continue;
            // loop.header->dumpAsTarget(std::cerr);
            // std::cerr << '\n';
            // loop.latch->dumpAsTarget(std::cerr);
            // std::cerr << '\n';

            std::unordered_set<Block*> body;
            if(collectLoopBody(loop.header, loop.latch, dom, cfg, body)) {
                // std::cerr << "detect body\n";
                // for(auto b : body) {
                //     b->dump(std::cerr, Noop{});
                // }
                // std::cerr << '\n';

                {
                    auto& heuristics = analysis.module().getTarget().getOptHeuristic();
                    uint32_t sum = 0;
                    bool hasFuncCall = false;
                    for(auto block : body) {
                        sum += estimateBlockSize(block, !loop.initial->isConstant() || !loop.bound->isConstant());
                        hasFuncCall |= hasCall(*block, false);
                    }
                    if(hasFuncCall || sum * heuristics.unrollBlockSize > heuristics.maxUnrollBodySize)
                        continue;
                }

                // new_loop:
                //   biv/giv
                //   loop_body: void loop_body(i, inv...)/giv = loop_body(i, giv, inv...)
                //   next
                //   cmp
                //   br cmp, new_loop, exit

                Value* giv = nullptr;
                for(auto& inst : loop.header->instructions())
                    if(inst.getInstID() == InstructionID::Phi) {
                        if(&inst != loop.inductionVar)
                            giv = &inst;
                    } else
                        break;

                // TODO
                std::unordered_set<Value*> allowedToBeUsedByOuter;
                allowedToBeUsedByOuter.insert(loop.inductionVar);
                allowedToBeUsedByOuter.insert(loop.next);
                if(giv) {
                    allowedToBeUsedByOuter.insert(giv);
                    allowedToBeUsedByOuter.insert(giv->as<PhiInst>()->incomings().at(loop.latch)->value);
                }

                bool invalidUse = false;
                for(auto block : body) {
                    for(auto& inst : block->instructions()) {
                        if(allowedToBeUsedByOuter.count(&inst))
                            continue;
                        for(auto user : inst.users()) {
                            if(body.count(user->getBlock()))
                                continue;
                            invalidUse = true;
                            break;
                        }
                    }
                    if(invalidUse)
                        break;
                }
                if(invalidUse)
                    continue;

                auto getUniqueID = [](Module& mod) {
                    auto base = String::get("cmmc_loop_body_");
                    for(int32_t id = 0;; ++id) {
                        const auto name = base.withID(id);
                        bool used = false;
                        for(auto global : mod.globals()) {
                            if(global->getSymbol() == name) {
                                used = true;
                                break;
                            }
                        }
                        if(!used)
                            return name;
                    }
                };
                auto funcType = make<FunctionType>(giv ? giv->getType() : VoidType::get(), Vector<const Type*>{});
                const auto bodyFunc = make<Function>(getUniqueID(analysis.module()), funcType);
                bodyFunc->setLinkage(Linkage::Internal);
                bodyFunc->attr().addAttr(FunctionAttribute::NoRecurse).addAttr(FunctionAttribute::LoopBody);
                analysis.module().add(bodyFunc);

                std::unordered_map<Value*, Value*> val2arg;
                val2arg.emplace(loop.inductionVar, bodyFunc->addArg(loop.inductionVar->getType()));
                if(giv) {
                    val2arg.emplace(giv, bodyFunc->addArg(giv->getType()));
                }
                for(auto block : body) {
                    for(auto& inst : block->instructions()) {
                        for(auto operand : inst.operands()) {
                            if(val2arg.count(operand))
                                continue;
                            if(operand->isConstant() || operand->isGlobal())
                                continue;
                            if(body.count(operand->getBlock()))
                                continue;
                            val2arg.emplace(operand, bodyFunc->addArg(operand->getType()));
                        }
                    }
                }
                bodyFunc->updateTypeFromArgs();

                std::unordered_map<Value*, Value*> arg2Val;
                std::vector<Value*> args;
                for(auto [k, v] : val2arg) {
                    arg2Val.emplace(v, k);
                    auto track = k->as<TrackableValue>();
                    for(auto it = track->users().begin(); it != track->users().end();) {
                        auto next = std::next(it);
                        if(body.count(it.ref()->user->getBlock())) {
                            it.ref()->resetValue(v);
                        }
                        it = next;
                    }
                }

                std::vector<Value*> callArgs;
                for(auto arg : bodyFunc->args())
                    callArgs.push_back(arg2Val.at(arg));

                bodyFunc->blocks().push_back(loop.header);
                for(auto block : body) {
                    block->setFunction(bodyFunc);
                    if(block != loop.header)
                        bodyFunc->blocks().push_back(block);
                }
                func.blocks().remove_if([&](Block* block) { return body.count(block); });
                IRBuilder builder{ analysis.module().getTarget() };
                const auto oldCond = loop.latch->getTerminator()->getOperand(0);
                const auto prob = loop.latch->getTerminator()->as<BranchInst>()->getBranchProb();
                const auto exit = loop.latch->getTerminator()->as<BranchInst>()->getFalseTarget();
                loop.latch->instructions().pop_back();
                builder.setCurrentBlock(loop.latch);
                if(giv)
                    builder.makeOp<ReturnInst>(giv->as<PhiInst>()->incomings().at(loop.latch)->value);
                else
                    builder.makeOp<ReturnInst>();

                builder.setCurrentFunction(&func);
                auto newLoop = builder.addBlock();
                for(auto it = loop.header->instructions().begin(); it != loop.header->instructions().end();) {
                    auto& inst = *it;
                    if(inst.getInstID() == InstructionID::Phi) {
                        const auto next = std::next(it);
                        inst.insertBefore(newLoop, newLoop->instructions().begin());
                        it = next;
                    } else
                        break;
                }
                for(auto pred : cfg.predecessors(loop.header)) {
                    if(pred != loop.latch)
                        resetTarget(pred->getTerminator()->as<BranchInst>(), loop.header, newLoop);
                }
                for(auto succ : cfg.successors(loop.latch)) {
                    if(succ != loop.header)
                        retargetBlock(succ, loop.latch, newLoop);
                }

                builder.setCurrentBlock(newLoop);
                const auto call = builder.makeOp<FunctionCallInst>(bodyFunc, callArgs);
                const auto next = loop.next->as<Instruction>()->clone();
                next->insertBefore(newLoop, newLoop->instructions().end());
                const auto cond = oldCond->as<Instruction>()->clone();
                cond->insertBefore(newLoop, newLoop->instructions().end());
                builder.setCurrentBlock(newLoop);
                builder.makeOp<BranchInst>(cond, prob, newLoop, exit);

                loop.inductionVar->as<PhiInst>()->removeSource(loop.latch);
                loop.inductionVar->as<PhiInst>()->addIncoming(newLoop, next);
                if(giv) {
                    giv->as<PhiInst>()->removeSource(loop.latch);
                    giv->as<PhiInst>()->addIncoming(newLoop, call);
                }
                for(auto inst : std::initializer_list<Instruction*>{ cond, next, loop.inductionVar->as<Instruction>(),
                                                                     giv->as<Instruction>() }) {
                    if(!inst)
                        continue;
                    for(auto& operand : inst->mutableOperands()) {
                        if(auto it = arg2Val.find(operand->value); it != arg2Val.end()) {
                            operand->resetValue(it->second);
                        }
                        if(operand->value == loop.next)
                            operand->resetValue(next);
                    }
                }

                for(auto val : allowedToBeUsedByOuter) {
                    if(val == loop.inductionVar || val == giv)
                        continue;
                    const auto tracked = val->as<TrackableValue>();
                    Value* rep = val == loop.next ? next : call;
                    for(auto it = tracked->users().begin(); it != tracked->users().end();) {
                        auto nextIt = std::next(it);
                        auto block = it.ref()->user->getBlock();
                        if(block != newLoop && !body.count(block)) {
                            it.ref()->resetValue(rep);
                        }
                        it = nextIt;
                    }
                }

                // bodyFunc->dump(std::cerr, Noop{});
                // if(!bodyFunc->verify(std::cerr))
                //     reportUnreachable(CMMC_LOCATION());
                modified = true;
            }
        }
        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        bool modified = false;
        while(runImpl(func, analysis)) {
            modified = true;
            analysis.invalidateFunc(func);
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopBodyExtract"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopBodyExtract);

CMMC_NAMESPACE_END

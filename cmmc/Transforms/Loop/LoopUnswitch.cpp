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

#include <cmath>
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Support/Tune.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <optional>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

// FIXME: use enable unswitch
extern Flag enableAggressive;  // NOLINT

class LoopUnswitch final : public TransformPass<Function> {
    static std::optional<bool> inferCondition(Value* src, Value* dst) {
        CompareOp cmp1, cmp2;
        Value* v1;
        intmax_t i1, i2;
        if(icmp(cmp1, any(v1), int_(i1))(MatchContext<Value>{ src })) {
            if(icmp(cmp2, exactly(v1), int_(i2))(MatchContext<Value>{ dst })) {
                if(cmp1 == CompareOp::ICmpEqual && cmp2 == CompareOp::ICmpEqual) {
                    // v1 == i1 --> v2 == i2
                    return i1 == i2;
                }
            }
        }

        return std::nullopt;
    }
    static bool runImpl(Function& func, const Loop& loop, const DominateAnalysisResult& dom, const CFGAnalysisResult& cfg,
                        Module& mod, AnalysisPassManager& analysis) {
        std::unordered_set<Block*> body;
        if(!collectLoopBody(loop.header, loop.latch, dom, cfg, body, true, true))
            return false;

        std::unordered_set<Value*> conds;
        for(auto block : body) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::ConditionalBranch)
                continue;
            const auto cond = terminator->getOperand(0);
            if(cond->isConstant())
                continue;
            if(body.count(cond->getBlock()))
                continue;
            conds.insert(cond);
        }
        if(conds.empty())
            return false;

        LoopBodyInfo bodyInfo;
        if(!extractLoopBody(func, loop, dom, cfg, mod,
                            /*independent*/ false,
                            /*pointer base*/ nullptr,
                            /*allow innermost*/ false,
                            /*allow innerloop*/ true,
                            /*only addrec*/ false,
                            /*estimate block size*/ false,
                            /*need sub-loop*/ true,
                            /*convert reduce to atomic*/ false,
                            /*duplicate cmp*/ false,
                            /*ret*/ &bodyInfo))
            return false;

        // loop { giv = func(indvar, giv) }
        // ==>
        // if(cond1) loop { giv = func(indvar, giv) }
        // if(cond2) loop { giv = func(indvar, giv) }
        // if(cond3) loop { giv = func(indvar, giv) }
        // ...
        // else loop { giv = func(indvar, giv) }

        // func.dump(std::cerr, Noop{});
        // func.dumpCFG(std::cerr);
        // std::cerr << "exit: ";
        // bodyInfo.exit->dumpAsTarget(std::cerr);
        // std::cerr << '\n';

        // for(auto cond : conds) {
        //     cond->dump(std::cerr, Noop{});
        //     std::cerr << '\n';
        // }

        const auto prob = 1.0 / static_cast<double>(conds.size() + 1);
        std::vector<std::pair<TrackableValue*, PhiInst*>> usedByOuterVals;
        IRBuilder builder{ mod.getTarget() };
        builder.setCurrentFunction(&func);
        const auto latch = builder.addBlock();
        auto makePhiForUsedByOuter = [&](TrackableValue* val) {
            bool usedByOuter = false;
            for(auto user : val->users()) {
                if(user->getBlock() != bodyInfo.loop) {
                    usedByOuter = true;
                    break;
                }
            }
            if(usedByOuter) {
                const auto newPhi = make<PhiInst>(val->getType());
                newPhi->insertBefore(latch, latch->instructions().end());
                for(auto it = val->users().begin(); it != val->users().end();) {
                    auto next = std::next(it);
                    auto ref = it.ref();
                    if(ref->user->getBlock() != bodyInfo.loop) {
                        ref->resetValue(newPhi);
                    }
                    it = next;
                }
                usedByOuterVals.emplace_back(val, newPhi);
            }
        };

        makePhiForUsedByOuter(bodyInfo.indvar);
        makePhiForUsedByOuter(bodyInfo.indvar->incomings().at(bodyInfo.loop)->value->as<TrackableValue>());
        if(bodyInfo.rec && bodyInfo.recUsedByOuter) {
            makePhiForUsedByOuter(bodyInfo.rec);
            makePhiForUsedByOuter(bodyInfo.recNext);
        }

        const auto header = builder.addBlock();
        const auto condLabel = String::get("cond");
        header->setLabel(condLabel);
        builder.setCurrentBlock(header);
        for(auto& phi : bodyInfo.loop->instructions()) {
            if(phi.getInstID() == InstructionID::Phi) {
                const auto oldPhi = phi.as<PhiInst>();
                const auto newPhi = builder.createPhi(phi.getType());
                for(auto [pred, val] : oldPhi->incomings()) {
                    if(pred != bodyInfo.loop)
                        newPhi->addIncoming(pred, val->value);
                }
                oldPhi->keepOneIncoming(bodyInfo.loop);
                oldPhi->addIncoming(header, newPhi);
            } else
                break;
        }
        const auto refPhi = header->instructions().front()->as<PhiInst>();
        for(auto [pred, val] : refPhi->incomings()) {
            resetTarget(pred->getTerminator(), bodyInfo.loop, header);
        }

        auto currentHead = header;
        auto fixLoop = [&](Block* speculatedBlock) {
            for(auto& inst : speculatedBlock->instructions()) {
                if(inst.getInstID() == InstructionID::Phi) {
                    if(header != currentHead)
                        inst.as<PhiInst>()->replaceSource(header, currentHead);
                    if(speculatedBlock != bodyInfo.loop)
                        inst.as<PhiInst>()->replaceSource(bodyInfo.loop, speculatedBlock);
                } else
                    break;
            }
            resetTarget(speculatedBlock->getTerminator(), bodyInfo.exit, latch);
            if(speculatedBlock != bodyInfo.loop)
                resetTarget(speculatedBlock->getTerminator(), bodyInfo.loop, speculatedBlock);
        };
        std::vector<std::pair<Value*, Block*>> condBlockMap;
        for(auto cond : conds) {
            builder.setCurrentBlock(currentHead);
            currentHead->setLabel(condLabel);
            const auto nextBlock = builder.addBlock();
            ReplaceMap replace;
            const auto speculatedBlock = bodyInfo.loop->clone(replace, false);
            condBlockMap.emplace_back(cond, speculatedBlock);
            func.blocks().push_back(speculatedBlock);
            for(auto [k, v] : replace)
                k->as<TrackableValue>()->replaceWithInBlock(speculatedBlock, v);
            fixLoop(speculatedBlock);
            for(auto [k, v] : usedByOuterVals)
                v->addIncoming(speculatedBlock, replace.at(k));

            builder.makeOp<BranchInst>(cond, prob, speculatedBlock, nextBlock);
            currentHead = nextBlock;
        }
        builder.setCurrentBlock(currentHead);
        builder.makeOp<BranchInst>(bodyInfo.loop);
        fixLoop(bodyInfo.loop);
        for(auto [k, v] : usedByOuterVals)
            v->addIncoming(bodyInfo.loop, k);

        builder.setCurrentBlock(latch);
        builder.makeOp<BranchInst>(bodyInfo.exit);
        retargetBlock(bodyInfo.exit, bodyInfo.loop, latch);

        const auto iteration = bodyInfo.recNext->lastOperand()->as<Function>();

        // if(!iteration->verify(std::cerr)) {
        //     iteration->dump(std::cerr, Noop{});
        //     iteration->dumpCFG(std::cerr);
        //     reportUnreachable(CMMC_LOCATION());
        // }

        // func.dump(std::cerr, Noop{});
        // if(!func.verify(std::cerr)) {
        //     func.dump(std::cerr, Noop{});
        //     func.dumpCFG(std::cerr);
        //     reportUnreachable(CMMC_LOCATION());
        // }

        while(iteration->users().useCount()) {
            const auto call = *iteration->users().begin();
            applyInline(call->getBlock(), call->asIterator(), &func, iteration);
            // func.dump(std::cerr, Noop{});
        }
        // std::cerr << "unswitched\n";
        // func.dump(std::cerr, Noop{});
        // func.dumpCFG(std::cerr);
        analysis.invalidateFunc(func);
        auto& newDom = analysis.get<DominateAnalysis>(func);
        for(uint32_t idx = 0; idx < condBlockMap.size(); ++idx) {
            auto [cond, block] = condBlockMap[idx];
            const auto val = cond->as<TrackableValue>();
            for(auto it = val->users().begin(); it != val->users().end();) {
                auto next = std::next(it);
                const auto userBlock = it.ref()->user->getBlock();
                if(newDom.dominate(block, userBlock)) {
                    it.ref()->resetValue(builder.getTrue());
                } else if(newDom.dominate(bodyInfo.loop, userBlock)) {
                    it.ref()->resetValue(builder.getFalse());
                } else {
                    for(uint32_t j = 0; j < idx; ++j) {
                        auto [cond2, block2] = condBlockMap[j];
                        if(newDom.dominate(block2, userBlock)) {
                            if(auto implied = inferCondition(cond2, cond); implied.has_value()) {
                                it.ref()->resetValue(*implied ? builder.getTrue() : builder.getFalse());
                            }
                            break;
                        }
                    }
                    for(auto j = idx + 1; j < condBlockMap.size(); ++j) {
                        auto block2 = condBlockMap[j].second;
                        if(newDom.dominate(block2, userBlock)) {
                            it.ref()->resetValue(builder.getFalse());
                            break;
                        }
                    }
                }
                it = next;
            }
        }

        return true;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        if(!enableAggressive.get())
            return false;
        if(!queryTuneOpt("loop_unswitch", 1))
            return false;

        auto& loopInfo = analysis.get<LoopAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        auto& cfg = analysis.get<CFGAnalysis>(func);
        bool modified = false;
        auto loops = loopInfo.loops;
        std::sort(loops.begin(), loops.end(),
                  [&](Loop& lhs, Loop& rhs) { return dom.getIndex(lhs.header) < dom.getIndex(rhs.header); });
        for(auto& loop : loops) {
            if(runImpl(func, loop, dom, cfg, analysis.module(), analysis)) {
                modified = true;
                break;
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopUnswitch"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopUnswitch);

CMMC_NAMESPACE_END

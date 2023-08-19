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
#include <cmmc/Analysis/PointerBaseAnalysis.hpp>
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
#include <cmmc/Support/Tune.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <initializer_list>
#include <iostream>
#include <iterator>
#include <ratio>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

static bool matchAddRec(Value* giv, Block* latch, std::unordered_set<Value*>& values) {
    if(!giv->is<PhiInst>())
        return false;
    if(!giv->as<PhiInst>()->incomings().count(latch))
        return false;
    const auto givNext = giv->as<PhiInst>()->incomings().at(latch)->value;

    if(givNext->isInstruction()) {
        Value* v2;
        if(givNext->is<PhiInst>()) {
            for(auto& [pred, val] : givNext->as<PhiInst>()->incomings()) {
                if(val->value == giv) {
                    continue;
                }
                PhiInst* base;
                if(!add(phi(base), any(v2))(MatchContext<Value>{ val->value }))
                    return false;
                if(!matchAddRec(base, pred, values))
                    return false;
                values.insert(val->value);
                values.insert(base);
            }
            values.insert(giv);
            values.insert(givNext);
            return true;
        }
        if(add(exactly(giv), any(v2))(MatchContext<Value>{ givNext })) {
            values.insert(giv);
            values.insert(givNext);
            return true;
        }
    }

    return false;
}

bool extractLoopBody(Function& func, const Loop& loop, const DominateAnalysisResult& dom, const CFGAnalysisResult& cfg,
                     Module& mod, bool independent, const PointerBaseAnalysisResult* pointerBase, bool allowInnermost,
                     bool allowInnerLoop, bool onlyAddRec, bool estimateBlockSizeForUnroll, bool needSubLoop,
                     bool convertReduceToAtomic, bool duplicateCmp, LoopBodyInfo* ret) {
    if(!allowInnermost && loop.header == loop.latch)
        return false;

    uint32_t phiCount = 0;
    for(auto& inst : loop.header->instructions())
        if(inst.getInstID() == InstructionID::Phi)
            ++phiCount;
        else
            break;
    // at most 1 BIV + 1 GIV
    // FIXME: support more GIV
    if(phiCount > 2)
        return false;

    // loop.header->dumpAsTarget(std::cerr);
    // std::cerr << '\n';
    // loop.latch->dumpAsTarget(std::cerr);
    // std::cerr << '\n';

    std::unordered_set<Block*> body;
    if(!collectLoopBody(loop.header, loop.latch, dom, cfg, body, allowInnerLoop, needSubLoop))
        return false;
    // latch -> exit
    for(auto block : body) {
        if(block == loop.latch)
            continue;
        for(auto succ : cfg.successors(block)) {
            if(!body.count(succ))
                return false;
        }
    }

    // std::cerr << "detect body\n";
    // for(auto b : body) {
    //     b->dump(std::cerr, Noop{});
    // }
    // std::cerr << '\n';

    if(estimateBlockSizeForUnroll) {
        auto& heuristics = mod.getTarget().getOptHeuristic();
        uint32_t sum = 0;
        bool hasFuncCall = false;
        for(auto block : body) {
            sum += estimateBlockSize(block, !loop.initial->isConstant() || !loop.bound->isConstant());
            hasFuncCall |= hasCall(*block, false);
        }
        if(hasFuncCall || sum * heuristics.unrollBlockSize > heuristics.maxUnrollBodySize)
            return false;
    }

    // new_loop:
    //   biv/giv
    //   loop_body: void loop_body(i, inv...)/giv = loop_body(i, giv, inv...)
    //   next
    //   cmp
    //   br cmp, new_loop, exit

    Value* giv = nullptr;
    bool givUsedByOuter = false;
    for(auto& inst : loop.header->instructions())
        if(inst.getInstID() == InstructionID::Phi) {
            if(&inst != loop.inductionVar) {
                giv = &inst;
            }
        } else
            break;
    if(giv) {
        for(auto inst : { giv, giv->as<PhiInst>()->incomings().at(loop.latch)->value }) {
            if(!inst->isInstruction())
                continue;
            for(auto user : inst->as<Instruction>()->users()) {
                if(!body.count(user->getBlock())) {
                    givUsedByOuter = true;
                    break;
                }
            }
            if(givUsedByOuter)
                break;
        }
    }
    bool givUsedByInner = false;
    Value* givAddRecInnerStep = nullptr;
    if(giv && onlyAddRec) {
        // std::cerr << "matching\n";
        std::unordered_set<Value*> values;
        if(!matchAddRec(giv, loop.latch, values))
            return false;
        for(auto inst : values) {
            for(auto user : inst->as<Instruction>()->users()) {
                if(!values.count(user) && body.count(user->getBlock())) {
                    givUsedByInner = true;
                    break;
                }
            }
        }
        if(givUsedByInner) {
            if(givUsedByOuter)
                return false;

            // The initial value of giv should be inferred from the indvar
            const auto givNext = giv->as<PhiInst>()->incomings().at(loop.latch)->value;
            Value* v2;
            if(add(exactly(giv), any(v2))(MatchContext<Value>{ givNext })) {
                // scev addrec
                if(v2->getBlock() && (v2->getBlock() == loop.header || !dom.dominate(v2->getBlock(), loop.header)))
                    return false;
                givAddRecInnerStep = v2;
            } else
                return false;
        }
        // std::cerr << "matched\n";
    }
    std::unordered_set<Value*> allowedToBeUsedByOuter;
    allowedToBeUsedByOuter.insert(loop.inductionVar);
    allowedToBeUsedByOuter.insert(loop.next);
    if(giv) {
        allowedToBeUsedByOuter.insert(giv);
        allowedToBeUsedByOuter.insert(giv->as<PhiInst>()->incomings().at(loop.latch)->value);
    }

    for(auto block : body) {
        for(auto& inst : block->instructions()) {
            if(allowedToBeUsedByOuter.count(&inst))
                continue;
            for(auto user : inst.users()) {
                if(body.count(user->getBlock()))
                    continue;
                return false;
            }
        }
    }

    if(independent) {
        std::unordered_map<Value*, uint32_t> loadStoreMap;
        for(auto b : body)
            for(auto& inst : b->instructions()) {
                if(inst.isTerminator())
                    continue;
                if(inst.getInstID() == InstructionID::Load || inst.getInstID() == InstructionID::Store) {
                    const auto ptr = inst.getOperand(0);
                    const auto base = pointerBase->lookup(ptr);
                    if(!base) {
                        return false;
                    }

                    loadStoreMap[base] |= (inst.getInstID() == InstructionID::Load ? 1 : 2);
                } else if(!isNoSideEffectExpr(inst)) {
                    return false;
                }
            }
        std::vector<std::pair<Instruction*, Instruction*>> workList;
        for(auto [k, v] : loadStoreMap) {
            if(v == 3) {
                if(convertReduceToAtomic) {
                    // match load-store pair
                    // FIXME: check pointer aliasing
                    // v0 = load ptr
                    // v1 = v0 + inc
                    // store v1, ptr
                    // ==>
                    // atomicadd ptr, inc

                    Instruction* load = nullptr;
                    for(auto b : body)
                        for(auto& inst : b->instructions()) {
                            if(inst.getInstID() == InstructionID::Load || inst.getInstID() == InstructionID::Store) {
                                const auto base = pointerBase->lookup(inst.getOperand(0));
                                if(base == k) {
                                    if(inst.getInstID() == InstructionID::Load) {
                                        if(load)
                                            return false;
                                        load = &inst;
                                    } else {
                                        if(!load)
                                            return false;
                                        const auto store = &inst;
                                        if(load->getOperand(0) == store->getOperand(0) && load->hasExactlyOneUse() &&
                                           load->getBlock() == store->getBlock()) {
                                            const auto val = store->getOperand(1);
                                            Value *loadVal = load, *rhs;
                                            if(oneUse(add(exactly(loadVal), any(rhs)))(MatchContext<Value>{ val })) {
                                                workList.emplace_back(load, store);
                                                load = nullptr;
                                            } else
                                                return false;
                                        } else
                                            return false;
                                    }
                                }
                            }
                        }
                    if(load)
                        return false;
                    continue;
                }
                return false;
            }
        }

        for(auto [load, store] : workList) {
            const auto block = load->getBlock();
            const auto ptr = store->getOperand(0);
            const auto val = store->getOperand(1)->as<Instruction>();
            const auto inc = val->getOperand(0) == load ? val->getOperand(1) : val->getOperand(0);
            const auto atomicAdd = make<AtomicAddInst>(ptr, inc);
            auto& insts = block->instructions();
            insts.erase(load->asNode());
            insts.erase(val->asNode());
            atomicAdd->insertBefore(block, store->asIterator());
            insts.erase(store->asNode());
        }
    }

    auto getUniqueID = [&] {
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
    const auto bodyFunc = make<Function>(getUniqueID(), funcType);
    bodyFunc->setLinkage(Linkage::Internal);
    bodyFunc->attr().addAttr(FunctionAttribute::NoRecurse).addAttr(FunctionAttribute::LoopBody);
    mod.add(bodyFunc);

    std::unordered_map<Value*, Value*> val2arg;
    val2arg.emplace(loop.inductionVar, bodyFunc->addArg(loop.inductionVar->getType()));
    if(giv) {
        val2arg.emplace(giv, bodyFunc->addArg(giv->getType()));
    }
    // duplicate cmp
    if(duplicateCmp)
        for(auto block : body) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::ConditionalBranch)
                continue;
            const auto cond = terminator->getOperand(0);
            if(body.count(cond->getBlock()))
                continue;
            CompareOp cmp;
            Value* v1;
            intmax_t i1;
            if(icmp(cmp, any(v1), int_(i1))(MatchContext<Value>{ cond })) {
                const auto newCond = cond->as<Instruction>()->clone();
                newCond->insertBefore(block, terminator->asIterator());
                terminator->mutableOperands().front()->resetValue(newCond);
            }
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
    IRBuilder builder{ mod.getTarget() };
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
                                                         giv ? giv->as<Instruction>() : nullptr }) {
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
        if(!val->isInstruction())
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
    if(ret) {
        ret->loop = newLoop;
        ret->indvar = loop.inductionVar->as<PhiInst>();
        ret->bound = loop.bound;
        ret->rec = (giv ? giv->as<PhiInst>() : nullptr);
        ret->recUsedByOuter = givUsedByOuter;
        ret->recUsedByInner = givUsedByInner;
        ret->recInnerStep = givAddRecInnerStep;
        ret->recNext = call;
        ret->exit = exit;
    }
    return true;
}

class LoopBodyExtract final : public TransformPass<Function> {
    static bool runImpl(Function& func, AnalysisPassManager& analysis) {
        auto& loopInfo = analysis.get<LoopAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        auto& cfg = analysis.get<CFGAnalysis>(func);
        for(auto& loop : loopInfo.loops) {
            if(extractLoopBody(func, loop, dom, cfg, analysis.module(),
                               /*independent*/ false,
                               /*pointer base*/ nullptr,
                               /*allow innermost*/ false,
                               /*allow innerloop*/ false,
                               /*only addrec*/ false,
                               /*estimate block size*/ true,
                               /*need sub-loop*/ false,
                               /*convert reduce to atomic*/ false,
                               /*duplicate cmp*/ false,
                               /*ret*/ nullptr)) {
                return true;
            }
        }
        return false;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        if(!queryTuneOpt("loop_extract", 1))
            return false;

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

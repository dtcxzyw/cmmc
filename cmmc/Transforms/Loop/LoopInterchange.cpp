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

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/Analysis/PointerBaseAnalysis.hpp>
#include <cmmc/Analysis/SCEVAnalysis.hpp>
#include <cmmc/CodeGen/DataLayout.hpp>
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
#include <cmmc/Transforms/Hyperparameters.hpp>
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

class LoopInterchange final : public TransformPass<Function> {
    static bool isInvariant(Value* val, Block* header, const DominateAnalysisResult& dom) {
        if(!val->getBlock())
            return true;
        return val->getBlock() != header && dom.dominate(val->getBlock(), header);
    }
    static bool isOnlyUsedBy(Value* val, std::initializer_list<Block*> list) {
        for(auto user : val->as<TrackableValue>()->users()) {
            if(!std::any_of(list.begin(), list.end(), [user](Block* block) { return user->getBlock() == block; }))
                return false;
        }
        return true;
    }
    static bool matchOuterLoop(Block* body, const CFGAnalysisResult& cfg, const DominateAnalysisResult& dom, Block*& header,
                               Block*& latch, Block*& preHeader, Block*& exit, Value*& initial, Value*& bound, intmax_t& step,
                               Value*& indVar, Value*& next) {
        auto& predBody = cfg.predecessors(body);
        if(predBody.size() != 2)
            return false;
        header = predBody.front() == body ? predBody.back() : predBody.front();
        auto& succBody = cfg.successors(body);
        if(succBody.size() != 2)
            return false;
        latch = succBody.front() == body ? succBody.back() : succBody.front();

        if(!(dom.dominate(header, body) && dom.dominate(header, latch)))
            return false;
        if(!(latch->instructions().size() == 2 && cfg.successors(latch).size() == 1 && cfg.successors(latch).front() == header))
            return false;
        auto& succHeader = cfg.successors(header);
        if(succHeader.size() != 2)
            return false;
        exit = succHeader.front() == body ? succHeader.back() : succHeader.front();
        next = latch->instructions().front();
        if(!add(any(indVar), int_(step))(MatchContext<Value>(next)))
            return false;
        if(std::abs(step) > maxStep)
            return false;
        auto& predHeader = cfg.predecessors(header);
        if(predHeader.size() != 2)
            return false;
        preHeader = predHeader.front() == latch ? predHeader.back() : predHeader.front();

        if(!indVar->is<PhiInst>())
            return false;
        auto indVarInst = indVar->as<PhiInst>();
        if(indVarInst->incomings().at(latch)->value != next)
            return false;
        initial = indVarInst->incomings().at(preHeader)->value;

        auto terminator = header->getTerminator()->as<BranchInst>();
        const auto cond = terminator->getOperand(0);
        CompareOp cmp;
        if(!icmp(cmp, exactly(indVar), any(bound))(MatchContext<Value>{ cond }))
            return false;
        if(body == terminator->getFalseTarget()) {
            cmp = getInvertedOp(cmp);
        }

        uint32_t phiCount = 0;
        for(auto& inst : header->instructions()) {
            if(inst.isTerminator())
                continue;
            if(inst.getInstID() == InstructionID::Phi) {
                // TODO: reduction
                if(++phiCount > 1)
                    return false;
            } else if(&inst == cond)
                continue;
            else if(isNoSideEffectExpr(inst)) {
                for(auto operand : inst.operands()) {
                    if(!isInvariant(operand, header, dom))
                        return false;
                }
            } else
                return false;
        }

        if(!isInvariant(initial, header, dom) || !isInvariant(bound, header, dom))
            return false;
        if(!isOnlyUsedBy(indVar, { header, body, latch }))
            return false;
        if(!isOnlyUsedBy(cond, { header }))
            return false;
        if(!isOnlyUsedBy(next, { header }))
            return false;

        // FIXME
        if(step != 1)
            return false;
        if(cmp != CompareOp::ICmpSignedLessThan)
            return false;
        return true;
    }

    struct Stride final {
        intmax_t strideInner;
        intmax_t strideOuter;

        Stride operator+(const Stride& rhs) const {
            return Stride{ strideInner + rhs.strideInner, strideOuter + rhs.strideOuter };
        }
        Stride operator-(const Stride& rhs) const {
            return Stride{ strideInner - rhs.strideInner, strideOuter - rhs.strideOuter };
        }
        Stride operator*(intmax_t rhs) const {
            return Stride{ strideInner * rhs, strideOuter * rhs };
        }
    };

    static Stride calcStride(Value* value, std::unordered_map<Value*, Stride>& affineExpr, const DominateAnalysisResult& dom,
                             Block* header, Value* innerIndVar, Value* outerInvVar, const DataLayout& dataLayout) {
        if(auto it = affineExpr.find(value); it != affineExpr.end())
            return it->second;
        return affineExpr[value] = calcStrideImpl(value, affineExpr, dom, header, innerIndVar, outerInvVar, dataLayout);
    }
    static Stride calcStrideImpl(Value* value, std::unordered_map<Value*, Stride>& affineExpr, const DominateAnalysisResult& dom,
                                 Block* header, Value* innerIndVar, Value* outerInvVar, const DataLayout& dataLayout) {
        if(value == innerIndVar)
            return Stride{ 1, 0 };
        if(value == outerInvVar)
            return Stride{ 0, 1 };
        if(isInvariant(value, header, dom))
            return Stride{ 0, 0 };
        MatchContext<Value> matchCtx{ value };
        Value *v1, *v2;
        if(add(any(v1), any(v2))(matchCtx)) {
            return calcStride(v1, affineExpr, dom, header, innerIndVar, outerInvVar, dataLayout) +
                calcStride(v2, affineExpr, dom, header, innerIndVar, outerInvVar, dataLayout);
        }
        intmax_t i1;
        if(mul(any(v1), int_(i1))(matchCtx)) {
            return calcStride(v1, affineExpr, dom, header, innerIndVar, outerInvVar, dataLayout) * i1;
        }

        if(value->is<GetElementPtrInst>()) {
            auto gep = value->as<GetElementPtrInst>();
            auto [c, offset] = gep->gatherOffsets(dataLayout);
            Stride res = calcStride(gep->lastOperand(), affineExpr, dom, header, innerIndVar, outerInvVar, dataLayout);
            for(auto [k, v] : offset) {
                res = res + calcStride(v, affineExpr, dom, header, innerIndVar, outerInvVar, dataLayout) * k;
            }
            return res;
        }

        // unknown
        return Stride{ 0, 0 };
    }

    static Value* cloneAndReplace(Value* val, Block* body, Block* header, const DominateAnalysisResult& dom,
                                  std::unordered_map<Value*, Value*>& rep) {
        if(auto iter = rep.find(val); iter != rep.cend())
            return iter->second;
        return rep[val] = cloneAndReplaceImpl(val, body, header, dom, rep);
    }
    static Value* cloneAndReplaceImpl(Value* val, Block* body, Block* header, const DominateAnalysisResult& dom,
                                      std::unordered_map<Value*, Value*>& rep) {
        if(isInvariant(val, header, dom))
            return val;
        const auto inst = val->as<Instruction>();
        const auto newInst = inst->clone();
        for(auto& operand : newInst->mutableOperands()) {
            const auto repVal = cloneAndReplace(operand->value, body, header, dom, rep);
            operand->resetValue(repVal);
        }
        newInst->insertBefore(body, body->instructions().end());
        return newInst;
    }

    static bool detectPatternAndSwap(const Loop& loop, const CFGAnalysisResult& cfg, const DominateAnalysisResult& dom,
                                     const PointerBaseAnalysisResult& pointerBase, const mir::Target& target) {
        // preheader
        //    |
        // header <------
        // |  |         |
        // e body <-    |
        //     |   |    |
        //     -----    |
        //     |        |
        //   latch ------
        if(loop.header != loop.latch)
            return false;

        {
            bool hasLoadStore = false;
            uint32_t phiCount = 0;
            std::unordered_map<Value*, uint32_t> loadStoreMap;
            for(auto& inst : loop.header->instructions()) {
                if(inst.isTerminator())
                    continue;
                if(inst.getInstID() == InstructionID::Phi) {
                    // TODO: reduction
                    if(++phiCount > 1) {
                        return false;
                    }
                } else if(inst.getInstID() == InstructionID::Load || inst.getInstID() == InstructionID::Store) {
                    hasLoadStore = true;
                    const auto ptr = inst.getOperand(0);
                    const auto base = pointerBase.lookup(ptr);
                    if(!base) {
                        return false;
                    }

                    loadStoreMap[base] |= (inst.getInstID() == InstructionID::Load ? 1 : 2);
                } else if(!isNoSideEffectExpr(inst)) {
                    return false;
                }
            }
            if(!hasLoadStore)
                return false;
            for(auto [k, v] : loadStoreMap) {
                if(v == 3) {
                    return false;
                }
            }
        }

        const auto body = loop.header;
        const auto innerInitial = loop.initial;
        const auto innerBound = loop.bound;
        const auto innerStep = loop.step;
        const auto innerIndVar = loop.inductionVar;
        const auto innerNext = loop.next;

        Block *header, *latch, *preHeader, *exit;
        Value* outerInitial;
        Value* outerBound;
        intmax_t outerStep;
        Value* outerIndVar;
        Value* outerNext;
        if(!matchOuterLoop(body, cfg, dom, header, latch, preHeader, exit, outerInitial, outerBound, outerStep, outerIndVar,
                           outerNext))
            return false;
        if(!isInvariant(innerInitial, header, dom) || !isInvariant(innerBound, header, dom))
            return false;
        if(!isOnlyUsedBy(innerIndVar, { body }))
            return false;
        if(!isOnlyUsedBy(innerNext, { body }))
            return false;

        // std::cerr << "outer loop: (";
        // outerInitial->dumpAsOperand(std::cerr);
        // std::cerr << ", ";
        // outerBound->dumpAsOperand(std::cerr);
        // std::cerr << ", " << outerStep << ")\n";

        // std::cerr << "inner loop: (";
        // innerInitial->dumpAsOperand(std::cerr);
        // std::cerr << ", ";
        // innerBound->dumpAsOperand(std::cerr);
        // std::cerr << ", " << innerStep << ")\n";

        // collect affine expr
        // i: outer j: inner
        // expr = C + i * stride_i + j * stride_j
        auto& dataLayout = target.getDataLayout();
        std::unordered_map<Value*, Stride> affineExpr;
        uint32_t preferIJ = 0;
        uint32_t preferJI = 0;
        for(auto& inst : body->instructions()) {
            if(inst.getInstID() == InstructionID::Load || inst.getInstID() == InstructionID::Store) {
                const auto ptr = inst.getOperand(0);
                auto stride = calcStride(ptr, affineExpr, dom, header, innerIndVar, outerIndVar, dataLayout);
                // inst.dump(std::cerr, Noop{});
                // std::cerr << " => " << stride.strideOuter << " * i + " << stride.strideInner << " * j\n";
                if(stride.strideInner > stride.strideOuter)
                    ++preferJI;
                else
                    ++preferIJ;
            }
        }

        if(preferIJ >= preferJI)
            return false;

        // std::cerr << "interchange\n";

        IRBuilder builder{ target };
        builder.setCurrentFunction(body->getFunction());
        const auto newOuterHeader = builder.addBlock();
        const auto newOuterLatch = builder.addBlock();
        const auto newInnerHeader = builder.addBlock();
        const auto newInnerLatch = builder.addBlock();
        const auto newInnerBody = builder.addBlock();
        builder.setCurrentBlock(newOuterHeader);
        const auto newOuterIndVar = builder.createPhi(innerIndVar->getType());
        newOuterIndVar->addIncoming(preHeader, innerInitial);
        for(auto& inst : header->instructions()) {
            if(!isOnlyUsedBy(&inst, { header, body, latch })) {
                const auto newInst = inst.clone();
                newInst->insertBefore(newOuterHeader, newOuterHeader->instructions().end());
                for(auto it = inst.users().begin(); it != inst.users().end();) {
                    auto next = std::next(it);
                    auto ref = it.ref();
                    auto userBlock = ref->user->getBlock();
                    if(userBlock != header && userBlock != body && userBlock != latch) {
                        ref->resetValue(newInst);
                    }
                    it = next;
                }
            }
        }
        builder.setCurrentBlock(newOuterHeader);
        builder.makeOp<BranchInst>(newInnerHeader);
        builder.setCurrentBlock(newInnerHeader);
        const auto newInnerIndVar = builder.createPhi(outerIndVar->getType());
        newInnerIndVar->addIncoming(newOuterHeader, outerInitial);
        const auto newInnerCond =
            builder.makeOp<CompareInst>(InstructionID::ICmp, CompareOp::ICmpSignedLessThan, newInnerIndVar, outerBound);
        builder.makeOp<BranchInst>(newInnerCond, header->getTerminator()->as<BranchInst>()->getBranchProb(), newInnerBody,
                                   newOuterLatch);
        builder.setCurrentBlock(newOuterLatch);
        const auto newOuterNext = builder.makeOp<BinaryInst>(InstructionID::Add, newOuterIndVar,
                                                             ConstantInteger::get(newOuterIndVar->getType(), innerStep));
        newOuterIndVar->addIncoming(newOuterLatch, newOuterNext);
        const auto newOuterCond =
            builder.makeOp<CompareInst>(InstructionID::ICmp, CompareOp::ICmpSignedLessThan, newOuterNext, innerBound);
        builder.makeOp<BranchInst>(newOuterCond, body->getTerminator()->as<BranchInst>()->getBranchProb(), newOuterHeader, exit);
        builder.setCurrentBlock(newInnerLatch);
        const auto newInnerNext = builder.makeOp<BinaryInst>(InstructionID::Add, newInnerIndVar,
                                                             ConstantInteger::get(newInnerIndVar->getType(), outerStep));
        newInnerIndVar->addIncoming(newInnerLatch, newInnerNext);
        builder.makeOp<BranchInst>(newInnerHeader);
        builder.setCurrentBlock(newInnerBody);

        std::unordered_map<Value*, Value*> repMap;
        repMap.emplace(innerIndVar, newOuterIndVar);
        repMap.emplace(outerIndVar, newInnerIndVar);
        for(auto& inst : body->instructions()) {
            if(inst.getInstID() == InstructionID::Load || inst.getInstID() == InstructionID::Store) {
                cloneAndReplace(&inst, newInnerBody, header, dom, repMap);
            }
        }
        builder.setCurrentBlock(newInnerBody);
        builder.makeOp<BranchInst>(newInnerLatch);

        // fix targets and phis
        resetTarget(preHeader->getTerminator()->as<BranchInst>(), header, newOuterHeader);
        retargetBlock(exit, header, newOuterLatch);

        return true;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& loopInfo = analysis.get<LoopAnalysis>(func);
        auto& cfg = analysis.get<CFGAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        auto& pointerBase = analysis.get<PointerBaseAnalysis>(func);

        for(auto& loop : loopInfo.loops) {
            if(detectPatternAndSwap(loop, cfg, dom, pointerBase, analysis.module().getTarget()))
                return true;
        }

        return false;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopInterchange"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopInterchange);

CMMC_NAMESPACE_END

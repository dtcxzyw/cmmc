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

#include "cmmc/IR/Block.hpp"
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/IntegerRange.hpp>
#include <cmmc/Analysis/IntegerRangeAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <limits>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

class ModuloOpt final : public TransformPass<Function> {
    static constexpr uint32_t depth = 5;

    static void collectSum(Value* val, Instruction* ctx, std::vector<Value*>& components, IntegerRange& r,
                           const IntegerRangeAnalysisResult& range, const DominateAnalysisResult& dom, intmax_t mod,
                           bool checkOverflow, bool allowCrossSRem, bool& hasCross) {
        Value *v1, *v2;
        if(add(any(v1), any(v2))(MatchContext<Value>{ val })) {
            auto tryCollect = [&](bool crossLhs, bool crossRhs) {
                const auto size = components.size();
                const auto oldRange = r;
                const auto hasCrossBackup = hasCross;
                collectSum(v1, ctx, components, r, range, dom, mod, checkOverflow, crossLhs, hasCross);
                collectSum(v2, ctx, components, r, range, dom, mod, checkOverflow, crossRhs, hasCross);
                if(!checkOverflow || r.isNoSignedOverflow())
                    return true;

                components.erase(components.begin() + static_cast<ptrdiff_t>(size), components.end());
                r = oldRange;
                hasCross = hasCrossBackup;
                return false;
            };

            if(tryCollect(true, true))
                return;
            if(tryCollect(true, false))
                return;
            if(tryCollect(false, true))
                return;
        }
        intmax_t i1;
        if(allowCrossSRem && srem(any(v1), int_(i1))(MatchContext<Value>{ val }) && i1 == mod) {
            const auto r2 = range.query(v1, dom, ctx, depth);
            const auto newRange = r + r2;
            if(!checkOverflow || newRange.isNoSignedOverflow()) {
                hasCross = true;
                collectSum(v1, ctx, components, r, range, dom, mod, checkOverflow, true, hasCross);
                return;
            }
        }

        components.push_back(val);
        r = r + range.query(val, dom, ctx, depth);
    }
    static bool mergeSum(Block* block, const IntegerRangeAnalysisResult& range, const DominateAnalysisResult& dom,
                         IRBuilder& builder) {
        auto modified = reduceBlock(builder, *block, [&](Instruction* inst) -> Value* {
            Value *val, *mod;
            intmax_t ival;
            if(srem(oneUse(any(val)), capture(int_(ival), mod))(MatchContext<Value>{ inst }) && val->isInstruction() &&
               ival != 0) {
                const auto oldRange = range.query(val, dom, inst, depth);
                bool checkOverflow = (1LL << 32) % ival != 0;
                if(!checkOverflow || oldRange.isNoSignedOverflow()) {
                    IntegerRange r(static_cast<intmax_t>(0));
                    std::vector<Value*> components;
                    bool hasCross;
                    collectSum(val, inst, components, r, range, dom, ival, checkOverflow, true, hasCross);
                    assert(!checkOverflow || r.isNoSignedOverflow());
                    if(hasCross) {
                        Value* sum = components.front();
                        for(uint32_t i = 1; i < components.size(); ++i)
                            sum = builder.makeOp<BinaryInst>(InstructionID::Add, sum, components[i]);
                        return builder.makeOp<BinaryInst>(InstructionID::SRem, sum, mod);
                    }
                }
            }

            return nullptr;
        });
        return modified;
    }

    // int32_t __cmmc_mulmod(int32_t a, int32_t b, int32_t m)
    // returns a * b % m
    // requires -m < a < m, m > 1, b > 0
    static Function* getMulMod32(Module& mod) {
        for(auto global : mod.globals())
            if(global->getSymbol().prefix() == "__cmmc_mulmod") {
                return global->as<Function>();
            }

        const auto i32 = IntegerType::get(32);
        const auto i1 = IntegerType::get(1);
        const auto funcType = make<FunctionType>(i32, Vector<const Type*>{ i32, i32, i32 });
        const auto func = make<Function>(String::get("__cmmc_mulmod"), funcType, Intrinsic::none);
        func->setLinkage(Linkage::Internal);
        const auto argA = func->addArg(i32);
        const auto argB = func->addArg(i32);
        const auto argM = func->addArg(i32);

        func->attr()
            .addAttr(FunctionAttribute::NoMemoryRead)
            .addAttr(FunctionAttribute::NoMemoryWrite)
            .addAttr(FunctionAttribute::NoRecurse)
            .addAttr(FunctionAttribute::NoSideEffect)
            .addAttr(FunctionAttribute::Stateless)
            .addAttr(FunctionAttribute::Builtin);

        IRBuilder builder{ mod.getTarget() };
        builder.setCurrentFunction(func);
        auto entryBlock = builder.addBlock();
        auto loopHeader = builder.addBlock();
        auto loopInc = builder.addBlock();
        auto loopLatch = builder.addBlock();
        auto exitBlock = builder.addBlock();

        builder.setCurrentBlock(entryBlock);
        builder.makeOp<BranchInst>(loopHeader);

        builder.setCurrentBlock(loopHeader);
        auto a = builder.createPhi(i32);
        auto b = builder.createPhi(i32);
        auto res = builder.createPhi(i32);

        const auto lowbit = builder.makeOp<CastInst>(InstructionID::UnsignedTrunc, i1, b);
        builder.makeOp<BranchInst>(lowbit, 0.5, loopInc, loopLatch);

        builder.setCurrentBlock(loopInc);
        const auto next = builder.makeOp<BinaryInst>(InstructionID::Add, res, a);
        const auto rem = builder.makeOp<BinaryInst>(InstructionID::SRem, next, argM);
        builder.makeOp<BranchInst>(loopLatch);

        builder.setCurrentBlock(loopLatch);
        const auto nextRes = builder.createPhi(i32);
        const auto zero = ConstantInteger::get(i32, 0);
        const auto one = ConstantInteger::get(i32, 1);
        const auto nextB = builder.makeOp<BinaryInst>(InstructionID::LShr, b, one);
        const auto nextA = builder.makeOp<BinaryInst>(InstructionID::Shl, a, one);
        const auto remA = builder.makeOp<BinaryInst>(InstructionID::SRem, nextA, argM);
        const auto cond = builder.makeOp<CompareInst>(InstructionID::ICmp, CompareOp::ICmpNotEqual, nextB, zero);
        builder.makeOp<BranchInst>(cond, defaultLoopProb, loopHeader, exitBlock);

        builder.setCurrentBlock(exitBlock);
        builder.makeOp<ReturnInst>(nextRes);

        // update phi nodes
        a->addIncoming(entryBlock, argA);
        a->addIncoming(loopLatch, remA);

        b->addIncoming(entryBlock, argB);
        b->addIncoming(loopLatch, nextB);

        res->addIncoming(entryBlock, zero);
        res->addIncoming(loopLatch, nextRes);

        nextRes->addIncoming(loopHeader, res);
        nextRes->addIncoming(loopInc, rem);

        mod.add(func);
        return func;
    }

    static bool foldAddRecSRem(const IntegerRangeAnalysisResult& range, const DominateAnalysisResult& dom,
                               const CFGAnalysisResult& cfg, const LoopAnalysisResult& loopInfo, IRBuilder& builder,
                               Module& mod) {
        bool modified = false;
        for(auto& loop : loopInfo.loops) {
            if(loop.header != loop.latch)
                continue;
            if(loop.step != 1)
                continue;
            // TODO
            if(cfg.predecessors(loop.header).size() != 2)
                continue;
            const auto initial = loop.initial;
            const auto end = loop.bound;
            // trip count = end - initial

            for(auto& inst : loop.header->instructions()) {
                PhiInst* rec;
                Value *inc, *rem;

                if(srem(add(phi(rec), any(inc)), any(rem))(MatchContext<Value>{ &inst })) {
                    if(inst.getType()->as<IntegerType>()->getBitwidth() != 32)
                        continue;
                    if(rec->getBlock() != loop.header)
                        continue;
                    if(rec->incomings().at(loop.header)->value != &inst)
                        continue;
                    if(inc->getBlock() != nullptr &&
                       (inc->getBlock() == loop.header || !dom.dominate(inc->getBlock(), loop.header)))
                        continue;
                    // FIXME
                    bool invalid = false;
                    for(auto& [pred, val] : rec->incomings()) {
                        if(pred == loop.header) {
                            if(val->value != &inst) {
                                invalid = true;
                                break;
                            }
                        } else if(!cint_(0)(MatchContext<Value>{ val->value })) {
                            invalid = true;
                            break;
                        }
                    }
                    if(invalid)
                        continue;
                    const auto remRange = range.query(rem, dom, &inst, depth);
                    const auto incRange = range.query(inc, dom, &inst, depth);
                    if(!((remRange + remRange).isNoSignedOverflow()) && incRange.isPositive())
                        continue;

                    builder.setInsertPoint(loop.header, inst.asIterator());
                    // always positive
                    const auto tripCount = builder.makeOp<BinaryInst>(InstructionID::Sub, end, initial);
                    if(mod.getTarget().getOptHeuristic().registerLength == 64) {
                        // O(1)
                        const auto i64 = IntegerType::get(64);
                        const auto inc64 = builder.makeOp<CastInst>(InstructionID::SExt, i64, inc);
                        const auto tripCount64 = builder.makeOp<CastInst>(InstructionID::SExt, i64, tripCount);
                        const auto rem64 = builder.makeOp<CastInst>(InstructionID::SExt, i64, rem);
                        const auto res64 = builder.makeOp<BinaryInst>(
                            InstructionID::SRem, builder.makeOp<BinaryInst>(InstructionID::Mul, inc64, tripCount64), rem64);
                        const auto res32 = builder.makeOp<CastInst>(InstructionID::SignedTrunc, inst.getType(), res64);
                        inst.replaceWith(res32);
                        modified = true;
                    } else {
                        // O(log(n))
                        const auto func = getMulMod32(mod);
                        const auto a = builder.makeOp<BinaryInst>(InstructionID::SRem, tripCount, rem);
                        const auto call = builder.makeOp<FunctionCallInst>(func, std::vector<Value*>{ a, inc, rem });
                        inst.replaceWith(call);
                        modified = true;
                    }
                }
            }
        }
        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& range = analysis.get<IntegerRangeAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        auto& cfg = analysis.get<CFGAnalysis>(func);
        auto& loop = analysis.get<LoopAnalysis>(func);
        bool modified = false;

        IRBuilder builder{ analysis.module().getTarget() };
        for(auto block : func.blocks()) {
            modified |= mergeSum(block, range, dom, builder);
        }
        modified |= foldAddRecSRem(range, dom, cfg, loop, builder, analysis.module());

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ModuloOpt"sv;
    }
};

CMMC_TRANSFORM_PASS(ModuloOpt);

CMMC_NAMESPACE_END

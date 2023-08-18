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
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Bits.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <limits>

CMMC_NAMESPACE_BEGIN

class FinalValueReplacement final : public TransformPass<Function> {
    static bool captureSCEV(Instruction& inst, const Loop& loop, const DominateAnalysisResult& dom, InstructionID op,
                            Value*& initial, Value*& rhsInvariant) {
        PhiInst* phiInst = nullptr;
        if(inst.getInstID() == op && binop(phi(phiInst), any(rhsInvariant))(MatchContext<Value>{ &inst })) {
            initial = nullptr;
            for(auto& [pred, operand] : phiInst->incomings()) {
                if(pred == loop.latch) {
                    if(operand->value != &inst)
                        return false;
                } else if(initial) {
                    return false;
                } else
                    initial = operand->value;
            }

            return !(rhsInvariant->getBlock() &&
                     !(rhsInvariant->getBlock() != loop.header && dom.dominate(rhsInvariant->getBlock(), loop.header)));
        }
        return false;
    }

    static bool hasOuterUse(const Loop& loop, TrackableValue* trackable) {
        for(auto iter = trackable->users().begin(); iter != trackable->users().end();) {
            const auto nextIter = std::next(iter);

            if(iter.ref()->user->getBlock() != loop.header)
                return true;

            iter = nextIter;
        }
        return false;
    }

    static bool replaceOuterUse(const Loop& loop, TrackableValue* trackable, Value* rep, intmax_t offset) {
        bool modified = false;

        for(auto iter = trackable->users().begin(); iter != trackable->users().end();) {
            const auto nextIter = std::next(iter);
            const auto userBlock = iter.ref()->user->getBlock();

            if(userBlock != loop.header) {
                if(offset) {
                    if(rep->is<ConstantInteger>()) {
                        const auto val = rep->as<ConstantInteger>()->getSignExtended();
                        const auto offsetVal = ConstantInteger::get(rep->getType(), val + offset);
                        iter.ref()->resetValue(offsetVal);
                        rep = offsetVal;
                        offset = 0;
                    } else {
                        // FIXME: create new blocks/create add inst after rep
                        if(iter.ref()->user->getInstID() != InstructionID::Phi) {
                            const auto offsetVal = ConstantInteger::get(rep->getType(), offset);
                            const auto val = make<BinaryInst>(InstructionID::Add, rep, offsetVal);
                            val->insertBefore(userBlock, iter.ref()->user->asIterator());
                            iter.ref()->resetValue(val);
                        }
                    }
                } else {
                    iter.ref()->resetValue(rep);
                }
                modified = true;
            }

            iter = nextIter;
        }
        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& loopInfo = analysis.get<LoopAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);

        bool modified = false;
        for(auto& loop : loopInfo.loops) {
            // FIXME
            if(loop.header != loop.latch)
                continue;
            if(loop.step != 1 && loop.step != -1)
                continue;
            modified |= replaceOuterUse(loop, loop.inductionVar->as<TrackableValue>(), loop.bound, -loop.step);
            const auto next = loop.next;
            if(!next->is<TrackableValue>())
                continue;
            modified |= replaceOuterUse(loop, next->as<TrackableValue>(), loop.bound, 0);

            // TODO
            if(cint_(0)(MatchContext<Value>{ loop.initial })) {
                for(auto& inst : loop.latch->instructions()) {
                    Value *v1, *v2;
                    if(captureSCEV(inst, loop, dom, InstructionID::SDiv, v1, v2)) {
                        intmax_t i2;
                        if(hasOuterUse(loop, &inst) && int_(i2)(MatchContext<Value>{ v2 }) && i2 > 1 &&
                           isPowerOf2(static_cast<size_t>(i2)) && loop.bound->getType()->isSame(inst.getType())) {
                            IRBuilder builder{ analysis.module().getTarget() };
                            builder.setInsertPoint(loop.latch, inst.asIterator());

                            auto maxv = static_cast<intmax_t>((1LL << (v2->getType()->as<IntegerType>()->getBitwidth() - 1)) - 1);
                            int32_t bound1 = 0;
                            while(maxv) {
                                ++bound1;
                                maxv /= i2;
                            }
                            auto minv = static_cast<intmax_t>(-(1LL << (v2->getType()->as<IntegerType>()->getBitwidth() - 1)));
                            int32_t bound2 = 0;
                            while(minv) {
                                ++bound2;
                                minv /= i2;
                            }
                            if(bound1 != bound2)
                                continue;

                            const auto shift = builder.makeOp<BinaryInst>(
                                InstructionID::Mul, loop.bound,
                                ConstantInteger::get(loop.bound->getType(), ilog2(static_cast<size_t>(i2))));
                            const auto divisor =
                                builder.makeOp<BinaryInst>(InstructionID::Shl, ConstantInteger::get(shift->getType(), 1), shift);
                            const auto div = builder.makeOp<BinaryInst>(InstructionID::SDiv, v1, divisor);
                            const auto cond =
                                builder.makeOp<CompareInst>(InstructionID::ICmp, CompareOp::ICmpSignedLessThan, loop.bound,
                                                            ConstantInteger::get(loop.bound->getType(), bound1));
                            const auto finalDiv = builder.makeOp<SelectInst>(cond, div, ConstantInteger::get(div->getType(), 0));
                            replaceOuterUse(loop, &inst, finalDiv, 0);
                            modified = true;
                        }
                    }
                }
            }
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "FinalValueReplacement"sv;
    }
};

CMMC_TRANSFORM_PASS(FinalValueReplacement);

CMMC_NAMESPACE_END

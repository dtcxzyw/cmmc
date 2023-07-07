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
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/IntegerRangeAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <limits>

CMMC_NAMESPACE_BEGIN

class RangeAwareArithReduce final : public TransformPass<Function> {
    static bool runOnBlock(IRBuilder& builder, const DominateAnalysisResult& dom, Block& block, const mir::Target& target,
                           const IntegerRangeAnalysisResult& rangeAnalysis) {
        CMMC_UNUSED(target);
        bool modified = false;
        constexpr uint32_t depth = 8;
        const auto ret = reduceBlock(builder, block, [&](Instruction* inst) -> Value* {
            const auto type = inst->getType();
            if(!type->isInteger())
                return nullptr;
            for(auto operand : inst->operands())
                if(!operand->getType()->isInteger())
                    return nullptr;
            auto range = rangeAnalysis.query(inst, dom, inst, depth);
            if(auto c = range.inferConstant())
                return ConstantInteger::get(inst->getType(), *c);

            auto foldCmp = [&](CompareOp cmp, Value* v1, Value* v2) -> Value* {
                auto lhs = rangeAnalysis.query(v1, dom, inst, depth);
                auto rhs = rangeAnalysis.query(v2, dom, inst, depth);

                switch(cmp) {
                    case CompareOp::ICmpEqual: {
                        if(!lhs.intersectWith(rhs)) {
                            return builder.getFalse();
                        }
                        break;
                    }
                    case CompareOp::ICmpNotEqual: {
                        if(!lhs.intersectWith(rhs)) {
                            return builder.getTrue();
                        }
                        break;
                    }
                    case CompareOp::ICmpSignedLessThan: {
                        if(lhs.maxSignedValue() < rhs.minSignedValue())
                            return builder.getTrue();
                        if(lhs.minSignedValue() >= rhs.maxSignedValue())
                            return builder.getFalse();

                        break;
                    }
                    case CompareOp::ICmpSignedLessEqual: {
                        if(lhs.maxSignedValue() <= rhs.minSignedValue())
                            return builder.getTrue();
                        if(lhs.minSignedValue() > rhs.maxSignedValue())
                            return builder.getFalse();
                        break;
                    }
                    case CompareOp::ICmpSignedGreaterThan: {
                        if(lhs.minSignedValue() > rhs.maxSignedValue())
                            return builder.getTrue();
                        if(lhs.maxSignedValue() <= rhs.minSignedValue())
                            return builder.getFalse();
                        break;
                    }
                    case CompareOp::ICmpSignedGreaterEqual: {
                        if(lhs.minSignedValue() >= rhs.maxSignedValue())
                            return builder.getTrue();
                        if(lhs.maxSignedValue() < rhs.minSignedValue())
                            return builder.getFalse();
                        break;
                    }
                    case CompareOp::ICmpUnsignedLessThan: {
                        if(lhs.maxUnsignedValue() < rhs.minUnsignedValue())
                            return builder.getTrue();
                        if(lhs.minUnsignedValue() >= rhs.maxUnsignedValue())
                            return builder.getFalse();

                        break;
                    }
                    case CompareOp::ICmpUnsignedLessEqual: {
                        if(lhs.maxUnsignedValue() <= rhs.minUnsignedValue())
                            return builder.getTrue();
                        if(lhs.minUnsignedValue() > rhs.maxUnsignedValue())
                            return builder.getFalse();
                        break;
                    }
                    case CompareOp::ICmpUnsignedGreaterThan: {
                        if(lhs.minUnsignedValue() > rhs.maxUnsignedValue())
                            return builder.getTrue();
                        if(lhs.maxUnsignedValue() <= rhs.minUnsignedValue())
                            return builder.getFalse();
                        break;
                    }
                    case CompareOp::ICmpUnsignedGreaterEqual: {
                        if(lhs.minUnsignedValue() >= rhs.maxUnsignedValue())
                            return builder.getTrue();
                        if(lhs.maxUnsignedValue() < rhs.minUnsignedValue())
                            return builder.getFalse();
                        break;
                    }
                    default:
                        break;
                }
                return nullptr;
            };

            MatchContext<Value> matchCtx{ inst };

            CompareOp cmp;
            Value *v1, *v2, *v3, *v4;

            if(icmp(cmp, any(v1), any(v2))(matchCtx)) {
                if(auto val = foldCmp(cmp, v1, v2))
                    return val;
            }

            if(srem(any(v1), any(v2))(matchCtx)) {
                auto rhs = rangeAnalysis.query(v2, dom, inst, depth);
                auto self = rangeAnalysis.query(inst, dom, inst, depth);
                if(rhs.isPositive() && self.isNonNegative()) {
                    return builder.makeOp<BinaryInst>(InstructionID::URem, v1, v2);
                }
            }

            if(icmp(cmp, oneUse(select(any(v1), any(v2), any(v3))), any(v4))(matchCtx)) {
                auto trueCmp = foldCmp(cmp, v2, v4);
                auto falseCmp = foldCmp(cmp, v3, v4);

                if(trueCmp || falseCmp) {
                    if(!trueCmp)
                        trueCmp = builder.makeOp<CompareInst>(InstructionID::ICmp, cmp, v2, v4);
                    if(!falseCmp)
                        falseCmp = builder.makeOp<CompareInst>(InstructionID::ICmp, cmp, v3, v4);
                    return builder.makeOp<SelectInst>(v1, trueCmp, falseCmp);
                }
            }

            return nullptr;
        });
        return ret || modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& rangeAnalysis = analysis.get<IntegerRangeAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        const auto& target = analysis.module().getTarget();
        IRBuilder builder{ target };
        bool modified = false;
        for(auto block : func.blocks()) {
            modified |= runOnBlock(builder, dom, *block, target, rangeAnalysis);
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "RangeAwareArithReduce"sv;
    }
};

CMMC_TRANSFORM_PASS(RangeAwareArithReduce);

CMMC_NAMESPACE_END

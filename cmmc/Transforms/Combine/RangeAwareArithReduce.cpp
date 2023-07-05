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
    static bool runOnBlock(IRBuilder& builder, Block& block, const mir::Target& target,
                           const IntegerRangeAnalysisResult& rangeAnalysis) {
        CMMC_UNUSED(target);
        bool modified = false;
        const auto i64 = IntegerType::get(64);
        const auto ret = reduceBlock(builder, block, [&](Instruction* inst) -> Value* {
            const auto type = inst->getType();
            if(!type->isInteger() || type->isSame(i64))
                return nullptr;
            auto range = rangeAnalysis.query(inst);
            if(auto c = range.inferConstant())
                return ConstantInteger::get(inst->getType(), *c);

            MatchContext<Value> matchCtx{ inst };

            CompareOp cmp;
            Value *v1, *v2;

            if(scmp(cmp, any(v1), any(v2))(matchCtx) && !v1->getType()->isSame(i64)) {
                auto lhs = rangeAnalysis.query(v1);
                auto rhs = rangeAnalysis.query(v2);

                switch(cmp) {
                    case CompareOp::Equal: {
                        if(!lhs.intersectWith(rhs)) {
                            return builder.getFalse();
                        }
                        break;
                    }
                    case CompareOp::NotEqual: {
                        if(!lhs.intersectWith(rhs)) {
                            return builder.getTrue();
                        }
                        break;
                    }
                    case CompareOp::LessThan: {
                        if(lhs.maxSignedValue() < rhs.minSignedValue())
                            return builder.getTrue();
                        if(lhs.minSignedValue() >= rhs.maxSignedValue())
                            return builder.getFalse();

                        break;
                    }
                    case CompareOp::LessEqual: {
                        if(lhs.maxSignedValue() <= rhs.minSignedValue())
                            return builder.getTrue();
                        if(lhs.minSignedValue() > rhs.maxSignedValue())
                            return builder.getFalse();
                        break;
                    }
                    case CompareOp::GreaterThan: {
                        if(lhs.minSignedValue() > rhs.maxSignedValue())
                            return builder.getTrue();
                        if(lhs.maxSignedValue() <= rhs.minSignedValue())
                            return builder.getFalse();
                        break;
                    }
                    case CompareOp::GreaterEqual: {
                        if(lhs.minSignedValue() >= rhs.maxSignedValue())
                            return builder.getTrue();
                        if(lhs.maxSignedValue() < rhs.minSignedValue())
                            return builder.getFalse();
                        break;
                    }
                    default:
                        break;
                }
            }

            if(ucmp(cmp, any(v1), any(v2))(matchCtx) && !v1->getType()->isSame(i64)) {
                auto lhs = rangeAnalysis.query(v1);
                auto rhs = rangeAnalysis.query(v2);

                switch(cmp) {
                    case CompareOp::Equal: {
                        if(!lhs.intersectWith(rhs)) {
                            return builder.getFalse();
                        }
                        break;
                    }
                    case CompareOp::NotEqual: {
                        if(!lhs.intersectWith(rhs)) {
                            return builder.getTrue();
                        }
                        break;
                    }
                    case CompareOp::LessThan: {
                        if(lhs.maxUnsignedValue() < rhs.minUnsignedValue())
                            return builder.getTrue();
                        if(lhs.minUnsignedValue() >= rhs.maxUnsignedValue())
                            return builder.getFalse();

                        break;
                    }
                    case CompareOp::LessEqual: {
                        if(lhs.maxUnsignedValue() <= rhs.minUnsignedValue())
                            return builder.getTrue();
                        if(lhs.minUnsignedValue() > rhs.maxUnsignedValue())
                            return builder.getFalse();
                        break;
                    }
                    case CompareOp::GreaterThan: {
                        if(lhs.minUnsignedValue() > rhs.maxUnsignedValue())
                            return builder.getTrue();
                        if(lhs.maxUnsignedValue() <= rhs.minUnsignedValue())
                            return builder.getFalse();
                        break;
                    }
                    case CompareOp::GreaterEqual: {
                        if(lhs.minUnsignedValue() >= rhs.maxUnsignedValue())
                            return builder.getTrue();
                        if(lhs.maxUnsignedValue() < rhs.minUnsignedValue())
                            return builder.getFalse();
                        break;
                    }
                    default:
                        break;
                }
            }

            return nullptr;
        });
        return ret || modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& rangeAnalysis = analysis.get<IntegerRangeAnalysis>(func);
        const auto& target = analysis.module().getTarget();
        IRBuilder builder{ target };
        bool modified = false;
        for(auto block : func.blocks()) {
            modified |= runOnBlock(builder, *block, target, rangeAnalysis);
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "RangeAwareArithReduce"sv;
    }
};

CMMC_TRANSFORM_PASS(RangeAwareArithReduce);

CMMC_NAMESPACE_END

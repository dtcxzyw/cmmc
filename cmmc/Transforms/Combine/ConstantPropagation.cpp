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

// 1 + 2 -> 3
// 2 < 1 -> false

#include <cmath>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <limits>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class ConstantPropagation final : public TransformPass<Function> {
    static bool reduceConstantPhis(Block& block) {
        bool modified = false;
        for(auto& inst : block.instructions()) {
            if(inst.getInstID() == InstructionID::Phi) {
                // TODO: handle undef
                const auto phi = inst.as<PhiInst>();
                Value* value = nullptr;
                bool unique = true;
                for(auto [pred, val] : phi->incomings()) {
                    // self reference
                    if(val->value == &inst)
                        continue;
                    if(!value)
                        value = val->value;
                    else if(value != val->value) {
                        unique = false;
                        break;
                    }
                }
                if(value && unique)
                    modified |= inst.replaceWith(value);
            } else
                break;
        }
        return modified;
    }

    static bool runOnBlock(IRBuilder& builder, Block& block) {
        return reduceBlock(builder, block, [&](Instruction* inst) -> Value* {
            intmax_t i1, i2;
            uintmax_t u1, u2;
            double f1, f2;
            auto makeInt = [&](Instruction* mappedInst, intmax_t val) {
                return ConstantInteger::get(mappedInst->getType(), val);
            };
            auto makeUInt = [&](Instruction* mappedInst, uintmax_t val) {
                return makeInt(mappedInst, static_cast<intmax_t>(val));
            };
            auto makeFP = [&](Instruction* mappedInst, double val) {
                return make<ConstantFloatingPoint>(mappedInst->getType(), val);
            };

            for(auto operand : inst->operands())
                if(!operand->isConstant())
                    return nullptr;

            if(inst->isIntegerOp()) {
                MatchContext<Value> matchCtx{ inst };
                if(neg(int_(i1))(matchCtx))
                    return makeInt(inst, -i1);
                if(abs(int_(i1))(matchCtx))
                    return makeInt(inst, std::abs(i1));
                if(add(int_(i1), int_(i2))(matchCtx))
                    return makeInt(inst, i1 + i2);
                if(sub(int_(i1), int_(i2))(matchCtx))
                    return makeInt(inst, i1 - i2);
                if(mul(int_(i1), int_(i2))(matchCtx))
                    return makeInt(inst, i1 * i2);
                if(sdiv(int_(i1), int_(i2))(matchCtx) && i2) {
                    /* Fuck you X86*/
                    if(i1 == std::numeric_limits<intmax_t>::min() && i2 == -1)
                        return makeInt(inst, i1);
                    return makeInt(inst, i1 / i2);
                }
                if(udiv(uint_(u1), uint_(u2))(matchCtx) && u2)
                    return makeUInt(inst, u1 / u2);
                if(srem(int_(i1), int_(i2))(matchCtx) && i2)
                    return makeInt(inst, i1 % i2);
                if(urem(uint_(u1), uint_(u2))(matchCtx) && u2)
                    return makeUInt(inst, u1 % u2);
                if(shl(uint_(u1), uint_(u2))(matchCtx))
                    return makeUInt(inst, u1 << u2);
                if(lshr(uint_(u1), uint_(u2))(matchCtx))
                    return makeUInt(inst, u1 >> u2);
                if(ashr(int_(i1), uint_(u2))(matchCtx))
                    return makeInt(inst, i1 >> u2);
                if(smin(int_(i1), int_(i2))(matchCtx))
                    return makeInt(inst, std::min(i1, i2));
                if(smax(int_(i1), int_(i2))(matchCtx))
                    return makeInt(inst, std::max(i1, i2));
                if(and_(uint_(u1), uint_(u2))(matchCtx))
                    return makeUInt(inst, u1 & u2);
                if(or_(uint_(u1), uint_(u2))(matchCtx))
                    return makeUInt(inst, u1 | u2);
                if(xor_(uint_(u1), uint_(u2))(matchCtx))
                    return makeUInt(inst, u1 ^ u2);
            } else if(inst->isFloatingPointOp()) {
                MatchContext<Value> matchCtx{ inst };
                double f3;

                if(fneg(fp_(f1))(matchCtx))
                    return makeFP(inst, -f1);
                if(fadd(fp_(f1), fp_(f2))(matchCtx))
                    return makeFP(inst, f1 + f2);
                if(fsub(fp_(f1), fp_(f2))(matchCtx))
                    return makeFP(inst, f1 - f2);
                if(fmul(fp_(f1), fp_(f2))(matchCtx))
                    return makeFP(inst, f1 * f2);
                if(fdiv(fp_(f1), fp_(f2))(matchCtx))
                    return makeFP(inst, f1 / f2);
                if(fma_(fp_(f1), fp_(f2), fp_(f3))(matchCtx))
                    return makeFP(inst, fma(f1, f2, f3));
            } else if(inst->isCompareOp()) {
                const auto doCompare = [&](CompareOp cmp, intmax_t lhs, intmax_t rhs) {
                    switch(cmp) {
                        case CompareOp::ICmpEqual:
                            return lhs == rhs;
                        case CompareOp::ICmpNotEqual:
                            return lhs != rhs;
                        case CompareOp::ICmpSignedLessThan:
                            return lhs < rhs;
                        case CompareOp::ICmpSignedLessEqual:
                            return lhs <= rhs;
                        case CompareOp::ICmpSignedGreaterThan:
                            return lhs > rhs;
                        case CompareOp::ICmpSignedGreaterEqual:
                            return lhs >= rhs;
                        case CompareOp::ICmpUnsignedLessThan:
                            return static_cast<uintmax_t>(lhs) < static_cast<uintmax_t>(rhs);
                        case CompareOp::ICmpUnsignedLessEqual:
                            return static_cast<uintmax_t>(lhs) <= static_cast<uintmax_t>(rhs);
                        case CompareOp::ICmpUnsignedGreaterThan:
                            return static_cast<uintmax_t>(lhs) > static_cast<uintmax_t>(rhs);
                        case CompareOp::ICmpUnsignedGreaterEqual:
                            return static_cast<uintmax_t>(lhs) >= static_cast<uintmax_t>(rhs);
                        default:
                            reportUnreachable(CMMC_LOCATION());
                    }
                };

                const auto doCompareFP = [&](CompareOp cmp, double lhs, double rhs) {
                    switch(cmp) {
                        case CompareOp::FCmpOrderedEqual:
                            return lhs == rhs;
                        case CompareOp::FCmpOrderedLessThan:
                            return lhs < rhs;
                        case CompareOp::FCmpOrderedLessEqual:
                            return lhs <= rhs;
                        case CompareOp::FCmpOrderedGreaterThan:
                            return lhs > rhs;
                        case CompareOp::FCmpOrderedGreaterEqual:
                            return lhs >= rhs;
                        case CompareOp::FCmpUnorderedNotEqual:
                            return lhs != rhs;
                        case CompareOp::FCmpUnorderedLessThan:
                            return !(lhs >= rhs);
                        case CompareOp::FCmpUnorderedLessEqual:
                            return !(lhs > rhs);
                        case CompareOp::FCmpUnorderedGreaterThan:
                            return !(lhs <= rhs);
                        case CompareOp::FCmpUnorderedGreaterEqual:
                            return !(lhs < rhs);
                        default:
                            reportUnreachable(CMMC_LOCATION());
                    }
                };

                auto makeBool = [&](Instruction* mappedInst, bool val) {
                    return ConstantInteger::get(mappedInst->getType(), val);
                };

                MatchContext<Value> matchCtx{ inst };
                CompareOp cmp;
                if(icmp(cmp, int_(i1), int_(i2))(matchCtx))
                    return makeBool(inst, doCompare(cmp, i1, i2));
                if(fcmp(cmp, fp_(f1), fp_(f2))(matchCtx))
                    return makeBool(inst, doCompareFP(cmp, f1, f2));
            } else if(inst->isConvertOp()) {
                uintmax_t uval;
                intmax_t sval;
                double fval;
                const auto val = inst->getOperand(0);
                MatchContext<Value> matchCtx{ val };

                switch(inst->getInstID()) {
                    case InstructionID::SignedTrunc:
                        [[fallthrough]];
                    case InstructionID::SExt: {
                        if(int_(sval)(matchCtx))
                            return makeInt(inst, sval);
                        break;
                    }
                    case InstructionID::ZExt:
                        [[fallthrough]];
                    case InstructionID::UnsignedTrunc: {
                        if(uint_(uval)(matchCtx))
                            return makeInt(inst, static_cast<intmax_t>(uval));
                        break;
                    }
                    case InstructionID::F2U:
                        [[fallthrough]];
                    case InstructionID::F2S: {
                        if(fp_(fval)(matchCtx))
                            return makeInt(inst,
                                           inst->getInstID() == InstructionID::F2S ?
                                               static_cast<intmax_t>(fval) :
                                               static_cast<intmax_t>(static_cast<uintmax_t>(fval)));
                        break;
                    }
                    case InstructionID::U2F: {
                        if(uint_(uval)(matchCtx))
                            return makeFP(inst, static_cast<double>(uval));
                        break;
                    }
                    case InstructionID::S2F: {
                        if(int_(sval)(matchCtx))
                            return makeFP(inst, static_cast<double>(sval));
                        break;
                    }
                    case InstructionID::FCast: {
                        if(fp_(fval)(matchCtx))
                            return makeFP(inst, fval);
                        break;
                    }
                    default:
                        break;
                }
            } else {
                MatchContext<Value> matchCtx{ inst };

                Value* v1;
                // select c?a:a -> a
                if(select(any(v1), uint_(u1), uint_(u2))(matchCtx) && u1 == u2) {
                    return inst->getOperand(1);
                }
                // select c?a:a -> a
                if(select(any(v1), fp_(f1), fp_(f2))(matchCtx) && f1 == f2) {
                    return inst->getOperand(1);
                }
            }
            return nullptr;
        });
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& dom = analysis.get<DominateAnalysis>(func);
        const auto& target = analysis.module().getTarget();
        IRBuilder builder{ target };

        bool modified = false;
        while(true) {
            bool changed = false;
            for(auto block : dom.blocks())
                modified |= reduceConstantPhis(*block);
            for(auto block : dom.blocks())
                modified |= runOnBlock(builder, *block);

            modified |= changed;
            if(!changed)
                return modified;
        }
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ConstantPropagation"sv;
    }
};

CMMC_TRANSFORM_PASS(ConstantPropagation);

CMMC_NAMESPACE_END

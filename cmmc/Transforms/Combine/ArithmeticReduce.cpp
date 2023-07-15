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

// a * b + a * c -> a * (b + c)
// a - a -> 0
// a == a -> 1
// etc.

#include <cmmc/Analysis/AnalysisPass.hpp>
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
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class ArithmeticReduce final : public TransformPass<Function> {
    static bool runOnBlock(IRBuilder& builder, Block& block, const mir::Target& target) {
        bool modified = false;
        const auto ret = reduceBlock(builder, block, [&](Instruction* inst) -> Value* {
            // commutative c x -> commutative x c
            switch(inst->getInstID()) {
                case InstructionID::Add:
                case InstructionID::Mul:
                case InstructionID::Or:
                case InstructionID::Xor:
                case InstructionID::And:
                case InstructionID::SMax:
                case InstructionID::SMin:
                case InstructionID::FAdd:
                case InstructionID::FMul: {
                    if(inst->getOperand(0)->isConstant() && !inst->getOperand(1)->isConstant()) {
                        auto& operands = inst->mutableOperands();
                        std::swap(operands[0], operands[1]);
                        modified = true;
                    }
                } break;
                default:
                    break;
            }

            MatchContext<Value> matchCtx{ inst };

            auto makeIntLike = [](intmax_t val, const Value* like) { return ConstantInteger::get(like->getType(), val); };
            auto makeNot = [&](Value* val) {
                if(val->getType()->isBoolean())
                    return builder.makeOp<BinaryInst>(InstructionID::Xor, val, builder.getTrue());
                return builder.makeOp<BinaryInst>(InstructionID::Xor, val, makeIntLike(-1, val));
            };
            auto makeNeg = [&](Value* val) {
                assert(val->getType()->isInteger() && !val->getType()->isBoolean());
                return builder.makeOp<BinaryInst>(InstructionID::Sub, makeIntLike(0, val), val);
            };

            Value *v1, *v2, *v3, *v4;
            intmax_t i1, i2;
            double f1;
            // a + 0 -> a
            if(add(any(v1), cint_(0))(matchCtx))
                return v1;
            if(fadd(any(v1), cfp_(0.0))(matchCtx))
                return v1;
            // a - 0 -> a
            if(sub(any(v1), cint_(0))(matchCtx))
                return v1;
            if(fsub(any(v1), cfp_(0.0))(matchCtx))
                return v1;
            // a - c -> a + (-c)
            if(sub(any(v1), int_(i2))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::Add, v1, makeIntLike(-i2, inst));
            // - (a - b) -> b - a
            if(neg(sub(any(v1), any(v2)))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::Sub, v2, v1);
            // 0 - a -> -a
            if(sub(cint_(0), any(v1))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::Neg, v1);
            if(fsub(cfp_(0.0), any(v1))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::FNeg, v1);
            // a - a -> 0
            if(sub(any(v1), any(v2))(matchCtx) && v1 == v2)
                return makeIntLike(0, inst);
            if(fsub(any(v1), any(v2))(matchCtx) && v1 == v2)
                return make<ConstantFloatingPoint>(inst->getType(), 0.0);
            // a * 0 -> 0
            if(mul(any(v1), cint_(0))(matchCtx))
                return makeIntLike(0, inst);
            if(fmul(any(v1), cfp_(0.0))(matchCtx))
                return make<ConstantFloatingPoint>(inst->getType(), 0.0);
            // a * 1 -> a
            if(mul(any(v1), cint_(1))(matchCtx))
                return v1;
            if(fmul(any(v1), cfp_(1.0))(matchCtx))
                return v1;
            // Move to CodeGenPrepare
            // a * (2^k) -> a << k
            // if(useShl && mul(any(v1), intLog2(v2))(matchCtx))
            //     return builder.makeOp<BinaryInst>(InstructionID::Shl, v1, v2);
            // a * 2 -> a + a
            if(fmul(any(v1), cfp_(2.0))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::FAdd, v1, v1);
            // a * -1 -> -a
            if(mul(any(v1), cint_(-1))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::Neg, v1);
            if(fmul(any(v1), cfp_(-1.0))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::FNeg, v1);
            // 0 / a -> 0
            if(sdiv(cint_(0), any(v1))(matchCtx) || udiv(cuint_(0), any(v1))(matchCtx))
                return makeIntLike(0, inst);
            if(fdiv(cfp_(0.0), any(v1))(matchCtx))
                return make<ConstantFloatingPoint>(inst->getType(), 0.0);
            // a / a -> 1
            if((sdiv(any(v1), any(v2))(matchCtx) || udiv(any(v1), any(v2))(matchCtx)) && v1 == v2)
                return ConstantInteger::get(inst->getType(), 1);
            if(fdiv(any(v1), any(v2))(matchCtx) && v1 == v2)
                return make<ConstantFloatingPoint>(inst->getType(), 1.0);
            // a / 1 -> a
            if(sdiv(any(v1), cint_(1))(matchCtx) || udiv(any(v1), cuint_(1))(matchCtx))
                return v1;
            if(fdiv(any(v1), cfp_(1.0))(matchCtx))
                return v1;
            // a / -1 -> -a
            if(sdiv(any(v1), cint_(-1))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::Neg, v1);
            if(fdiv(any(v1), cfp_(1.0))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::FNeg, v1);
            // a / -a -> -1
            if(sdiv(any(v1), neg(any(v2)))(matchCtx) && v1 == v2)
                return makeIntLike(-1, inst);
            if(fdiv(any(v1), fneg(any(v2)))(matchCtx) && v1 == v2)
                return make<ConstantFloatingPoint>(inst->getType(), -1.0);
            // -a / a -> -1
            if(sdiv(neg(any(v1)), any(v2))(matchCtx) && v1 == v2)
                return makeIntLike(-1, inst);
            if(fdiv(fneg(any(v1)), any(v2))(matchCtx) && v1 == v2)
                return make<ConstantFloatingPoint>(inst->getType(), -1.0);
            // a / (2^k) -> a * (2^(-k))
            auto isPowerOf2FP = [](double x) {
                uint64_t rep;
                memcpy(&rep, &x, sizeof(double));
                return (rep & ((1ULL << 52) - 1)) == 0;
            };
            if(fdiv(any(v1), fp_(f1))(matchCtx) && isPowerOf2FP(f1)) {
                const auto reciprocal = 1.0 / f1;
                assert(isPowerOf2FP(reciprocal));
                return builder.makeOp<BinaryInst>(InstructionID::FMul, v1,
                                                  make<ConstantFloatingPoint>(inst->getType(), reciprocal));
            }
            // a / c1 / c2 -> a / (c1 * c2)
            if(sdiv(sdiv(any(v1), int_(i1)), int_(i2))(matchCtx)) {
                const auto val = i1 * i2;
                const auto width = v1->getType()->as<IntegerType>()->getBitwidth();
                const auto min = -(1LL << (width - 1));
                const auto max = -(min + 1);
                if(min <= val && val <= max) {
                    return builder.makeOp<BinaryInst>(InstructionID::SDiv, v1, makeIntLike(val, inst));
                }
                return ConstantInteger::get(inst->getType(), 0);
            }
            // 0 % a -> 0
            if(srem(cint_(0), any(v1))(matchCtx) || urem(cuint_(0), any(v1))(matchCtx))
                return makeIntLike(0, inst);
            // a % a -> 0
            if((srem(any(v1), any(v2))(matchCtx) || urem(any(v1), any(v2))(matchCtx)) && v1 == v2)
                return makeIntLike(0, inst);
            // a % 1 -> 0
            if(srem(any(v1), cint_(1))(matchCtx) || urem(any(v1), cuint_(1))(matchCtx))
                return makeIntLike(0, inst);
            // For floating point, fma(a, c, b * c) may be better
            // a ^ a -> 0
            if(xor_(any(v1), any(v2))(matchCtx) && v1 == v2)
                return makeIntLike(0, inst);
            // a ^ 0 -> a
            if(xor_(any(v1), cuint_(0))(matchCtx))
                return v1;
            // a & a -> a
            if(and_(any(v1), any(v2))(matchCtx) && v1 == v2)
                return v1;
            // a & 0 -> 0
            if(and_(any(v1), cuint_(0))(matchCtx))
                return makeIntLike(0, inst);
            // a & -1 -> a
            if(and_(any(v1), cint_(-1))(matchCtx))
                return v1;
            // bool a & 1 -> a
            if(and_(any(v1), cuint_(1))(matchCtx) && v1->getType()->isBoolean())
                return v1;
            if(and_(capture(zext(any(v1)), v2), cuint_(1))(matchCtx) && v1->getType()->isBoolean())
                return v2;
            // a | a -> a
            if(or_(any(v1), any(v2))(matchCtx) && v1 == v2)
                return v1;
            // a | 0 -> a
            if(or_(any(v1), cuint_(0))(matchCtx))
                return v1;
            // a | -1 -> -1
            if(or_(any(v1), cint_(-1))(matchCtx))
                return makeIntLike(-1, inst);
            // bool a | 1 -> 1
            if(or_(any(v1), cuint_(1))(matchCtx) && v1->getType()->isBoolean())
                return makeIntLike(1, inst);
            if(or_(zext(any(v1)), cuint_(1))(matchCtx) && v1->getType()->isBoolean())
                return makeIntLike(1, inst);

            CompareOp cmp;
            // uint >= 0 -> true
            // uint < 0 -> false
            if(icmp(cmp, any(v1), cuint_(0))(matchCtx)) {
                switch(cmp) {
                    case CompareOp::ICmpUnsignedGreaterEqual:
                        return builder.getTrue();
                    case CompareOp::ICmpUnsignedLessThan:
                        return builder.getFalse();
                    default:
                        break;
                }
            }
            // !!a -> a
            if(not_(not_(any(v1)))(matchCtx))
                return v1;
            // a + -b -> a - b
            if(add(any(v1), neg(any(v2)))(matchCtx)) {
                return builder.makeOp<BinaryInst>(InstructionID::Sub, v1, v2);
            }
            // a - -b -> a + b
            if(sub(any(v1), neg(any(v2)))(matchCtx)) {
                return builder.makeOp<BinaryInst>(InstructionID::Add, v1, v2);
            }
            // select c?a:a -> a
            if(select(any(v1), any(v2), any(v3))(matchCtx) && v2 == v3) {
                return v2;
            }
            uintmax_t u1;
            if(select(uint_(u1), any(v2), any(v3))(matchCtx)) {
                return u1 ? v2 : v3;
            }
            // FIXME:
            // a + a -> 2 * a
            if(add(any(v1), any(v2))(matchCtx) && v1 == v2)
                return builder.makeOp<BinaryInst>(InstructionID::Mul, makeIntLike(2, inst), v1);
            // b * a + a -> (b+1) * a
            if(add(mul(any(v1), any(v2)), any(v3))(matchCtx)) {
                Value *a = nullptr, *b = nullptr;
                if(v1 == v3) {
                    a = v1, b = v2;
                } else if(v2 == v3) {
                    a = v2, b = v1;
                }
                if(a && b)
                    return builder.makeOp<BinaryInst>(InstructionID::Mul,
                                                      builder.makeOp<BinaryInst>(InstructionID::Add, b, makeIntLike(1, inst)), a);
            }
            // b * a + c * a -> (b + c) * a
            if(add(oneUse(mul(any(v1), any(v2))), oneUse(mul(any(v3), any(v4))))(matchCtx)) {
                Value *a = nullptr, *b = nullptr, *c = nullptr;
                if(v1 == v3) {
                    a = v1, b = v2, c = v4;
                } else if(v1 == v4) {
                    a = v1, b = v2, c = v3;
                } else if(v2 == v3) {
                    a = v2, b = v1, c = v4;
                } else if(v2 == v4) {
                    a = v2, b = v1, c = v3;
                }
                if(a && b && c)
                    return builder.makeOp<BinaryInst>(InstructionID::Mul, builder.makeOp<BinaryInst>(InstructionID::Add, b, c),
                                                      a);
            }
            // b * a - c * a -> (b - c) * a
            if(sub(oneUse(mul(any(v1), any(v2))), oneUse(mul(any(v3), any(v4))))(matchCtx)) {
                Value *a = nullptr, *b = nullptr, *c = nullptr;
                if(v1 == v3) {
                    a = v1, b = v2, c = v4;
                } else if(v1 == v4) {
                    a = v1, b = v2, c = v3;
                } else if(v2 == v3) {
                    a = v2, b = v1, c = v4;
                } else if(v2 == v4) {
                    a = v2, b = v1, c = v3;
                }
                if(a && b && c)
                    return builder.makeOp<BinaryInst>(InstructionID::Mul, builder.makeOp<BinaryInst>(InstructionID::Sub, b, c),
                                                      a);
            }

            // c % (2^k) = c & (2^k - 1)
            uintmax_t c;
            if(urem(any(v1), capture(intLog2(v2), v3))(matchCtx)) {
                return builder.makeOp<BinaryInst>(InstructionID::And, v1,
                                                  builder.makeOp<BinaryInst>(InstructionID::Sub, v3, makeIntLike(1, v3)));
            }

            // (zext i1 a) != 0 -> a
            // (zext i1 a) == 1 -> a
            if(icmp(cmp, zext(any(v1)), uint_(c))(matchCtx) && v1->getType()->isBoolean()) {
                if(cmp == CompareOp::ICmpEqual) {
                    if(c == 0) {
                        return makeNot(v1);
                    }
                    if(c == 1) {
                        return v1;
                    }
                    return builder.getFalse();
                }
                if(cmp == CompareOp::ICmpNotEqual) {
                    if(c == 0) {
                        return v1;
                    }
                    if(c == 1) {
                        return makeNot(v1);
                    }
                    return builder.getTrue();
                }
            }

            // zext i1 v1 == 1 -> v1
            if(icmp(cmp, zext(any(v1)), cuint_(1))(matchCtx) && cmp == CompareOp::ICmpEqual && v1->getType()->isBoolean()) {
                return v1;
            }

            // i1 v1 == true -> v1
            if(icmp(cmp, any(v1), cuint_(1))(matchCtx) && cmp == CompareOp::ICmpEqual && v1->getType()->isBoolean()) {
                return v1;
            }

            // select x 1 0 -> zext x
            if(target.isNativeSupported(InstructionID::SExt) && select(any(v1), cuint_(1), cuint_(0))(matchCtx)) {
                if(inst->getType()->isBoolean()) {
                    return v1;
                }
                return builder.makeOp<CastInst>(InstructionID::ZExt, inst->getType(), v1);
            }

            // gep x 0 -> x
            if(inst->getInstID() == InstructionID::GetElementPtr && inst->operands().size() == 2 &&
               cuint_(0)(MatchContext<Value>{ inst->getOperand(0) })) {
                return inst->lastOperand();
            }

            // add (add x c1) c2 -> add x c1+c2
            if(add(add(any(v1), int_(i1)), int_(i2))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::Add, v1, makeIntLike(i1 + i2, v1));
            // add (sub x c1) c2 -> add x c2-c1
            if(add(sub(any(v1), int_(i1)), int_(i2))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::Add, v1, makeIntLike(i2 - i1, v1));
            // sub (sub x c1) c2 -> add x -c1-c2
            if(sub(sub(any(v1), int_(i1)), int_(i2))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::Add, v1, makeIntLike(-(i1 + i2), v1));
            // sub (add x c1) c2 -> add x c1-c2
            if(sub(add(any(v1), int_(i1)), int_(i2))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::Add, v1, makeIntLike(i1 - i2, v1));

            // a - c -> a + (-c)
            if(sub(any(v1), int_(i1))(matchCtx) && !v1->isConstant())
                return builder.makeOp<BinaryInst>(InstructionID::Add, v1, makeIntLike(-i1, v1));

            // select cond, x, x + 1
            // ->
            // sub x + 1, (zext cond)
            if(target.isNativeSupported(InstructionID::SExt) &&
               ((select(any(v1), int_(i1), int_(i2))(matchCtx) && i1 + 1 == i2) ||
                (select(any(v1), any(v2), add(any(v3), cuint_(1)))(matchCtx) && v2 == v3)) &&
               v2->getType()->getFixedSize() >= sizeof(int32_t)) {
                auto val = v1;
                const auto base = inst->getOperand(2);
                const auto targetType = base->getType();
                if(!targetType->isBoolean())
                    val = builder.makeOp<CastInst>(InstructionID::ZExt, targetType, val);
                return builder.makeOp<BinaryInst>(InstructionID::Sub, base, val);
            }

            // select (not cond), x, y
            // ->
            // select cond, y, x
            if(select(not_(any(v1)), any(v2), any(v3))(matchCtx)) {
                auto& operands = inst->mutableOperands();
                operands[0]->resetValue(v1);
                // inplace modify
                std::swap(operands[1], operands[2]);
                modified = true;
                return nullptr;
            }

            // not cmp
            if(xor_(capture(xcmp(cmp, any(v1), any(v2)), v3), cuint_(1))(matchCtx)) {
                const auto cmpInst = v3->as<CompareInst>();
                return builder.makeOp<CompareInst>(cmpInst->getInstID(), getInvertedOp(cmp), v1, v2);
            }

            // a >/</!= a -> false
            // a >=/<=/== a -> true
            if(icmp(cmp, any(v1), any(v2))(matchCtx) && v1 == v2) {
                switch(cmp) {
                    case CompareOp::ICmpEqual:
                    case CompareOp::ICmpSignedLessEqual:
                    case CompareOp::ICmpSignedGreaterEqual:
                    case CompareOp::ICmpUnsignedLessEqual:
                    case CompareOp::ICmpUnsignedGreaterEqual:
                        return builder.getTrue();
                    default:
                        return builder.getFalse();
                }
            }

            // FIXME: conflict with loop analysis
            /*
            // (x op c1) cmp c2
            if(icmp(cmp, add(any(v1), int_(i1)), int_(i2))(matchCtx)) {
                const auto res = builder.makeOp<CompareInst>(inst->getInstID(), cmp, v1, makeIntLike(i2 - i1, v1));
                return res;
            }
            if(icmp(cmp, sub(any(v1), int_(i1)), int_(i2))(matchCtx)) {
                return builder.makeOp<CompareInst>(inst->getInstID(), cmp, v1, makeIntLike(i2 + i1, v1));
            }
            if(icmp(cmp, sub(int_(i1), any(v1)), int_(i2))(matchCtx)) {
                return builder.makeOp<CompareInst>(inst->getInstID(), cmp, makeIntLike(i1 - i2, v1), v1);
            }
            */

            // -x cmp c -> -c cmp x
            if(icmp(cmp, neg(any(v1)), int_(i1))(matchCtx)) {
                switch(cmp) {
                    case CompareOp::ICmpEqual:
                    case CompareOp::ICmpNotEqual:
                    case CompareOp::ICmpSignedLessThan:
                    case CompareOp::ICmpSignedLessEqual:
                    case CompareOp::ICmpSignedGreaterThan:
                    case CompareOp::ICmpSignedGreaterEqual:
                        return builder.makeOp<CompareInst>(inst->getInstID(), cmp, makeIntLike(-i1, v1), v1);
                    default:
                        break;
                }
            }

            // FIXME: Range analysis
            // (((x mod c1) + c2) mod c1 + c3) mod c1 -> ((x mod c1) + (c2 + c3)) mod c1
            intmax_t i3, i4, i5;
            if(srem(add(srem(add(capture(srem(any(v1), capture(int_(i1), v3)), v2), int_(i2)), int_(i3)), int_(i4)),
                    int_(i5))(matchCtx) &&
               (i1 > 0 && i1 == i3 && i3 == i5) && (i2 >= 0 && i4 >= 0 && i1 + i2 + i4 < std::numeric_limits<int32_t>::max())) {
                return builder.makeOp<BinaryInst>(
                    InstructionID::SRem, builder.makeOp<BinaryInst>(InstructionID::Add, v2, makeIntLike((i2 + i4) % i1, v2)), v3);
            }

            // (a == c1) & (b == c2) -> ((a^c1) | (b^c2)) == 0
            CompareOp cmp1, cmp2;
            if(and_(oneUse(icmp(cmp1, any(v1), int_(i1))), oneUse(icmp(cmp2, any(v2), int_(i2))))(matchCtx) &&
               cmp1 == CompareOp::ICmpEqual && cmp2 == CompareOp::ICmpEqual && v1->getType()->isSame(v2->getType())) {
                return builder.makeOp<CompareInst>(
                    InstructionID::ICmp, CompareOp::ICmpEqual,
                    builder.makeOp<BinaryInst>(
                        InstructionID::Or, i1 == 0 ? v1 : builder.makeOp<BinaryInst>(InstructionID::Xor, v1, makeIntLike(i1, v1)),
                        i2 == 0 ? v2 : builder.makeOp<BinaryInst>(InstructionID::Xor, v2, makeIntLike(i2, v2))),
                    makeIntLike(0, v1));
            }
            // (a & 1 != 0) & (b & 1 != 0) -> trunc (a & 1 & b) to i1
            if(and_(oneUse(icmp(cmp1, capture(and_(any(v1), cuint_(1)), v3), cint_(0))),
                    oneUse(icmp(cmp2, and_(any(v2), cuint_(1)), cint_(0))))(matchCtx) &&
               cmp1 == CompareOp::ICmpNotEqual && cmp2 == CompareOp::ICmpNotEqual && v1->getType()->isSame(v2->getType())) {
                return builder.makeOp<CastInst>(InstructionID::UnsignedTrunc, IntegerType::getBoolean(),
                                                builder.makeOp<BinaryInst>(InstructionID::And, v3, v2));
            }
            // (a != 0) | (b != 0) -> (a | b) != 0
            if(or_(oneUse(icmp(cmp1, any(v1), cint_(0))), oneUse(icmp(cmp2, any(v2), cint_(0))))(matchCtx) &&
               cmp1 == CompareOp::ICmpNotEqual && cmp2 == CompareOp::ICmpNotEqual && v1->getType()->isSame(v2->getType())) {
                return builder.makeOp<CompareInst>(InstructionID::ICmp, CompareOp::ICmpNotEqual,
                                                   builder.makeOp<BinaryInst>(InstructionID::Or, v1, v2), makeIntLike(0, v1));
            }

            auto isLegalShamt = [](intmax_t shamt, const Type* t) {
                const auto bitwidth = t->as<IntegerType>()->getBitwidth();
                return 0 <= shamt && shamt < static_cast<int32_t>(bitwidth);
            };
            if(shl(shl(any(v1), int_(i1)), int_(i2))(matchCtx)) {
                const auto shamt = i1 + i2;
                if(isLegalShamt(shamt, v1->getType()))
                    return builder.makeOp<BinaryInst>(InstructionID::Shl, v1, makeIntLike(shamt, v1));

                return makeIntLike(0, v1);
            }
            if(lshr(lshr(any(v1), int_(i1)), int_(i2))(matchCtx)) {
                const auto shamt = i1 + i2;
                if(isLegalShamt(shamt, v1->getType()))
                    return builder.makeOp<BinaryInst>(InstructionID::LShr, v1, makeIntLike(shamt, v1));
                return makeIntLike(0, v1);
            }
            if(ashr(ashr(any(v1), int_(i1)), int_(i2))(matchCtx)) {
                const auto shamt = i1 + i2;
                if(isLegalShamt(shamt, v1->getType()))
                    return builder.makeOp<BinaryInst>(InstructionID::AShr, v1, makeIntLike(shamt, v1));
                return makeIntLike(0, v1);
            }

            // select c1, c2, false -> c1 & c2
            if(select(any(v1), any(v2), cint_(0))(matchCtx) && v2->getType()->isBoolean())
                return builder.makeOp<BinaryInst>(InstructionID::And, v1, v2);
            // select c1, c2, true -> !c1 | c2
            if(select(any(v1), any(v2), cint_(1))(matchCtx) && v2->getType()->isBoolean())
                return builder.makeOp<BinaryInst>(InstructionID::Or,
                                                  builder.makeOp<BinaryInst>(InstructionID::Xor, v1, makeIntLike(1, v1)), v2);
            // select c1, false, c2 -> !c1 & c2
            if(select(any(v1), cint_(0), any(v2))(matchCtx) && v2->getType()->isBoolean())
                return builder.makeOp<BinaryInst>(InstructionID::And,
                                                  builder.makeOp<BinaryInst>(InstructionID::Xor, v1, makeIntLike(1, v1)), v2);
            // select c1, true, c2 -> c1 | c2
            if(select(any(v1), cint_(1), any(v2))(matchCtx) && v2->getType()->isBoolean())
                return builder.makeOp<BinaryInst>(InstructionID::Or, v1, v2);

            // a << 0 -> a
            if(shl(any(v1), cuint_(0))(matchCtx))
                return v1;
            // a << c, c >= width -> 0
            if(shl(any(v1), uint_(u1))(matchCtx) && u1 >= v1->getType()->getFixedSize() * 8)
                return makeIntLike(0, inst);
            // a >> 0 -> a
            if(ashr(any(v1), cuint_(0))(matchCtx))
                return v1;
            if(lshr(any(v1), cuint_(0))(matchCtx))
                return v1;

            // 1 - bool x -> not x
            if(sub(cint_(1), any(v1))(matchCtx) && v1->getType()->isBoolean())
                return builder.makeOp<BinaryInst>(InstructionID::Xor, v1, makeIntLike(1, v1));
            if(sub(cint_(1), zext(any(v1)))(matchCtx) && v1->getType()->isBoolean())
                return builder.makeOp<CastInst>(InstructionID::ZExt, inst->getType(),
                                                builder.makeOp<BinaryInst>(InstructionID::Xor, v1, makeIntLike(1, v1)));
            // fixed point
            if(f2s(s2f(capture(f2s(any(v1)), v2)))(matchCtx)) {
                return v2;
            }

            // FIXME
            // mul (add x, c1) c2 -> add (mul x, c2) (mul c1, c2)
            // if(mul(oneUse(add(any(v1), int_(i1))), capture(int_(i2), v2))(matchCtx)) {
            //     return builder.makeOp<BinaryInst>(InstructionID::Add, builder.makeOp<BinaryInst>(InstructionID::Mul, v1, v2),
            //                                       makeIntLike(i1 * i2, inst));
            // }

            // ((zext a) & (zext b)) != 0 -> a & b
            if(icmp(cmp, and_(zext(boolean(v1)), zext(boolean(v2))), cuint_(0))(matchCtx)) {
                if(cmp == CompareOp::ICmpNotEqual)
                    return builder.makeOp<BinaryInst>(InstructionID::And, v1, v2);
                if(cmp == CompareOp::ICmpEqual)
                    return makeNot(builder.makeOp<BinaryInst>(InstructionID::And, v1, v2));
            }

            if(target.isNativeSupported(InstructionID::SMin) && target.isNativeSupported(InstructionID::SMax)) {
                // smin(smin(a, b), c) -> smin(a, b) if a == c or b == c
                if(smin(smin(any(v1), any(v2)), any(v3))(matchCtx)) {
                    if(v1 == v3 || v2 == v3)
                        return builder.makeOp<BinaryInst>(InstructionID::SMin, v1, v2);
                }
                // smax(smax(a, b), c) -> smax(a, b) if a == c or b == c
                if(smax(smax(any(v1), any(v2)), any(v3))(matchCtx)) {
                    if(v1 == v3 || v2 == v3)
                        return builder.makeOp<BinaryInst>(InstructionID::SMax, v1, v2);
                }
                // smin(smax(a, b), c) -> c if a == c or b == c
                if(smin(smax(any(v1), any(v2)), any(v3))(matchCtx)) {
                    if(v1 == v3 || v2 == v3)
                        return v3;
                }
                // smax(smin(a, b), c) -> c if a == c or b == c
                if(smax(smin(any(v1), any(v2)), any(v3))(matchCtx)) {
                    if(v1 == v3 || v2 == v3)
                        return v3;
                }

                // smin(a, INT_MIN) -> INT_MIN
                if(smin(any(v1), cint_(std::numeric_limits<int32_t>::min()))(matchCtx) &&
                   inst->getType()->getFixedSize() == sizeof(int32_t)) {
                    return makeIntLike(std::numeric_limits<int32_t>::min(), inst);
                }
                // smin(a, INT_MAX) -> a
                if(smin(any(v1), cint_(std::numeric_limits<int32_t>::max()))(matchCtx) &&
                   inst->getType()->getFixedSize() == sizeof(int32_t)) {
                    return v1;
                }
                // smax(a, INT_MAX) -> INT_MAX
                if(smax(any(v1), cint_(std::numeric_limits<int32_t>::max()))(matchCtx) &&
                   inst->getType()->getFixedSize() == sizeof(int32_t)) {
                    return makeIntLike(std::numeric_limits<int32_t>::max(), inst);
                }
                // smax(a, INT_MIN) -> a
                if(smax(any(v1), cint_(std::numeric_limits<int32_t>::min()))(matchCtx) &&
                   inst->getType()->getFixedSize() == sizeof(int32_t)) {
                    return v1;
                }

                // Signed a <(=) b ? a : b -> smin a, b
                if(select(icmp(cmp, any(v1), any(v2)), any(v3), any(v4))(matchCtx)) {
                    if(v1 == v3 && v2 == v4 && (cmp == CompareOp::ICmpSignedLessThan || cmp == CompareOp::ICmpSignedLessEqual))
                        return builder.makeOp<BinaryInst>(InstructionID::SMin, v1, v2);
                    if(v1 == v3 && v2 == v4 &&
                       (cmp == CompareOp::ICmpSignedGreaterThan || cmp == CompareOp::ICmpSignedGreaterEqual))
                        return builder.makeOp<BinaryInst>(InstructionID::SMax, v1, v2);
                    if(v1 == v4 && v2 == v3 && (cmp == CompareOp::ICmpSignedLessThan || cmp == CompareOp::ICmpSignedLessEqual))
                        return builder.makeOp<BinaryInst>(InstructionID::SMax, v1, v2);
                    if(v1 == v4 && v2 == v3 &&
                       (cmp == CompareOp::ICmpSignedGreaterThan || cmp == CompareOp::ICmpSignedGreaterEqual))
                        return builder.makeOp<BinaryInst>(InstructionID::SMin, v1, v2);
                }
            }

            // x >/>= c1 ? c1 : smax(x, c2) where c1 > c2 -> clamp(x, c2, c1)
            Value* v5;
            if(select(icmp(cmp, any(v1), capture(int_(i1), v2)), any(v3), capture(smax(any(v4), int_(i2)), v5))(matchCtx)) {
                if((cmp == CompareOp::ICmpSignedGreaterThan || cmp == CompareOp::ICmpSignedGreaterEqual) && v2 == v3 &&
                   v1 == v4 && i1 > i2) {
                    return builder.makeOp<BinaryInst>(InstructionID::SMin, v5, v2);
                }
            }
            // x </<= c1 ? c1 : smin(x, c2) where c1 < c2 -> clamp(x, c1, c2)
            if(select(icmp(cmp, any(v1), capture(int_(i1), v2)), any(v3), capture(smin(any(v4), int_(i2)), v5))(matchCtx)) {
                if((cmp == CompareOp::ICmpSignedLessThan || cmp == CompareOp::ICmpSignedLessEqual) && v2 == v3 && v1 == v4 &&
                   i1 < i2) {
                    return builder.makeOp<BinaryInst>(InstructionID::SMax, v5, v2);
                }
            }

            // x % (2^k) only used by icmp eq/neq with 0 -> (x & (2^k-1))
            if(srem(any(v1), capture(intLog2(v2), v3))(matchCtx)) {
                auto usedByCompareWithZero = [&] {
                    for(auto user : inst->users()) {
                        if(icmp(cmp, any(v4), cuint_(0))(MatchContext<Value>{ user })) {
                            if(cmp == CompareOp::ICmpEqual || cmp == CompareOp::ICmpNotEqual)
                                continue;
                        }
                        return false;
                    }
                    return true;
                };

                if(usedByCompareWithZero()) {
                    return builder.makeOp<BinaryInst>(InstructionID::And, v1,
                                                      builder.makeOp<BinaryInst>(InstructionID::Sub, v3, makeIntLike(1, inst)));
                }
            }

            // zext (ztrunc x) -> x & mask
            if(zext(capture(ztrunc(any(v1)), v2))(matchCtx) && v1->getType()->isSame(inst->getType())) {
                auto mask = (1LL << v2->getType()->as<IntegerType>()->getBitwidth()) - 1;
                return builder.makeOp<BinaryInst>(InstructionID::And, v1, makeIntLike(mask, inst));
            }

            // Hacker's Delight 2nd Edition
            // 2.1 De Morgan's Laws Extended
            // ~x | ~y -> ~(x & y)
            if(or_(not_(any(v1)), not_(any(v2)))(matchCtx)) {
                return makeNot(builder.makeOp<BinaryInst>(InstructionID::And, v1, v2));
            }

            // ~x & ~y -> ~(x | y)
            if(and_(not_(any(v1)), not_(any(v2)))(matchCtx)) {
                return makeNot(builder.makeOp<BinaryInst>(InstructionID::Or, v1, v2));
            }

            // 2.2 Addition Combined with Logical Operations
            // ~x + 1 -> -x
            if(add(not_(any(v1)), cint_(1))(matchCtx)) {
                return makeNeg(v1);
            }

            // ~(x - 1) -> -x
            if(not_(add(any(v1), cint_(-1)))(matchCtx)) {
                return makeNeg(v1);
            }

            // -x - 1 -> ~x
            // if(add(neg(any(v1)), cint_(-1))(matchCtx)) {
            //     return makeNot(v1);
            // }

            // ~(-x) -> x - 1
            if(not_(neg(any(v1)))(matchCtx)) {
                return builder.makeOp<BinaryInst>(InstructionID::Add, v1, makeIntLike(-1, inst));
            }

            // -(~x) -> x + 1
            if(neg(not_(any(v1)))(matchCtx)) {
                return builder.makeOp<BinaryInst>(InstructionID::Add, v1, makeIntLike(1, inst));
            }

            // (x | y) - (x & y) -> x ^ y
            if(sub(or_(any(v1), any(v2)), and_(any(v3), any(v4)))(matchCtx) &&
               ((v1 == v3 && v2 == v4) || (v1 == v4 && v2 == v3))) {
                return builder.makeOp<BinaryInst>(InstructionID::Xor, v1, v2);
            }

            // TODO: 2-4 Absolute Value Function

            // 2-5 Average of Two Integers
            // (x + y) / 2 -> (x | y) - ((x ^ y) >s> 1)
            // NOTICE: SDiv by 2 is cheap
            // if(target.isNativeSupported(InstructionID::Or) && target.isNativeSupported(InstructionID::Xor) &&
            //    target.isNativeSupported(InstructionID::AShr)) {
            //     if(sdiv(add(any(v1), any(v2)), cint_(2))(matchCtx)) {
            //         return builder.makeOp<BinaryInst>(
            //             InstructionID::Sub, builder.makeOp<BinaryInst>(InstructionID::Or, v1, v2),
            //             builder.makeOp<BinaryInst>(InstructionID::AShr, builder.makeOp<BinaryInst>(InstructionID::Xor, v1, v2),
            //                                        makeIntLike(1, inst)));
            //     }
            // }

            // TODO: 2-8 Sign Function

            // TODO: 2-9 Three-Valued Compare Function

            // TODO: 2-10 Transfer of Sign Function

            // TODO: 2-15 Rotate Shifts

            // 2-21 Alternating among Two or More Values
            // x == a ? b : a -> a ^ b ^ x / a + b - x
            if(inst->getType()->isBoolean() && select(oneUse(icmp(cmp, any(v1), any(v2))), any(v3), any(v4))(matchCtx) &&
               ((v1 == v4 || v2 == v4) && cmp == CompareOp::ICmpEqual)) {
                auto x = (v1 == v4 ? v2 : v1);
                auto b = v3;
                auto a = v4;
                if(target.isNativeSupported(InstructionID::Xor))
                    return builder.makeOp<BinaryInst>(InstructionID::Xor, builder.makeOp<BinaryInst>(InstructionID::Xor, a, b),
                                                      x);
                return builder.makeOp<BinaryInst>(InstructionID::Sub, builder.makeOp<BinaryInst>(InstructionID::Add, a, b), x);
            }

            // 4-1 Checking Bounds of Integers
            // (v SGE c1) && (v SLE c2) -> (v - c1) ULT (c2 - c1 + 1)
            if(and_(oneUse(icmp(cmp1, any(v1), int_(i1))), oneUse(icmp(cmp2, any(v2), int_(i2))))(matchCtx) && v1 == v2) {
                bool valid = false;

                auto legalize = [](CompareOp& op, intmax_t& val) {
                    if(op == CompareOp::ICmpSignedLessThan) {
                        // TODO: check overflow?
                        op = CompareOp::ICmpSignedLessEqual;
                        --val;
                    }
                    if(op == CompareOp::ICmpSignedGreaterThan) {
                        // TODO: check overflow?
                        op = CompareOp::ICmpSignedGreaterEqual;
                        ++val;
                    }
                };

                legalize(cmp1, i1);
                legalize(cmp2, i2);

                if(cmp1 == CompareOp::ICmpSignedGreaterEqual && cmp2 == CompareOp::ICmpSignedLessEqual) {
                    valid = true;
                } else if(cmp1 == CompareOp::ICmpSignedLessEqual && cmp2 == CompareOp::ICmpSignedGreaterEqual) {
                    std::swap(i1, i2);
                    valid = true;
                }

                if(valid) {
                    // i1 <= x <= i2
                    if(i1 > i2) {
                        return builder.getFalse();
                    }
                    if(i1 == i2) {
                        // i1 == i2 -> v == i1
                        return builder.makeOp<CompareInst>(InstructionID::ICmp, CompareOp::ICmpEqual, v1, makeIntLike(i1, v1));
                    }
                    if(i1 < i2 && i1 + 65536 >= i2) {
                        return builder.makeOp<CompareInst>(
                            InstructionID::ICmp, CompareOp::ICmpUnsignedLessThan,
                            builder.makeOp<BinaryInst>(InstructionID::Sub, v1, makeIntLike(i1, v1)),
                            makeIntLike(i2 - i1 + 1, v1));
                    }
                }
            }

            // TODO: 8–4 Multiplication by Constants

            // TODO: handle select?
            // c = select x a b
            // d = add c 1
            // ->
            // d = select x a+1 b+1

            // x >s 0 ? x : -x -> abs(x)
            if(target.isNativeSupported(InstructionID::Abs)) {
                if(select(icmp(cmp, any(v1), cint_(0)), any(v2), neg(any(v3)))(matchCtx) && v1 == v2 && v1 == v3) {
                    if(cmp == CompareOp::ICmpSignedGreaterThan || cmp == CompareOp::ICmpSignedGreaterEqual) {
                        return builder.makeOp<UnaryInst>(InstructionID::Abs, v1);
                    }
                    if(cmp == CompareOp::ICmpSignedLessThan || cmp == CompareOp::ICmpSignedLessEqual) {
                        return makeNeg(builder.makeOp<UnaryInst>(InstructionID::Abs, v1));
                    }
                }
                if(select(icmp(cmp, any(v1), cint_(0)), neg(any(v2)), any(v3))(matchCtx) && v1 == v2 && v1 == v3) {
                    if(cmp == CompareOp::ICmpSignedGreaterThan || cmp == CompareOp::ICmpSignedGreaterEqual) {
                        return makeNeg(builder.makeOp<UnaryInst>(InstructionID::Abs, v1));
                    }
                    if(cmp == CompareOp::ICmpSignedLessThan || cmp == CompareOp::ICmpSignedLessEqual) {
                        return builder.makeOp<UnaryInst>(InstructionID::Abs, v1);
                    }
                }
                if(select(icmp(cmp, any(v1), cint_(1)), any(v2), neg(any(v3)))(matchCtx) && v1 == v2 && v1 == v3) {
                    if(cmp == CompareOp::ICmpSignedLessThan) {
                        return makeNeg(builder.makeOp<UnaryInst>(InstructionID::Abs, v1));
                    }
                }
                if(select(icmp(cmp, any(v1), cint_(1)), neg(any(v2)), any(v3))(matchCtx) && v1 == v2 && v1 == v3) {
                    if(cmp == CompareOp::ICmpSignedLessThan) {
                        return builder.makeOp<UnaryInst>(InstructionID::Abs, v1);
                    }
                }
                if(select(icmp(cmp, any(v1), cint_(-1)), any(v2), neg(any(v3)))(matchCtx) && v1 == v2 && v1 == v3) {
                    if(cmp == CompareOp::ICmpSignedGreaterThan) {
                        return builder.makeOp<UnaryInst>(InstructionID::Abs, v1);
                    }
                }
                if(select(icmp(cmp, any(v1), cint_(-1)), neg(any(v2)), any(v3))(matchCtx) && v1 == v2 && v1 == v3) {
                    if(cmp == CompareOp::ICmpSignedGreaterThan) {
                        return makeNeg(builder.makeOp<UnaryInst>(InstructionID::Abs, v1));
                    }
                }
            }

            // abs(abs(x)) -> abs(x)
            if(abs(abs(any(v1)))(matchCtx)) {
                return builder.makeOp<UnaryInst>(InstructionID::Abs, v1);
            }
            // abs(-x) -> abs(x)
            if(abs(neg(any(v1)))(matchCtx)) {
                return builder.makeOp<UnaryInst>(InstructionID::Abs, v1);
            }

            // -(-x) -> x
            if(neg(neg(any(v1)))(matchCtx))
                return v1;

            // abs(srem(x, 2)) -> and x, 1
            if(abs(srem(any(v1), cint_(2)))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::And, v1, makeIntLike(1, v1));

            // (srem x, 2) == 1 -> (and x, -max) == 1
            if(icmp(cmp, oneUse(srem(any(v1), cint_(2))), capture(cint_(1), v2))(matchCtx) && cmp == CompareOp::ICmpEqual) {
                const auto val = builder.makeOp<BinaryInst>(
                    InstructionID::And, v1,
                    makeIntLike(-((static_cast<intmax_t>(1) << (v1->getType()->as<IntegerType>()->getBitwidth() - 1)) - 1), v1));
                return builder.makeOp<CompareInst>(inst->getInstID(), CompareOp::ICmpEqual, val, v2);
            }

            // (and x, 1) != 0 -> trunc x to i1
            if(icmp(cmp, and_(any(v1), cint_(1)), cint_(0))(matchCtx) && cmp == CompareOp::ICmpNotEqual) {
                return builder.makeOp<CastInst>(InstructionID::UnsignedTrunc, inst->getType(), v1);
            }

            // and(ztrunc x1 to i1, ztrunc x2 to i2) -> ztrunc (x1 and x2) to i1
            if(inst->getType()->isBoolean() && and_(oneUse(ztrunc(any(v1))), oneUse(ztrunc(any(v2))))(matchCtx) &&
               v1->getType()->isSame(v2->getType())) {
                return builder.makeOp<CastInst>(InstructionID::UnsignedTrunc, inst->getType(),
                                                builder.makeOp<BinaryInst>(InstructionID::And, v1, v2));
            }

            // sdiv (mul x, c1) c2 where c1 % c2 == 0 -> mul x (c1/c2)
            if(sdiv(mul(any(v1), int_(i1)), int_(i2))(matchCtx) && i2 && i1 % i2 == 0 &&
               !(i1 == std::numeric_limits<intmax_t>::min() && i2 == -1)) {
                return builder.makeOp<BinaryInst>(InstructionID::Mul, v1, makeIntLike(i1 / i2, v1));
            }

            // srem (mul x, c1) c2 where c1 % c2 == 0 -> 0
            if(srem(mul(any(v1), int_(i1)), int_(i2))(matchCtx) && i2 && i1 % i2 == 0) {
                return makeIntLike(0, inst);
            }

            // sdiv (neg x), c1 -> sdiv x, -c1
            if(sdiv(oneUse(neg(any(v1))), int_(i1))(matchCtx)) {
                return builder.makeOp<BinaryInst>(InstructionID::SDiv, v1, makeIntLike(-i1, v1));
            }

            // srem (neg x), c1 -> neg (srem x, c1)
            if(srem(oneUse(neg(any(v1))), int_(i1))(matchCtx)) {
                return makeNeg(builder.makeOp<BinaryInst>(InstructionID::SRem, v1, makeIntLike(i1, v1)));
            }

            // b - (a + b) -> -a
            if(sub(any(v1), add(any(v2), any(v3)))(matchCtx) && (v1 == v2 || v1 == v3)) {
                return makeNeg(v1 == v2 ? v3 : v2);
            }

            // a == b ? a : smax(a, b) -> smax(a, b)
            Value* v6;
            if(select(icmp(cmp, any(v1), any(v2)), any(v3), capture(smax(any(v4), any(v5)), v6))(matchCtx)) {
                if(cmp == CompareOp::ICmpEqual && v1 == v3 && v1 == v4 && v2 == v5) {
                    return v6;
                }
            }

            // select x, c1, c1+/-1 -> add c1/c2, (zext x)
            if(select(any(v1), capture(int_(i1), v2), capture(int_(i2), v3))(matchCtx) && !inst->getType()->isBoolean()) {
                if(i2 == i1 + 1) {
                    auto zext = builder.makeOp<CastInst>(InstructionID::ZExt, inst->getType(), v1);
                    return builder.makeOp<BinaryInst>(InstructionID::Sub, v3, zext);
                }
                if(i2 == i1 - 1) {
                    auto zext = builder.makeOp<CastInst>(InstructionID::ZExt, inst->getType(), v1);
                    return builder.makeOp<BinaryInst>(InstructionID::Add, zext, v3);
                }
            }

            // neg(x) * c -> x * -c
            if(mul(oneUse(neg(any(v1))), int_(i1))(matchCtx)) {
                return builder.makeOp<BinaryInst>(InstructionID::Mul, v1, makeIntLike(-i1, v1));
            }

            // trunc(trunc(x)) -> trunc(x)
            if(ztrunc(capture(ztrunc(any(v1)), v2))(matchCtx) && v1->getType()->isSame(inst->getType())) {
                return v2;
            }
            if(ztrunc(strunc(any(v1)))(matchCtx) && v1->getType()->isSame(inst->getType())) {
                return builder.makeOp<CastInst>(InstructionID::UnsignedTrunc, inst->getType(), v1);
            }
            if(strunc(capture(strunc(any(v1)), v2))(matchCtx) && v1->getType()->isSame(inst->getType())) {
                return v2;
            }
            if(strunc(ztrunc(any(v1)))(matchCtx) && v1->getType()->isSame(inst->getType())) {
                return builder.makeOp<CastInst>(InstructionID::SignedTrunc, inst->getType(), v1);
            }

            if(or_(capture(icmp(cmp1, any(v1), any(v2)), v5), capture(icmp(cmp2, any(v3), any(v4)), v6))(matchCtx) && v1 == v3 &&
               v2 == v4) {
                // (x < y) || (x != y) -> x != y
                if(cmp1 == CompareOp::ICmpSignedLessThan && cmp2 == CompareOp::ICmpNotEqual) {
                    return v6;
                }
            }

            if(and_(oneUse(add(any(v1), int_(i1))), capture(cint_(1), v2))(matchCtx)) {
                if((i1 & 1) != i1)
                    return builder.makeOp<BinaryInst>(
                        InstructionID::And, builder.makeOp<BinaryInst>(InstructionID::Add, v1, makeIntLike(i1 & 1, v1)), v2);
            }

            if(and_(oneUse(select(any(v1), oneUse(add(any(v2), int_(i1))), any(v3))), capture(cint_(1), v4))(matchCtx)) {
                if((i1 & 1) != i1) {
                    return builder.makeOp<BinaryInst>(
                        InstructionID::And,
                        builder.makeOp<SelectInst>(
                            v1, builder.makeOp<BinaryInst>(InstructionID::Add, v2, makeIntLike(i1 & 1, v2)), v3),
                        v4);
                }
            }

            if(select(any(v1), add(any(v2), cint_(1)), any(v3))(matchCtx) && v2 == v3) {
                return builder.makeOp<BinaryInst>(InstructionID::Add, v2,
                                                  builder.makeOp<CastInst>(InstructionID::ZExt, v2->getType(), v1));
            }

            // zext (x < 0) -> x lsr (bitwidth - 1)
            if(zext(oneUse(icmp(cmp, any(v1), cint_(0))))(matchCtx) && inst->getType()->isSame(v1->getType())) {
                bool usedByCmp = false;
                for(auto user : inst->users()) {
                    if(user->getInstID() == InstructionID::ICmp) {
                        usedByCmp = true;
                        break;
                    }
                }
                if(!usedByCmp && cmp == CompareOp::ICmpSignedLessThan) {
                    return builder.makeOp<BinaryInst>(InstructionID::LShr, v1,
                                                      makeIntLike(v1->getType()->as<IntegerType>()->getBitwidth() - 1, v1));
                }
            }

            // (sdiv x, c1) == c2 -> x in (c1*c2-c1, c1*c2+c1)
            if(target.isNativeSupported(InstructionID::ICmp) && icmp(cmp, sdiv(any(v1), int_(i1)), int_(i2))(matchCtx) &&
               v1->getType()->as<IntegerType>()->getBitwidth() == 32) {
                if(cmp == CompareOp::ICmpEqual && i1 > 0 && i2 != std::numeric_limits<int32_t>::max() &&
                   12 != std::numeric_limits<int32_t>::min()) {
                    auto lower = i1 * i2;
                    auto upper = i1 * i2;

                    if(i2 > 0) {
                        upper += i1;
                    } else if(i2 == 0) {
                        lower -= i1 - 1;
                        upper += i1;
                    } else {
                        lower -= i1 - 1;
                        ++upper;
                    }

                    if(upper - lower <= static_cast<intmax_t>(std::numeric_limits<uint32_t>::max()) &&
                       (-std::numeric_limits<int32_t>::max() <= lower && lower <= std::numeric_limits<int32_t>::max())) {
                        Value* val = v1;
                        if(lower != 0)
                            val = builder.makeOp<BinaryInst>(InstructionID::Add, val, makeIntLike(-lower, v1));
                        return builder.makeOp<CompareInst>(InstructionID::ICmp, CompareOp::ICmpUnsignedLessThan, val,
                                                           makeIntLike(upper - lower, v1));
                    }
                }
            }

            // TODO: nan and negative zero?
            if(select(fcmp(cmp, any(v1), cfp_(0.0)), fneg(any(v2)), any(v3))(matchCtx) &&
               (cmp == CompareOp::FCmpOrderedLessThan || cmp == CompareOp::FCmpOrderedLessEqual) && v1 == v2 && v1 == v3) {
                return builder.makeOp<UnaryInst>(InstructionID::FAbs, v1);
            }
            if(select(fcmp(cmp, any(v1), cfp_(0.0)), any(v2), fneg(any(v3)))(matchCtx) &&
               (cmp == CompareOp::FCmpOrderedGreaterEqual || cmp == CompareOp::FCmpOrderedGreaterThan) && v1 == v2 && v1 == v3) {
                return builder.makeOp<UnaryInst>(InstructionID::FAbs, v1);
            }

            if(fabs(capture(fabs(any(v1)), v2))(matchCtx))
                return v2;

            if(select(any(v1), oneUse(select(any(v2), any(v3), any(v4))), any(v5))(matchCtx) && v4 == v5) {
                return builder.makeOp<SelectInst>(builder.makeOp<BinaryInst>(InstructionID::And, v1, v2), v3, v4);
            }

            if(select(any(v1), zext(any(v2)), cint_(0))(matchCtx) && v2->getType()->isBoolean()) {
                return builder.makeOp<CastInst>(InstructionID::ZExt, inst->getType(),
                                                builder.makeOp<BinaryInst>(InstructionID::And, v1, v2));
            }
            if(select(any(v1), zext(any(v2)), cint_(1))(matchCtx) && v2->getType()->isBoolean()) {
                return builder.makeOp<CastInst>(InstructionID::ZExt, inst->getType(),
                                                builder.makeOp<BinaryInst>(InstructionID::Or, makeNot(v1), v2));
            }
            if(select(any(v1), cint_(0), zext(any(v2)))(matchCtx) && v2->getType()->isBoolean()) {
                return builder.makeOp<CastInst>(InstructionID::ZExt, inst->getType(),
                                                builder.makeOp<BinaryInst>(InstructionID::And, makeNot(v1), v2));
            }
            if(select(any(v1), cint_(1), zext(any(v2)))(matchCtx) && v2->getType()->isBoolean()) {
                return builder.makeOp<CastInst>(InstructionID::ZExt, inst->getType(),
                                                builder.makeOp<BinaryInst>(InstructionID::Or, v1, v2));
            }

            if(neg(oneUse(add(oneUse(sub(any(v1), any(v2))), any(v3))))(matchCtx)) {
                return builder.makeOp<BinaryInst>(InstructionID::Sub, v2, builder.makeOp<BinaryInst>(InstructionID::Add, v1, v3));
            }

            // if(s2f(zext(boolean(v1)))(matchCtx)) {
            //     return builder.makeOp<SelectInst>(v1, make<ConstantFloatingPoint>(inst->getType(), 1.0),
            //                                       make<ConstantFloatingPoint>(inst->getType(), 0.0));
            // }

            if(sub(oneUse(select(any(v1), any(v2), cint_(0))), any(v3))(matchCtx)) {
                return builder.makeOp<SelectInst>(v1, builder.makeOp<BinaryInst>(InstructionID::Sub, v2, v3),
                                                  builder.makeOp<UnaryInst>(InstructionID::Neg, v3));
            }

            return nullptr;
        });
        return ret || modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& target = analysis.module().getTarget();
        IRBuilder builder{ target };
        bool modified = false;
        for(auto block : func.blocks()) {
            modified |= runOnBlock(builder, *block, target);
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ArithmeticReduce"sv;
    }
};

CMMC_TRANSFORM_PASS(ArithmeticReduce);

CMMC_NAMESPACE_END

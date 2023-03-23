/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2022 Yingwei Zheng and Bingzhen Wang
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
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <limits>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

// TODO: fuse sext/zext/trunc
// TODO: cross-block matching

class ArithmeticReduce final : public TransformPass<Function> {
    static bool runOnBlock(IRBuilder& builder, Block& block) {
        bool modified = false;
        const auto ret = reduceBlock(builder, block, [&](Instruction* inst, ReplaceMap& replace) -> Value* {
            MatchContext<Value> matchCtx{ inst, &replace };

            auto makeIntLike = [](intmax_t val, const Value* like) { return ConstantInteger::get(like->getType(), val); };
            auto makeNot = [&](Value* val) {
                return builder.makeOp<BinaryInst>(InstructionID::Xor, val->getType(), val, builder.getTrue());
            };

            Value *v1, *v2, *v3, *v4;
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
            // 0 - a -> -a
            if(sub(cint_(0), any(v1))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::Neg, v1->getType(), v1);
            if(fsub(cfp_(0.0), any(v1))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::FNeg, v1->getType(), v1);
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
            // a * -1 -> -a
            if(mul(any(v1), cint_(-1))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::Neg, v1->getType(), v1);
            if(fmul(any(v1), cfp_(-1.0))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::FNeg, v1->getType(), v1);
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
                return builder.makeOp<UnaryInst>(InstructionID::Neg, v1->getType(), v1);
            if(fdiv(any(v1), cfp_(1.0))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::FNeg, v1->getType(), v1);
            // a / -a -> -1
            if(sdiv(any(v1), neg(any(v2)))(matchCtx) && v1 == v2)
                return makeIntLike(-1, inst);
            if(fdiv(any(v1), neg(any(v2)))(matchCtx) && v1 == v2)
                return make<ConstantFloatingPoint>(inst->getType(), -1.0);
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
            // a | a -> a
            if(or_(any(v1), any(v2))(matchCtx) && v1 == v2)
                return v1;
            CompareOp cmp;
            // uint >= 0 -> true
            // uint < 0 -> false
            if(ucmp(cmp, any(v1), cuint_(0))(matchCtx)) {
                switch(cmp) {
                    case CompareOp::GreaterEqual:
                        return builder.getTrue();
                    case CompareOp::LessThan:
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
                return builder.makeOp<BinaryInst>(InstructionID::Sub, inst->getType(), v1, v2);
            }
            // a - -b -> a + b
            if(sub(any(v1), neg(any(v2)))(matchCtx)) {
                return builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), v1, v2);
            }
            // select c?a:a -> a
            if(select(any(v1), any(v2), any(v3))(matchCtx) && v2 == v3) {
                return v2;
            }
            uintmax_t u1;
            if(select(uint_(u1), any(v2), any(v3))(matchCtx)) {
                return u1 ? v2 : v3;
            }
            // a + a -> 2 * a
            if(add(any(v1), any(v2))(matchCtx) && v1 == v2)
                return builder.makeOp<BinaryInst>(InstructionID::Mul, inst->getType(), makeIntLike(2, inst), v1);
            // b * a + a -> (b+1) * a
            if(add(mul(any(v1), any(v2)), any(v3))(matchCtx)) {
                Value *a = nullptr, *b = nullptr;
                if(v1 == v3) {
                    a = v1, b = v2;
                } else if(v2 == v3) {
                    a = v2, b = v1;
                }
                if(a && b)
                    return builder.makeOp<BinaryInst>(
                        InstructionID::Mul, inst->getType(),
                        builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), b, makeIntLike(1, inst)), a);
            }
            // b * a + c * a -> (b + c) * a
            if(add(mul(any(v1), any(v2)), mul(any(v3), any(v4)))(matchCtx)) {
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
                    return builder.makeOp<BinaryInst>(InstructionID::Mul, inst->getType(),
                                                      builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), b, c), a);
            }

            // c % (2^k) = c & (2^k - 1)
            uintmax_t c;
            if(urem(any(v1), uint_(c))(matchCtx) && c && (c == (c & (-c)))) {
                return builder.makeOp<BinaryInst>(InstructionID::And, inst->getType(), v1,
                                                  makeIntLike(static_cast<intmax_t>(c - 1), inst));
            }

            // (zext i1 a) != 0 -> a
            // (zext i1 a) == 1 -> a
            if(scmp(cmp, zext(any(v1)), uint_(c))(matchCtx) && v1->getType()->isBoolean()) {
                if(cmp == CompareOp::Equal) {
                    if(c == 0) {
                        return makeNot(v1);
                    }
                    if(c == 1) {
                        return v1;
                    }
                    return builder.getTrue();
                }
                if(cmp == CompareOp::NotEqual) {
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
            if(scmp(cmp, zext(any(v1)), cuint_(1))(matchCtx) && cmp == CompareOp::Equal && v1->getType()->isBoolean()) {
                return v1;
            }

            // i1 v1 == true -> v1
            if(scmp(cmp, any(v1), cuint_(1))(matchCtx) && cmp == CompareOp::Equal && v1->getType()->isBoolean()) {
                return v1;
            }

            // select x 1 0 -> zext x
            if(select(any(v1), cuint_(1), cuint_(0))(matchCtx)) {
                if(inst->getType()->isBoolean()) {
                    return v1;
                }
                return builder.makeOp<CastInst>(InstructionID::ZExt, inst->getType(), v1);
            }

            // gep x 0 -> x
            if(inst->getInstID() == InstructionID::GetElementPtr && inst->operands().size() == 2 &&
               cuint_(0)(MatchContext<Value>{ inst->getOperand(0), &replace })) {
                return inst->operands().back();
            }

            intmax_t i1, i2;
            // add (add x c1) c2 -> add x c1+c2
            if(add(add(any(v1), int_(i1)), int_(i2))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), v1, makeIntLike(i1 + i2, v1));
            // add (sub x c1) c2 -> add x c2-c1
            if(add(sub(any(v1), int_(i1)), int_(i2))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), v1, makeIntLike(i2 - i1, v1));
            // sub (sub x c1) c2 -> add x -c1-c2
            if(sub(sub(any(v1), int_(i1)), int_(i2))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), v1, makeIntLike(-(i1 + i2), v1));
            // sub (add x c1) c2 -> add x c1-c2
            if(sub(add(any(v1), int_(i1)), int_(i2))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), v1, makeIntLike(i1 - i2, v1));

            // commutative c x -> commutative x c
            switch(inst->getInstID()) {
                case InstructionID::Add:
                    [[fallthrough]];
                case InstructionID::Mul:
                    [[fallthrough]];
                case InstructionID::Or:
                    [[fallthrough]];
                case InstructionID::Xor:
                    [[fallthrough]];
                case InstructionID::And: {
                    if(inst->getOperand(0)->isConstant() && !inst->getOperand(1)->isConstant()) {
                        auto& operands = inst->operands();
                        std::swap(operands[0], operands[1]);
                        modified = true;
                    }
                } break;
                default:
                    break;
            }

            // a - c -> a + (-c)
            if(sub(any(v1), int_(i1))(matchCtx) && !v1->isConstant())
                return builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), v1, makeIntLike(-i1, v1));

            // select cond, x, x + 1
            // ->
            // sub x + 1, (zext cond)
            if((select(any(v1), int_(i1), int_(i2))(matchCtx) && i1 + 1 == i2) ||
               (select(any(v1), any(v2), add(any(v3), cuint_(1)))(matchCtx) && v2 == v3)) {
                auto val = v1;
                const auto base = inst->getOperand(2);
                const auto targetType = base->getType();
                if(!targetType->isBoolean())
                    val = builder.makeOp<CastInst>(InstructionID::ZExt, targetType, val);
                return builder.makeOp<BinaryInst>(InstructionID::Sub, targetType, base, val);
            }

            // select (not cond), x, y
            // ->
            // select cond, y, x
            if(select(not_(any(v1)), any(v2), any(v3))(matchCtx)) {
                auto& operands = inst->operands();
                operands[0] = v1;
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
            if(xcmp(cmp, any(v1), any(v2))(matchCtx) && v1 == v2) {
                return (cmp == CompareOp::Equal || cmp == CompareOp::LessEqual || cmp == CompareOp::GreaterEqual) ?
                    builder.getTrue() :
                    builder.getFalse();
            }

            // (x op c1) cmp c2
            if(scmp(cmp, add(any(v1), int_(i1)), int_(i2))(matchCtx)) {
                const auto res = builder.makeOp<CompareInst>(inst->getInstID(), cmp, v1, makeIntLike(i2 - i1, v1));
                return res;
            }
            if(scmp(cmp, sub(any(v1), int_(i1)), int_(i2))(matchCtx)) {
                return builder.makeOp<CompareInst>(inst->getInstID(), cmp, v1, makeIntLike(i2 + i1, v1));
            }
            if(scmp(cmp, sub(int_(i1), any(v1)), int_(i2))(matchCtx)) {
                return builder.makeOp<CompareInst>(inst->getInstID(), cmp, makeIntLike(i1 - i2, v1), v1);
            }

            // -x cmp c -> -c cmp x
            if(scmp(cmp, neg(any(v1)), int_(i1))(matchCtx)) {
                return builder.makeOp<CompareInst>(inst->getInstID(), cmp, makeIntLike(-i1, v1), v1);
            }

            // FIXME: Range analysis
            // (((x mod c1) + c2) mod c1 + c3) mod c1 -> ((x mod c1) + (c2 + c3)) mod c1
            intmax_t i3, i4, i5;
            if(srem(add(srem(add(capture(srem(any(v1), capture(int_(i1), v3)), v2), int_(i2)), int_(i3)), int_(i4)),
                    int_(i5))(matchCtx) &&
               (i1 > 0 && i1 == i3 && i3 == i5) && (i2 >= 0 && i4 >= 0 && i1 + i2 + i4 < std::numeric_limits<int32_t>::max())) {
                return builder.makeOp<BinaryInst>(
                    InstructionID::SRem, inst->getType(),
                    builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), v2, makeIntLike((i2 + i4) % i1, v2)), v3);
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
            modified |= runOnBlock(builder, *block);
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ArithmeticReduce"sv;
    }
};

CMMC_TRANSFORM_PASS(ArithmeticReduce);

CMMC_NAMESPACE_END

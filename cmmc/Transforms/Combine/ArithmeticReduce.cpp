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
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class ArithmeticReduce final : public TransformPass<Function> {
    bool runOnBlock(Block& block) const {
        return reduceBlock(block, [](Instruction* inst) -> Value* {
            Value *v1, *v2, *v3, *v4;
            // a + 0 -> a
            if(add(any(v1), cint_(0))(inst))
                return v1;
            if(fadd(any(v1), cfp_(0.0))(inst))
                return v1;
            // a - 0 -> a
            if(sub(any(v1), cint_(0))(inst))
                return v1;
            if(fsub(any(v1), cfp_(0.0))(inst))
                return v1;
            // 0 - a -> -a
            if(sub(cint_(0), any(v1))(inst))
                return make<UnaryInst>(InstructionID::Neg, v1->getType(), v1);
            if(fsub(cfp_(0.0), any(v1))(inst))
                return make<UnaryInst>(InstructionID::FNeg, v1->getType(), v1);
            // a - a -> 0
            if(sub(any(v1), any(v2))(inst) && v1 == v2)
                return make<ConstantInteger>(inst->getType(), 0);
            if(fsub(any(v1), any(v2))(inst) && v1 == v2)
                return make<ConstantFloatingPoint>(inst->getType(), 0.0);
            // a * 0 -> 0
            if(mul(any(v1), cint_(0))(inst))
                return make<ConstantInteger>(inst->getType(), 0);
            if(fmul(any(v1), cfp_(0.0))(inst))
                return make<ConstantFloatingPoint>(inst->getType(), 0.0);
            // a * 1 -> a
            if(mul(any(v1), cint_(1))(inst))
                return v1;
            if(fmul(any(v1), cfp_(1.0))(inst))
                return v1;
            // a * -1 -> -a
            if(mul(any(v1), cint_(-1))(inst))
                return make<UnaryInst>(InstructionID::Neg, v1->getType(), v1);
            if(fmul(any(v1), cfp_(-1.0))(inst))
                return make<UnaryInst>(InstructionID::FNeg, v1->getType(), v1);
            // 0 / a -> 0
            if(sdiv(cint_(0), any(v1))(inst) || udiv(cuint_(0), any(v1))(inst))
                return make<ConstantInteger>(inst->getType(), 0);
            if(fdiv(cfp_(0.0), any(v1))(inst))
                return make<ConstantFloatingPoint>(inst->getType(), 0.0);
            // a / a -> 1
            if((sdiv(any(v1), any(v2))(inst) || udiv(any(v1), any(v2))(inst)) && v1 == v2)
                return make<ConstantInteger>(inst->getType(), 1);
            if(fdiv(any(v1), any(v2))(inst) && v1 == v2)
                return make<ConstantFloatingPoint>(inst->getType(), 1.0);
            // a / 1 -> a
            if(sdiv(any(v1), cint_(1))(inst) || udiv(any(v1), cuint_(1))(inst))
                return v1;
            if(fdiv(any(v1), cfp_(1.0))(inst))
                return v1;
            // a / -1 -> -a
            if(sdiv(any(v1), cint_(-1))(inst))
                return make<UnaryInst>(InstructionID::Neg, v1->getType(), v1);
            if(fdiv(any(v1), cfp_(1.0))(inst))
                return make<UnaryInst>(InstructionID::FNeg, v1->getType(), v1);
            // a / -a -> -1
            if(sdiv(any(v1), neg(any(v2)))(inst) && v1 == v2)
                return make<ConstantInteger>(inst->getType(), -1);
            if(fdiv(any(v1), neg(any(v2)))(inst) && v1 == v2)
                return make<ConstantFloatingPoint>(inst->getType(), -1.0);
            // 0 % a -> 0
            if(srem(cint_(0), any(v1))(inst) || urem(cuint_(0), any(v1))(inst))
                return make<ConstantInteger>(inst->getType(), 0);
            // a % a -> 0
            if((srem(any(v1), any(v2))(inst) || urem(any(v1), any(v2))(inst)) && v1 == v2)
                return make<ConstantInteger>(inst->getType(), 0);
            // a % 1 -> 0
            if(srem(any(v1), cint_(1))(inst) || urem(any(v1), cuint_(1))(inst))
                return make<ConstantInteger>(inst->getType(), 0);
            // a * c + b * c -> (a + b) * c
            if(add(mul(any(v1), any(v2)), mul(any(v3), any(v4)))(inst) && v2 == v4) {
                const auto sum = make<BinaryInst>(InstructionID::Add, inst->getType(), v1, v3);
                return make<BinaryInst>(InstructionID::Mul, inst->getType(), sum, v2);
            }
            // For floating point, fma(a, c, b * c) may be better
            // a ^ a -> 0
            if(xor_(any(v1), any(v2))(inst) && v1 == v2)
                return make<ConstantInteger>(inst->getType(), 0);
            // a ^ 0 -> a
            if(xor_(any(v1), cuint_(0))(inst))
                return v1;
            // a & a -> a
            if(and_(any(v1), any(v2))(inst) && v1 == v2)
                return v1;
            // a | a -> a
            if(or_(any(v1), any(v2))(inst) && v1 == v2)
                return v1;
            CompareOp cmp;
            // uint >= 0 -> true
            // uint < 0 -> false
            if(ucmp(cmp, any(v1), cuint_(0))(inst)) {
                switch(cmp) {
                    case CompareOp::GreaterEqual:
                        return make<ConstantInteger>(inst->getType(), 1);
                    case CompareOp::LessThan:
                        return make<ConstantInteger>(inst->getType(), 0);
                    default:
                        break;
                }
            }
            // !!a -> a
            if(not_(not_(any(v1)))(inst))
                return v1;
            // a + -b -> a - b
            if(add(any(v1), neg(any(v2)))(inst)) {
                return make<BinaryInst>(InstructionID::Sub, inst->getType(), v1, v2);
            }
            // a - -b -> a + b
            if(sub(any(v1), neg(any(v2)))(inst)) {
                return make<BinaryInst>(InstructionID::Add, inst->getType(), v1, v2);
            }
            // select c?a:a -> a
            if(select(any(v1), any(v2), any(v3))(inst) && v2 == v3) {
                return v2;
            }
            return nullptr;
        });
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto block : func.blocks()) {
            modified |= runOnBlock(*block);
        }
        return modified;
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }

    std::string_view name() const noexcept override {
        using namespace std::string_view_literals;
        return "ArithmeticReduce"sv;
    }
};

CMMC_TRANSFORM_PASS(ArithmeticReduce);

CMMC_NAMESPACE_END

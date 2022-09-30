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

// 1 + 2 -> 3
// 2 < 1 -> false

#include <cmath>
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class ConstantPropagation final : public TransformPass<Function> {
    bool reduceConstantBlockArgs(Block& block) const {
        std::vector<std::pair<Value*, Value*>> replace;
        for(auto arg : block.args()) {
            const auto target = arg->getTarget();
            if(!target)
                continue;
            if(target->isConstant() || target->isGlobal())
                replace.emplace_back(arg, target);
        }
        bool modified = false;
        for(auto inst : block.instructions()) {
            for(auto [src, dst] : replace)
                modified |= inst->replaceOperand(src, dst);
        }
        return modified;
    }

    bool runOnBlock(Block& block) const {
        return reduceBlock(block, [](Instruction* inst) -> Value* {
            intmax_t i1, i2;
            uintmax_t u1, u2;
            double f1, f2;
            CompareOp cmp;

            if(inst->isIntegerOp()) {
                auto makeInt = [&](Instruction* inst, intmax_t val) { return make<ConstantInteger>(inst->getType(), val); };

                if(not_(int_(i1))(inst))
                    return makeInt(inst, !i1);
                if(neg(int_(i1))(inst))
                    return makeInt(inst, -i1);
                if(add(int_(i1), int_(i2))(inst))
                    return makeInt(inst, i1 + i2);
                if(sub(int_(i1), int_(i2))(inst))
                    return makeInt(inst, i1 - i2);
                if(mul(int_(i1), int_(i2))(inst))
                    return makeInt(inst, i1 * i2);
                if(sdiv(int_(i1), int_(i2))(inst) && i2)
                    return makeInt(inst, i1 / i2);
                if(udiv(uint_(u1), uint_(u2))(inst) && u2)
                    return makeInt(inst, u1 / u2);
                if(srem(int_(i1), int_(i2))(inst) && i2)
                    return makeInt(inst, i1 % i2);
                if(urem(uint_(u1), uint_(u2))(inst) && u2)
                    return makeInt(inst, u1 % u2);
                if(shl(uint_(u1), uint_(u2))(inst))
                    return makeInt(inst, u1 << u2);
                if(lshr(uint_(u1), uint_(u2))(inst))
                    return makeInt(inst, u1 >> u2);
                if(ashr(int_(i1), uint_(u2))(inst))
                    return makeInt(inst, i1 >> u2);
                if(and_(uint_(u1), uint_(u2))(inst))
                    return makeInt(inst, u1 & u2);
                if(or_(uint_(u1), uint_(u2))(inst))
                    return makeInt(inst, u1 | u2);
                if(xor_(uint_(u1), uint_(u2))(inst))
                    return makeInt(inst, i1 ^ u2);

            } else if(inst->isFloatingPointOp()) {
                auto makeFP = [&](Instruction* inst, double val) { return make<ConstantFloatingPoint>(inst->getType(), val); };
                double f3;

                if(fneg(fp_(f1))(inst))
                    return makeFP(inst, -f1);
                if(fadd(fp_(f1), fp_(f2))(inst))
                    return makeFP(inst, f1 + f2);
                if(fsub(fp_(f1), fp_(f2))(inst))
                    return makeFP(inst, f1 - f2);
                if(fmul(fp_(f1), fp_(f2))(inst))
                    return makeFP(inst, f1 * f2);
                if(fdiv(fp_(f1), fp_(f2))(inst))
                    return makeFP(inst, f1 / f2);
                if(fma_(fp_(f1), fp_(f2), fp_(f3))(inst))
                    return makeFP(inst, fma(f1, f2, f3));
            } else if(inst->isCompareOp()) {
                auto doCompare = [&](CompareOp cmp, auto lhs, auto rhs) {
                    switch(cmp) {
                        case CompareOp::LessThan:
                            return lhs < rhs;
                        case CompareOp::LessEqual:
                            return lhs <= rhs;
                        case CompareOp::GreaterThan:
                            return lhs > rhs;
                        case CompareOp::GreaterEqual:
                            return lhs >= rhs;
                        case CompareOp::Equal:
                            return lhs == rhs;
                        case CompareOp::NotEqual:
                            return lhs != rhs;
                    }
                    reportUnreachable();
                };
                auto makeBool = [&](Instruction* inst, bool val) { return make<ConstantInteger>(inst->getType(), val); };

                if(scmp(cmp, int_(i1), int_(i2))(inst))
                    return makeBool(inst, doCompare(cmp, i1, i2));
                if(ucmp(cmp, uint_(u1), uint_(u2))(inst))
                    return makeBool(inst, doCompare(cmp, u1, u2));
                if(fcmp(cmp, fp_(f1), fp_(f2))(inst))
                    return makeBool(inst, doCompare(cmp, f1, f2));
            }

            return nullptr;
        });
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        bool modified = false;
        while(true) {
            bool changed = false;
            for(auto block : func.blocks()) {
                modified |= reduceConstantBlockArgs(*block);
                modified |= runOnBlock(*block);
            }
            modified |= changed;
            if(!changed)
                return modified;
        }
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }
};

CMMC_TRANSFORM_PASS(ConstantPropagation);

CMMC_NAMESPACE_END

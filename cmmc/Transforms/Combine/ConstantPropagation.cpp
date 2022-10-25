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
#include <cmmc/Analysis/BlockArgumentAnalysis.hpp>
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
    bool reduceConstantBlockArgs(Block& block, const BlockArgumentAnalysisResult& blockArgRef) const {
        std::unordered_map<Value*, Value*> replace;
        for(auto arg : block.args()) {
            const auto target = blockArgRef.query(arg);
            if(!target)
                continue;
            if(target->isConstant() || target->isGlobal())
                replace.emplace(arg, target);
        }
        return replaceOperands(block, replace);
    }

    bool runOnBlock(Block& block) const {
        return reduceBlock(block, [](Instruction* inst) -> Value* {
            intmax_t i1, i2;
            uintmax_t u1, u2;
            double f1, f2;
            CompareOp cmp;
            auto makeInt = [&](Instruction* inst, intmax_t val) { return make<ConstantInteger>(inst->getType(), val); };
            auto makeFP = [&](Instruction* inst, double val) { return make<ConstantFloatingPoint>(inst->getType(), val); };

            if(inst->isIntegerOp()) {
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
                    return makeInt(inst, u1 ^ u2);
            } else if(inst->isFloatingPointOp()) {
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
            } else if(inst->isConvertOp()) {
                uintmax_t uval;
                intmax_t sval;
                double fval;
                const auto val = inst->getOperand(0);
                switch(inst->getInstID()) {
                    case InstructionID::SExt: {
                        if(int_(sval)(val))
                            return makeInt(inst, sval);
                        break;
                    }
                    case InstructionID::ZExt:
                        [[fallthrough]];
                    case InstructionID::Trunc: {
                        if(uint_(uval)(val))
                            return makeInt(inst, static_cast<intmax_t>(uval));
                        break;
                    }
                    case InstructionID::F2U:
                        [[fallthrough]];
                    case InstructionID::F2S: {
                        if(fp_(fval)(val))
                            return makeInt(inst,
                                           inst->getInstID() == InstructionID::F2S ?
                                               static_cast<intmax_t>(fval) :
                                               static_cast<intmax_t>(static_cast<uintmax_t>(fval)));
                        break;
                    }
                    case InstructionID::U2F: {
                        if(uint_(uval)(val))
                            return makeFP(inst, static_cast<double>(uval));
                        break;
                    }
                    case InstructionID::S2F: {
                        if(int_(sval)(val))
                            return makeFP(inst, static_cast<double>(sval));
                        break;
                    }
                    case InstructionID::FCast: {
                        if(fp_(fval)(val))
                            return makeFP(inst, fval);
                        break;
                    }
                    default:
                        break;
                }
            } else {
                // select cval?a:b -> a/b
                Value *v1, *v2;
                if(select(uint_(u1), any(v1), any(v2))(inst)) {
                    return u1 ? v1 : v2;
                }
                // select c?a:a -> a
                if(select(any(v1), uint_(u1), uint_(u2))(inst) && u1 == u2) {
                    return inst->getOperand(1);
                }
                // select c?a:a -> a
                if(select(any(v1), fp_(f1), fp_(f2))(inst) && f1 == f2) {
                    return inst->getOperand(1);
                }
            }

            return nullptr;
        });
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& blockArgRef = analysis.get<BlockArgumentAnalysis>(func);
        bool modified = false;
        while(true) {
            bool changed = false;
            for(auto block : func.blocks()) {
                modified |= reduceConstantBlockArgs(*block, blockArgRef);
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

    std::string_view name() const noexcept override {
        using namespace std::string_view_literals;
        return "ConstantPropagation"sv;
    }
};

CMMC_TRANSFORM_PASS(ConstantPropagation);

CMMC_NAMESPACE_END

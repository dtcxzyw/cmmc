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

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class ConstantPropagation final : public TransformPass<Function> {
    bool runOnBlock(Block& block) const {
        return reduceBlock(block, [](Instruction* inst) -> Value* {
            auto makeInt = [&](Instruction* inst, intmax_t val) { return make<ConstantInteger>(inst->getType(), val); };
            auto makeFP = [&](Instruction* inst, double val) { return make<ConstantFloatingPoint>(inst->getType(), val); };

            intmax_t i1, i2;
            double f1, f2;
            if(inst->isIntegerOp()) {
                if(not_(int_(i1))(inst)) {
                    return makeInt(inst, !i1);
                } else if(neg(int_(i1))(inst)) {
                    return makeInt(inst, -i1);
                } else if(add(int_(i1), int_(i2))(inst)) {
                    return makeInt(inst, i1 + i2);
                } else if(sub(int_(i1), int_(i2))(inst)) {
                    return makeInt(inst, i1 - i2);
                } else if(mul(int_(i1), int_(i2))(inst)) {
                    return makeInt(inst, i1 * i2);
                } else if(sdiv(int_(i1), int_(i2))(inst) && i2) {
                    return makeInt(inst, i1 / i2);
                } else if(udiv(int_(i1), int_(i2))(inst) && i2) {
                    return makeInt(inst, static_cast<uintmax_t>(i1) / static_cast<uintmax_t>(i2));
                } else if(srem(int_(i1), int_(i2))(inst) && i2) {
                    return makeInt(inst, i1 % i2);
                } else if(urem(int_(i1), int_(i2))(inst) && i2) {
                    return makeInt(inst, static_cast<uintmax_t>(i1) % static_cast<uintmax_t>(i2));
                }
            } else if(inst->isFloatingPointOp()) {
                if(fneg(fp_(f1))(inst)) {
                    return makeFP(inst, -f1);
                } else if(fadd(fp_(f1), fp_(f2))(inst)) {
                    return makeFP(inst, f1 + f2);
                } else if(fsub(fp_(f1), fp_(f2))(inst)) {
                    return makeFP(inst, f1 - f2);
                } else if(fmul(fp_(f1), fp_(f2))(inst)) {
                    return makeFP(inst, f1 * f2);
                } else if(fdiv(fp_(f1), fp_(f2))(inst)) {
                    return makeFP(inst, f1 / f2);
                }
            }
            return nullptr;
        });
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        bool modified = false;
        for(auto block : func.blocks()) {
            modified |= runOnBlock(*block);
        }
        return modified;
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }
};

CMMC_TRANSFORM_PASS(ConstantPropagation);

CMMC_NAMESPACE_END

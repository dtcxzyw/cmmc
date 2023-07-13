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
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <limits>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

class ModuloOpt final : public TransformPass<Function> {
    static constexpr uint32_t depth = 5;

    static void collectSum(Value* val, Instruction* ctx, std::vector<Value*>& components, IntegerRange& r,
                           const IntegerRangeAnalysisResult& range, const DominateAnalysisResult& dom, intmax_t mod,
                           bool checkOverflow, bool allowCrossSRem, bool& hasCross) {
        Value *v1, *v2;
        if(add(any(v1), any(v2))(MatchContext<Value>{ val })) {
            auto tryCollect = [&](bool crossLhs, bool crossRhs) {
                const auto size = components.size();
                const auto oldRange = r;
                const auto hasCrossBackup = hasCross;
                collectSum(v1, ctx, components, r, range, dom, mod, checkOverflow, crossLhs, hasCross);
                collectSum(v2, ctx, components, r, range, dom, mod, checkOverflow, crossRhs, hasCross);
                if(!checkOverflow || r.isNoSignedOverflow())
                    return true;

                components.erase(components.begin() + static_cast<ptrdiff_t>(size), components.end());
                r = oldRange;
                hasCross = hasCrossBackup;
                return false;
            };

            if(tryCollect(true, true))
                return;
            if(tryCollect(true, false))
                return;
            if(tryCollect(false, true))
                return;
        }
        intmax_t i1;
        if(allowCrossSRem && srem(any(v1), int_(i1))(MatchContext<Value>{ val }) && i1 == mod) {
            const auto r2 = range.query(v1, dom, ctx, depth);
            const auto newRange = r + r2;
            if(!checkOverflow || newRange.isNoSignedOverflow()) {
                hasCross = true;
                collectSum(v1, ctx, components, r, range, dom, mod, checkOverflow, true, hasCross);
                return;
            }
        }

        components.push_back(val);
        r = r + range.query(val, dom, ctx, depth);
    }
    static bool mergeSum(Block* block, const IntegerRangeAnalysisResult& range, const DominateAnalysisResult& dom,
                         IRBuilder& builder) {
        auto modified = reduceBlock(builder, *block, [&](Instruction* inst) -> Value* {
            Value *val, *mod;
            intmax_t ival;
            if(srem(oneUse(any(val)), capture(int_(ival), mod))(MatchContext<Value>{ inst }) && val->isInstruction() &&
               ival != 0) {
                const auto oldRange = range.query(val, dom, inst, depth);
                bool checkOverflow = (1LL << 32) % ival != 0;
                if(!checkOverflow || oldRange.isNoSignedOverflow()) {
                    IntegerRange r(static_cast<intmax_t>(0));
                    std::vector<Value*> components;
                    bool hasCross;
                    collectSum(val, inst, components, r, range, dom, ival, checkOverflow, true, hasCross);
                    assert(!checkOverflow || r.isNoSignedOverflow());
                    if(hasCross) {
                        Value* sum = components.front();
                        for(uint32_t i = 1; i < components.size(); ++i)
                            sum = builder.makeOp<BinaryInst>(InstructionID::Add, sum, components[i]);
                        return builder.makeOp<BinaryInst>(InstructionID::SRem, sum, mod);
                    }
                }
            }

            return nullptr;
        });
        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& range = analysis.get<IntegerRangeAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        bool modified = false;

        IRBuilder builder{ analysis.module().getTarget() };
        for(auto block : func.blocks())
            modified |= mergeSum(block, range, dom, builder);

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ModuloOpt"sv;
    }
};

CMMC_TRANSFORM_PASS(ModuloOpt);

CMMC_NAMESPACE_END

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

// a * b + c -> fma(a, b, c)

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

class CombineFma final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& target = analysis.module().getTarget();
        IRBuilder builder{ target };

        bool modified = false;
        for(auto block : func.blocks()) {
            modified |= reduceBlock(builder, *block, [&](Instruction* inst, ReplaceMap&) -> Value* {
                MatchContext<Value> matchCtx{ inst, nullptr };
                Value *v1, *v2, *v3;
                if(fadd(fmul(any(v1), any(v2)), any(v3))(matchCtx)) {
                    return builder.makeOp<FMAInst>(v1, v2, v3);
                }
                return nullptr;
            });
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "CombineFma"sv;
    }
};

CMMC_TRANSFORM_PASS(CombineFma);

CMMC_NAMESPACE_END

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

// Utils before lowering

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class Mul2Shl final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& target = analysis.module().getTarget();
        assert(target.isNativeSupported(InstructionID::Shl));
        IRBuilder builder{ target };

        bool modified = false;
        for(auto block : func.blocks()) {
            reduceBlock(builder, *block, [&](Instruction* inst) -> Value* {
                Value *v1, *v2;
                if(mul(any(v1), intLog2(v2))(MatchContext<Value>{ inst })) {
                    return builder.makeOp<BinaryInst>(InstructionID::Shl, v1, v2);
                }
                return nullptr;
            });
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "Mul2Shl"sv;
    }
};

CMMC_TRANSFORM_PASS(Mul2Shl);

CMMC_NAMESPACE_END

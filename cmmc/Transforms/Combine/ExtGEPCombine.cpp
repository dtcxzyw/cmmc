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

// sext index -> index

#include <cmmc/Analysis/BlockArgumentAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <queue>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class ExtGEPCombine final : public TransformPass<Function> {
    static bool runBlock(Block& block, const BlockArgumentAnalysisResult& blockArgMap, const Type* indexType) {
        bool modified = false;
        for(auto inst : block.instructions()) {
            if(inst->getInstID() != InstructionID::GetElementPtr)
                continue;

            for(auto& operand : inst->operands()) {
                if(operand->getType()->isInteger()) {
                    Value* idx;
                    if(sext(any(idx))(MatchContext<Value>{ blockArgMap.queryRoot(operand), nullptr })) {
                        operand = idx;  // NOLINT(clang-analyzer-core.uninitialized.Assign)
                        modified = true;
                    }
                    intmax_t val;
                    if(operand->getType() != indexType &&
                       int_(val)(MatchContext<Value>{ blockArgMap.queryRoot(operand), nullptr })) {
                        operand = ConstantInteger::get(indexType, val);
                        modified = true;
                    }
                }
            }
        }

        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& blockArgMap = analysis.get<BlockArgumentAnalysis>(func);
        const auto indexType =
            IntegerType::get(static_cast<uint32_t>(analysis.module().getTarget().getDataLayout().getPointerSize() * 8));
        bool modified = false;

        for(auto block : func.blocks())
            modified |= runBlock(*block, blockArgMap, indexType);

        if(modified)
            blockArgPropagation(func);

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ExtGEPCombine"sv;
    }
};

CMMC_TRANSFORM_PASS(ExtGEPCombine);

CMMC_NAMESPACE_END

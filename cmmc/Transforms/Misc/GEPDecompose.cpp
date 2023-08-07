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

#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <queue>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class GEPDecompose final : public TransformPass<Function> {
    static bool runBlock(Block& block) {
        bool modified = false;

        for(auto& inst : block.instructions()) {
            if(inst.getInstID() != InstructionID::GetElementPtr)
                continue;
            const auto lastIdx = inst.arguments().back();
            Value *v1, *v2, *v3, *v4;
            if(oneUse(add(capture(mul(any(v1), any(v2)), v3), any(v4)))(MatchContext<Value>{ lastIdx }) && !v4->isConstant()) {
                const auto commonBase = inst.clone();
                commonBase->insertBefore(&block, inst.asIterator());
                commonBase->mutableOperands()[commonBase->mutableOperands().size() - 2]->resetValue(v3);
                const auto offset = make<GetElementPtrInst>(commonBase, std::vector<Value*>{ v4 });
                offset->insertBefore(&block, inst.asIterator());
                inst.replaceWith(offset);
                modified = true;
            }
        }

        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto block : func.blocks())
            modified |= runBlock(*block);

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "GEPDecompose"sv;
    }
};

CMMC_TRANSFORM_PASS(GEPDecompose);

CMMC_NAMESPACE_END

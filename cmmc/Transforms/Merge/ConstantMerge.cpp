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

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cstdint>
#include <unordered_map>
#include <unordered_set>

// TODO: merge with global vars?

CMMC_NAMESPACE_BEGIN

class ConstantMerge final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        std::unordered_set<ConstantValue*> visited;
        std::unordered_set<ConstantValue*, ConstantHasher, ConstantStrongEqual> pool;
        ReplaceMap replace;
        auto addValue = [&](ConstantValue* value) {
            if(!visited.insert(value).second)
                return;
            if(auto [iter, res] = pool.insert(value); !res)
                replace.emplace(value, *iter);
        };

        for(auto block : func.blocks()) {
            for(auto inst : block->instructions()) {
                for(auto operand : inst->operands())
                    if(auto val = dynamic_cast<ConstantValue*>(operand))
                        addValue(val);
            }
        }

        return replaceOperands(func, replace);
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ConstantMerge"sv;
    }
};

CMMC_TRANSFORM_PASS(ConstantMerge);

CMMC_NAMESPACE_END

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

// eliminate unused instructions in unreachable blocks
// ^entry():
//     xxx
//     unreachable;
// ==>
// ^entry():
//     unreachable;

#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <queue>

CMMC_NAMESPACE_BEGIN

class UnreachableEliminate final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto block : func.blocks()) {
            if(block->getTerminator()->getInstID() != InstructionID::Unreachable)
                continue;

            auto& insts = block->instructions();
            modified |= insts.size() != 1;
            DisableValueRefCheckScope scope;
            insts.erase(insts.begin(), std::prev(insts.end()));
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "UnreachableEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(UnreachableEliminate);

CMMC_NAMESPACE_END

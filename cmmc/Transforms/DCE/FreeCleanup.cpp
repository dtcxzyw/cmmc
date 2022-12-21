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

// Remove unused free instructions (blocks are not terminated with branches)

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>

CMMC_NAMESPACE_BEGIN

class FreeCleanup final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->isBranch())
                continue;

            block->instructions().remove_if([&](Instruction* inst) {
                if(inst->getInstID() == InstructionID::Free) {
                    modified = true;
                    return true;
                } else
                    return false;
            });
        }

        return modified;
    }

    std::string_view name() const noexcept override {
        return "FreeCleanup"sv;
    }
};

CMMC_TRANSFORM_PASS(FreeCleanup);

CMMC_NAMESPACE_END

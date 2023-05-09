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

#include <cmmc/IR/Attachments.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Transforms/TransformPass.hpp>

CMMC_NAMESPACE_BEGIN

static Flag doNotCheckUninitialized;  // NOLINT

CMMC_INIT_OPTIONS_BEGIN
doNotCheckUninitialized.setName("do-not-check-uninitialized-value", 'U').setDesc("don't check uninitialized values");
CMMC_INIT_OPTIONS_END

class UninitializedCheck final : public TransformPass<Function> {
    bool run(Function& func, AnalysisPassManager&) const override {
        if(doNotCheckUninitialized.get())
            return false;

        for(auto block : func.blocks()) {
            for(auto inst : block->instructions()) {
                for(auto operand : inst->operands())
                    if(operand->isConstant() && operand->is<UndefinedValue>()) {
                        DiagnosticsContext::get()
                            .attach<Reason>("use of uninitialized value or wrong optimization")
                            .attach<BlockAttachment>("related block", block)
                            .reportFatal();
                    }
            }
        }
        return false;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "UninitializedCheck"sv;
    }
};

CMMC_TRANSFORM_PASS(UninitializedCheck);

CMMC_NAMESPACE_END

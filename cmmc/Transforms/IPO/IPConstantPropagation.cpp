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

// 1 + 2 -> 3
// 2 < 1 -> false

#include <cmath>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <limits>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class IPConstantPropagation final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        if(func.getLinkage() == Linkage::Global)
            return false;

        bool modified = false;

        uint32_t argIdx = 0;
        for(auto arg : func.args()) {
            if(arg->isUsed()) {
                Value* commonArg = nullptr;
                bool same = true;
                for(auto user : func.users()) {
                    if(user->getInstID() == InstructionID::FunctionPtr)
                        return false;

                    auto val = user->getOperand(argIdx);
                    if(val == arg) {
                        continue;
                    }
                    if(!(val->isConstant() || val->isGlobal())) {
                        same = false;
                        break;
                    }
                    if(commonArg == nullptr) {
                        commonArg = val;
                    } else if(commonArg != val) {
                        same = false;
                        break;
                    }
                }

                if(same && commonArg) {
                    arg->replaceWith(commonArg);
                    modified = true;
                }
            }

            ++argIdx;
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "IPConstantPropagation"sv;
    }
};

CMMC_TRANSFORM_PASS(IPConstantPropagation);

CMMC_NAMESPACE_END

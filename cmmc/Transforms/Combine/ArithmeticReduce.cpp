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

// a * b + a * c -> a * (b + c)
// a - a -> 0
// a == a -> 1
// etc.

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class ArithmeticReduce final : public TransformPass<Function> {
    bool runOnBlock(Block& block) const {
        return false;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        bool modified = false;
        for(auto block : func.blocks()) {
            modified |= runOnBlock(*block);
        }
        return modified;
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }
};

CMMC_TRANSFORM_PASS(ArithmeticReduce);

CMMC_NAMESPACE_END

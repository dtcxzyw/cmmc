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

// a * b + a * c -> a * (b + c)
// a - a -> 0
// a == a -> 1
// etc.

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <limits>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

// srem x, large_imm
// select x < 0 ? x + large_imm: x
// ->
// while(x > large_imm) x -= large_imm;
// while(x < 0) x += large_imm;

class ModuloOpt final : public TransformPass<Function> {
    static constexpr uint32_t threshold = 4;

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        bool modified = false;
        CMMC_UNUSED(func);
        CMMC_UNUSED(analysis);
        // TODO: implement this after fixing tail duplication
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ModuloOpt"sv;
    }
};

CMMC_TRANSFORM_PASS(ModuloOpt);

CMMC_NAMESPACE_END

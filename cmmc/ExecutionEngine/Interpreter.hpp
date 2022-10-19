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

#pragma once
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <memory>
#include <variant>

CMMC_NAMESPACE_BEGIN

enum class SimulationFailReason {
    ExceedMemoryBudget,           //
    ExceedTimeBudget,             //
    ExceedMaxRecursiveDepth,      //
    ExceedMaxRecordedSizeEffect,  //
    UnexpectedException,          //
    UndeterminedControlFlow,      //
    UndeterminedSideEffect,       //
    UnsupportedTarget
};

class Interpreter final {
    size_t mTimeBudget,      // in ns
        mMemBudget,          // in bytes
        mMaxRecursiveDepth,  //
        mMaxRecordedSizeEffect;

public:
    Interpreter(size_t timeBudget = 10'000'000'000U, size_t memBudget = 2 << 30U, size_t maxRecursiveDepth = 256,
                size_t maxRecordedSizeEffect = 128);
    std::variant<Function*, SimulationFailReason> execute(Module& module, Function& func,
                                                          const std::vector<ConstantValue*>& arguments) const;
};

CMMC_NAMESPACE_END

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
#include <fstream>
#include <memory>
#include <ostream>
#include <variant>

CMMC_NAMESPACE_BEGIN

enum class SimulationFailReason {
    ExceedMemoryLimit,        //
    ExceedTimeLimit,          //
    ExceedMaxRecursiveDepth,  //
    MemoryError,              //
    DividedByZero,            //
    UnknownError,             //
    UnsupportedTarget,        //
    Undefined,                //
    Unreachable
};

struct SimulationIOContext final {
    std::istream& stdinStream;
    std::ostream& stdoutStream;
};

class Interpreter final {
    size_t mTimeBudget,      // in ns
        mMemBudget,          // in bytes
        mMaxRecursiveDepth;  //

public:
    Interpreter(size_t timeBudget = 10'000'000'000ULL, size_t memBudget = 2ULL << 30, size_t maxRecursiveDepth = 256);
    std::variant<ConstantValue*, SimulationFailReason>
    execute(Module& module, Function& func, const std::vector<ConstantValue*>& arguments, SimulationIOContext& ioCtx) const;
};

CMMC_NAMESPACE_END

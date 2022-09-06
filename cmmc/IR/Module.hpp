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
#include "cmmc/IR/Function.hpp"
#include "cmmc/IR/Global.hpp"
#include "cmmc/Support/Arena.hpp"
#include <ostream>

CMMC_NAMESPACE_BEGIN

class Module final {
    // List<Function*> mFuncs;

public:
    Module() = default;
    ~Module() = default;
    Module(const Module&) = delete;
    Module(Module&&) = delete;
    Module& operator=(const Module&) = delete;
    Module& operator=(Module&&) = delete;

    void dump(std::ostream& out);
};

CMMC_NAMESPACE_END

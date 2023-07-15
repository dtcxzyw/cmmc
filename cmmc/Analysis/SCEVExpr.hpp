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

#pragma once
#include <cmmc/IR/Instruction.hpp>
#include <vector>

// SCalar EVolution
// References:
// https://baziotis.cs.illinois.edu/compilers/introduction-to-scalar-evolution.html
// https://www.youtube.com/watch?v=AmjliNp0_00

CMMC_NAMESPACE_BEGIN

struct SCEV final {
    Value* initial;
    std::vector<std::pair<InstructionID, Value*>> step;
};

CMMC_NAMESPACE_END

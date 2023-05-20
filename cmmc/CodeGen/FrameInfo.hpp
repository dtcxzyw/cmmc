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
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cstdint>
#include <ostream>
#include <string_view>

CMMC_MIR_NAMESPACE_BEGIN

// TODO: calling conversion?
class TargetFrameInfo {
public:
    TargetFrameInfo() = default;
    virtual ~TargetFrameInfo() = default;
    // Lowering stage
    virtual void emitCall(FunctionCallInst* inst, LoweringContext& ctx) const = 0;
    virtual void emitPrologue(MIRFunction& func, LoweringContext& ctx) const = 0;
    virtual void emitReturn(ReturnInst* inst, LoweringContext& ctx) const = 0;
    // post-RA stage
};

CMMC_MIR_NAMESPACE_END

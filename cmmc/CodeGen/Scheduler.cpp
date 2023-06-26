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

#include "cmmc/CodeGen/MIR.hpp"
#include <cmmc/CodeGen/MIRCFGAnalysis.hpp>
#include <cmmc/CodeGen/ScheduleModel.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cstdint>
#include <iostream>
#include <unordered_map>

CMMC_MIR_NAMESPACE_BEGIN

static void preRAScheduleBlock(MIRBasicBlock& block, const CodeGenContext& ctx) {
    std::unordered_map<MIRInst*, std::vector<MIRInst*>> antiDeps;
    std::unordered_map<MIRInst*, uint32_t> degrees;
    std::unordered_map<MIROperand, MIRInst*, MIROperandHasher> lastDef;
    MIRInst* lastSideEffect = nullptr;
    for(auto& inst : block.instructions()) {
        auto& instInfo = ctx.instInfo.getInstInfo(inst);
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            auto& op = inst.getOperand(idx);
        }
    }

    std::list<MIRInst> newInst;
}

void preRASchedule(MIRFunction& func, const CodeGenContext& ctx) {
    for(auto& block : func.blocks()) {
        preRAScheduleBlock(*block, ctx);
    }
}

void postRASchedule(MIRFunction& func, const CodeGenContext& ctx) {
    CMMC_UNUSED(func);
    CMMC_UNUSED(ctx);
    return;
}
CMMC_MIR_NAMESPACE_END

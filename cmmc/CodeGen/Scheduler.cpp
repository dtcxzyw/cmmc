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

#include <cmmc/CodeGen/MIRCFGAnalysis.hpp>
#include <cmmc/CodeGen/ScheduleModel.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <iostream>

CMMC_MIR_NAMESPACE_BEGIN

// static void scheduleBlock() {}

void schedule(MIRFunction& func, const Target& target, bool preRA) {
    CMMC_UNUSED(func);
    CMMC_UNUSED(target);
    CMMC_UNUSED(preRA);

    return;
    /*
    const auto& subTarget = target.getSubTarget();
    CMMC_UNUSED(subTarget);
    const auto cfg = calcGMIRCFG(func);

    for(auto& block : func.blocks()) {
        assert(block->verify(std::cerr, true));
        CMMC_UNUSED(block);
    }
    */
}

CMMC_MIR_NAMESPACE_END

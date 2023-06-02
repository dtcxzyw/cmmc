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

#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/LiveInterval.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/MIRCFGAnalysis.hpp>
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/CodeGen/RegisterInfo.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cstdint>
#include <functional>
#include <iostream>
#include <memory>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <variant>
#include <vector>

// Reimplementation of LLVM's Greedy RA
// References:
// https://blog.llvm.org/2011/09/greedy-register-allocation-in-llvm-30.html
// https://www.youtube.com/watch?v=IK8TMJf3G6U
// https://www.youtube.com/watch?v=hf8kD-eAaxg

CMMC_MIR_NAMESPACE_BEGIN

static void greedyAllocate(MIRFunction& mfunc, CodeGenContext& ctx, IPRAUsageCache& infoIPRA) {
    CMMC_UNUSED(mfunc);
    CMMC_UNUSED(ctx);
    CMMC_UNUSED(infoIPRA);
    auto liveInterval = calcLiveIntervals(mfunc, ctx);
    CMMC_UNUSED(liveInterval);
    reportNotImplemented(CMMC_LOCATION());
}

CMMC_REGISTER_ALLOCATOR("greedy", greedyAllocate);

CMMC_MIR_NAMESPACE_END

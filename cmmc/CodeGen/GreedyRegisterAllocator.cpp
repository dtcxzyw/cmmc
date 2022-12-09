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

#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/GMIRCFGAnalysis.hpp>
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <memory>
#include <unordered_map>
#include <variant>

// LLVM greedy RA
// references:
// https://www.youtube.com/watch?v=IK8TMJf3G6U
// https://www.youtube.com/watch?v=hf8kD-eAaxg

CMMC_NAMESPACE_BEGIN

static void greedyAllocate(GMIRFunction& mfunc, const Target& target) {
    // const auto cfg = calcGMIRCFG(mfunc);
    CMMC_UNUSED(target);
    CMMC_UNUSED(mfunc);
    reportNotImplemented();
}

CMMC_REGISTER_ALLOCATOR("greedy", greedyAllocate);

CMMC_NAMESPACE_END

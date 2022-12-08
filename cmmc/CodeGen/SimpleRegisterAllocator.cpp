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
#include <cmmc/CodeGen/LiveRangeAnalysis.hpp>
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <memory>

CMMC_NAMESPACE_BEGIN

// local register allocator

static void simpleAllocate(GMIRFunction& mfunc, const Target& target) {
    const auto& liveRange = calcLiveRange(mfunc);
    const auto cfg = calcGMIRCFG(mfunc);

    std::unordered_map<const GMIRBasicBlock*, std::unique_ptr<TargetRegisterUsage>> schedules;
    // TODO: better order
    for(auto& block : mfunc.blocks()) {
        auto usage = target.newRegisterUsage();
        if(&block == &mfunc.blocks().front()) {
            // TODO: mark used registers according to calling conv/[caller context(IPO)]
            usage->markAllUsed();
        } else {
            const auto& pred = cfg.predecessors(&block);
            bool allAvailable = true;
            for(auto& predBlock : pred)
                if(!schedules.count(predBlock)) {
                    allAvailable = false;
                    break;
                }
            if(allAvailable) {
                for(auto& predBlock : pred)
                    usage->merge(*schedules.at(predBlock));
            } else {
                usage->markAllUsed();
            }
        }

        std::vector<GMIRInst*> todo{ block.instructions().size() };
        for(auto& inst : block.instructions())
            todo.push_back(&inst);

        CMMC_UNUSED(liveRange);

        // for(auto inst : todo) {
        //}
    }
}

CMMC_REGISTER_ALLOCATOR("simple", simpleAllocate);

CMMC_NAMESPACE_END

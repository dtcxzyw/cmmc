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

#include <algorithm>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <cstdint>
#include <ios>
#include <iostream>
#include <memory>
#include <vector>

CMMC_NAMESPACE_BEGIN

Flag enableProfiling;

CMMC_INIT_OPTIONS_BEGIN
enableProfiling.setName("profile", 'p').setDesc("enable built-in profiling");
CMMC_INIT_OPTIONS_END

Stage::Stage(const std::string_view& name) : Stage{ std::string{ name } } {}
Stage::Stage(const std::string& name) {
    if(enableProfiling.get())
        Profiler::get().pushStage(name);
}
Stage::~Stage() {
    if(enableProfiling.get())
        Profiler::get().popStage();
}

StageStorage::StageStorage() : mCreationTime{ Clock::now() }, mTotalDuration{}, mCount{ 0 } {}
StageStorage* StageStorage::getSubStorage(const std::string& name) {
    const auto iter = mNestedStages.find(name);
    if(iter != mNestedStages.cend())
        return iter->second.get();
    return mNestedStages.emplace(name, std::make_unique<StageStorage>()).first->second.get();
}
void StageStorage::record(Duration duration) {
    ++mCount;
    mTotalDuration += duration;
}
void StageStorage::printNested(uint32_t depth, double total) const {
    const auto self = static_cast<double>(mTotalDuration.count());
    std::vector<std::pair<const std::string*, const StageStorage*>> storages;
    for(auto& [k, v] : mNestedStages)
        storages.emplace_back(&k, v.get());
    std::sort(storages.begin(), storages.end(),
              [](auto& lhs, auto& rhs) { return lhs.second->creationTime() < rhs.second->creationTime(); });
    for(auto [name, stage] : storages) {
        const auto count = stage->count();
        const auto duraiton = static_cast<double>(stage->duration().count());
        constexpr auto ratio = static_cast<double>(Clock::period::num) / static_cast<double>(Clock::period::den);
        for(uint32_t idx = 0; idx < depth; ++idx)
            std::cerr << "    ";
        std::cerr << *name << ' ' << (duraiton * ratio * 1000.0) << " ms " << count << ' ' << (duraiton / self * 100.0) << "% "
                  << (duraiton / total * 100.0) << "% " << std::endl;
        stage->printNested(depth + 1, total);
    }
}

Profiler::Profiler() {
    pushStage({});
}
// performance
void Profiler::pushStage(const std::string& name) {
    const auto current = Clock::now();
    if(!mStageStack.empty())
        mStageStack.emplace_back(current, mStageStack.back().second->getSubStorage(name));
    else
        mStageStack.emplace_back(current, &mRootStage);
}
void Profiler::popStage() {
    const auto end = Clock::now();
    auto [start, stage] = mStageStack.back();
    stage->record(end - start);
    mStageStack.pop_back();
}
void Profiler::printStatistics() {
    popStage();

    if(enableProfiling.get()) {
        if(!mStageStack.empty())
            reportUnreachable();
        std::cerr.precision(2);
        std::cerr << std::fixed;
        std::cerr << "===================== PERFORMANCE PROFILING RESULT =====================" << std::endl;
        constexpr auto ratio = static_cast<double>(Clock::period::num) / static_cast<double>(Clock::period::den);
        std::cerr << "Total used: " << (mRootStage.duration().count() * ratio * 1000.0) << " ms" << std::endl;
        mRootStage.printNested(0, static_cast<double>(mRootStage.duration().count()));
        std::cerr << "========================================================================" << std::endl;
    }
}

Profiler& Profiler::get() {
    static Profiler profiler;
    return profiler;
}

CMMC_NAMESPACE_END

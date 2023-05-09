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
#include <chrono>
#include <cmmc/Config.hpp>
#include <cstdint>
#include <deque>
#include <memory>
#include <string>
#include <string_view>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

using Clock = std::chrono::high_resolution_clock;
using Duration = Clock::duration;
using TimePoint = Clock::time_point;

class Stage final {
public:
    explicit Stage(const std::string& name) = delete;
    explicit Stage(const std::string_view& name);
    ~Stage();
    Stage(const Stage&) = delete;
    Stage(Stage&&) = delete;
    Stage& operator=(const Stage&) = delete;
    Stage& operator=(Stage&&) = delete;
};

class StageStorage final {
    TimePoint mCreationTime;
    std::unordered_map<std::string_view, std::unique_ptr<StageStorage>> mNestedStages;
    Duration mTotalDuration;
    uint32_t mCount;

public:
    StageStorage();
    StageStorage* getSubStorage(const std::string_view& name);
    void record(Duration duration);
    TimePoint creationTime() const noexcept {
        return mCreationTime;
    }
    Duration duration() const noexcept {
        return mTotalDuration;
    }
    uint32_t count() const noexcept {
        return mCount;
    }
    void printNested(uint32_t depth, double total) const;
};

class Profiler final {
    StageStorage mRootStage;
    std::deque<std::pair<TimePoint, StageStorage*>> mStageStack;

public:
    Profiler();
    // performance
    void pushStage(const std::string_view& name);
    void popStage();
    void printStatistics();
    // counter

    static Profiler& get();
};

CMMC_NAMESPACE_END

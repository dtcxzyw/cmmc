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
#include <atomic>
#include <cmmc/Config.hpp>
#include <cstdint>
#include <functional>
#include <mutex>
#include <queue>
#include <thread>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

struct Worker final {
    std::thread thread;
    std::mutex mutex;
    std::queue<std::function<void()>> tasks;

    template <typename T>
    explicit Worker(T worker) : thread{ std::move(worker) } {}
};

static_assert(std::atomic_uint32_t::is_always_lock_free);

class Scheduler final {
    bool mRunning;
    uint32_t mWorkerCount;
    std::vector<std::unique_ptr<Worker>> mWorkers;
    std::unordered_map<std::thread::id, uint32_t> mIdxMap;
    std::atomic_uint32_t mSpawnIdx;

    void runOne(uint32_t idx);

public:
    Scheduler();
    ~Scheduler();
    Scheduler(const Scheduler&) = delete;
    Scheduler(Scheduler&&) = delete;
    Scheduler& operator=(const Scheduler&) = delete;
    Scheduler& operator=(Scheduler&&) = delete;

    void yield();
    void spawn(std::function<void()> func);

    template <typename Container, typename Callable>
    void forEach(Container& c, Callable callable) {
        std::atomic_uint32_t count{ 0U };
        for(auto x : c)
            spawn([callable, x, &count] {
                callable(x);
                ++count;
            });
        while(count.load() != c.size())
            yield();
    }

    static Scheduler& get();
};

CMMC_NAMESPACE_END

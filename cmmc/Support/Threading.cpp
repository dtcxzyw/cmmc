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

#ifdef CMMC_THREADING
#include <cmmc/Support/Threading.hpp>
#include <cstdint>
#include <functional>
#include <mutex>
#include <random>
#include <thread>

CMMC_NAMESPACE_BEGIN

Scheduler::Scheduler() : mRunning{ false }, mSpawnIdx{ 0U } {
    const uint32_t workerCount = std::thread::hardware_concurrency();
    for(uint32_t idx = 0; idx < workerCount; ++idx) {
        auto worker = [idx, this] {
            while(!mRunning)
                std::this_thread::yield();
            while(mRunning)
                runOne(idx);
        };
        mWorkers.push_back(std::make_unique<Worker>(std::move(worker)));
    }
    mWorkerCount = workerCount;
    mRunning = true;
}

Scheduler::~Scheduler() {
    mRunning = false;
    for(auto& worker : mWorkers)
        worker->thread.join();
}

void Scheduler::runOne(uint32_t idx) {
    auto& thisWorker = *mWorkers[idx];
    std::minstd_rand random{ idx };
    std::uniform_int_distribution<uint32_t> uid{ 1U, mWorkerCount ? mWorkerCount - 1U : 1U };
    auto getTask = [&]() -> std::function<void()> {
        std::unique_lock guard{ thisWorker.mutex };
        if(thisWorker.tasks.empty() && mWorkerCount) {
            auto& rhs = *mWorkers[(idx + uid(random)) % mWorkerCount];
            std::unique_lock guardRhs{ rhs.mutex, std::try_to_lock };
            if(guardRhs.owns_lock()) {
                // work stealing
                const auto move = rhs.tasks.size() / 2;
                for(uint32_t i = 0; i < move; ++i) {
                    thisWorker.tasks.push(std::move(rhs.tasks.front()));
                    rhs.tasks.pop();
                }
            }
        }

        if(thisWorker.tasks.empty())
            return {};
        auto task = std::move(thisWorker.tasks.front());
        thisWorker.tasks.pop();
        return task;
    };

    if(auto task = getTask())
        task();
    else
        std::this_thread::yield();
}

void Scheduler::yield() {
    const auto id = std::this_thread::get_id();
    if(const auto iter = mIdxMap.find(id); iter != mIdxMap.cend())
        runOne(iter->second);
    else
        std::this_thread::yield();
}

void Scheduler::spawn(std::function<void()> func) {
    while(true) {
        const auto idx = mSpawnIdx++ % mWorkerCount;
        auto& worker = *mWorkers[idx];
        std::unique_lock guard{ worker.mutex, std::try_to_lock };
        if(guard.owns_lock()) {
            worker.tasks.push(std::move(func));
            break;
        }
    }
}

Scheduler& Scheduler::get() {
    static Scheduler scheduler;
    return scheduler;
}

CMMC_NAMESPACE_END
#endif

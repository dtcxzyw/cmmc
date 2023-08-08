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

#include <algorithm>
#include <array>
#include <atomic>
#include <cerrno>
#include <csignal>
#include <cstdint>
#include <cstdio>
#include <linux/futex.h>
#include <sched.h>
#include <sys/mman.h>
#include <sys/syscall.h>
#include <sys/wait.h>
#include <unistd.h>

constexpr uint32_t maxThreads = 4;
constexpr auto stackSize = 1024 * 1024;  // 1MB
constexpr auto threadCreationFlags = CLONE_VM | CLONE_FS | CLONE_FILES | CLONE_SIGHAND | CLONE_THREAD | CLONE_SYSVSEM;
using CmmcForLoop = void (*)(int32_t beg, int32_t end, void* payload);

namespace {
    class Futex final {
        std::atomic_uint32_t storage;

    public:
        void wait() {
            uint32_t one = 1;
            while(!storage.compare_exchange_strong(one, 0)) {
                one = 1;
                syscall(SYS_futex, reinterpret_cast<long>(&storage), FUTEX_WAIT, 0, nullptr, nullptr, 0);
            }
        }

        void post() {
            uint32_t zero = 0;
            if(storage.compare_exchange_strong(zero, 1)) {
                syscall(SYS_futex, reinterpret_cast<long>(&storage), FUTEX_WAKE, 1, nullptr, nullptr, 0);
            }
        }
    };

    struct Worker final {
        pid_t pid;
        void* stack;
        std::atomic_uint32_t core;
        std::atomic_uint32_t run;
        std::atomic<CmmcForLoop> func;
        std::atomic_int32_t beg;
        std::atomic_int32_t end;
        std::atomic<void*> payload;

        Futex ready, done;
    };
    std::array<Worker, maxThreads> workers;  // NOLINT

    static_assert(std::atomic_uint32_t::is_always_lock_free);
    static_assert(std::atomic_int32_t::is_always_lock_free);
    static_assert(std::atomic<void*>::is_always_lock_free);
    static_assert(std::atomic<CmmcForLoop>::is_always_lock_free);

    int cmmcWorker(void* ptr) {
        auto& worker = *static_cast<Worker*>(ptr);
        {
            cpu_set_t set;
            CPU_SET(worker.core, &set);
            auto pid = gettid();
            sched_setaffinity(pid, sizeof(set), &set);
        }
        while(worker.run) {
            // wait for task
            worker.ready.wait();
            if(!worker.run)
                break;
            // exec task
            worker.func.load()(worker.beg.load(), worker.end.load(), worker.payload.load());
            // signal completion
            worker.done.post();
        }
        return 0;
    }
}  // namespace

extern "C" {
__attribute((constructor)) void cmmcInitRuntime() {
    for(uint32_t i = 0; i < maxThreads; ++i) {
        auto& worker = workers[i];
        worker.run = 1;
        worker.stack = mmap(nullptr, stackSize, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_STACK, -1, 0);
        worker.core = i;
        worker.pid = clone(cmmcWorker, static_cast<uint8_t*>(worker.stack) + stackSize, threadCreationFlags, &worker);
    }
}
__attribute((destructor)) void cmmcUninitRuntime() {
    for(auto& worker : workers) {
        worker.run = 0;
        worker.ready.post();
        waitpid(worker.pid, nullptr, 0);
    }
    // FIXME
    // for(auto& worker : workers)
    //     munmap(worker.stack, stackSize);
}
void cmmcParallelFor(int32_t beg, int32_t end, CmmcForLoop func, void* payload) {
    if(end <= beg)
        return;
    const auto size = static_cast<uint32_t>(end - beg);
    constexpr uint32_t smallTask = 16;
    if(size < smallTask) {
        func(beg, end, payload);
        return;
    }
    constexpr uint32_t alignment = 4;
    const auto inc = static_cast<int32_t>(((size / maxThreads) + alignment - 1) / alignment * alignment);
    for(int32_t i = 0; i < static_cast<int32_t>(maxThreads); ++i) {
        const auto subBeg = beg + i * inc;
        auto subEnd = std::min(subBeg + inc, end);
        if(i == maxThreads - 1)
            subEnd = end;
        // cmmc_exec_for(subBeg, subEnd, func, payload);
        auto& worker = workers[static_cast<size_t>(i)];
        worker.func = func;
        worker.beg = subBeg;
        worker.end = subEnd;
        worker.payload = payload;
        // signal worker
        worker.ready.post();
    }
    for(auto& worker : workers) {
        worker.done.wait();
    }
}
constexpr uint32_t m1 = 1021, m2 = 1019;
struct LUTEntry final {
    uint64_t key;
    int val;
    int hasVal;
};
static_assert(sizeof(LUTEntry) == sizeof(uint32_t) * 4);
LUTEntry* cmmcCacheLookup(LUTEntry* table, int key1, int key2) {
    const auto key = static_cast<uint64_t>(key1) << 32 | static_cast<uint64_t>(key2);
    const auto ha = key % m1, hb = 1 + key % m2;
    auto cur = ha;
    constexpr uint32_t maxLookupCount = 5;
    uint32_t count = maxLookupCount;
    while(true) {
        auto& ref = table[cur];
        if(!ref.hasVal) {
            ref.key = key;
            return &ref;
        }
        if(ref.key == key) {
            return &ref;
        }
        if(++count >= maxLookupCount)
            break;
        cur += hb;
        if(cur >= m1)
            cur -= m1;
    }
    // evict, FIFO
    auto& ref = table[ha];
    ref.hasVal = 0;
    ref.key = key;
    return &ref;
}
int32_t cmmcAddRec3SRem(int32_t x, int32_t rem) {
    const auto n64 = static_cast<int64_t>(x);
    return static_cast<int32_t>(n64 * (n64 - 1) / 2 % rem);
}
}

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
#include <csignal>
#include <cstdint>
#include <linux/futex.h>
#include <sched.h>
#include <sys/mman.h>
#include <sys/syscall.h>
#include <sys/wait.h>
#include <unistd.h>

constexpr uint32_t maxThreads = 4;
constexpr auto stackSize = 4 * 1024;  // 4KB
using CmmcForLoop = void (*)(int32_t beg, int32_t end, void* payload);

class Futex final {
    std::atomic_uint32_t storage;

public:
    void wait() {
        uint32_t one = 1;
        while(!storage.compare_exchange_strong(one, 0)) {
            one = 1;
            syscall(SYS_futex, &storage, FUTEX_WAIT, 0, nullptr, nullptr, 0);
        }
    }

    void post() {
        uint32_t zero = 0;
        if(storage.compare_exchange_strong(zero, 1)) {
            syscall(SYS_futex, &storage, FUTEX_WAKE, 1, nullptr, nullptr, 0);
        }
    }
};

struct Worker final {
    pid_t pid;
    void* stack;
    std::atomic_uint32_t run;
    std::atomic<CmmcForLoop> func;
    std::atomic_int32_t beg;
    std::atomic_int32_t end;
    std::atomic<void*> payload;

    Futex ready, done;
};
std::array<Worker, maxThreads> workers;

static_assert(std::atomic_uint32_t::is_always_lock_free);
static_assert(std::atomic<void*>::is_always_lock_free);

static int cmmc_worker(void* ptr) {
    auto& worker = *static_cast<Worker*>(ptr);
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

extern "C" {
__attribute((constructor)) void cmmc_init_rt() {
    for(uint32_t i = 0; i < maxThreads; ++i) {
        auto& worker = workers[i];
        worker.run = 1;
        worker.stack = mmap(nullptr, stackSize, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_STACK, -1, 0);
        worker.pid = clone(cmmc_worker, static_cast<uint8_t*>(worker.stack) + stackSize, CLONE_VM | SIGCHLD, &worker);
    }
}
__attribute((destructor)) void cmmc_uninit_rt() {
    for(auto& worker : workers) {
        worker.run = 0;
        worker.ready.post();
        waitpid(worker.pid, nullptr, 0);
    }
}
void cmmc_parallel_for(int32_t beg, int32_t end, CmmcForLoop func, void* payload) {
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
        auto& worker = workers[i];
        worker.func = func;
        worker.beg = subBeg;
        worker.end = subEnd;
        worker.payload = payload;
        // signal worker
        worker.ready.post();
    }
    for(int32_t i = 0; i < static_cast<int32_t>(maxThreads); ++i) {
        workers[i].done.wait();
    }
}
}

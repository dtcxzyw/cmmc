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

#include <bit>
#include <cmmc/Config.hpp>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <memory>
#include <new>
#include <sys/mman.h>

#ifdef CMMC_ENABLE_DETERMINISTIC

constexpr size_t preAllocatedSize = 4ULL << 30;  // 4GB
constexpr uintptr_t baseAddress =
#if defined(__x86_64__)
    0x0200000000000
#elif defined(__aarch64__)
    0x0200000000000
#endif
    ;

static void* allocate(std::size_t count, std::size_t alignment) {
    static void* address = nullptr;  // NOLINT
    static size_t space = preAllocatedSize;
    if(!address) {
        // NOLINTNEXTLINE
        address = mmap(reinterpret_cast<void*>(baseAddress), preAllocatedSize, PROT_READ | PROT_WRITE,
                       MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
        if(!address)
            std::abort();
    }

    if(std::align(alignment, count, address, space)) {
        const auto res = address;
        address = static_cast<char*>(address) + count;
        space -= count;
        // printf("rem %zu\n", space);
        return res;
    }
    return nullptr;
}
static void* allocate(std::size_t count) {
    return allocate(count, alignof(std::max_align_t));
}

// make_unique/shared
void operator delete(void*) noexcept {};
void operator delete[](void*) noexcept {};
void operator delete(void*, const std::nothrow_t&) noexcept {}
void operator delete[](void*, const std::nothrow_t&) noexcept {}

void* operator new(std::size_t n) noexcept(false) {
    return allocate(n);
}
void* operator new[](std::size_t n) noexcept(false) {
    return allocate(n);
}
void* operator new(std::size_t n, const std::nothrow_t&) noexcept {
    return allocate(n);
}
void* operator new[](std::size_t n, const std::nothrow_t&) noexcept {
    return allocate(n);
}

#if(__cplusplus >= 201402L)
void operator delete(void*, std::size_t) noexcept {};
void operator delete[](void*, std::size_t) noexcept {};
#endif

#if(__cplusplus > 201402L || defined(__cpp_aligned_new))
void operator delete(void*, std::align_val_t) noexcept {}
void operator delete[](void*, std::align_val_t) noexcept {}
void operator delete(void*, std::size_t, std::align_val_t) noexcept {};
void operator delete[](void*, std::size_t, std::align_val_t) noexcept {};
void operator delete(void*, std::align_val_t, const std::nothrow_t&) noexcept {}
void operator delete[](void*, std::align_val_t, const std::nothrow_t&) noexcept {}

void* operator new(std::size_t n, std::align_val_t al) noexcept(false) {
    return allocate(n, static_cast<size_t>(al));
}
void* operator new[](std::size_t n, std::align_val_t al) noexcept(false) {
    return allocate(n, static_cast<size_t>(al));
}
void* operator new(std::size_t n, std::align_val_t al, const std::nothrow_t&) noexcept {
    return allocate(n, static_cast<size_t>(al));
}
void* operator new[](std::size_t n, std::align_val_t al, const std::nothrow_t&) noexcept {
    return allocate(n, static_cast<size_t>(al));
}
#endif
// arena
void* aligned_alloc(size_t alignment, size_t size) {
    return allocate(size, alignment);
}
void free(void*) {}

#endif

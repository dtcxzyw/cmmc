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
#include <cassert>
#include <cmmc/Config.hpp>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <memory>
#include <mimalloc.h>
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

#if 0
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
static void deallocate(void*) {}
#endif

static mi_heap_t* heap = nullptr;
void initializeCMMC() {
    mi_thread_init();
    mi_option_enable(mi_option_limit_os_alloc);
    auto address = mmap(reinterpret_cast<void*>(baseAddress), preAllocatedSize, PROT_READ | PROT_WRITE,
                        MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
    if(!address)
        std::abort();

    mi_arena_id_t arenaId;
    if(!mi_manage_os_memory_ex(address, preAllocatedSize, false, false, true, -1, true, &arenaId))
        std::abort();

    heap = mi_heap_new_in_arena(arenaId);
    if(!heap)
        std::abort();
}
static void deallocate(void* p) {
    assert(mi_is_in_heap_region(p));
    // if(reinterpret_cast<uintptr_t>(p) >= baseAddress && reinterpret_cast<uintptr_t>(p) < baseAddress + preAllocatedSize) {
    //     [[maybe_unused]] int ret = fprintf(stderr, "free %p\n", p);
    // }
    mi_free(p);
}

CMMC_NAMESPACE_BEGIN
void* cmmcAllocate(std::size_t count, std::size_t alignment) {
    const auto ptr = mi_heap_malloc_aligned(heap, count, alignment);
    // [[maybe_unused]] int ret = fprintf(stderr, "alloc %zu %zu -> %p\n", count, alignment, ptr);
    return ptr;
}
CMMC_NAMESPACE_END

void operator delete(void* p) noexcept {
    deallocate(p);
};
void operator delete[](void* p) noexcept {
    deallocate(p);
};
void operator delete(void* p, const std::nothrow_t&) noexcept {
    deallocate(p);
}
void operator delete[](void* p, const std::nothrow_t&) noexcept {
    deallocate(p);
}

void* operator new(std::size_t n) noexcept(false) {
    return mi_malloc(n);
}
void* operator new[](std::size_t n) noexcept(false) {
    return mi_malloc(n);
}
void* operator new(std::size_t n, const std::nothrow_t&) noexcept {
    return mi_malloc(n);
}
void* operator new[](std::size_t n, const std::nothrow_t&) noexcept {
    return mi_malloc(n);
}

#if(__cplusplus >= 201402L)
void operator delete(void* p, std::size_t) noexcept {
    deallocate(p);
};
void operator delete[](void* p, std::size_t) noexcept {
    deallocate(p);
};
#endif

#if(__cplusplus > 201402L || defined(__cpp_aligned_new))
void operator delete(void* p, std::align_val_t) noexcept {
    deallocate(p);
}
void operator delete[](void* p, std::align_val_t) noexcept {
    deallocate(p);
}
void operator delete(void* p, std::size_t, std::align_val_t) noexcept {
    deallocate(p);
};
void operator delete[](void* p, std::size_t, std::align_val_t) noexcept {
    deallocate(p);
};
void operator delete(void* p, std::align_val_t, const std::nothrow_t&) noexcept {
    deallocate(p);
}
void operator delete[](void* p, std::align_val_t, const std::nothrow_t&) noexcept {
    deallocate(p);
}

void* operator new(std::size_t n, std::align_val_t al) noexcept(false) {
    return mi_aligned_alloc(static_cast<size_t>(al), n);
}
void* operator new[](std::size_t n, std::align_val_t al) noexcept(false) {
    return mi_aligned_alloc(static_cast<size_t>(al), n);
}
void* operator new(std::size_t n, std::align_val_t al, const std::nothrow_t&) noexcept {
    return mi_aligned_alloc(static_cast<size_t>(al), n);
}
void* operator new[](std::size_t n, std::align_val_t al, const std::nothrow_t&) noexcept {
    return mi_aligned_alloc(static_cast<size_t>(al), n);
}
#endif
void* aligned_alloc(size_t alignment, size_t size) {
    return mi_aligned_alloc(alignment, size);
}
void* malloc(size_t size) {
    return mi_malloc(size);
}
void* calloc(size_t size, size_t n) {
    return mi_calloc(n, size);
}
void* realloc(void* p, size_t newsize) {
    return mi_realloc(p, newsize);
}
void free(void* p) {
    deallocate(p);
}

#endif

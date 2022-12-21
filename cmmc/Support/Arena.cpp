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

#include <array>
#include <cmmc/Support/Arena.hpp>
#include <cstddef>
#include <cstdint>
#include <cstdlib>

CMMC_NAMESPACE_BEGIN

static constexpr size_t blockSize = 32ULL * 4096ULL;

Arena::Arena() : mBlockPtr{ 0 }, mBlockEndPtr{ 0 } {}
Arena::Arena(Arena::Source src) : Arena{} {
    Arena::setArena(src, this);
}
Arena::~Arena() {
    for(auto ptr : mBlocks)
        free(ptr);  // NOLINT
    for(auto ptr : mLargeBlocks)
        free(ptr);  // NOLINT
}

static uintptr_t alloc(uintptr_t ptr, uintptr_t alignment) {
    return (ptr + alignment - 1) / alignment * alignment;
}

void* Arena::allocate(size_t size, size_t alignment) {
    void* ptr = nullptr;
    if(size >= blockSize) {
        ptr = std::aligned_alloc(alignment, size);  // NOLINT
        mLargeBlocks.insert(ptr);
    } else if(auto allocated = alloc(mBlockPtr, alignment); allocated + size > mBlockEndPtr) {
        ptr = std::aligned_alloc(alignment, blockSize);  // NOLINT
        mBlocks.push_back(ptr);

        // keep larger block
        if(mBlockEndPtr - mBlockPtr < blockSize - size) {
            mBlockPtr = reinterpret_cast<uintptr_t>(ptr) + size;
            mBlockEndPtr = reinterpret_cast<uintptr_t>(ptr) + blockSize;
        }
    } else {
        mBlockPtr = allocated + size;
        ptr = reinterpret_cast<void*>(allocated);  // NOLINT
    }
    return ptr;
}
void Arena::deallocate(void* p, size_t size) {
    if(size >= blockSize) {
        free(p);  // NOLINT
        mLargeBlocks.erase(p);
    }
}

static Arena*& getArena(Arena::Source source) {
    static std::array<Arena*, static_cast<size_t>(Arena::Source::Max)> arena;
    return arena[static_cast<size_t>(source)];
}

Arena* Arena::get(Source source) {
    return getArena(source);
}

void Arena::setArena(Source source, Arena* arena) {
    getArena(source) = arena;
}

CMMC_NAMESPACE_END

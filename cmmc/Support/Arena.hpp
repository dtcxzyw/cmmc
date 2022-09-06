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
#include "cmmc/Config.hpp"
#include <cstddef>
#include <cstdint>
#include <deque>
#include <list>
#include <set>
#include <string>
#include <vector>

CMMC_NAMESPACE_BEGIN

class Arena final {
    static constexpr size_t blockSize = 4096;
    std::vector<void*> mBlocks;
    std::set<void*> mLargeBlocks;

    std::uintptr_t mBlockPtr, mBlockEndPtr;

public:
    Arena();
    Arena(const Arena&) = delete;
    Arena& operator=(const Arena&) = delete;
    void* allocate(size_t size, size_t alignment);
    void deallocate(void* p, size_t size);
    ~Arena();

    enum class Source { AST, IR, MC, OPT, Max };
    static Arena* get(Source source);
    static void setArena(Source source, Arena* arena);
};

template <typename T>
class ArenaAllocator {
    Arena* mArena;

public:
    ArenaAllocator(Arena::Source source) : mArena{ Arena::get(source) } {};
    template <typename U>
    friend class ArenaAllocator;

    template <typename U>
    ArenaAllocator(const ArenaAllocator<U>& rhs) : mArena{ rhs.mArena } {}
    using value_type = T;
    [[nodiscard]] constexpr T* allocate(size_t n) {
        return static_cast<T*>(mArena->allocate(n * sizeof(T), alignof(T)));
    }
    void deallocate(T* p, size_t n) {
        mArena->deallocate(p, n);
    }
    bool operator==(const ArenaAllocator<T>& rhs) const noexcept {
        return mArena == rhs.mArena;
    }
    bool operator!=(const ArenaAllocator<T>& rhs) const noexcept {
        return mArena != rhs.mArena;
    }
};

template <typename T>
using List = std::list<T, ArenaAllocator<T>>;

template <typename T>
using Vector = std::vector<T, ArenaAllocator<T>>;

template <typename T>
using Deque = std::deque<T, ArenaAllocator<T>>;

template <typename T, typename... Args>
T* make(Args&&... args) {
    const auto arena = Arena::get(T::arenaSource);
    auto ptr = arena->allocate(sizeof(T), alignof(T));
    return new(ptr) T{ std::forward<Args>(args)... };
}

using String = std::basic_string<char, std::char_traits<char>, ArenaAllocator<char>>;

CMMC_NAMESPACE_END

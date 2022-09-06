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
#include <list>

CMMC_NAMESPACE_BEGIN

class Arena final {
public:
    Arena();
    Arena(const Arena&) = delete;
    Arena& operator=(const Arena&) = delete;
    void* allocate(size_t size, size_t alignment);
    ~Arena();

    enum class Source { AST, IR, MC, Max };
    static Arena* get(Source source);
    static void setArena(Source source, Arena* arena);
};

template <typename T>
class ArenaAllocator {
    Arena* mArena;

public:
    ArenaAllocator(Arena::Source source) : mArena{ Arena::get(source) } {};
    using value_type = T;
    [[nodiscard]] constexpr T* allocate(size_t n) {
        return static_cast<T*>(mArena->allocate(n * sizeof(T), alignof(T)));
    }
    constexpr void deallocate(T* p, size_t n) {}
    bool operator==(const ArenaAllocator<T>& rhs) const noexcept {
        return mArena == rhs.mArena;
    }
};

template <typename T>
using List = std::list<T, ArenaAllocator<T>>;

CMMC_NAMESPACE_END

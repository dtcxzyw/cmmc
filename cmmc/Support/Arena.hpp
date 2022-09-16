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
#include <cmmc/Config.hpp>
#include <cstddef>
#include <cstdint>
#include <deque>
#include <list>
#include <string>
#include <type_traits>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class Arena final {
    static constexpr size_t blockSize = 4096;
    std::vector<void*> mBlocks;
    std::unordered_set<void*> mLargeBlocks;

    std::uintptr_t mBlockPtr, mBlockEndPtr;

public:
    enum class Source { AST, IR, MC, Max };
    Arena();
    explicit Arena(Source src);
    Arena(const Arena&) = delete;
    Arena& operator=(const Arena&) = delete;
    void* allocate(size_t size, size_t alignment);
    void deallocate(void* p, size_t size);
    ~Arena();

    static Arena* get(Source source);
    static void setArena(Source source, Arena* arena);
};

template <typename T>
struct ArenaSourceTrait {};

template <typename T>
constexpr Arena::Source getArenaSource(ArenaSourceTrait<T*>) {
    return getArenaSource(ArenaSourceTrait<T>{});
}

#define CMMC_ARENA_TRAIT(TYPE, SOURCE)                               \
    constexpr Arena::Source getArenaSource(ArenaSourceTrait<TYPE>) { \
        return Arena::Source::SOURCE;                                \
    }

template <typename T, Arena::Source src = T::arenaSource>
constexpr Arena::Source getArenaSource(ArenaSourceTrait<T>) {
    return src;
}

template <typename T, typename... Args>
T* make(Args&&... args) {
    const auto arena = Arena::get(getArenaSource(ArenaSourceTrait<T>{}));
    auto ptr = arena->allocate(sizeof(T), alignof(T));
    return new(ptr) T{ std::forward<Args>(args)... };
}

template <Arena::Source source>
class GeneralArenaAllocator {
public:
    template <typename T>
    class ArenaAllocator {
        Arena* mArena;

    public:
        ArenaAllocator() : mArena{ Arena::get(source) } {};
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
};

template <Arena::Source source>
using String =
    std::basic_string<char, std::char_traits<char>, typename GeneralArenaAllocator<source>::template ArenaAllocator<char>>;

template <Arena::Source source>
struct StringHasher final {
    size_t operator()(const String<source>& src) const {
        return std::hash<std::string_view>{}(src);
    }
};

template <typename T>
using ArenaSourceHint = typename GeneralArenaAllocator<getArenaSource(ArenaSourceTrait<T>{})>::template ArenaAllocator<T>;

template <Arena::Source Src, typename T>
using ArenaAllocator = typename GeneralArenaAllocator<Src>::template ArenaAllocator<T>;

template <typename T, typename Allocator = ArenaSourceHint<T>>
using List = std::list<T, Allocator>;

template <typename T, typename Allocator = ArenaSourceHint<T>>
using Vector = std::vector<T, Allocator>;

template <typename T, typename Allocator = ArenaSourceHint<T>>
using Deque = std::deque<T, Allocator>;

template <typename Key, typename Value, Arena::Source Src, typename Hash = std::hash<Key>, typename Equal = std::equal_to<Key>>
using HashTable = std::unordered_map<Key, Value, Hash, Equal,
                                     typename GeneralArenaAllocator<Src>::template ArenaAllocator<std::pair<const Key, Value>>>;

template <typename Key, Arena::Source Src, typename Hash = std::hash<Key>, typename Equal = std::equal_to<Key>>
using HashSet = std::unordered_set<Key, Hash, Equal, typename GeneralArenaAllocator<Src>::template ArenaAllocator<Key>>;

CMMC_NAMESPACE_END

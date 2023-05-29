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

#pragma once
#include <cassert>
#include <cmmc/Config.hpp>
#include <cstdint>
#include <iterator>

CMMC_NAMESPACE_BEGIN

template <typename T>
struct IntrusiveListItemAccessor;

template <typename T>
struct IntrusiveListNode {
    IntrusiveListNode<T>* prev;
    IntrusiveListNode<T>* next;
    T* ptr;
};

template <typename T>
class IntrusiveListIterator final {
    IntrusiveListNode<T>* mNode;

public:
    IntrusiveListIterator() : mNode{ nullptr } {}
    explicit IntrusiveListIterator(IntrusiveListNode<T>* node) noexcept : mNode{ node } {}
    IntrusiveListIterator& operator++() noexcept {
        mNode = mNode->next;
        return *this;
    }
    IntrusiveListIterator& operator--() noexcept {
        mNode = mNode->prev;
        return *this;
    }
    IntrusiveListIterator operator++(int) noexcept {
        auto tmp = *this;
        ++*this;
        return tmp;
    }
    IntrusiveListIterator operator--(int) noexcept {
        auto tmp = *this;
        --*this;
        return tmp;
    }
    bool operator==(const IntrusiveListIterator& rhs) const noexcept {
        return mNode == rhs.mNode;
    }
    bool operator!=(const IntrusiveListIterator& rhs) const noexcept {
        return mNode != rhs.mNode;
    }
    IntrusiveListNode<T>* node() const noexcept {
        return mNode;
    }
    T& operator*() const noexcept {
        return *mNode->ptr;
    }
    T* operator->() const noexcept {
        return mNode->ptr;
    }
    T* get() const noexcept {
        return mNode->ptr;
    }
};
template <typename T>
class ReversedIntrusiveListIterator final {
    IntrusiveListNode<T>* mNode;

public:
    ReversedIntrusiveListIterator() : mNode{ nullptr } {}
    explicit ReversedIntrusiveListIterator(IntrusiveListNode<T>* node) noexcept : mNode{ node } {}
    ReversedIntrusiveListIterator& operator++() noexcept {
        mNode = mNode->prev;
        return *this;
    }
    ReversedIntrusiveListIterator& operator--() noexcept {
        mNode = mNode->next;
        return *this;
    }
    ReversedIntrusiveListIterator operator++(int) noexcept {
        auto tmp = *this;
        ++*this;
        return tmp;
    }
    ReversedIntrusiveListIterator operator--(int) noexcept {
        auto tmp = *this;
        --*this;
        return tmp;
    }
    bool operator==(const ReversedIntrusiveListIterator& rhs) const noexcept {
        return mNode == rhs.mNode;
    }
    bool operator!=(const ReversedIntrusiveListIterator& rhs) const noexcept {
        return mNode != rhs.mNode;
    }
    IntrusiveListNode<T>* node() const noexcept {
        return mNode;
    }
    T& operator*() const noexcept {
        return *mNode->ptr;
    }
    T* operator->() const noexcept {
        return mNode->ptr;
    }
    T* get() const noexcept {
        return mNode->ptr;
    }
};

template <typename T>
class IntrusiveList final {
    mutable IntrusiveListNode<T> mHead;
    mutable IntrusiveListNode<T> mTail;
    int32_t mCount;

public:
    IntrusiveList() : mHead{ nullptr, &mTail, nullptr }, mTail{ &mHead, nullptr, nullptr }, mCount{ 0 } {}
    ~IntrusiveList() {
        clear();
    }
    IntrusiveList(const IntrusiveList&) = delete;
    IntrusiveList(IntrusiveList&&) = delete;
    IntrusiveList& operator=(const IntrusiveList&) = delete;
    IntrusiveList& operator=(IntrusiveList&&) = delete;
    void clear() {
        erase(begin(), end());
    }
    [[nodiscard]] bool empty() const {
        return mCount == 0;
    }
    [[nodiscard]] size_t size() const {
        return mCount;
    }
    void erase(IntrusiveListNode<T>* node) {
        node->prev->next = node->next;
        node->next->prev = node->prev;
        IntrusiveListItemAccessor<T>::destroy(node);
        --mCount;
        assert(mCount >= 0);
    }
    void erase(IntrusiveListIterator<T> beg, IntrusiveListIterator<T> end) {
        auto prev = beg.node()->prev;
        auto cur = beg;
        while(cur != end) {
            const auto next = std::next(cur);
            IntrusiveListItemAccessor<T>::destroy(cur.node());
            cur = next;
            --mCount;
        }
        prev->next = end.node();
        end.node()->prev = prev;
        assert(mCount >= 0);
    }
    void insert(IntrusiveListNode<T>* pos, IntrusiveListNode<T>* node) {
        node->prev = pos->prev;
        node->next = pos;
        pos->prev->next = node;
        pos->prev = node;
        ++mCount;
    }
    void insert(IntrusiveListIterator<T> pos, IntrusiveListNode<T>* node) {
        insert(pos.node(), node);
    }
    IntrusiveListIterator<T> begin() const noexcept {
        return IntrusiveListIterator<T>{ mHead.next };
    }
    IntrusiveListIterator<T> end() const noexcept {
        return IntrusiveListIterator<T>{ &mTail };
    }
    ReversedIntrusiveListIterator<T> rbegin() const noexcept {
        return ReversedIntrusiveListIterator<T>{ mTail.prev };
    }
    ReversedIntrusiveListIterator<T> rend() const noexcept {
        return ReversedIntrusiveListIterator<T>{ &mHead };
    }

    T* front() const noexcept {
        assert(mCount);
        return mHead.next->ptr;
    }
    T* back() const noexcept {
        assert(mCount);
        return mTail.prev->ptr;
    }
    void pop_front() {
        assert(mCount);
        erase(mHead.next);
    }
    void pop_back() {
        assert(mCount);
        erase(mTail.prev);
    }
    template <typename Callable>
    void remove_if(const Callable& callable) {
        IntrusiveListNode<T>* cur = mHead.next;
        while(cur != &mTail) {
            const auto next = cur->next;
            if(callable(cur->ptr)) {
                erase(cur);
            }
            cur = next;
        }
    }
};

CMMC_NAMESPACE_END

namespace std {
    template <typename T>
    class iterator_traits<cmmc::IntrusiveListIterator<T>> {
    public:
        using difference_type = ptrdiff_t;
        using value_type = T;
        using pointer = T*;
        using reference = T&;
        using iterator_category = bidirectional_iterator_tag;
    };
    template <typename T>
    class iterator_traits<cmmc::ReversedIntrusiveListIterator<T>> {
    public:
        using difference_type = ptrdiff_t;
        using value_type = T;
        using pointer = T*;
        using reference = T&;
        using iterator_category = bidirectional_iterator_tag;
    };
}  // namespace std

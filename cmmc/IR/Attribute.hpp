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
#include <cstdint>

CMMC_NAMESPACE_BEGIN

template <typename Attr>
class Attribute final {
    Attr mAttr;

public:
    constexpr Attribute() noexcept : mAttr{ static_cast<Attr>(0) } {}
    constexpr Attribute(Attr attr) noexcept : mAttr{ attr } {}
    [[nodiscard]] bool hasAttr(Attr attr) const noexcept {
        return static_cast<uint32_t>(mAttr) & static_cast<uint32_t>(attr);
    }
    Attribute& addAttr(Attr attr) noexcept {
        mAttr = static_cast<Attr>(static_cast<uint32_t>(mAttr) | static_cast<uint32_t>(attr));
        return *this;
    }
    [[nodiscard]] bool empty() const noexcept {
        return !static_cast<uint32_t>(mAttr);
    }
};

CMMC_NAMESPACE_END

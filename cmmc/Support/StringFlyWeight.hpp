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
#include <cmmc/Config.hpp>
#include <cstdint>
#include <ostream>
#include <string_view>

CMMC_NAMESPACE_BEGIN

class String final {
    std::string_view mStorage;
    size_t mStringHash;
    int32_t mId;

public:
    String() : mStringHash{ std::hash<std::string_view>{}(mStorage) }, mId{ -1 } {}
    String(const std::string_view& storage, size_t hashValue, int32_t id);
    [[nodiscard]] size_t hash() const;
    bool operator==(const String& rhs) const noexcept;
    bool operator==(const std::string_view& rhs) const noexcept;
    bool operator!=(const String& rhs) const noexcept {
        return !(*this == rhs);
    }
    bool operator!=(const std::string_view& rhs) const noexcept {
        return !(*this == rhs);
    }

    [[nodiscard]] String withoutID() const noexcept;
    [[nodiscard]] String withID(int32_t id) const noexcept;
    [[nodiscard]] String withDefaultID(int32_t id) const noexcept;
    [[nodiscard]] int32_t id() const noexcept {
        return mId;
    }
    [[nodiscard]] const std::string_view& prefix() const noexcept {
        return mStorage;
    }

    static String get(const char* str);
    static String get(const std::string_view& str);
    friend std::ostream& operator<<(std::ostream& out, const String& str);
};

struct StringHasher final {
    size_t operator()(const String& str) const {
        return str.hash();
    }
};

CMMC_NAMESPACE_END

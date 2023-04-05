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
#include <string_view>

CMMC_NAMESPACE_BEGIN

// __PRETTY_FUNCTION__ extension should be a constant expression
// Please refer to https://gcc.gnu.org/bugzilla/show_bug.cgi?id=87372
// Workaround: only use constexpr with gcc>=9.4
#if(__GNUC__ > 9) || (__GNUC__ == 9 && __GNUC_MINOR__ >= 4)
#define CMMC_CONSTEXPR constexpr
#else
#define CMMC_CONSTEXPR
#endif

namespace impl {
    template <typename Enum, Enum Value>
    CMMC_CONSTEXPR const char* staticEnumNameImpl() {
        return __PRETTY_FUNCTION__;
    }

    template <typename Enum, Enum Value>
    CMMC_CONSTEXPR std::string_view staticEnumName() {
        const std::string_view name = staticEnumNameImpl<Enum, Value>();
        const auto begin = name.find_last_of('=') + 2;
        return name.substr(begin, name.size() - begin - 1);
    }

    template <typename Enum, Enum Value>
    CMMC_CONSTEXPR std::string_view enumName(Enum val) {
        if constexpr(static_cast<uint32_t>(Value) >= 128) {  // make clangd happy
            CMMC_UNUSED(val);
            return "Unknown";
        } else {
            CMMC_CONSTEXPR auto name = staticEnumName<Enum, Value>();
            if CMMC_CONSTEXPR(name[0] == '(') {
                CMMC_UNUSED(val);
                return "Unknown";
            }
            if(val == Value)
                return name;
            return enumName<Enum, static_cast<Enum>(static_cast<uint32_t>(Value) + 1)>(val);
        }
    }
}  // namespace impl

template <typename Enum>
CMMC_CONSTEXPR std::string_view enumName(Enum val) {
    return impl::enumName<Enum, static_cast<Enum>(0)>(val);
}

namespace impl {
    template <typename T>
    CMMC_CONSTEXPR const char* staticTypeNameImpl() {
        return __PRETTY_FUNCTION__;
    }

    template <typename T>
    CMMC_CONSTEXPR std::string_view staticTypeName() {
        const std::string_view name = staticTypeNameImpl<T>();
        const auto begin = name.find_last_of('=') + 8;
        return name.substr(begin, name.size() - begin - 1);
    }
}  // namespace impl

template <typename T>
CMMC_CONSTEXPR std::string_view typeName() {
    return impl::staticTypeName<T>();
}

CMMC_NAMESPACE_END

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
#include <cmmc/Frontend/SourceLocation.hpp>
#include <deque>
#include <functional>
#include <optional>
#include <ostream>
#include <string_view>

CMMC_NAMESPACE_BEGIN

class DiagnosticsContext final {
    template <typename... T>
    using ContextStorage = std::tuple<std::deque<T>...>;
    ContextStorage<SourceLocation> mContext;
    std::vector<std::function<void(std::ostream&)>> mAttachments;

    template <typename T>
    std::deque<T>& select() noexcept {
        return std::get<std::deque<T>>(mContext);
    }

public:
    template <typename T, typename... Args>
    void push(Args&&... args) {
        select<T>().emplace_back(std::forward<Args>(args)...);
    }

    template <typename T>
    void pop() {
        select<T>().pop_back();
    }

    template <typename T, typename... Args>
    [[nodiscard]] DiagnosticsContext& attach(Args&&... args) {
        mAttachments.push_back([payload = T{ std::forward<Args>(args)... }](std::ostream& out) { out << payload; });
        return *this;
    }

    template <typename T>
    [[nodiscard]] DiagnosticsContext& attach(T&& val) {
        mAttachments.push_back([payload = std::forward<T>(val)](std::ostream& out) { out << payload; });
        return *this;
    }

    [[noreturn]] void reportFatal();

    [[nodiscard]] static DiagnosticsContext& get();
};

struct Reason final {
    std::string_view reason;

    friend void operator<<(std::ostream& out, const Reason& reason) {
        out << "Reason: " << reason.reason << std::endl;
    }
};

struct UnrecognizedInput final {
    std::string_view type;
    std::string_view value;

    friend void operator<<(std::ostream& out, const UnrecognizedInput& err) {
        out << "Unrecognized " << err.type << " \"" << err.value << '"' << std::endl;
    }
};

std::ostream& reportInfo();
std::ostream& reportWarning();
std::ostream& reportError();
std::ostream& reportDebug();
[[noreturn]] void reportUnreachable();
[[noreturn]] void reportNotImplemented();

CMMC_NAMESPACE_END

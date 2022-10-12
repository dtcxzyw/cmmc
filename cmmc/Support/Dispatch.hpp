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
#include <functional>
#include <type_traits>
#include <utility>
#include <variant>

CMMC_NAMESPACE_BEGIN

template <typename T>
struct Dispatcher final {};

template <typename... Args>
struct Dispatcher<std::variant<Args...>> final {

    template <typename Callable>
    static bool tryDispatch(const Callable& callable, const std::variant<Args...>& variant) {
        return std::visit(
            [&](const auto& arg) {
                if constexpr(std::is_invocable_v<Callable, std::decay_t<decltype(arg)>>) {
                    callable(arg);
                    return true;
                } else {
                    return false;
                }
            },
            variant);
    }

    template <typename Default>
    static void dispatch(const std::variant<Args...>&, const Default& defaultCallable) {
        std::invoke(defaultCallable);
    }

    template <typename Default, typename Callable1, typename... Callable>
    static void dispatch(const std::variant<Args...>& variant, const Default& defaultCallable, const Callable1& callable1,
                         const Callable&... callables) {
        if(!tryDispatch(callable1, variant))
            dispatch(variant, defaultCallable, callables...);
    }
};

template <typename T, typename Default, typename... Callable>
void dispatch(const T& variant, const Default& defaultCallable, const Callable&... callables) {
    Dispatcher<T>::dispatch(variant, defaultCallable, callables...);
}

CMMC_NAMESPACE_END

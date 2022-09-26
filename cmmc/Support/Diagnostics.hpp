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
#include <ostream>
#include <string_view>

CMMC_NAMESPACE_BEGIN

void printStackTrace();
std::ostream& reportInfo();
std::ostream& reportWarning();
std::ostream& reportError();
std::ostream& reportDebug();
[[noreturn]] void reportFatal(std::string_view msg);
[[noreturn]] void reportNotImplemented();
[[noreturn]] void reportUnreachable();

template <typename Loc>
class DiagnosticsContext final {
public:
    void assertion();
};

CMMC_NAMESPACE_END
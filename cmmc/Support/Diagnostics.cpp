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

#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <sstream>

CMMC_NAMESPACE_BEGIN

static Flag verbose;     // NOLINT
static Flag warning;     // NOLINT
extern Flag strictMode;  // NOLINT

CMMC_INIT_OPTIONS_BEGIN
verbose.setName("verbose", 'V').setDesc("print debug messages");
warning.withDefault(true).setName("warning", 'w').setDesc("print warning messages");
CMMC_INIT_OPTIONS_END

static std::ofstream null{ "/dev/null" };  // NOLINT

std::ostream& reportInfo() {
    return std::cout << "[INFO] "sv;
}
std::ostream& reportWarning() {
    return (warning.get() ? std::cerr : null) << "[WARNING] "sv;
}
std::ostream& reportError() {
    if(strictMode.get())
        return std::cerr;
    return std::cerr << "[ERROR] "sv;
}
std::ostream& reportDebug() {
    return (verbose.get() ? std::cerr : null) << "[DEBUG] "sv;
}
static void dumpLocation(const DiagLocation& location) {
    std::cerr << "in func \"" << location.func << " (" << location.file << ":" << location.line << std::endl;
}
[[noreturn]] void reportUnreachable(const DiagLocation& location) {
    std::cerr << "Unreachable code"sv << std::endl;
    dumpLocation(location);
    __builtin_trap();
}
[[noreturn]] void reportNotImplemented(const DiagLocation& location) {
    std::cerr << "Not implemented feature"sv << std::endl;
    dumpLocation(location);
    __builtin_trap();
}

template <typename T>
class Optional final {
    const T* mValue;

public:
    Optional(const std::deque<T>& stack) : mValue{ !stack.empty() ? &stack.back() : nullptr } {}
    friend void operator<<(std::ostream& out, const Optional<T>& val) {
        if(val.mValue)
            out << *val.mValue;
    }
};

template <typename T>
Optional(const std::deque<T>&) -> Optional<T>;

[[noreturn]] void DiagnosticsContext::reportFatal() {
    auto& out = std::cerr;
    for(auto& func : mAttachments)
        func(out);
    out << "Context: "sv << std::endl;
    std::apply([&](auto&... args) { (out << ... << Optional{ args }); }, mContext);
    out << std::flush;
    __builtin_trap();
}

DiagnosticsContext& DiagnosticsContext::get() {
    static DiagnosticsContext context;
    return context;
}

CMMC_NAMESPACE_END

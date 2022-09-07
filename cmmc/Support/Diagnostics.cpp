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

#include "cmmc/Support/Diagnostics.hpp"
#include "cmmc/Support/Options.hpp"
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <sstream>

CMMC_NAMESPACE_BEGIN

static Flag verbose;
static Flag warning;
extern Flag strictMode;

CMMC_INIT_OPTIONS_BEGIN
verbose.setName("verbose", 'V').setDesc("print debug messages");
warning.withDefault(true).setName("warning", 'w').setDesc("print warning messages");
CMMC_INIT_OPTIONS_END

static std::ofstream null{ "/dev/null" };

void printStackTrace() {}
std::ostream& reportInfo() {
    return std::cout << "[INFO] ";
}
std::ostream& reportWarning() {
    return (warning.get() ? std::cerr : null) << "[WARNING] ";
}
std::ostream& reportError() {
    if(strictMode.get())
        return std::cerr;
    return std::cerr << "[ERROR] ";
}
std::ostream& reportDebug() {
    return (verbose.get() ? std::cerr : null) << "[DEBUG] ";
}
void reportFatal(std::string_view msg) {
    std::cerr << "[FATAL] " << msg;
    printStackTrace();
    __builtin_trap();
}
void reportNotImplemented() {
    reportFatal("not implemented");
}
void reportUnreachable() {
    reportFatal("unreachable code");
}

CMMC_NAMESPACE_END

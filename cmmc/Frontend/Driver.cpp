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

#include "cmmc/Frontend/Driver.hpp"
#include "cmmc/Frontend/ParserImpl.hpp"
#include "cmmc/Frontend/ScannerImpl.hpp"
#include <cstdio>
#include <fstream>
#include <string>

CMMC_NAMESPACE_BEGIN

Driver::Driver(const std::string& file) : mFile{ file } {}

void Driver::parse() {
    mLocation.initialize(&mFile);
    // yy_flex_debug;
    yyin = fopen(mFile.c_str(), "r");
    yy::parser parser{ *this };
    // parser.set_debug_level();
    // parser.set_debug_stream();
    parser.parse();
    fclose(yyin);
}

yy::location& Driver::location() noexcept {
    return mLocation;
}

void Driver::emit(Module& module) {}

void Driver::dump(std::ostream& out) {}

CMMC_NAMESPACE_END

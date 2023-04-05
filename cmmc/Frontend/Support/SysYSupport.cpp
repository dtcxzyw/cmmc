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

#include <cmmc/Frontend/DriverImpl.hpp>

namespace SysY {
    using yy::location;  // NOLINT
}

#include <SysY/ParserDecl.hpp>

using Parser = SysY::parser;
#include <cmmc/Frontend/FrontendSupport.hpp>
#define YY_DECL SysY::parser::symbol_type SysYlex(cmmc::DriverImpl& driver)
extern "C" YY_DECL;

#include <SysY/ParserImpl.hpp>
#include <SysY/ScannerImpl.hpp>
#include <cstdio>

CMMC_NAMESPACE_BEGIN

bool parseSysY(DriverImpl& driver, const std::string& file) {
    // yy_flex_debug = 1;
    yyin = fopen(file.c_str(), "r");  // NOLINT
    if(!yyin) {
        reportError() << "Failed to open the source file "sv << file << std::endl;
        std::abort();
    }
    SysY::parser parser{ driver };
    bool ret = parser.parse() == 0;
    fclose(yyin);  // NOLINT
    return ret;
}

CMMC_NAMESPACE_END

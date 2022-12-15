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

namespace Spl {
    using yy::location;
}

#include <Spl/ParserDecl.hpp>

using Parser = Spl::parser;
#include <cmmc/Frontend/FrontendSupport.hpp>
#define YY_DECL Spl::parser::symbol_type Spllex(cmmc::DriverImpl& driver)
extern "C" YY_DECL;

#include <Spl/ParserImpl.hpp>
#include <Spl/ScannerImpl.hpp>
#include <cstdio>

CMMC_NAMESPACE_BEGIN

bool parseSpl(DriverImpl& driver, const std::string& file) {
    // yy_flex_debug = 1;
    yyin = fopen(file.c_str(), "r");
    if(!yyin) {
        reportError() << "Failed to open the source file "sv << file << std::endl;
        std::abort();
    }
    Spl::parser parser{ driver };
    // parser.set_debug_level(10);
    // parser.set_debug_stream(std::cerr);
    bool ret = parser.parse() == 0;
    fclose(yyin);
    return ret;
}

CMMC_NAMESPACE_END

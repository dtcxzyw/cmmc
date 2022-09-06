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
#include "cmmc/Config.hpp"
#include "cmmc/Frontend/ParserDecl.hpp"
#include <ostream>
#include <string>

CMMC_NAMESPACE_BEGIN

class Module;

class Driver final {
    std::string mFile;
    yy::location mLocation;

public:
    explicit Driver(const std::string& file);
    Driver(const Driver&) = delete;
    Driver& operator=(const Driver&) = delete;

    void parse();
    void emit(Module& module);
    void dump(std::ostream& out);

    yy::location& location() noexcept;
};

CMMC_NAMESPACE_END

#define YY_DECL yy::parser::symbol_type yylex(cmmc::Driver& driver)
extern "C" YY_DECL;

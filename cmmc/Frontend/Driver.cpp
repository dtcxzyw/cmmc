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

#include <cmmc/Frontend/Driver.hpp>
#include <cmmc/Frontend/DriverImpl.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <fstream>

#include <string>

CMMC_NAMESPACE_BEGIN

Driver::Driver(const std::string& file, FrontEndLang lang, bool recordHierarchy, bool strictMode) {
    parse(file, lang, recordHierarchy, strictMode);
}
Driver::~Driver() = default;

bool parseSpl(DriverImpl& driver, const std::string& file);
bool parseSysY(DriverImpl& driver, const std::string& file);

void Driver::parse(const std::string& file, FrontEndLang lang, bool recordHierarchy, bool strictMode) {
    Stage stage{ "parse"sv };
    auto arena = std::make_shared<Arena>();
    Arena::setArena(Arena::Source::AST, arena.get());
    mImpl = std::make_unique<DriverImpl>(file, lang, recordHierarchy, strictMode, std::move(arena));
    const auto parseImpl = lang == FrontEndLang::Spl ? parseSpl : parseSysY;
    if(!parseImpl(*mImpl, file) || !mImpl->complete()) {
        if(!strictMode) {
            reportError() << "Failed to parse"sv << std::endl;
            std::abort();
        } else
            std::exit(EXIT_FAILURE);
    }
}

void Driver::emit(Module& module) {
    Stage stage{ "emit IR"sv };
    mImpl->emit(module);
}

void Driver::dump(std::ostream& out) {
    Stage stage{ "dump AST"sv };
    mImpl->dump(out);
}

CMMC_NAMESPACE_END

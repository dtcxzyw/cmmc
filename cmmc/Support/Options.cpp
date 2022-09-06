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

#include "cmmc/Support/Options.hpp"
#include <cstdint>
#include <cstdlib>
#include <getopt.h>
#include <iostream>
#include <string>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

struct OptionStorage final {
    std::vector<OptionBase*> options;

    static OptionStorage& get() {
        static OptionStorage instance;
        return instance;
    }
};

OptionBase& OptionBase::setName(const char* name, char shortName) {
    mName = name;
    mShortName = shortName;
    return *this;
}
OptionBase& OptionBase::hasDefault() {
    mType = ArgType::Optional;
    return *this;
}
OptionBase& OptionBase::requireArg() {
    mType = ArgType::Required;
    return *this;
}
OptionBase& OptionBase::setDesc(const char* desc) {
    mDesc = desc;
    return *this;
}
option OptionBase::getOption() const {
    return { mName, static_cast<int>(mType), nullptr, mShortName };
}
void OptionBase::printHelp() {
    std::cerr << mDesc << std::endl;
    auto printArg = [&] {
        if(mType == ArgType::Required)
            std::cerr << "=ARG";
        else if(mType == ArgType::Optional)
            std::cerr << "=[ARG]";
    };
    std::cerr << "\t--" << mName;
    printArg();
    std::cerr << "\t|\t-" << mShortName;
    printArg();
    std::cerr << std::endl;
    if(mType == ArgType::Optional)
        printDefault(std::cerr);
}

Flag& Flag::withDefault(bool flag) {
    mFlag = flag;
    return *this;
}

void Flag::handle(const char*) {
    // std::cout << "set flag " << getShortName() << std::endl;
    mFlag = true;
}

String& String::withDefault(std::string value) {
    mStr = std::move(value);
    return *this;
}

void String::handle(const char* str) {
    mStr = str;
}

Integer& Integer::withDefault(uint32_t value) {
    mValue = value;
    return *this;
}

void Integer::handle(const char* str) {
    mValue = strtol(str, nullptr, 10);
}

int parseCommands(int argc, char** argv) {
    auto& storage = OptionStorage::get();
    std::vector<option> options;
    std::string shortopts;

    for(auto opt : storage.options) {
        auto option = opt->getOption();
        options.push_back(option);
        shortopts.push_back(option.val);
        if(option.has_arg != no_argument)
            shortopts.push_back(':');
    }

    options.push_back(option{ 0, 0, nullptr, 0 });
    // std::cout << shortopts << std::endl;

    while(true) {
        int idx;
        const auto c = getopt_long(argc, argv, shortopts.c_str(), options.data(), &idx);

        if(c == -1)
            break;
        if(c == 0 || c == '?')
            continue;  // TODO: fatal

        for(auto opt : storage.options) {
            if(opt->getShortName() == c)
                opt->handle(optarg);
        }
    }

    return optind;
}

OptionBase::OptionBase() : mName{ "" }, mShortName{ 0 }, mType{ ArgType::Flag } {
    OptionStorage::get().options.emplace_back(this);
}

void Flag::printDefault(std::ostream& out) const {
    out << mFlag;
}
void String::printDefault(std::ostream& out) const {
    out << mStr;
}
void Integer::printDefault(std::ostream& out) const {
    out << mValue;
}

Flag::Flag() : mFlag{ false } {}
String::String() : mStr{ "" } {
    requireArg();
}
Integer::Integer() : mValue{ 0 } {
    requireArg();
}

OptionBase::~OptionBase() {}
Flag::~Flag() {}
String::~String() {}
Integer::~Integer() {}

CMMC_NAMESPACE_END

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

#include <algorithm>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cstdint>
#include <cstdlib>
#include <getopt.h>
#include <ios>
#include <ostream>
#include <string>
#include <string_view>
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
    auto& out = reportInfo();
    auto printArg = [&](char sep) {
        if(mType == ArgType::Required)
            out << sep << "ARG"sv;
        else if(mType == ArgType::Optional)
            out << sep << "[ARG]"sv;
    };
    out << "--"sv << mName;
    printArg('=');
    if(mShortName) {
        out << "|-"sv << mShortName;
        printArg(' ');
    }
    out << ' ' << mDesc;
    if(mType == ArgType::Optional) {
        out << " (default = "sv;
        printDefault(out);
        out << ')';
    }
    out << std::endl;
}

Flag& Flag::withDefault(bool flag) {
    hasDefault();
    mFlag = flag;
    return *this;
}

void Flag::handle(const char* str) {
    // std::cout << "set flag " << getShortName() << std::endl;
    using namespace std::literals;
    if(str)
        mFlag = (str != "false"sv);
    else
        mFlag = true;
}

StringOpt& StringOpt::withDefault(std::string value) {
    hasDefault();
    mHasValue = true;
    mStr = std::move(value);
    return *this;
}

void StringOpt::handle(const char* str) {
    mHasValue = true;
    mStr = str;
}

IntegerOpt& IntegerOpt::withDefault(uint32_t value) {
    hasDefault();
    mValue = value;
    mHasValue = true;
    return *this;
}

void IntegerOpt::handle(const char* str) {
    mHasValue = true;
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
        if(c == 0 || c == '?') {
            printHelpInfo();
            DiagnosticsContext::get().attach<Reason>("unrecognized commands").reportFatal();
        }

        for(auto opt : storage.options) {
            if(opt->getShortName() == c)
                opt->handle(optarg);
        }
    }

    return optind;
}

OptionBase::OptionBase() : mName{ "" }, mShortName{ 0 }, mDesc{ "no desc" }, mType{ ArgType::Flag } {
    OptionStorage::get().options.emplace_back(this);
}

void Flag::printDefault(std::ostream& out) const {
    out << (mFlag ? "on" : "off");
}
void StringOpt::printDefault(std::ostream& out) const {
    out << mStr;
}
void IntegerOpt::printDefault(std::ostream& out) const {
    out << mValue;
}

Flag::Flag() : mFlag{ false } {}
StringOpt::StringOpt() : mStr{ "" } {
    requireArg();
}
IntegerOpt::IntegerOpt() : mValue{ 0 } {
    requireArg();
}

void printHelpInfo() {
    auto& opts = OptionStorage::get().options;
    std::sort(opts.begin(), opts.end(), [](auto lhs, auto rhs) { return lhs->getName() < rhs->getName(); });

    reportInfo() << "Usage: CMMC [Options] Input"sv << std::endl;
    for(auto opt : opts)
        opt->printHelp();
}

struct RequiredArgument final {
    std::string_view name;
    std::string_view type;
    friend void operator<<(std::ostream& out, const RequiredArgument& req) {
        out << "option "sv << req.name << " ["sv << req.type << "] is required"sv << std::endl;
    }
};

uint32_t IntegerOpt::get(bool required) const noexcept {
    if(required && !mHasValue)
        DiagnosticsContext::get().attach<RequiredArgument>(getName(), "integer").reportFatal();
    return mValue;
}

const std::string& StringOpt::get(bool required) const noexcept {
    if(required && !mHasValue)
        DiagnosticsContext::get().attach<RequiredArgument>(getName(), "string").reportFatal();
    return mStr;
}

CMMC_NAMESPACE_END

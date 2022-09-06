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
#include <cstdint>
#include <getopt.h>
#include <ostream>
#include <string>

CMMC_NAMESPACE_BEGIN

class OptionBase {
    const char* mName;
    char mShortName;
    const char* mDesc;
    enum class ArgType { Flag = no_argument, Required = required_argument, Optional = optional_argument } mType;

public:
    OptionBase();
    virtual ~OptionBase() = default;
    OptionBase(const OptionBase&) = delete;
    OptionBase& operator=(const OptionBase&) = delete;
    OptionBase(OptionBase&&) = delete;
    OptionBase& operator=(OptionBase&&) = delete;

    OptionBase& setName(const char* name, char shortName);
    OptionBase& hasDefault();
    OptionBase& requireArg();
    OptionBase& setDesc(const char* desc);
    virtual void printDefault(std::ostream& out) const = 0;
    virtual void handle(const char* str) = 0;
    option getOption() const;
    char getShortName() const noexcept {
        return mShortName;
    }
    void printHelp();
};

class Flag final : public OptionBase {
    bool mFlag;

public:
    Flag();
    Flag& withDefault(bool flag);
    void printDefault(std::ostream& out) const override;
    void handle(const char* str) override;
    bool get() const noexcept {
        return mFlag;
    }
};

class StringOpt final : public OptionBase {
    std::string mStr;

public:
    StringOpt();
    StringOpt& withDefault(std::string value);
    void printDefault(std::ostream& out) const override;
    void handle(const char* str) override;
    const std::string& get() const noexcept {
        return mStr;
    }
};

class IntegerOpt final : public OptionBase {
    uint32_t mValue = 0;

public:
    IntegerOpt();
    IntegerOpt& withDefault(uint32_t value);
    void printDefault(std::ostream& out) const override;
    void handle(const char* str) override;
    uint32_t get() const noexcept {
        return mValue;
    }
};

int parseCommands(int argc, char** argv);

#define CMMC_INIT_OPTIONS_BEGIN [[maybe_unused]] static int __placeholder = ([] {
#define CMMC_INIT_OPTIONS_END \
    }                         \
    (), 0);

CMMC_NAMESPACE_END

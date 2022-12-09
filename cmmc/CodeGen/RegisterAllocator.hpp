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
#include <cmmc/CodeGen/GMIR.hpp>
#include <cstdint>
#include <memory>
#include <string_view>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

class TargetRegisterUsage {
public:
    virtual ~TargetRegisterUsage() = default;
    virtual uint32_t classCount() const noexcept = 0;
    virtual uint32_t estimateMigrationCost(uint32_t src, uint32_t dst) const = 0;
    virtual uint32_t getAvailableRegisters(uint32_t src) const noexcept = 0;
};

class Target;
using RegisterAllocFunc = void (*)(GMIRFunction& mfunc, const Target& target);

class RegisterAllocatorRegistry final {
    std::unordered_map<std::string_view, RegisterAllocFunc> mMethods;

public:
    void addMethod(std::string_view name, RegisterAllocFunc func);
    RegisterAllocFunc selectMethod() const;

    static RegisterAllocatorRegistry& get();
};

#define CMMC_REGISTER_ALLOCATOR(NAME, FUNC)                     \
    static int __allocator = [] {                               \
        RegisterAllocatorRegistry::get().addMethod(NAME, FUNC); \
        return 0;                                               \
    }();

void assignRegisters(GMIRFunction& mfunc, const Target& target);

CMMC_NAMESPACE_END

/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2023 CMMC Authors
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
#include <cmmc/CodeGen/MIR.hpp>
#include <cstdint>
#include <memory>
#include <string_view>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

using IPRAInfo = std::unordered_set<MIROperand, MIROperandHasher>;
class Target;

class IPRAUsageCache final {
    std::unordered_map<MIRRelocable*, IPRAInfo> mCache;

public:
    void add(const Target& target, MIRRelocable* symbol, MIRFunction& func);
    void add(MIRRelocable* symbol, IPRAInfo info);
    const IPRAInfo* query(MIRRelocable* calleeFunc) const;
};

using RegisterAllocFunc = void (*)(MIRFunction& mfunc, CodeGenContext& ctx, IPRAUsageCache& cache);

class RegisterAllocatorRegistry final {
    std::unordered_map<std::string_view, RegisterAllocFunc> mMethods;

public:
    void addMethod(std::string_view name, RegisterAllocFunc func);
    RegisterAllocFunc selectMethod() const;

    static RegisterAllocatorRegistry& get();
};

// NOLINTNEXTLINE
#define CMMC_REGISTER_ALLOCATOR(NAME, FUNC)                     \
    static const int __allocator = [] {                         \
        RegisterAllocatorRegistry::get().addMethod(NAME, FUNC); \
        return 0;                                               \
    }();

void assignRegisters(MIRFunction& mfunc, CodeGenContext& ctx, IPRAUsageCache& cache);

CMMC_MIR_NAMESPACE_END

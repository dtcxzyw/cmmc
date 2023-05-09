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
#include <cmmc/CodeGen/GMIR.hpp>
#include <cstdint>
#include <memory>
#include <string_view>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class TargetRegisterUsage {
public:
    virtual ~TargetRegisterUsage() = default;
    // virtual uint32_t estimateMigrationCost(uint32_t src, uint32_t dst) const = 0;
    virtual void markAsUsed(const Operand& operand) = 0;
    virtual void markAsDiscarded(const Operand& operand) = 0;
    virtual Operand getFreeRegister(uint32_t src) = 0;
    virtual uint32_t getRegisterClass(const Type* type) const = 0;
};

inline void setUsed(uint32_t& val, uint32_t idx) {
    assert(!(val & (1U << idx)));
    val |= (1U << idx);
}

inline void setDiscarded(uint32_t& val, uint32_t idx) {
    assert(val & (1U << idx));
    val &= ~(1U << idx);
}

using IPRAInfo = std::unordered_set<Operand, OperandHasher>;
class Target;

class IPRAUsageCache final {
    std::unordered_map<GMIRSymbol*, IPRAInfo> mCache;

public:
    void add(const Target& target, GMIRSymbol* symbol, GMIRFunction& func);
    void add(GMIRSymbol* symbol, IPRAInfo info);
    const IPRAInfo* query(GMIRSymbol* calleeFunc) const;
};

using RegisterAllocFunc = void (*)(GMIRFunction& mfunc, const Target& target, IPRAUsageCache& cache);

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

void assignRegisters(GMIRFunction& mfunc, const Target& target, IPRAUsageCache& cache);

CMMC_NAMESPACE_END

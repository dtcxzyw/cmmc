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
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cstdint>
#include <memory>
#include <ostream>
#include <string_view>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

class RegisterSelector;

class MultiClassRegisterSelector final {
    const class TargetRegisterInfo& mRegisterInfo;
    std::vector<std::unique_ptr<RegisterSelector>> mSelectors;

public:
    explicit MultiClassRegisterSelector(const class TargetRegisterInfo& info);
    ~MultiClassRegisterSelector();
    void markAsDiscarded(MIROperand reg);
    void markAsUsed(MIROperand reg);
    [[nodiscard]] bool isFree(MIROperand reg) const;
    [[nodiscard]] MIROperand getFreeRegister(OperandType type);
};

class TargetRegisterInfo {
public:
    virtual ~TargetRegisterInfo() = default;
    [[nodiscard]] virtual uint32_t getAllocationClassCount() const noexcept = 0;
    [[nodiscard]] virtual uint32_t getAllocationClass(OperandType type) const = 0;
    [[nodiscard]] virtual bool isLegalISARegOperand(const MIROperand& operand, OperandFlag flag) const = 0;
    [[nodiscard]] virtual OperandType getCanonicalizedRegisterType(OperandType type) const = 0;
    [[nodiscard]] virtual OperandType getCanonicalizedRegisterTypeForClass(uint32_t classId) const = 0;
    [[nodiscard]] virtual const std::vector<uint32_t>& getAllocationList(uint32_t classId) const = 0;
    virtual void addExternalFuncIPRAInfo(MIRRelocable* symbol, IPRAUsageCache& infoIPRA) const {
        CMMC_UNUSED(symbol);
        CMMC_UNUSED(infoIPRA);
    }
    [[nodiscard]] virtual MIROperand getReturnAddressRegister() const noexcept = 0;
};

CMMC_MIR_NAMESPACE_END

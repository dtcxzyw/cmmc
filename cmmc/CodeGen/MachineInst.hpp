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
#include <cmmc/CodeGen/Register.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cstdint>
#include <variant>

CMMC_NAMESPACE_BEGIN

struct StackAllocation;
class MachineSymbol;

struct StackFrame final {
    StackAllocation* element;
};
struct Global final {
    MachineSymbol* symbol;
};
struct Zero final {};

struct Address final {
    std::variant<StackFrame, Global, Zero> base;
    int32_t offset;
};

class MachineInst final {
    uint32_t mInstID;
    Register mReadReg[3];
    Register mWriteReg;
    Address mAddress;
    uint64_t mImm;
    uint32_t mAttr;

public:
    template <typename Inst>
    constexpr explicit MachineInst(Inst instID) noexcept : mInstID{ static_cast<uint32_t>(instID) } {}

    MachineInst& setReg(uint32_t idx, Register reg) {
        mReadReg[idx] = reg;
        return *this;
    }
    MachineInst& setWriteReg(Register reg) {
        mWriteReg = reg;
        return *this;
    }
    MachineInst& setImm(uint64_t metadata) noexcept {
        mImm = metadata;
        return *this;
    }
    MachineInst& setAddr(Address address) noexcept {
        mAddress = address;
        return *this;
    }
    MachineInst& setAttr(uint32_t attr) noexcept {
        mAttr = attr;
        return *this;
    }

    template <typename Inst>
    Inst getInstID() const noexcept {
        return static_cast<Inst>(mInstID);
    }
    template <typename Attr>
    bool hasAttr(Attr attr) const noexcept {
        const auto mask = static_cast<uint32_t>(attr);
        return (mAttr & mask) == mask;
    }
};
CMMC_ARENA_TRAIT(MachineInst, MC);

class TargetInstClass {
public:
    virtual ~TargetInstClass() = default;
    virtual const TargetRegisterClass* getRegisterClass(uint32_t idx) const noexcept = 0;
};

class LoweringContext;

class TargetInstInfo {
public:
    virtual ~TargetInstInfo() = default;

    virtual const TargetRegisterClass& getRegisterClass(Register reg) const = 0;
    virtual const TargetInstClass& getInstClass(uint32_t instID) const = 0;

    // For lowering
    virtual bool isSupportedInstruction(InstructionID inst) const noexcept = 0;
    virtual void emit(Instruction* inst, LoweringContext& ctx) const = 0;
};

CMMC_NAMESPACE_END

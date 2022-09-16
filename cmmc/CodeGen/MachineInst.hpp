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
    uint64_t mImm[3];
    uint32_t mAttr;

public:
    template <typename Inst>
    constexpr explicit MachineInst(Inst instID) noexcept : mInstID{ static_cast<uint32_t>(instID) } {}
    template <typename Inst>
    Inst getInstID() const noexcept {
        return static_cast<Inst>(mInstID);
    }

    MachineInst& setReg(uint32_t idx, Register reg) noexcept {
        mReadReg[idx] = reg;
        return *this;
    }
    Register getReg(uint32_t idx) const noexcept {
        return mReadReg[idx];
    }
    MachineInst& setWriteReg(Register reg) noexcept {
        mWriteReg = reg;
        return *this;
    }
    Register getWriteReg() const noexcept {
        return mWriteReg;
    }
    MachineInst& setImm(uint32_t idx, uint64_t metadata) noexcept {
        mImm[idx] = metadata;
        return *this;
    }
    uint64_t getImm(uint32_t idx) const noexcept {
        return mImm[idx];
    }
    MachineInst& setAddr(Address address) noexcept {
        mAddress = address;
        return *this;
    }
    const Address& getAddr() const noexcept {
        return mAddress;
    }

    template <typename Attr>
    MachineInst& addAttr(Attr attr) noexcept {
        mAttr |= static_cast<uint32_t>(attr);
        return *this;
    }
    template <typename Attr>
    bool hasAttr(Attr attr) const noexcept {
        const auto mask = static_cast<uint32_t>(attr);
        return (mAttr & mask) == mask;
    }
    uint32_t getAttr() const noexcept {
        return mAttr;
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

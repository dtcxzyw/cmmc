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
#include <ostream>
#include <string_view>

CMMC_MIR_NAMESPACE_BEGIN

enum OperandFlag : uint32_t {
    OperandFlagUse = 1 << 0,
    OperandFlagDef = 1 << 1,
    OperandFlagMetadata = 1 << 2,
};

enum InstFlag : uint32_t {
    InstFlagNone = 0,
    InstFlagLoad = 1 << 0,
    InstFlagStore = 1 << 1,
    InstFlagTerminator = 1 << 2,
    InstFlagBranch = 1 << 3,
    InstFlagCall = 1 << 4,
    InstFlagNoFallthrough = 1 << 5,
    InstFlagPush = 1 << 6,
    InstFlagLoadConstant = 1 << 7,
    InstFlagSideEffect = InstFlagLoad | InstFlagStore | InstFlagTerminator | InstFlagBranch | InstFlagCall | InstFlagPush
};

constexpr InstFlag operator|(InstFlag lhs, InstFlag rhs) noexcept {
    return static_cast<InstFlag>(static_cast<uint32_t>(lhs) | static_cast<uint32_t>(rhs));
}
constexpr InstFlag operator&(InstFlag lhs, InstFlag rhs) noexcept = delete;
constexpr InstFlag operator==(InstFlag lhs, InstFlag rhs) noexcept = delete;
constexpr InstFlag operator!=(InstFlag lhs, InstFlag rhs) noexcept = delete;
constexpr bool requireFlag(InstFlag flag, InstFlag required) noexcept {
    return (static_cast<uint32_t>(flag) & static_cast<uint32_t>(required)) == static_cast<uint32_t>(required);
}
constexpr bool requireOneFlag(InstFlag flag, InstFlag required) noexcept {
    return (static_cast<uint32_t>(flag) & static_cast<uint32_t>(required)) != 0;
}

class InstInfo {
public:
    InstInfo() = default;
    virtual ~InstInfo() = default;
    virtual void print(std::ostream& out, const MIRInst& inst, bool printComment) const = 0;
    virtual bool verify(std::ostream& out, const MIRInst& inst) const = 0;
    // FIXME: use inline functions
    [[nodiscard]] virtual uint32_t getOperandNum() const noexcept = 0;
    [[nodiscard]] virtual OperandFlag getOperandFlag(uint32_t idx) const noexcept = 0;
    [[nodiscard]] virtual InstFlag getInstFlag() const noexcept = 0;
};

class TargetInstInfo {
public:
    TargetInstInfo() = default;
    virtual ~TargetInstInfo() = default;
    [[nodiscard]] virtual const InstInfo& getInstInfo(uint32_t opcode) const;
    virtual bool matchBranch(const MIRInst& inst, MIRBasicBlock*& target, double& prob) const;
    bool matchConditionalBranch(const MIRInst& inst, MIRBasicBlock*& target, double& prob) const;
    bool matchUnconditionalBranch(const MIRInst& inst, MIRBasicBlock*& target) const;
    virtual void redirectBranch(MIRInst& inst, MIRBasicBlock* target) const;
    virtual MIRInst emitGoto(MIRBasicBlock* target) const = 0;
};

inline bool isOperandVReg(std::ostream&, const MIROperand& operand) {
    return operand.isReg() && isVirtualReg(operand.reg());
}

inline bool isOperandReloc(std::ostream&, const MIROperand& operand) {
    return operand.isReloc();
}

inline bool isOperandProb(std::ostream&, const MIROperand& operand) {
    return operand.isProb();
}

inline bool isOperandStackObject(std::ostream&, const MIROperand& operand) {
    return operand.isReg() && isStackObject(operand.reg());
}

CMMC_MIR_NAMESPACE_END

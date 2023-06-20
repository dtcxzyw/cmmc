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
#include <RISCV/InstInfoDecl.hpp>
#include <cmmc/CodeGen/MIR.hpp>

CMMC_TARGET_NAMESPACE_BEGIN

// clang-format off
enum RISCVRegister : uint32_t {
    GPRBegin,
    X0=GPRBegin, X1, X2, X3, X4, X5, X6, X7,
    X8, X9, X10, X11, X12, X13, X14, X15,
    X16, X17, X18, X19, X20, X21, X22, X23,
    X24, X25, X26, X27, X28, X29, X30, X31,
    GPREnd,
    FPRBegin,
    F0=FPRBegin, F1, F2, F3, F4, F5, F6, F7,
    F8, F9, F10, F11, F12, F13, F14, F15,
    F16, F17, F18, F19, F20, F21, F22, F23,
    F24, F25, F26, F27, F28, F29, F30, F31,
    FPREnd,
};
// clang-format on

constexpr auto ra = MIROperand::asISAReg(RISCV::X1, OperandType::Int64);
constexpr auto sp = MIROperand::asISAReg(RISCV::X2, OperandType::Int64);

constexpr bool isOperandImm12(const MIROperand& operand) {
    if(operand.isReloc() && operand.type() == OperandType::LowBits)
        return true;
    return operand.isImm() && isSignedImm<12>(operand.imm());
}

constexpr bool isOperandUImm5(const MIROperand& operand) {
    return operand.isImm() && isUnsignedImm<5>(operand.imm());
}

constexpr bool isOperandUImm6(const MIROperand& operand) {
    return operand.isImm() && isUnsignedImm<6>(operand.imm());
}

constexpr bool isOperandUImm20(const MIROperand& operand) {
    if(operand.isReloc() && operand.type() == OperandType::HighBits)
        return true;
    return operand.isImm() && isUnsignedImm<20>(operand.imm());
}

constexpr bool isOperandImm32(const MIROperand& operand) {
    return operand.isImm() && (isSignedImm<32>(operand.imm()) || isUnsignedImm<32>(operand.imm()));
}

constexpr bool isOperandNonZeroImm12(const MIROperand& operand) {
    return isOperandImm12(operand) && operand.imm() != 0;
}

constexpr bool isOperandNonZeroImm32(const MIROperand& operand) {
    return isOperandImm32(operand) && operand.imm() != 0;
}

constexpr bool isOperandGPR(const MIROperand& operand) {
    if(!operand.isReg())
        return false;
    if(!isIntegerType(operand.type()))
        return false;
    if(isVirtualReg(operand.reg()))
        return true;
    const auto reg = operand.reg();
    return GPRBegin <= reg && reg < GPREnd;
}

constexpr bool isOperandBaseLike(const MIROperand& operand) {
    return isOperandGPR(operand) || isOperandStackObject(operand);
}

constexpr bool isOperandFPR(const MIROperand& operand) {
    if(!operand.isReg())
        return false;
    if(!isFPType(operand.type()))
        return false;
    if(isVirtualReg(operand.reg()))
        return true;
    const auto reg = operand.reg();
    return FPRBegin <= reg && reg < FPREnd;
}

void legalizeAddrBaseOffsetPostRA(std::list<MIRInst>& instructions, std::list<MIRInst>::iterator iter, MIROperand& base,
                                  int64_t& imm);
// dst = src + imm
void adjustReg(std::list<MIRInst>& instructions, std::list<MIRInst>::iterator iter, const MIROperand& dst, const MIROperand& src,
               int64_t imm);

CMMC_TARGET_NAMESPACE_END

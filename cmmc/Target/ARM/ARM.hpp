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
#include <ARM/InstInfoDecl.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cstdint>

CMMC_TARGET_NAMESPACE_BEGIN

// clang-format off
enum ARMRegister : uint32_t {
    GPRBegin,
    R0=GPRBegin, R1, R2, R3, R4, R5, R6, R7,
    R8, R9, R10, R11, R12, R13, R14, R15,
    GPREnd,
    FPRBegin,
    S0=FPRBegin, S1, S2, S3, S4, S5, S6, S7,
    S8, S9, S10, S11, S12, S13, S14, S15,
    S16, S17, S18, S19, S20, S21, S22, S23,
    S24, S25, S26, S27, S28, S29, S30, S31,
    FPREnd,
    CC, FCC
};
// clang-format on
enum class CondField : uint32_t { EQ, NE, HS, LO, MI, PL, HI, LS, GE, LT, GT, LE, AL };

constexpr auto ra = MIROperand::asISAReg(ARM::R14, OperandType::Int32);
constexpr auto sp = MIROperand::asISAReg(ARM::R13, OperandType::Int32);

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

constexpr bool isOperandUImm5(const MIROperand& operand) {
    return operand.isImm() && isUnsignedImm<5>(operand.imm());
}

constexpr bool isOperandAddrImm13(const MIROperand& operand) {
    return operand.isImm() && isSignedImm<13>(operand.imm());
}
constexpr bool isOperandAddrImm9(const MIROperand& operand) {
    return operand.isImm() && isSignedImm<9>(operand.imm());
}
constexpr bool isOperandAddrImmVFP(const MIROperand& operand) {
    if(!operand.isImm())
        return false;
    const auto imm = operand.imm();
    return 0 <= imm && imm <= 1020 && imm % 4 == 0;
}

constexpr bool isOperandImm32(const MIROperand& operand) {
    return operand.isImm() && isSignedImm<32>(operand.imm());
}
constexpr bool isOperandUImm32(const MIROperand& operand) {
    return operand.isImm() && isUnsignedImm<32>(operand.imm());
}

constexpr bool isOperandUImm16(const MIROperand& operand) {
    if(operand.isReloc() && operand.type() != OperandType::Special)
        return true;
    return operand.isImm() && isUnsignedImm<16>(operand.imm());
}

constexpr bool isOperandFP32(const MIROperand& operand) {
    return operand.isImm() && isUnsignedImm<32>(operand.imm()) && operand.type() == OperandType::Float32;
}

constexpr bool isOperandFP32Zero(const MIROperand& operand) {
    return operand.isImm() && operand.imm() == 0 && operand.type() == OperandType::Float32;
}

constexpr bool isOperandShamt(const MIROperand& operand) {
    return isOperandUImm5(operand) || isOperandGPR(operand);
}

constexpr bool isOperandOp2Constant(const MIROperand& operand) {
    if(!operand.isImm() || !(isSignedImm<32>(operand.imm()) || isUnsignedImm<32>(operand.imm())))
        return false;

    const auto imm = static_cast<uint32_t>(operand.imm());
    const auto immLong = static_cast<uint64_t>(imm) << 32 | imm;
    for(int i = 0; i < 32; i += 2)
        if(((immLong >> i) & 0xFFFFFFFF) < (1 << 8))
            return true;
    return false;
}

constexpr bool isOperandOp2(const MIROperand& operand) {
    return isOperandOp2Constant(operand) || isOperandGPR(operand);
}

constexpr bool isOperandLoadStoreShamt(const MIROperand& op) {
    return op.isImm() && isUnsignedImm<2>(op.imm());
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

constexpr bool isOperandCC(const MIROperand& op) {
    return op.isReg() && op.reg() == ARMRegister::CC;
}

constexpr bool isOperandFCC(const MIROperand& op) {
    return op.isReg() && op.reg() == ARMRegister::FCC;
}

constexpr bool isZero(const MIROperand& operand) {
    return operand.isImm() && operand.imm() == 0;
}

enum class AddressingImmRange {
    Imm13,
    Imm9,
    VFP,
};
MIROperand getInvertedCondField(const MIROperand& operand);
AddressingImmRange getAddressingImmRange(OperandType type, uint32_t opcode);
bool isLegalAddrImm(intmax_t imm, AddressingImmRange range);
void legalizeAddrBaseOffsetPostRA(MIRInstList& instructions, MIRInstList::iterator iter, MIROperand& base, int64_t& imm,
                                  AddressingImmRange range);
// dst = src + imm
void adjustReg(MIRInstList& instructions, MIRInstList::iterator iter, const MIROperand& dst, const MIROperand& src, int64_t imm);
CMMC_TARGET_NAMESPACE_END

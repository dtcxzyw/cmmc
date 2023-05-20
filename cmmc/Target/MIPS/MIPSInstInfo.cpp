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

#include <MIPS/InstInfoDecl.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Target/MIPS/MIPS.hpp>
#include <ostream>

CMMC_TARGET_NAMESPACE_BEGIN

struct OperandDumper final {
    const mir::MIROperand& operand;
};

static std::string_view getMIPSGPRTextualName(MIPSRegister gpr) noexcept {
    // NOLINTNEXTLINE
    constexpr std::string_view name[] = {
        "zero", "at", "v0", "v1", "a0", "a1", "a2", "a3",  //
        "t0",   "t1", "t2", "t3", "t4", "t5", "t6", "t7",  //
        "s0",   "s1", "s2", "s3", "s4", "s5", "s6", "s7",  //
        "t8",   "t9", "k0", "k1", "gp", "sp", "fp", "ra",  //
    };
    return name[gpr - GPRBegin];
}

static bool isOperandGPR(const MIROperand& operand) {
    if(!operand.isReg())
        return false;
    if(isVirtualReg(operand.reg()))
        return true;
    const auto reg = operand.reg();
    return GPRBegin <= reg && reg < GPREnd;
}

static bool isOperandFPR(const MIROperand& operand) {
    if(!operand.isReg())
        return false;
    if(isVirtualReg(operand.reg()))
        return true;
    const auto reg = operand.reg();
    return FPRBegin <= reg && reg < FPREnd;
}

static bool isOperandHILO(const MIROperand& operand) {
    return operand.isReg() && operand.reg() == HILO;
}

static bool isOperandCC(const MIROperand& operand) {
    return operand.isReg() && operand.reg() == CC;
}

static std::ostream& operator<<(std::ostream& out, const OperandDumper& operand) {
    auto& op = operand.operand;
    if(op.isReg()) {
        if(isOperandGPR(op))
            out << '$' << getMIPSGPRTextualName(static_cast<MIPSRegister>(op.reg()));
        else if(isOperandFPR(op))
            out << "$f" << (op.reg() - FPRBegin) * 2;
        else if(isOperandHILO(op))
            out << "[hi/lo]";
        else if(isOperandCC(op))
            out << "[cc0]";
        else if(op.reg() == invalidReg) {
            out << "invalid";
        } else if(isVirtualReg(op.reg())) {
            out << 'v' << (op.reg() ^ virtualRegBegin);
        } else if(isStackObject(op.reg())) {
            out << 's' << (op.reg() ^ stackObjectBegin);
        } else {
            reportUnreachable(CMMC_LOCATION());
        }
        return out;
    }
    if(op.isImm()) {
        return out << op.imm();
    }
    if(op.isProb()) {
        return out << op.prob();
    }
    if(op.isReloc()) {
        op.reloc()->dumpAsTarget(out);
        return out;
    }
    reportUnreachable(CMMC_LOCATION());
}

static bool isOperandImm16(const MIROperand& operand) {
    return isOperandSignedImm<16>(operand);
}

static bool isOperandImm32(const MIROperand& operand) {
    return isOperandSignedImm<32>(operand);
}

using mir::isOperandProb;
using mir::isOperandReloc;

static bool verifyInstSLL(const MIRInst& inst) {
    return isOperandUnsignedImm<5>(inst.getOperand(2));
}

static bool verifyInstSRA(const MIRInst& inst) {
    return isOperandUnsignedImm<5>(inst.getOperand(2));
}

static bool verifyInstSRL(const MIRInst& inst) {
    return isOperandUnsignedImm<5>(inst.getOperand(2));
}

static MIRInst emitGotoImpl(MIRBasicBlock* targetBlock) {
    return MIRInst{ B }.setOperand<0>(MIROperand::asReloc(targetBlock));
}

CMMC_TARGET_NAMESPACE_END

#include <MIPS/InstInfoImpl.hpp>

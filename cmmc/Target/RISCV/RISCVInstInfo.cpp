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

#include <RISCV/InstInfoDecl.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Target/RISCV/RISCV.hpp>
#include <cstdint>
#include <ostream>

CMMC_TARGET_NAMESPACE_BEGIN

struct OperandDumper final {
    const mir::MIROperand& operand;
};

static std::string_view getRISCVGPRTextualName(uint32_t idx) noexcept {
    // NOLINTNEXTLINE
    constexpr std::string_view name[] = {
        "zero", "ra", "sp",  "gp",  "tp", "t0", "t1", "t2",  //
        "s0",   "s1", "a0",  "a1",  "a2", "a3", "a4", "a5",  //
        "a6",   "a7", "s2",  "s3",  "s4", "s5", "s6", "s7",  //
        "s8",   "s9", "s10", "s11", "t3", "t4", "t5", "t6",  //
    };
    return name[idx];
}

static std::ostream& operator<<(std::ostream& out, const OperandDumper& operand) {
    auto& op = operand.operand;
    if(op.isReg()) {
        if(isVirtualReg(op.reg())) {
            dumpVirtualReg(out, op);
        } else if(isOperandGPR(op))
            out << getRISCVGPRTextualName(static_cast<RISCVRegister>(op.reg()));
        else if(isOperandFPR(op))
            out << "f" << (op.reg() - FPRBegin);
        else if(op.reg() == invalidReg) {
            out << "invalid";
        } else if(isStackObject(op.reg())) {
            out << "so" << (op.reg() ^ stackObjectBegin);
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
        if(op.type() == OperandType::HighBits) {
            out << "%pcrel_hi(";
        } else if(op.type() == OperandType::LowBits) {
            out << "%pcrel_lo(";
        }

        op.reloc()->dumpAsTarget(out);
        if(op.type() != OperandType::Special)
            out << ')';
        return out;
    }
    reportUnreachable(CMMC_LOCATION());
}

using mir::isOperandIRegOrImm;
using mir::isOperandProb;
using mir::isOperandReloc;

static MIRInst emitGotoImpl(MIRBasicBlock* targetBlock) {
    return MIRInst{ J }.setOperand<0>(MIROperand::asReloc(targetBlock));
}

static bool isOperandCC(const MIROperand& op) {
    return op.isImm() && op.type() == OperandType::Special &&
        op.imm() <= static_cast<intmax_t>(CompareOp::ICmpUnsignedGreaterEqual);
}

static void inverseBranchImpl(MIRInst& inst, MIRBasicBlock* newTarget) {
    switch(inst.opcode()) {
        case BEQ:
            inst.setOpcode(BNE);
            break;
        case BNE:
            inst.setOpcode(BEQ);
            break;
        case BLT:
            inst.setOpcode(BGE);
            break;
        case BLTU:
            inst.setOpcode(BGEU);
            break;
        case BLE:
            inst.setOpcode(BGT);
            break;
        case BLEU:
            inst.setOpcode(BGTU);
            break;
        case BGT:
            inst.setOpcode(BLE);
            break;
        case BGTU:
            inst.setOpcode(BLEU);
            break;
        case BGE:
            inst.setOpcode(BLT);
            break;
        case BGEU:
            inst.setOpcode(BLTU);
            break;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
    inst.setOperand<2>(MIROperand::asReloc(newTarget));
    inst.setOperand<3>(MIROperand::asProb(1.0 - inst.getOperand(3).prob()));
}

CMMC_TARGET_NAMESPACE_END

#include <RISCV/InstInfoImpl.hpp>

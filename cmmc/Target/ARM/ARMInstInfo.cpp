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

#include <ARM/InstInfoDecl.hpp>
#include <cassert>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Target/ARM/ARM.hpp>
#include <cstdint>
#include <cstring>
#include <ostream>

CMMC_TARGET_NAMESPACE_BEGIN

struct OperandDumper final {
    const mir::MIROperand& operand;
};

static std::string_view getARMGPRTextualName(ARMRegister gpr) noexcept {
    // NOLINTNEXTLINE
    constexpr std::string_view name[] = {
        "r0", "r1", "r2",  "r3",  "r4",  "r5", "r6", "r7",  //
        "r8", "r9", "r10", "r11", "r12", "sp", "lr", "pc",  //
    };
    return name[gpr - GPRBegin];
}

static std::ostream& operator<<(std::ostream& out, const OperandDumper& operand) {
    auto& op = operand.operand;
    if(op.isReg()) {
        if(isVirtualReg(op.reg())) {
            dumpVirtualReg(out, op);
        } else if(isOperandGPR(op))
            out << getARMGPRTextualName(static_cast<ARMRegister>(op.reg()));
        else if(isOperandFPR(op))
            out << "s" << (op.reg() - FPRBegin);
        else if(op.reg() == ARM::CC)
            out << "APSR_nzcv";
        else if(op.reg() == ARM::FCC)
            out << "FPSCR";
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
        if(op.type() == OperandType::Float32) {
            auto u = static_cast<uint32_t>(op.imm());
            float f;
            memcpy(&f, &u, sizeof(float));
            out << '#' << f;
        } else if(op.type() == OperandType::RegList || op.type() == OperandType::RegListVFP) {
            // reg list
            out << "{ ";
            auto encode = static_cast<uint64_t>(op.imm());
            bool isFirst = true;
            for(uint32_t idx = 0; idx < 32; ++idx) {
                if(!(encode & (1ULL << idx)))
                    continue;
                if(isFirst)
                    isFirst = false;
                else {
                    out << ", ";
                }
                if(op.type() == OperandType::RegList)
                    out << getARMGPRTextualName(static_cast<ARMRegister>(idx));
                else
                    out << "s" << idx;
            }
            out << " }";
        } else if(op.type() == OperandType::CondField) {
            constexpr const char* lut[13] = { "eq", "ne", "hs", "lo", "mi", "pl", "hi", "ls", "ge", "lt", "gt", "le", "" };
            assert(op.imm() <= static_cast<intmax_t>(CondField::AL));
            out << lut[op.imm()];
        } else {
            out << '#' << op.imm();
        }
        return out;
    }
    if(op.isProb()) {
        return out << op.prob();
    }
    if(op.isReloc()) {
        if(op.type() == OperandType::HighBits) {
            out << "#:upper16:";
        } else if(op.type() == OperandType::LowBits) {
            out << "#:lower16:";
        }
        op.reloc()->dumpAsTarget(out);
        return out;
    }
    reportUnreachable(CMMC_LOCATION());
}

using mir::isOperandImm;
using mir::isOperandIReg;
using mir::isOperandIRegOrImm;
using mir::isOperandProb;
using mir::isOperandReloc;

static MIRInst emitGotoImpl(MIRBasicBlock* targetBlock) {
    return MIRInst{ B }.setOperand<0>(MIROperand::asReloc(targetBlock));
}

static bool verifyInstMOVT(const MIRInst& inst) {
    return inst.getOperand(0) == inst.getOperand(2);
}

static bool isOperandRegList(const MIROperand& op) {
    return op.isImm() && op.type() == OperandType::RegList;
}
static bool isOperandRegListVFP(const MIROperand& op) {
    return op.isImm() && op.type() == OperandType::RegListVFP;
}

static bool isOperandCondField(const MIROperand& op) {
    return op.isImm() && (0 <= op.imm() && op.imm() <= static_cast<intmax_t>(CondField::AL));
}

AddressingImmRange getAddressingImmRange(OperandType type, uint32_t opcode) {
    if(type == OperandType::Float32)
        return AddressingImmRange::VFP;
    switch(opcode) {
        case LDRH:
            [[fallthrough]];
        case STRH:
            [[fallthrough]];
        case LDRSH:
            [[fallthrough]];
        case LDRSB:
            return AddressingImmRange::Imm9;
        default:
            return AddressingImmRange::Imm13;
    }
}

bool isLegalAddrImm(intmax_t imm, AddressingImmRange range) {
    switch(range) {
        case AddressingImmRange::Imm13: {
            return isSignedImm<13>(imm);
        }
        case AddressingImmRange::Imm9: {
            return isSignedImm<9>(imm);
        }
        default: {
            return 0 <= imm && imm <= 1020 && imm % 4 == 0;
        }
    }
}

static bool verifyInstLDR(const MIRInst&) {
    return true;
}
static bool verifyInstLDRB(const MIRInst&) {
    return true;
}
static bool verifyInstSTR(const MIRInst&) {
    return true;
}
static bool verifyInstSTRB(const MIRInst&) {
    return true;
}
static bool verifyInstAddrImm9(const MIRInst& inst) {
    return isOperandAddrImm9(inst.getOperand(2));
}
static bool verifyInstLDRSB(const MIRInst& inst) {
    return verifyInstAddrImm9(inst);
}
static bool verifyInstLDRH(const MIRInst& inst) {
    return verifyInstAddrImm9(inst);
}
static bool verifyInstLDRSH(const MIRInst& inst) {
    return verifyInstAddrImm9(inst);
}
static bool verifyInstSTRH(const MIRInst& inst) {
    return verifyInstAddrImm9(inst);
}

CMMC_TARGET_NAMESPACE_END

#include <ARM/InstInfoImpl.hpp>

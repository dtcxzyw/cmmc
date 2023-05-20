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
#include <cmmc/CodeGen/ISelInfo.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Target/MIPS/MIPS.hpp>

CMMC_TARGET_NAMESPACE_BEGIN

static bool isOperandImm16(const MIROperand& operand) {
    return isOperandSignedImm<16>(operand);
}

static bool isOperandImm(const MIROperand& operand) {
    return operand.isImm();
}

static bool isOperandIReg(const MIROperand& operand) {
    return operand.isReg() && isIntegerType(operand.type());
}

static bool isZero(const MIROperand& operand) {
    if(operand.isReg() && operand.reg() == MIPS::X0)
        return true;
    return operand.isImm() && operand.imm() == 0;
}

static bool isRationalOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op != CompareOp::Equal && op != CompareOp::NotEqual;
}
static bool isEqualityOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::Equal || op == CompareOp::NotEqual;
}

static bool isLessThanOrLessEqualOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::LessThan || op == CompareOp::LessEqual;
}

static uint32_t getBranchWithZeroOpcode(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    switch(op) {
        case CompareOp::LessThan:
            return BLTZ;
        case CompareOp::LessEqual:
            return BLEZ;
        case CompareOp::GreaterThan:
            return BGTZ;
        case CompareOp::GreaterEqual:
            return BGEZ;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static uint32_t getBranchEqualityOpcode(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    switch(op) {
        case CompareOp::Equal:
            return BEQ;
        case CompareOp::NotEqual:
            return BNE;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static MIROperand getNeg(const MIROperand& operand) {
    return MIROperand::asImm(-operand.imm(), operand.type());
}

static MIROperand getVRegAs(ISelContext& ctx, const MIROperand& ref) {
    return MIROperand::asVReg(ctx.getCodeGenCtx().nextId(), ref.type());
}

static MIROperand getHILO() {
    return MIROperand::asISAReg(MIPS::HILO, OperandType::Special);
}

[[maybe_unused]] static MIROperand getCC() {
    return MIROperand::asISAReg(MIPS::CC, OperandType::Special);
}

static MIROperand getZero(const MIROperand& operand) {
    return MIROperand::asISAReg(MIPS::X0, operand.type());
}

CMMC_TARGET_NAMESPACE_END

#include <MIPS/ISelInfoImpl.hpp>

CMMC_TARGET_NAMESPACE_BEGIN

bool MIPSISelInfo::isLegalGenericInst(uint32_t opcode) const {
    return opcode == InstCopy || opcode == InstCopyFromReg || opcode == InstCopyToReg;
}

static bool legalizeInst(MIRInst& inst, ISelContext& ctx) {
    bool modified = false;
    const auto swapImmReg = [&] {
        auto& lhs = inst.getOperand(1);
        auto& rhs = inst.getOperand(2);
        if(lhs.isImm() && !rhs.isImm()) {
            std::swap(lhs, rhs);
            modified = true;
            return true;
        }
        return false;
    };
    {
        auto& instInfo = ctx.getCodeGenCtx().instInfo.getInstInfo(inst.opcode());
        if(requireFlag(instInfo.getInstFlag(), InstFlagCommutative)) {
            swapImmReg();
        }
    }
    const auto imm2reg = [&](MIROperand& operand) {
        if(operand.isImm()) {
            if(operand.imm() == 0) {
                operand = getZero(operand);
            } else {
                const auto reg = getVRegAs(ctx, operand);
                ctx.newInst(InstLoadImm).setOperand<0>(reg).setOperand<1>(operand);
                operand = reg;
            }
            modified = true;
        }
    };
    const auto largeImm2reg = [&](MIROperand& operand) {
        if(operand.isImm() && !isOperandImm16(operand)) {
            imm2reg(operand);
        }
    };
    switch(inst.opcode()) {
        case InstAdd:
            [[fallthrough]];
        case InstAnd:
            [[fallthrough]];
        case InstOr:
            [[fallthrough]];
        case InstXor: {
            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            imm2reg(lhs);
            largeImm2reg(rhs);
            break;
        }
        case InstSub: {
            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            imm2reg(lhs);
            if(rhs.isImm()) {
                auto neg = getNeg(rhs);
                if(isOperandImm16(neg)) {
                    rhs = neg;
                    inst.setOpcode(InstAdd);
                    modified = true;
                    break;
                }
            }
            imm2reg(rhs);
            break;
        }
        case InstNeg: {
            auto& val = inst.getOperand(1);
            inst.setOpcode(InstSub);
            inst.setOperand<2>(val);
            val = getZero(val);
            modified = true;
            break;
        }
        case InstMul:
            [[fallthrough]];
        case InstSDiv:
            [[fallthrough]];
        case InstSRem:
            [[fallthrough]];
        case InstUDiv:
            [[fallthrough]];
        case InstURem: {
            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            imm2reg(lhs);
            imm2reg(rhs);
            break;
        }
        case InstSCmp: {
            auto& op = inst.getOperand(3);
            if(swapImmReg()) {
                op = MIROperand::asImm(getReversedOp(static_cast<CompareOp>(op.imm())), OperandType::Special);
            }

            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            imm2reg(lhs);
            imm2reg(rhs);
            break;
        }
        case InstZExt: {
            auto& val = inst.getOperand(1);
            imm2reg(val);
            if(val.type() == OperandType::Bool) {
                inst.setOpcode(InstCopy);
                modified = true;
            }
        }
    }

    return modified;
}

bool MIPSISelInfo::matchAndSelect(MIRInst& inst, ISelContext& ctx, bool allowComplexPattern) const {
    bool ret = legalizeInst(inst, ctx);
    if(allowComplexPattern) {
        // TODO: expand select
    }
    return ret | matchAndSelectImpl(inst, ctx);
}

void MIPSISelInfo::postLegalizeInst(MIRInst& inst, CodeGenContext& ctx) const {
    CMMC_UNUSED(ctx);
    switch(inst.opcode()) {
        case InstCopy: {
            if(inst.getOperand(0).type() == OperandType::Int32 && inst.getOperand(1).type() == OperandType::Int32) {
                inst.setOpcode(InstAdd).setOperand<1>(MIROperand::asISAReg(0, OperandType::Int32));
            } else {
                reportNotImplemented(CMMC_LOCATION());
            }
            break;
        }
        default:
            reportNotImplemented(CMMC_LOCATION());
    }
}

CMMC_TARGET_NAMESPACE_END

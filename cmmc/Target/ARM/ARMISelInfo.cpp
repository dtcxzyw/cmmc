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
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/ISelInfo.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Target/ARM/ARM.hpp>
#include <cstdint>
#include <cstring>
#include <iostream>

CMMC_TARGET_NAMESPACE_BEGIN

static bool isZero(const MIROperand& operand) {
    return operand.isImm() && operand.imm() == 0;
}

static MIROperand getVRegAs(ISelContext& ctx, const MIROperand& ref) {
    return MIROperand::asVReg(ctx.getCodeGenCtx().nextId(), ref.type());
}

static MIROperand getZero(const MIROperand& operand) {
    return MIROperand::asImm(0, operand.type());
}

static bool selectInvertedOp2Constant(const MIROperand& imm, MIROperand& immInverted) {
    if(imm.isImm()) {
        immInverted = MIROperand::asImm(~imm.imm(), imm.type());
        if(isOperandOp2Constant(immInverted))
            return true;
    }
    return false;
}

/*
static ARMInst getBranchEqualityOpcode(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    switch(op) {
        case CompareOp::Equal:
            return CBZ;
        case CompareOp::NotEqual:
            return CBNZ;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static MIROperand getOne(const MIROperand& operand) {
    return MIROperand::asImm(1, operand.type());
}

static bool selectAddrOffset(const MIROperand& addr, ISelContext& ctx, MIROperand& base, MIROperand& offset) {
    const auto addrInst = ctx.lookupDef(addr);
    if(addrInst) {
        if(addrInst->opcode() == InstLoadStackObjectAddr) {
            base = addrInst->getOperand(1);
            offset = MIROperand::asImm(0, OperandType::Int32);
            return true;
        }
        if(addrInst->opcode() == InstAdd) {
            base = addrInst->getOperand(1);
            const auto off = addrInst->getOperand(2);
            if(isOperandIReg(base) && isOperandImm13(off)) {
                base = addrInst->getOperand(1);
                offset = off;
                return true;
            }
        }
    }
    if(isOperandIReg(addr)) {
        base = addr;
        offset = MIROperand::asImm(0, OperandType::Int32);
        return true;
    }
    return false;
}

static ARMInst getLoadOpcode(const MIROperand& dst) {
    switch(dst.type()) {
        case OperandType::Bool:
            [[fallthrough]];
        case OperandType::Int8:
            return LDRSB;
        case OperandType::Int32:
            return LDR;
        case OperandType::Float32:
            return VLDR;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static ARMInst getZExtLoadOpcode(const MIROperand& dst) {
    switch(dst.type()) {
        case OperandType::Int8:
            return LDRB;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static ARMInst getStoreOpcode(const MIROperand& src) {
    switch(src.type()) {
        case OperandType::Bool:
            [[fallthrough]];
        case OperandType::Int8:
            return STRB;
        case OperandType::Int32:
            return STR;
        case OperandType::Float32:
            return VSTR;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static MIROperand getIReg(ISelContext& ctx, const MIROperand& src) {
    if(isOperandIReg(src))
        return src;
    if(isZero(src)) {
        return getZero(src);
    }
    auto dst = getVRegAs(ctx, src);
    ctx.newInst(InstLoadImm).setOperand<0>(dst).setOperand<1>(src);
    return dst;
}
*/

CMMC_TARGET_NAMESPACE_END

#include <ARM/ISelInfoImpl.hpp>

CMMC_TARGET_NAMESPACE_BEGIN

bool ARMISelInfo::isLegalGenericInst(uint32_t opcode) const {
    switch(opcode) {
        case InstCopy:
            [[fallthrough]];
        case InstCopyFromReg:
            [[fallthrough]];
        case InstCopyToReg:
            [[fallthrough]];
        case InstLoadRegFromStack:
            [[fallthrough]];
        case InstStoreRegToStack:
            [[fallthrough]];
        case InstLoadStackObjectAddr:
            return true;
        default:
            return false;
    }
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
        auto& instInfo = ctx.getCodeGenCtx().instInfo.getInstInfo(inst);
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
        if(operand.isImm() && !isOperandImm13(operand)) {
            imm2reg(operand);
        }
    };
    switch(inst.opcode()) {
        case InstAdd:
            [[fallthrough]];
        case InstSub: {
            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            imm2reg(lhs);

            if(isOperandOp2(rhs))
                break;

            MIRGenericInst symmetryOp = inst.opcode() == InstAdd ? InstSub : InstAdd;
            if(rhs.isImm()) {
                auto neg = getNeg(rhs);
                if(isOperandOp2(neg)) {
                    rhs = neg;
                    inst.setOpcode(symmetryOp);
                    modified = true;
                    break;
                }
            }
            imm2reg(rhs);
            break;
        }
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
            if(!isLessThanOrLessEqualOp(op) && swapImmReg()) {
                op = MIROperand::asImm(getReversedOp(static_cast<CompareOp>(op.imm())), OperandType::Special);
                modified = true;
            }

            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            // a <= c -> a < c + 1 (if no overflow occurs)
            if(isLessEqualOp(op) && isOperandImm(rhs) && rhs.imm() < getMaxSignedValue(rhs.type())) {
                op = MIROperand::asImm(CompareOp::LessThan, OperandType::Special);
                rhs = MIROperand::asImm(rhs.imm() + 1, rhs.type());
                modified = true;
            }
            // a >= c -> a > c - 1 (if no overflow occurs)
            if(isGreaterEqualOp(op) && isOperandImm(rhs) && rhs.imm() > getMinSignedValue(rhs.type())) {
                op = MIROperand::asImm(CompareOp::GreaterThan, OperandType::Special);
                rhs = MIROperand::asImm(rhs.imm() - 1, rhs.type());
                modified = true;
            }
            if(isGreaterThanOrGreaterEqualOp(op)) {
                std::swap(lhs, rhs);
                op = MIROperand::asImm(getReversedOp(static_cast<CompareOp>(op.imm())), OperandType::Special);
                modified = true;
            }
            imm2reg(lhs);
            if(isEqualityOp(op) && !isZero(rhs)) {
                const auto dst = getVRegAs(ctx, lhs);
                ctx.newInst(InstXor).setOperand<0>(dst).setOperand<1>(lhs).setOperand<2>(rhs);
                lhs = dst;
                rhs = getZero(rhs);
                modified = true;
            } else {
                largeImm2reg(rhs);
            }
            break;
        }
        case InstZExt: {
            auto& val = inst.getOperand(1);
            imm2reg(val);
            if(val.type() == OperandType::Bool) {
                inst.setOpcode(InstCopy);
                modified = true;
            }
            break;
        }
        case InstStore: {
            auto& val = inst.getOperand(1);
            imm2reg(val);
            break;
        }
        case InstSelect: {
            auto& cond = inst.getOperand(1);
            imm2reg(cond);
            auto& lhs = inst.getOperand(2);
            imm2reg(lhs);
            break;
        }
        case InstShl:
            [[fallthrough]];
        case InstAShr:
            [[fallthrough]];
        case InstLShr: {
            auto& lhs = inst.getOperand(1);
            auto& shamt = inst.getOperand(2);
            imm2reg(lhs);
            if(!isOperandUImm5(shamt))
                imm2reg(shamt);
            break;
        }
        default:
            break;
    }

    return modified;
}

bool ARMISelInfo::matchAndSelect(MIRInst& inst, ISelContext& ctx, bool allowComplexPattern) const {
    bool ret = legalizeInst(inst, ctx);
    if(allowComplexPattern) {
        // noop
    }
    return ret | matchAndSelectImpl(inst, ctx);
}

void ARMISelInfo::postLegalizeInst(const InstLegalizeContext& ctx) const {
    auto& inst = ctx.inst;
    switch(inst.opcode()) {
        case InstCopy:
            [[fallthrough]];
        case InstCopyFromReg:
            [[fallthrough]];
        case InstCopyToReg: {
            auto& dst = inst.getOperand(0);
            auto& src = inst.getOperand(1);
            if(isOperandIReg(dst) && isOperandIReg(src)) {
                inst.setOpcode(MOV);
            } else if(isOperandFPR(dst) && isOperandFPR(src)) {
                inst.setOpcode(VMOV);
            } else {
                reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
            }
            break;
        }
        case InstLoadImm: {
            auto& dst = inst.getOperand(0);
            auto& src = inst.getOperand(1);
            if(isOperandIReg(dst)) {
                if(isZero(src)) {
                    inst.setOpcode(MOV);
                    src = getZero(src);
                    return;
                }
                if(isOperandUImm16(src)) {
                    inst.setOpcode(MOVW);
                    return;
                }
                if(isOperandImm32(src)) {
                    // FIXME
                }
            }
            reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
        }
        default:
            reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
    }
}
void ARMISelInfo::preRALegalizeInst(const InstLegalizeContext& ctx) const {
    auto& inst = ctx.inst;
    switch(inst.opcode()) {
        default:
            reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
    }
}
void ARMISelInfo::legalizeInstWithStackOperand(const InstLegalizeContext& ctx, MIROperand& op, const StackObject& obj) const {
    auto& inst = ctx.inst;
    [[maybe_unused]] auto checkOpIdx = [&](uint32_t idx) { return &inst.getOperand(idx) == &op; };
    int64_t immVal = obj.offset;
    MIROperand base = sp;
    legalizeAddrBaseOffsetPostRA(ctx.instructions, ctx.iter, base, immVal);
    const auto imm = MIROperand::asImm(immVal, OperandType::Int32);
    switch(inst.opcode()) {
        case InstLoadStackObjectAddr: {
            assert(checkOpIdx(1));
            inst.setOpcode(ADD).setOperand<1>(base).setOperand<2>(imm);
            break;
        }
        case InstStoreRegToStack: {
            assert(checkOpIdx(1));
            inst.setOpcode(isOperandGPR(inst.getOperand(0)) ? STR : VSTR).setOperand<2>(base).setOperand<1>(imm);
            break;
        }
        case InstLoadRegFromStack: {
            assert(checkOpIdx(1));
            inst.setOpcode(isOperandGPR(inst.getOperand(0)) ? LDR : VLDR).setOperand<2>(base).setOperand<1>(imm);
            break;
        }
        case STR:
            [[fallthrough]];
        case STRB:
            [[fallthrough]];
        case VSTR:
            [[fallthrough]];
        case LDR:
            [[fallthrough]];
        case VLDR:
            [[fallthrough]];
        case LDRB: {
            assert(checkOpIdx(2));
            inst.setOperand<2>(base).setOperand<1>(imm);
            break;
        }
        default:
            reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
    }
}

constexpr auto scratch = MIROperand::asISAReg(ARM::R12, OperandType::Int32);  // use $v1
void legalizeAddrBaseOffsetPostRA(std::list<MIRInst>& instructions, std::list<MIRInst>::iterator iter, MIROperand& base,
                                  int64_t& imm) {
    CMMC_UNUSED(instructions);
    CMMC_UNUSED(iter);
    CMMC_UNUSED(base);
    assert(isSignedImm<32>(imm));
    if(isSignedImm<13>(imm)) {
        return;
    } else {
        reportNotImplemented(CMMC_LOCATION());
    }
}
void ARMISelInfo::postLegalizeInstSeq(const CodeGenContext& ctx, std::list<MIRInst>& instructions) const {
    CMMC_UNUSED(ctx);
    CMMC_UNUSED(instructions);
}
MIROperand ARMISelInfo::materializeFPConstant(ConstantFloatingPoint* fp, LoweringContext& loweringCtx) const {
    if(fp->getType()->getFixedSize() == sizeof(float)) {
        const auto val = static_cast<float>(fp->getValue());
        uint32_t rep;
        memcpy(&rep, &val, sizeof(float));
        const auto dst = loweringCtx.newVReg(OperandType::Float32);
        loweringCtx.emitInst(
            MIRInst{ VMOV }.setOperand<0>(dst).setOperand<1>(MIROperand::asImm(rep, OperandType::Float32)));
        return dst;
    }
    return MIROperand{};
}

CMMC_TARGET_NAMESPACE_END

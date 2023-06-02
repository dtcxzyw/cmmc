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
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/ISelInfo.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Target/MIPS/MIPS.hpp>
#include <cstdint>
#include <iostream>

CMMC_TARGET_NAMESPACE_BEGIN

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

static bool isGreaterThanOrGreaterEqualOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::GreaterThan || op == CompareOp::GreaterEqual;
}

static bool isLessThanOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::LessThan;
}

static bool isLessEqualOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::LessEqual;
}

static bool isGreaterThanOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::GreaterThan;
}

static bool isEqualOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::Equal;
}

static bool isNotEqualOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::NotEqual;
}

static MIPSInst getBranchWithZeroOpcode(const MIROperand& operand) {
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

static MIPSInst getBranchEqualityOpcode(const MIROperand& operand) {
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

static MIROperand getVRegAs(ISelContext& ctx, const MIROperand& ref) {
    return MIROperand::asVReg(ctx.getCodeGenCtx().nextId(), ref.type());
}

static MIROperand getHILO() {
    return MIROperand::asISAReg(MIPS::HILO, OperandType::Special);
}

static MIROperand getCC() {
    return MIROperand::asISAReg(MIPS::CC, OperandType::Special);
}

static MIROperand getZero(const MIROperand& operand) {
    return MIROperand::asISAReg(MIPS::X0, operand.type());
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
            if(isOperandIReg(base) && isOperandImm16(off)) {
                base = addrInst->getOperand(1);
                offset = off;
                return true;
            }
        }
        // TODO: move to emitLoadGlobalAddress?
        if(addrInst->opcode() == InstLoadGlobalAddress) {
            const auto reloc = addrInst->getOperand(1);
            const auto hiBits = getHighBits(reloc);
            const auto loBits = getLowBits(reloc);
            base = getVRegAs(ctx, addr);
            ctx.newInst(LUI).setOperand<0>(base).setOperand<1>(hiBits);
            offset = loBits;
            return true;
        }
    }
    if(isOperandIReg(addr)) {
        base = addr;
        offset = MIROperand::asImm(0, OperandType::Int32);
        return true;
    }
    return false;
}

static MIPSInst getLoadOpcode(const MIROperand& dst) {
    switch(dst.type()) {
        case OperandType::Bool:
            [[fallthrough]];
        case OperandType::Int8:
            return LB;
        case OperandType::Int16:
            return LH;
        case OperandType::Int32:
            return LW;
        case OperandType::Float32:
            return LWC1;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static MIPSInst getZExtLoadOpcode(const MIROperand& dst) {
    switch(dst.type()) {
        case OperandType::Int8:
            return LBU;
        case OperandType::Int16:
            return LHU;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static MIPSInst getStoreOpcode(const MIROperand& src) {
    switch(src.type()) {
        case OperandType::Bool:
            [[fallthrough]];
        case OperandType::Int8:
            return SB;
        case OperandType::Int16:
            return SH;
        case OperandType::Int32:
            return SW;
        case OperandType::Float32:
            return SWC1;
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

static MIPSInst getFCmpOpcode(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    switch(op) {
        case CompareOp::LessThan:
            return C_OLT_S;
        case CompareOp::LessEqual:
            return C_OLE_S;
        case CompareOp::GreaterThan:
            return C_ULE_S;
        case CompareOp::GreaterEqual:
            return C_ULT_S;
        case CompareOp::Equal:
            return C_EQ_S;
        case CompareOp::NotEqual:
            return C_EQ_S;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static MIROperand shouldInvertFCmp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    constexpr auto zero = MIROperand::asImm(0, OperandType::Special);
    constexpr auto one = MIROperand::asImm(1, OperandType::Special);
    switch(op) {
        case CompareOp::LessThan:
            [[fallthrough]];
        case CompareOp::LessEqual:
            [[fallthrough]];
        case CompareOp::Equal:
            return zero;
        default:
            return one;
    }
}

static bool selectFCC_FPR_FPR(const MIROperand& lhs, const MIROperand& rhs, const MIROperand& flip, MIROperand& outLhs,
                              MIROperand& outRhs) {
    if(!(isOperandFPR(lhs) && isOperandFPR(rhs))) {
        return false;
    }
    outLhs = lhs;
    outRhs = rhs;
    if(flip.imm() == 1) {
        std::swap(outLhs, outRhs);
    }
    return true;
}

CMMC_TARGET_NAMESPACE_END

#include <MIPS/ISelInfoImpl.hpp>

CMMC_TARGET_NAMESPACE_BEGIN

bool MIPSISelInfo::isLegalGenericInst(uint32_t opcode) const {
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
    const auto largeImm2reg = [&](MIROperand& operand, bool signedImm) {
        if(operand.isImm() && !(signedImm ? isOperandImm16(operand) : isOperandUImm16(operand))) {
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
            const auto signedImm = inst.opcode() == InstAdd;
            imm2reg(lhs);
            largeImm2reg(rhs, signedImm);
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
            if(!isLessThanOrLessEqualOp(op) && swapImmReg()) {
                op = MIROperand::asImm(getReversedOp(static_cast<CompareOp>(op.imm())), OperandType::Special);
                modified = true;
            }

            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            if(isGreaterThanOrGreaterEqualOp(op)) {
                std::swap(lhs, rhs);
                op = MIROperand::asImm(getReversedOp(static_cast<CompareOp>(op.imm())), OperandType::Special);
                modified = true;
            }
            imm2reg(lhs);
            imm2reg(rhs);
            if(isEqualityOp(op) && !isZero(rhs)) {
                const auto dst = getVRegAs(ctx, lhs);
                ctx.newInst(InstXor).setOperand<0>(dst).setOperand<1>(lhs).setOperand<2>(rhs);
                lhs = dst;
                rhs = getZero(rhs);
                modified = true;
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

bool MIPSISelInfo::matchAndSelect(MIRInst& inst, ISelContext& ctx, bool allowComplexPattern) const {
    bool ret = legalizeInst(inst, ctx);
    if(allowComplexPattern) {
        // noop
    }
    return ret | matchAndSelectImpl(inst, ctx);
}

void MIPSISelInfo::postLegalizeInst(const InstLegalizeContext& ctx) const {
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
                inst.setOpcode(MoveGPR);
            } else if(isOperandFPR(dst) && isOperandFPR(src)) {
                inst.setOpcode(MOV_S);
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
                    inst.setOpcode(MoveGPR);
                    src = getZero(src);
                    return;
                }
                if(isOperandImm16(src)) {
                    inst.setOpcode(LoadImm16);
                    return;
                }
                if(isOperandImm32(src)) {
                    inst.setOpcode(LoadImm32);
                    return;
                }
            }
            reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
        }
        default:
            reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
    }
}
void MIPSISelInfo::preRALegalizeInst(const InstLegalizeContext& ctx) const {
    auto& inst = ctx.inst;
    switch(inst.opcode()) {
        case Select_GPR_GPR: {
            auto& dst = inst.getOperand(0);
            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            auto& cond = inst.getOperand(3);
            ctx.instructions.insert(ctx.iter, MIRInst{ selectCopyOpcode(dst, rhs) }.setOperand<0>(dst).setOperand<1>(rhs));
            *ctx.iter = MIRInst{ MOVN }.setOperand<0>(dst).setOperand<1>(lhs).setOperand<2>(cond).setOperand<3>(dst);
            break;
        }
        case FCC2GPR: {
            auto& dst = inst.getOperand(0);
            const auto cc = inst.getOperand(1);
            const auto flip = inst.getOperand(2).imm();
            ctx.instructions.insert(
                ctx.iter, MIRInst{ InstLoadImm }.setOperand<0>(dst).setOperand<1>(MIROperand::asImm(1, OperandType::Int32)));
            *ctx.iter =
                MIRInst{ flip ? MOVT : MOVF }.setOperand<0>(dst).setOperand<1>(getZero(dst)).setOperand<2>(cc).setOperand<3>(dst);
            break;
        }
        case Select_FCC_FPR_FPR: {
            auto& dst = inst.getOperand(0);
            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            auto& cc = inst.getOperand(3);
            ctx.instructions.insert(ctx.iter, MIRInst{ MOV_S }.setOperand<0>(dst).setOperand<1>(rhs));
            *ctx.iter = MIRInst{ MOVT_S }.setOperand<0>(dst).setOperand<1>(lhs).setOperand<2>(cc).setOperand<3>(dst);
            break;
        }
        case Select_GPR_FPR_FPR: {
            auto& dst = inst.getOperand(0);
            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            auto& cond = inst.getOperand(3);
            ctx.instructions.insert(ctx.iter, MIRInst{ MOV_S }.setOperand<0>(dst).setOperand<1>(lhs));
            *ctx.iter = MIRInst{ MOVZ_S }.setOperand<0>(dst).setOperand<1>(rhs).setOperand<2>(cond).setOperand<3>(dst);
            break;
        }
        default:
            reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
    }
}
void MIPSISelInfo::legalizeInstWithStackOperand(const InstLegalizeContext& ctx, MIROperand& op, const StackObject& obj) const {
    auto& inst = ctx.inst;
    [[maybe_unused]] auto checkOpIdx = [&](uint32_t idx) { return &inst.getOperand(idx) == &op; };
    int64_t immVal = obj.offset;
    MIROperand base = sp;
    legalizeAddrBaseOffsetPostRA(ctx.instructions, ctx.iter, base, immVal);
    const auto imm = MIROperand::asImm(immVal, OperandType::Int32);
    switch(inst.opcode()) {
        case InstLoadStackObjectAddr: {
            assert(checkOpIdx(1));
            inst.setOpcode(ADDIU).setOperand<1>(base).setOperand<2>(imm);
            break;
        }
        case InstStoreRegToStack: {
            assert(checkOpIdx(1));
            inst.setOpcode(isOperandGPR(inst.getOperand(0)) ? SW : SWC1).setOperand<2>(base).setOperand<1>(imm);
            break;
        }
        case InstLoadRegFromStack: {
            assert(checkOpIdx(1));
            inst.setOpcode(isOperandGPR(inst.getOperand(0)) ? LW : LWC1).setOperand<2>(base).setOperand<1>(imm);
            break;
        }
        case SW:
            [[fallthrough]];
        case SH:
            [[fallthrough]];
        case SB:
            [[fallthrough]];
        case SWC1:
            [[fallthrough]];
        case LW:
            [[fallthrough]];
        case LH:
            [[fallthrough]];
        case LB:
            [[fallthrough]];
        case LWC1: {
            assert(checkOpIdx(2));
            inst.setOperand<2>(base).setOperand<1>(imm);
            break;
        }
        default:
            reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
    }
}

constexpr auto scratch = MIROperand::asISAReg(MIPS::X3, OperandType::Int32);  // use $v1
void legalizeAddrBaseOffsetPostRA(std::list<MIRInst>& instructions, std::list<MIRInst>::iterator iter, MIROperand& base,
                                  int64_t& imm) {
    assert(isSignedImm<32>(imm));
    if(isSignedImm<16>(imm)) {
        return;
    }
    if(imm < -65536 || imm > 65534) {
        // lui $scratch, %hi(imm)
        // addu $scratch, $scratch, base
        // addr = $scratch + %lo(imm)
        const auto lo = static_cast<int16_t>(imm);
        const auto hi = static_cast<uint16_t>((imm - lo) >> 16);
        assert(isSignedImm<16>(lo));
        assert(isUnsignedImm<16>(static_cast<intmax_t>(hi)));
        instructions.insert(iter,
                            MIRInst{ LUI }.setOperand<0>(scratch).setOperand<1>(
                                MIROperand::asImm(static_cast<intmax_t>(hi), OperandType::Int32)));
        instructions.insert(iter, MIRInst{ ADDU }.setOperand<0>(scratch).setOperand<1>(scratch).setOperand<2>(base));
        base = scratch;
        imm = static_cast<int64_t>(lo);
    } else {
        // addiu $scratch, base, -32768/32767
        // addr = $scratch + %lo(imm)
        const auto adjust = imm < 0 ? -32768 : 32767;
        instructions.insert(iter,
                            MIRInst{ ADDIU }.setOperand<0>(scratch).setOperand<1>(base).setOperand<2>(
                                MIROperand::asImm(adjust, OperandType ::Int32)));
        base = scratch;
        imm -= adjust;
        assert(isSignedImm<16>(imm));
    }
}
void adjustReg(std::list<MIRInst>& instructions, std::list<MIRInst>::iterator iter, const MIROperand& dst, const MIROperand& src,
               int64_t imm) {
    if(dst == src && imm == 0)
        return;

    MIROperand base = src;
    legalizeAddrBaseOffsetPostRA(instructions, iter, base, imm);
    instructions.insert(
        iter, MIRInst{ ADDIU }.setOperand<0>(dst).setOperand<1>(base).setOperand<2>(MIROperand::asImm(imm, OperandType::Int32)));
}
void MIPSISelInfo::postLegalizeInstSeq(const CodeGenContext& ctx, std::list<MIRInst>& instructions) const {
    assert(!ctx.flags.endsWithTerminator);
    constexpr bool alwaysInsertNop = true;  // FIXME
    // insert nops/place insts without side-effects after branch/jump instructions
    uint32_t lastStatus = 0b00;  // 0: with delay slot 1: without delay slot
    for(auto iter = instructions.begin(); iter != instructions.end(); ++iter) {
        auto& inst = *iter;
        auto& instInfo = ctx.instInfo.getInstInfo(inst);
        if(!requireFlag(instInfo.getInstFlag(), InstFlagWithDelaySlot)) {
            lastStatus = (lastStatus << 1) | 1;
            continue;
        }
        if(alwaysInsertNop || (lastStatus & 0b11) != 0b11) {
            instructions.insert(iter, MIRInst{ Nop });
        }
        std::swap(*iter, *std::prev(iter));
        lastStatus = 1;  // 0b01
    }
}
CMMC_TARGET_NAMESPACE_END

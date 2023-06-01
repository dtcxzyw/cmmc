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
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/ISelInfo.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Target/RISCV/RISCV.hpp>
#include <cstdint>
#include <iostream>

CMMC_TARGET_NAMESPACE_BEGIN

static bool isZero(const MIROperand& operand) {
    if(operand.isReg() && operand.reg() == RISCV::X0)
        return true;
    return operand.isImm() && operand.imm() == 0;
}

static RISCVInst getSignedBranchOpcode(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    switch(op) {
        case CompareOp::LessThan:
            return BLT;
        case CompareOp::LessEqual:
            return BLE;
        case CompareOp::GreaterThan:
            return BGT;
        case CompareOp::GreaterEqual:
            return BGE;
        case CompareOp::Equal:
            return BEQ;
        case CompareOp::NotEqual:
            return BNE;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
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

static MIROperand getVRegAs(ISelContext& ctx, const MIROperand& ref) {
    return MIROperand::asVReg(ctx.getCodeGenCtx().nextId(), ref.type());
}

static MIROperand getZero(const MIROperand& operand) {
    return MIROperand::asISAReg(RISCV::X0, operand.type());
}

static MIROperand getOne(const MIROperand& operand) {
    return MIROperand::asImm(1, operand.type());
}

static bool selectAddrOffset(const MIROperand& addr, ISelContext& ctx, MIROperand& base, MIROperand& offset) {
    const auto addrInst = ctx.lookupDef(addr);
    if(addrInst) {
        if(addrInst->opcode() == InstLoadStackObjectAddr) {
            base = addrInst->getOperand(1);
            offset = MIROperand::asImm(0, OperandType::Int64);
            return true;
        }
        if(addrInst->opcode() == InstAdd) {
            base = addrInst->getOperand(1);
            const auto off = addrInst->getOperand(2);
            if(isOperandIReg(base) && isOperandImm12(off)) {
                base = addrInst->getOperand(1);
                offset = off;
                return true;
            }
        }
    }
    if(isOperandIReg(addr)) {
        base = addr;
        offset = MIROperand::asImm(0, OperandType::Int64);
        return true;
    }
    return false;
}

static RISCVInst getLoadOpcode(const MIROperand& dst) {
    switch(dst.type()) {
        case OperandType::Bool:
            [[fallthrough]];
        case OperandType::Int8:
            return LB;
        case OperandType::Int16:
            return LH;
        case OperandType::Int32:
            return LW;
        case OperandType::Int64:
            return LD;
        case OperandType::Float32:
            return FLW;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static RISCVInst getZExtLoadOpcode(const MIROperand& dst) {
    switch(dst.type()) {
        case OperandType::Int8:
            return LBU;
        case OperandType::Int16:
            return LHU;
        case OperandType::Int32:
            return LWU;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static RISCVInst getStoreOpcode(const MIROperand& src) {
    switch(src.type()) {
        case OperandType::Bool:
            [[fallthrough]];
        case OperandType::Int8:
            return SB;
        case OperandType::Int16:
            return SH;
        case OperandType::Int32:
            return SW;
        case OperandType::Int64:
            return SD;
        case OperandType::Float32:
            return FSW;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static bool selectFCmpOpcode(const MIROperand& operand, const MIROperand& lhs, const MIROperand& rhs, MIROperand& outLhs,
                             MIROperand& outRhs, MIROperand& outOp) {
    const auto op = static_cast<CompareOp>(operand.imm());
    if(!isOperandFPR(lhs) || !isOperandFPR(rhs) || op == CompareOp::NotEqual)
        return false;
    outLhs = lhs;
    outRhs = rhs;
    RISCVInst opcode;
    switch(op) {
        case CompareOp::LessThan:
            opcode = FLT_S;
            break;
        case CompareOp::LessEqual:
            opcode = FLE_S;
            break;
        case CompareOp::GreaterThan:
            std::swap(outLhs, outRhs);
            opcode = FLT_S;
            break;
        case CompareOp::GreaterEqual:
            std::swap(outLhs, outRhs);
            opcode = FLE_S;
            break;
        case CompareOp::Equal:
            opcode = FEQ_S;
            break;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
    outOp = MIROperand::asImm(opcode, OperandType::Special);
    return true;
}

static MIROperand getEqualOp() {
    return MIROperand::asImm(CompareOp::Equal, OperandType::Special);
}

static bool isOperandI64(const MIROperand& op) {
    return op.type() == OperandType::Int64;
}

static bool isOperandI32(const MIROperand& op) {
    return op.type() == OperandType::Int32;
}

CMMC_TARGET_NAMESPACE_END

#include <RISCV/ISelInfoImpl.hpp>

CMMC_TARGET_NAMESPACE_BEGIN

bool RISCVISelInfo::isLegalGenericInst(uint32_t opcode) const {
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
        if(operand.isImm() && !isOperandImm12(operand)) {
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
                if(isOperandImm12(neg)) {
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

bool RISCVISelInfo::matchAndSelect(MIRInst& inst, ISelContext& ctx, bool allowComplexPattern) const {
    bool ret = legalizeInst(inst, ctx);
    if(allowComplexPattern) {
        if(inst.opcode() == InstSelect) {
            return expandSelect(inst, ctx);
        }
    }
    return ret | matchAndSelectImpl(inst, ctx);
}

void RISCVISelInfo::postLegalizeInst(const InstLegalizeContext& ctx) const {
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
                inst.setOpcode(FMV_S);
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
                if(isOperandImm12(src)) {
                    inst.setOpcode(LoadImm12);
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
void RISCVISelInfo::preRALegalizeInst(const InstLegalizeContext& ctx) const {
    CMMC_UNUSED(ctx);
}
void RISCVISelInfo::legalizeInstWithStackOperand(const InstLegalizeContext& ctx, MIROperand& op, const StackObject& obj) const {
    auto& inst = ctx.inst;
    [[maybe_unused]] auto checkOpIdx = [&](uint32_t idx) { return &inst.getOperand(idx) == &op; };
    int64_t immVal = obj.offset;
    MIROperand base = sp;
    legalizeAddrBaseOffsetPostRA(ctx.instructions, ctx.iter, base, immVal);
    const auto imm = MIROperand::asImm(immVal, OperandType::Int64);
    switch(inst.opcode()) {
        case InstLoadStackObjectAddr: {
            assert(checkOpIdx(1));
            inst.setOpcode(ADDI).setOperand<1>(base).setOperand<2>(imm);
            break;
        }
        case InstStoreRegToStack: {
            assert(checkOpIdx(1));
            inst.setOpcode(isOperandGPR(inst.getOperand(0)) ? SD : FSW).setOperand<2>(base).setOperand<1>(imm);
            break;
        }
        case InstLoadRegFromStack: {
            assert(checkOpIdx(1));
            inst.setOpcode(isOperandGPR(inst.getOperand(0)) ? LD : FLW).setOperand<2>(base).setOperand<1>(imm);
            break;
        }
        case SD:
            [[fallthrough]];
        case SW:
            [[fallthrough]];
        case SH:
            [[fallthrough]];
        case SB:
            [[fallthrough]];
        case FSW:
            [[fallthrough]];
        case LD:
            [[fallthrough]];
        case LW:
            [[fallthrough]];
        case LH:
            [[fallthrough]];
        case LB:
            [[fallthrough]];
        case FLW: {
            assert(checkOpIdx(2));
            inst.setOperand<2>(base).setOperand<1>(imm);
            break;
        }
        default:
            reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
    }
}

constexpr auto scratch = MIROperand::asISAReg(RISCV::X5, OperandType::Int64);  // use $t0, never allocated
void legalizeAddrBaseOffsetPostRA(std::list<MIRInst>& instructions, std::list<MIRInst>::iterator iter, MIROperand& base,
                                  int64_t& imm) {
    assert(isSignedImm<32>(imm));
    if(isSignedImm<12>(imm)) {
        return;
    }
    if(imm < -4096 || imm > 4094) {
        // lui $scratch, %hi(imm)
        // add $scratch, $scratch, base
        // addr = $scratch + %lo(imm)
        auto lo = imm & 0xfff;
        if(lo > 2047)
            lo -= 4096;
        const auto hi = (static_cast<uint32_t>(imm - lo) >> 12) & 0xfffff;
        assert(isSignedImm<12>(lo));
        assert(isUnsignedImm<20>(static_cast<intmax_t>(hi)));
        assert(static_cast<int32_t>(hi << 12) + lo == imm);
        instructions.insert(iter,
                            MIRInst{ LUI }.setOperand<0>(scratch).setOperand<1>(
                                MIROperand::asImm(static_cast<intmax_t>(hi), OperandType::Int64)));
        instructions.insert(iter, MIRInst{ ADD }.setOperand<0>(scratch).setOperand<1>(scratch).setOperand<2>(base));
        base = scratch;
        imm = static_cast<int64_t>(lo);
    } else {
        // addiu $scratch, base, -2048/2047
        // addr = $scratch + %lo(imm)
        const auto adjust = imm < 0 ? -2048 : 2047;
        instructions.insert(iter,
                            MIRInst{ ADDI }.setOperand<0>(scratch).setOperand<1>(base).setOperand<2>(
                                MIROperand::asImm(adjust, OperandType::Int64)));
        base = scratch;
        imm -= adjust;
        assert(isSignedImm<12>(imm));
    }
}
void adjustReg(std::list<MIRInst>& instructions, std::list<MIRInst>::iterator iter, const MIROperand& dst, const MIROperand& src,
               int64_t imm) {
    if(dst == src && imm == 0)
        return;

    MIROperand base = src;
    legalizeAddrBaseOffsetPostRA(instructions, iter, base, imm);
    instructions.insert(
        iter, MIRInst{ ADDI }.setOperand<0>(dst).setOperand<1>(base).setOperand<2>(MIROperand::asImm(imm, OperandType::Int64)));
}
void RISCVISelInfo::postLegalizeInstSeq(const CodeGenContext& ctx, std::list<MIRInst>& instructions) const {
    CMMC_UNUSED(ctx);
    CMMC_UNUSED(instructions);
}
CMMC_TARGET_NAMESPACE_END

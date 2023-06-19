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
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Target/ARM/ARM.hpp>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <iterator>
#include <unordered_map>

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

static MIROperand getOne(const MIROperand& operand) {
    return MIROperand::asImm(1, operand.type());
}

static bool selectInvertedOp2Constant(const MIROperand& imm, MIROperand& immInverted) {
    if(imm.isImm()) {
        immInverted = MIROperand::asImm(~imm.imm(), imm.type());
        if(isOperandOp2Constant(immInverted))
            return true;
    }
    return false;
}

static bool selectGenericImm32(const MIROperand& imm, MIROperand& hi, MIROperand& lo) {
    if(!(isOperandImm32(imm) || isOperandUImm32(imm)))
        return false;
    const auto val = static_cast<uint32_t>(imm.imm());
    hi = MIROperand::asImm(val >> 16, OperandType::Int32);
    lo = MIROperand::asImm(val & 0xFFFF, OperandType::Int32);
    return true;
}

static MIROperand getCC() {
    return MIROperand::asISAReg(ARM::CC, OperandType::Special);
}

static MIROperand getFCC() {
    return MIROperand::asISAReg(ARM::FCC, OperandType::Special);
}

static MIROperand getCondFieldSCmp(const MIROperand& op) {
    const auto cmp = static_cast<CompareOp>(op.imm());
    CondField field = CondField::AL;
    switch(cmp) {
        case CompareOp::LessThan:
            field = CondField::LT;
            break;
        case CompareOp::LessEqual:
            field = CondField::LE;
            break;
        case CompareOp::GreaterThan:
            field = CondField::GT;
            break;
        case CompareOp::GreaterEqual:
            field = CondField::GE;
            break;
        case CompareOp::Equal:
            field = CondField::EQ;
            break;
        case CompareOp::NotEqual:
            field = CondField::NE;
            break;
    }
    return MIROperand::asImm(field, OperandType::CondField);
}
static MIROperand getCondFieldUCmp(const MIROperand& op) {
    const auto cmp = static_cast<CompareOp>(op.imm());
    CondField field = CondField::AL;
    switch(cmp) {
        case CompareOp::LessThan:
            field = CondField::LO;
            break;
        case CompareOp::LessEqual:
            field = CondField::LS;
            break;
        case CompareOp::GreaterThan:
            field = CondField::HI;
            break;
        case CompareOp::GreaterEqual:
            field = CondField::HS;
            break;
        case CompareOp::Equal:
            field = CondField::EQ;
            break;
        case CompareOp::NotEqual:
            field = CondField::NE;
            break;
    }
    return MIROperand::asImm(field, OperandType::CondField);
}

static MIROperand getCondFieldFCmp(const MIROperand& op) {
    const auto cmp = static_cast<CompareOp>(op.imm());
    CondField field = CondField::AL;
    switch(cmp) {
        case CompareOp::LessThan:
            field = CondField::MI;
            break;
        case CompareOp::LessEqual:
            field = CondField::LS;
            break;
        case CompareOp::GreaterThan:
            field = CondField::GT;
            break;
        case CompareOp::GreaterEqual:
            field = CondField::GE;
            break;
        case CompareOp::Equal:
            field = CondField::EQ;
            break;
        case CompareOp::NotEqual:
            field = CondField::NE;
            break;
    }
    return MIROperand::asImm(field, OperandType::CondField);
}

static bool selectAddrOffset(const MIROperand& addr, ISelContext& ctx, MIROperand& base, MIROperand& offset, uint32_t opcode) {
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
            if(isOperandIReg(base) && isOperandImm(off) &&
               isLegalAddrImm(off.imm(), getAddressingImmRange(OperandType::Int32, opcode))) {
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
        case OperandType::Int16:
            return LDRSH;
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
        case OperandType::Int16:
            return LDRH;
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
        case OperandType::Int16:
            return STRH;
        case OperandType::Int32:
            return STR;
        case OperandType::Float32:
            return VSTR;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static bool isNotCmp(const ISelContext& ctx, const MIROperand& cond) {
    const auto inst = ctx.lookupDef(cond);
    if(inst) {
        const auto opcode = inst->opcode();
        if(opcode == InstSCmp || opcode == InstUCmp || opcode == InstFCmp)
            return false;
    }
    return true;
}

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
            const auto reg = getVRegAs(ctx, operand);
            ctx.newInst(InstLoadImm).setOperand<0>(reg).setOperand<1>(operand);
            operand = reg;
            modified = true;
        }
    };
    const auto nonOp2Imm2reg = [&](MIROperand& operand) {
        if(!isOperandOp2Constant(operand)) {
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
                if(isOperandOp2Constant(neg)) {
                    rhs = neg;
                    inst.setOpcode(symmetryOp);
                    modified = true;
                    break;
                }
            }
            nonOp2Imm2reg(rhs);
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
            nonOp2Imm2reg(rhs);
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
        case InstSCmp:
            [[fallthrough]];
        case InstUCmp: {
            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            imm2reg(lhs);
            nonOp2Imm2reg(rhs);
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
        case InstSExt:
            [[fallthrough]];
        case InstTrunc: {
            imm2reg(inst.getOperand(1));
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
            auto& rhs = inst.getOperand(3);
            imm2reg(rhs);
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
                inst.setOpcode(MoveGPR);
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
        case MOVT_MOVW_PAIR: {
            auto dst = inst.getOperand(0);
            auto hi = inst.getOperand(1);
            auto lo = inst.getOperand(2);
            if(hi.imm() != 0) {
                ctx.instructions.insert(ctx.iter, MIRInst{ MOVW }.setOperand<0>(dst).setOperand<1>(lo));
                *ctx.iter = MIRInst{ MOVT }.setOperand<0>(dst).setOperand<1>(hi).setOperand<2>(dst);
            } else {
                *ctx.iter = MIRInst{ MOVW }.setOperand<0>(dst).setOperand<1>(lo);
            }
            break;
        }
        case NZCVFlag2GPR: {
            auto dst = inst.getOperand(0);
            auto cc = inst.getOperand(1);
            auto cf = inst.getOperand(2);
            ctx.instructions.insert(ctx.iter, MIRInst{ MOV }.setOperand<0>(dst).setOperand<1>(getZero(dst)));
            *ctx.iter = MIRInst{ MOVW_Cond }.setOperand<0>(cf).setOperand<1>(dst).setOperand<2>(getOne(dst)).setOperand<3>(cc);
            break;
        }
        case Select_GPR: {
            auto dst = inst.getOperand(0);
            auto lhs = inst.getOperand(1);
            auto rhs = inst.getOperand(2);
            auto cc = inst.getOperand(3);
            auto cf = inst.getOperand(4);
            ctx.instructions.insert(ctx.iter, MIRInst{ MoveGPR }.setOperand<0>(dst).setOperand<1>(rhs));
            *ctx.iter = MIRInst{ MOV_Cond }.setOperand<0>(cf).setOperand<1>(dst).setOperand<2>(lhs).setOperand<3>(cc);
            break;
        }
        case Select_FPR: {
            auto dst = inst.getOperand(0);
            auto lhs = inst.getOperand(1);
            auto rhs = inst.getOperand(2);
            auto cc = inst.getOperand(3);
            auto cf = inst.getOperand(4);
            ctx.instructions.insert(ctx.iter, MIRInst{ VMOV }.setOperand<0>(dst).setOperand<1>(rhs));
            *ctx.iter = MIRInst{ VMOV_Cond }.setOperand<0>(cf).setOperand<1>(dst).setOperand<2>(lhs).setOperand<3>(cc);
            break;
        }
        case LoadGlobalAddr: {
            auto dst = inst.getOperand(0);
            auto reloc = inst.getOperand(1);
            ctx.instructions.insert(ctx.iter, MIRInst{ MOVW }.setOperand<0>(dst).setOperand<1>(getLowBits(reloc)));
            *ctx.iter = MIRInst{ MOVT }.setOperand<0>(dst).setOperand<1>(getHighBits(reloc)).setOperand<2>(dst);
            break;
        }
        default:
            reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
    }
}
void ARMISelInfo::legalizeInstWithStackOperand(const InstLegalizeContext& ctx, MIROperand& op, const StackObject& obj) const {
    auto& inst = ctx.inst;
    [[maybe_unused]] auto checkOpIdx = [&](uint32_t idx) { return &inst.getOperand(idx) == &op; };
    int64_t immVal = obj.offset;
    MIROperand base = sp;

    if(inst.opcode() != InstLoadStackObjectAddr) {
        legalizeAddrBaseOffsetPostRA(ctx.instructions, ctx.iter, base, immVal,
                                     getAddressingImmRange(inst.getOperand(0).type(), inst.opcode()));
    }

    const auto imm = MIROperand::asImm(immVal, OperandType::Int32);
    switch(inst.opcode()) {
        case InstLoadStackObjectAddr: {
            assert(checkOpIdx(1));
            adjustReg(ctx.instructions, ctx.iter, inst.getOperand(0), base, imm.imm());
            ctx.instructions.erase(ctx.iter);
            break;
        }
        case InstStoreRegToStack: {
            assert(checkOpIdx(1));
            inst.setOpcode(isOperandGPR(inst.getOperand(0)) ? STR : VSTR).setOperand<1>(base).setOperand<2>(imm);
            break;
        }
        case InstLoadRegFromStack: {
            assert(checkOpIdx(1));
            inst.setOpcode(isOperandGPR(inst.getOperand(0)) ? LDR : VLDR).setOperand<1>(base).setOperand<2>(imm);
            break;
        }
        case STR:
            [[fallthrough]];
        case STRB:
            [[fallthrough]];
        case STRH:
            [[fallthrough]];
        case VSTR:
            [[fallthrough]];
        case LDR:
            [[fallthrough]];
        case VLDR:
            [[fallthrough]];
        case LDRB:
            [[fallthrough]];
        case LDRSB:
            [[fallthrough]];
        case LDRH:
            [[fallthrough]];
        case LDRSH: {
            assert(checkOpIdx(1));
            inst.setOperand<1>(base).setOperand<2>(imm);
            break;
        }
        default:
            reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
    }
}

constexpr auto scratch = MIROperand::asISAReg(ARM::R12, OperandType::Int32);
void legalizeAddrBaseOffsetPostRA(std::list<MIRInst>& instructions, std::list<MIRInst>::iterator iter, MIROperand& base,
                                  int64_t& imm, AddressingImmRange range) {
    assert(isSignedImm<32>(imm));
    if(isLegalAddrImm(imm, range))
        return;

    const auto immLiteral = static_cast<uint32_t>(imm);
    instructions.insert(
        iter, MIRInst{ MOVW }.setOperand<0>(scratch).setOperand<1>(MIROperand::asImm(immLiteral & 0xFFFF, OperandType::Int32)));
    if(immLiteral >= (1 << 16))
        instructions.insert(iter,
                            MIRInst{ MOVT }
                                .setOperand<0>(scratch)
                                .setOperand<1>(MIROperand::asImm(immLiteral >> 16, OperandType::Int32))
                                .setOperand<2>(scratch));
    instructions.insert(iter, MIRInst{ ADD }.setOperand<0>(scratch).setOperand<1>(base).setOperand<2>(scratch));
    base = scratch;
    imm = 0;
}
void adjustReg(std::list<MIRInst>& instructions, std::list<MIRInst>::iterator iter, const MIROperand& dst, const MIROperand& src,
               int64_t imm) {
    if(dst == src && imm == 0)
        return;

    uint32_t inst = ADD;
    if(imm < 0) {
        inst = SUB;
        imm = -imm;
    }
    auto immOp = MIROperand::asImm(imm, OperandType::Int64);

    if(!isOperandOp2Constant(immOp)) {
        instructions.insert(
            iter, MIRInst{ MOVW }.setOperand<0>(scratch).setOperand<1>(MIROperand::asImm(imm & 0xFFFF, OperandType::Int32)));
        if(imm >= (1 << 16))
            instructions.insert(iter,
                                MIRInst{ MOVT }
                                    .setOperand<0>(scratch)
                                    .setOperand<1>(MIROperand::asImm(imm >> 16, OperandType::Int32))
                                    .setOperand<2>(scratch));
        immOp = scratch;
    }

    instructions.insert(iter, MIRInst{ inst }.setOperand<0>(dst).setOperand<1>(src).setOperand<2>(immOp));
}
void ARMISelInfo::postLegalizeInstSeq(const CodeGenContext& ctx, std::list<MIRInst>& instructions) const {
    // FIXME
    return;

    CMMC_UNUSED(ctx);
    if(instructions.empty())
        return;
    auto matchAdjustSp = [](const MIRInst& inst, intmax_t& size) {
        if(inst.opcode() != ADD && inst.opcode() != SUB)
            return false;
        if(inst.getOperand(0) != sp || inst.getOperand(1) != sp)
            return false;
        if(!isOperandOp2Constant(inst.getOperand(2)))
            return false;
        size = inst.getOperand(2).imm();
        if(inst.opcode() == SUB)
            size = -size;
        return true;
    };
    auto matchStackPushPop = [](uint32_t opcode, const MIRInst& inst, MIROperand& reg, intmax_t& pos) {
        if(inst.opcode() == opcode && inst.getOperand(1) == sp && isOperandAddrImm13(inst.getOperand(2))) {
            pos = inst.getOperand(2).imm();
            reg = inst.getOperand(0);
            return true;
        }
        return false;
    };
    // sub sp, sp, size
    // backup
    [&] {
        intmax_t size;
        if(!matchAdjustSp(instructions.front(), size))
            return;
        std::vector<uint32_t> location;
        auto iter = std::next(instructions.begin());
        for(; iter != instructions.end(); ++iter) {
            MIROperand reg;
            intmax_t pos;
            if(matchStackPushPop(STR, *iter, reg, pos)) {
                location.push_back(reg.reg());
            } else
                break;
        }
        // TODO: support slots for locals/spilled registers
        if(static_cast<intmax_t>(location.size()) * -4 != size)
            return;
        if(location.size() > 15)
            return;
        instructions.erase(instructions.begin(), iter);
        uint64_t encode = location.size();
        std::sort(location.begin(), location.end());
        for(uint32_t idx = 0; idx < location.size(); ++idx) {
            const auto reg = location[idx];
            encode |= static_cast<uint64_t>(reg) << ((idx + 1) * 4);
        }
        instructions.push_front(MIRInst{ PUSH }.setOperand<0>(MIROperand::asImm(encode, OperandType::RegList)));
    }();

    // restore
    // add sp, sp, size
    // ret
    for(auto iter = instructions.begin(); iter != instructions.end(); ++iter) {
        if(iter->opcode() != BX)
            continue;
        if(iter == instructions.begin())
            continue;
        auto prev = std::prev(iter);
        if(prev == instructions.begin())
            continue;
        intmax_t size;
        if(!matchAdjustSp(*prev, size))
            continue;

        std::vector<uint32_t> location;
        auto it = std::prev(prev);
        while(it != instructions.begin()) {
            MIROperand reg;
            intmax_t pos;
            if(matchStackPushPop(LDR, *it, reg, pos)) {
                location.push_back(reg.reg());
                it = std::prev(it);
            } else
                break;
        }

        // TODO: support slots for locals/spilled registers
        if(static_cast<intmax_t>(location.size()) * 4 != size)
            continue;
        if(location.size() > 15)
            continue;
        instructions.erase(std::next(it), iter);
        uint64_t encode = location.size();
        std::sort(location.begin(), location.end());
        bool directRet = false;
        for(uint32_t idx = 0; idx < location.size(); ++idx) {
            auto reg = location[idx];
            // lr -> pc
            if(reg == ARM::R14) {
                reg = ARM::R15;
                directRet = true;
            }
            encode |= static_cast<uint64_t>(reg) << ((idx + 1) * 4);
        }
        const auto popInst = MIRInst{ POP }.setOperand<0>(MIROperand::asImm(encode, OperandType::RegList));
        if(directRet)
            *iter = popInst;
        else {
            instructions.insert(iter, popInst);
        }
    }
}
MIROperand ARMISelInfo::materializeFPConstant(ConstantFloatingPoint* fp, LoweringContext& loweringCtx) const {
    if(fp->getType()->getFixedSize() == sizeof(float)) {
        const auto val = static_cast<float>(fp->getValue());
        uint32_t rep;
        memcpy(&rep, &val, sizeof(float));
        const auto dst = loweringCtx.newVReg(OperandType::Float32);
        const auto intermediate = loweringCtx.newVReg(OperandType::Int32);
        loweringCtx.emitInst(
            MIRInst{ InstLoadImm }.setOperand<0>(intermediate).setOperand<1>(MIROperand::asImm(rep, OperandType::Int32)));
        loweringCtx.emitInst(MIRInst{ VMOV_GPR2FPR }.setOperand<0>(dst).setOperand<1>(intermediate));
        // TODO: use VMOV_Constant
        // loweringCtx.emitInst(
        //     MIRInst{ VMOV_Constant }.setOperand<0>(dst).setOperand<1>(MIROperand::asImm(rep, OperandType::Float32)));
        return dst;
    }
    return MIROperand{};
}
bool ARMISelInfo::lowerInst(Instruction* inst, LoweringContext& loweringCtx) const {
    if(inst->getInstID() == InstructionID::SRem || inst->getInstID() == InstructionID::URem) {
        if(!inst->getType()->isSame(IntegerType::get(32)))
            return false;
        auto lhs = loweringCtx.mapOperand(inst->getOperand(0));
        auto rhs = loweringCtx.mapOperand(inst->getOperand(1));
        const auto ret = loweringCtx.newVReg(OperandType::Int32);

        auto& globals = loweringCtx.getModule().globals();
        const auto abiName = inst->getInstID() == InstructionID::SRem ? "__aeabi_idivmod" : "__aeabi_uidivmod";
        MIRRelocable* func = nullptr;
        for(auto& global : globals)
            if(global->reloc->symbol() == abiName) {
                func = global->reloc.get();
            }
        if(!func) {
            globals.push_back(
                std::make_unique<MIRGlobal>(Linkage::Internal, 0, std::make_unique<MIRFunction>(String::get(abiName))));
            func = globals.back()->reloc.get();
        }

        loweringCtx.emitCopy(MIROperand::asISAReg(ARM::R0, OperandType::Int32), lhs);
        loweringCtx.emitCopy(MIROperand::asISAReg(ARM::R1, OperandType::Int32), rhs);
        loweringCtx.emitInst(MIRInst{ BL }.setOperand<0>(MIROperand::asReloc(func)));
        loweringCtx.emitCopy(ret, MIROperand::asISAReg(ARM::R1, OperandType::Int32));
        loweringCtx.addOperand(inst, ret);
        return true;
    }
    if(inst->getInstID() == InstructionID::SDiv || inst->getInstID() == InstructionID::UDiv) {
        if(!inst->getType()->isSame(IntegerType::get(32)))
            return false;
        auto lhs = loweringCtx.mapOperand(inst->getOperand(0));
        auto rhs = loweringCtx.mapOperand(inst->getOperand(1));
        const auto ret = loweringCtx.newVReg(OperandType::Int32);

        auto& globals = loweringCtx.getModule().globals();
        const auto abiName = inst->getInstID() == InstructionID::SDiv ? "__aeabi_idiv" : "__aeabi_uidiv";
        MIRRelocable* func = nullptr;
        for(auto& global : globals)
            if(global->reloc->symbol() == abiName) {
                func = global->reloc.get();
            }
        if(!func) {
            globals.push_back(
                std::make_unique<MIRGlobal>(Linkage::Internal, 0, std::make_unique<MIRFunction>(String::get(abiName))));
            func = globals.back()->reloc.get();
        }

        loweringCtx.emitCopy(MIROperand::asISAReg(ARM::R0, OperandType::Int32), lhs);
        loweringCtx.emitCopy(MIROperand::asISAReg(ARM::R1, OperandType::Int32), rhs);
        loweringCtx.emitInst(MIRInst{ BL }.setOperand<0>(MIROperand::asReloc(func)));
        loweringCtx.emitCopy(ret, MIROperand::asISAReg(ARM::R0, OperandType::Int32));
        loweringCtx.addOperand(inst, ret);
        return true;
    }
    return false;
}
CMMC_TARGET_NAMESPACE_END

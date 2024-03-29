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

#include <TAC/InstInfoDecl.hpp>
#include <cmmc/CodeGen/ISelInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>

CMMC_TARGET_NAMESPACE_BEGIN

static TACInst getBranchOpcode(const MIROperand& op) {
    switch(static_cast<CompareOp>(op.imm())) {
        case CompareOp::ICmpSignedLessThan:
            return BranchLt;
        case CompareOp::ICmpSignedLessEqual:
            return BranchLe;
        case CompareOp::ICmpSignedGreaterThan:
            return BranchGt;
        case CompareOp::ICmpSignedGreaterEqual:
            return BranchGe;
        case CompareOp::ICmpEqual:
            return BranchEq;
        case CompareOp::ICmpNotEqual:
            return BranchNe;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

constexpr uint32_t directStackAccessOffset = 1 << 20;
static MIROperand convertToVal(const MIROperand& obj) {
    assert(isStackObject(obj.reg()));
    return MIROperand::asVReg((obj.reg() ^ stackObjectBegin) + directStackAccessOffset, obj.type());
}

constexpr TACInst getIntegerBinaryOpcode(uint32_t opcode) {
    switch(opcode) {
        case InstAdd:
            return Add;
        case InstSub:
            return Sub;
        case InstMul:
            return Mul;
        case InstSDiv:
            return Div;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

CMMC_TARGET_NAMESPACE_END

#include <TAC/ISelInfoImpl.hpp>

CMMC_TARGET_NAMESPACE_BEGIN

bool TACISelInfo::isLegalGenericInst(uint32_t opcode) const {
    return opcode == InstCopy;
}

bool TACISelInfo::matchAndSelect(MIRInst& inst, ISelContext& ctx, bool allowComplexPattern) const {
    if(allowComplexPattern) {
        if(inst.opcode() == InstICmp) {
            return expandCmp(inst, ctx);
        }
        if(inst.opcode() == InstSelect) {
            return expandSelect(inst, ctx);
        }
    }
    return matchAndSelectImpl(inst, ctx);
}

void TACISelInfo::postLegalizeInst(const InstLegalizeContext& ctx) const {
    switch(ctx.inst.opcode()) {
        case InstCopy: {
            ctx.inst.setOpcode(Assign);
            break;
        }
        default:
            reportNotImplemented(CMMC_LOCATION());
    }
}
void TACISelInfo::preRALegalizeInst(const InstLegalizeContext& ctx) const {
    CMMC_UNUSED(ctx);
}
void TACISelInfo::postLegalizeInstSeq(const CodeGenContext& ctx, MIRInstList& instructions) const {
    CMMC_UNUSED(ctx);
    CMMC_UNUSED(instructions);
}
void TACISelInfo::legalizeInstWithStackOperand(const InstLegalizeContext& ctx, MIROperand& op, const StackObject& obj) const {
    CMMC_UNUSED(ctx);
    CMMC_UNUSED(op);
    CMMC_UNUSED(obj);
    reportUnreachable(CMMC_LOCATION());
}
MIROperand TACISelInfo::materializeFPConstant(ConstantFloatingPoint* fp, LoweringContext& loweringCtx) const {
    CMMC_UNUSED(fp);
    CMMC_UNUSED(loweringCtx);
    reportUnreachable(CMMC_LOCATION());
}
bool TACISelInfo::lowerInst(Instruction* inst, LoweringContext& loweringCtx) const {
    if(inst->getInstID() == InstructionID::UnsignedTrunc || inst->getInstID() == InstructionID::SignedTrunc) {
        auto src = loweringCtx.mapOperand(inst->getOperand(0));
        if(src.type() == OperandType::Int32 && inst->getType()->isSame(inst->getOperand(0)->getType())) {
            auto dst = loweringCtx.newVReg(OperandType::Int32);
            loweringCtx.emitCopy(dst, src);
            loweringCtx.addOperand(inst, dst);
            return true;
        }
    }
    return false;
}
void TACISelInfo::lowerIndirectJump(MIRJumpTable* jumpTable, const MIROperand& offset, LoweringContext& ctx) const {
    CMMC_UNUSED(jumpTable);
    CMMC_UNUSED(offset);
    CMMC_UNUSED(ctx);
    reportUnreachable(CMMC_LOCATION());
}
CMMC_TARGET_NAMESPACE_END

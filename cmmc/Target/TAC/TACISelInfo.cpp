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

CMMC_TARGET_NAMESPACE_BEGIN

static TACInst getBranchOpcode(const MIROperand& op) {
    switch(static_cast<CompareOp>(op.imm())) {
        case CompareOp::LessThan:
            return BranchLt;
        case CompareOp::LessEqual:
            return BranchLe;
        case CompareOp::GreaterThan:
            return BranchGt;
        case CompareOp::GreaterEqual:
            return BranchGe;
        case CompareOp::Equal:
            return BranchEq;
        case CompareOp::NotEqual:
            return BranchNe;
    }
    reportUnreachable(CMMC_LOCATION());
}

constexpr uint32_t directStackAccessOffset = 1 << 20;
static MIROperand convertToVal(const MIROperand& obj) {
    assert(isStackObject(obj.reg()));
    return MIROperand::asVReg((obj.reg() ^ stackObjectBegin) + directStackAccessOffset, obj.type());
}

CMMC_TARGET_NAMESPACE_END

#include <TAC/ISelInfoImpl.hpp>

CMMC_TARGET_NAMESPACE_BEGIN

bool TACISelInfo::isLegalGenericInst(uint32_t opcode) const {
    return opcode == InstCopy;
}

bool TACISelInfo::matchAndSelect(MIRInst& inst, ISelContext& ctx, bool allowComplexPattern) const {
    if(allowComplexPattern) {
        if(inst.opcode() == InstSCmp) {
            return expandCmp(inst, ctx);
        }
    }
    return matchAndSelectImpl(inst, ctx);
}

void TACISelInfo::postLegalizeInst(MIRInst& inst, CodeGenContext& ctx) const {
    CMMC_UNUSED(ctx);
    switch(inst.opcode()) {
        case InstCopy: {
            inst.setOpcode(Assign);
            break;
        }
        default:
            reportNotImplemented(CMMC_LOCATION());
    }
}

void TACISelInfo::legalizeInstWithStackOperand(MIRInst& inst, const CodeGenContext& ctx, MIROperand& op,
                                               const StackObject& obj) const {
    CMMC_UNUSED(inst);
    CMMC_UNUSED(ctx);
    CMMC_UNUSED(op);
    CMMC_UNUSED(obj);
    reportNotImplemented(CMMC_LOCATION());
}

CMMC_TARGET_NAMESPACE_END

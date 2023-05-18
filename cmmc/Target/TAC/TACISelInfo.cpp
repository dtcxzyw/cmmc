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

CMMC_TARGET_NAMESPACE_BEGIN

static bool isRuntimeFunc(const MIROperand& op) {
    if(op.isReloc()) {
        auto symbol = op.reloc()->symbol();
        return symbol == "read" || symbol == "write";
    }
    return false;
}

static bool isRuntimeReadFunc(const MIROperand& op) {
    if(op.isReloc()) {
        auto symbol = op.reloc()->symbol();
        return symbol == "read";
    }
    return false;
}

static bool isRuntimeWriteFunc(const MIROperand& op) {
    if(op.isReloc()) {
        auto symbol = op.reloc()->symbol();
        return symbol == "write";
    }
    return false;
}

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

static MIROperand selectWriteArg(ISelContext& ctx) {
    const auto call = ctx.getCurrentInstIter();
    const auto push = std::prev(call);
    assert(push->opcode() == InstPush);
    assert(push->getOperand(0).imm() == 0);
    ctx.removeInst(*push);
    return push->getOperand(1);
}

CMMC_TARGET_NAMESPACE_END

#include <TAC/ISelInfoImpl.hpp>

CMMC_TARGET_NAMESPACE_BEGIN

bool TACISelInfo::isLegalGenericInst(uint32_t opcode) const {
    return opcode == InstCopy;
}

MIRInst* TACISelInfo::matchAndSelect(MIRInst& inst, ISelContext& ctx) const {
    return matchAndSelectImpl(inst, ctx);
}

CMMC_TARGET_NAMESPACE_END

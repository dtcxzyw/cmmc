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

#include "cmmc/CodeGen/InstInfo.hpp"
#include <MIPS/InstInfoDecl.hpp>
#include <cmmc/CodeGen/ISelInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/Support/Diagnostics.hpp>

CMMC_TARGET_NAMESPACE_BEGIN

static bool isOperandImm16(const MIROperand& operand) {
    return isOperandSignedImm<16>(operand);
}

CMMC_TARGET_NAMESPACE_END

#include <MIPS/ISelInfoImpl.hpp>

CMMC_TARGET_NAMESPACE_BEGIN

bool MIPSISelInfo::isLegalGenericInst(uint32_t opcode) const {
    return opcode == InstCopy;
}

bool MIPSISelInfo::matchAndSelect(MIRInst& inst, ISelContext& ctx, bool allowComplexPattern) const {
    if(allowComplexPattern) {
        // TODO: expand select
    }
    return matchAndSelectImpl(inst, ctx);
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

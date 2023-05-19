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
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <ostream>

CMMC_TARGET_NAMESPACE_BEGIN

struct OperandDumper final {
    const mir::MIROperand& operand;
};

constexpr uint32_t directStackAccessOffset = 1 << 20;
static std::ostream& operator<<(std::ostream& out, const OperandDumper& operand) {
    auto& op = operand.operand;
    if(op.isImm()) {
        return out << '#' << op.imm();
    }
    if(op.isReg()) {
        if(isVirtualReg(op.reg())) {
            const auto val = op.reg() ^ virtualRegBegin;
            if(val >= directStackAccessOffset)
                return out << 'x' << (val - directStackAccessOffset);
            return out << 'v' << val;
        }
        if(isStackObject(op.reg()))
            return out << 'x' << (op.reg() ^ stackObjectBegin);
    }
    if(op.isReloc()) {
        op.reloc()->dumpAsTarget(out);
        return out;
    }
    if(op.isProb()) {
        return out << "[prob " << op.prob() << "]";
    }
    reportNotImplemented(CMMC_LOCATION());
}

static bool isOperandVal(std::ostream&, const MIROperand& operand) {
    return (operand.isReg() && (isVirtualReg(operand.reg()) || isStackObject(operand.reg()))) || operand.isImm();
}

using mir::isOperandProb;
using mir::isOperandReloc;
using mir::isOperandStackObject;
using mir::isOperandVReg;

static MIRInst emitGotoImpl(MIRBasicBlock* target) {
    MIRInst gotoInst(Goto);
    gotoInst.setOperand<0>(MIROperand::asReloc(target));
    return gotoInst;
}

CMMC_TARGET_NAMESPACE_END

#include <TAC/InstInfoImpl.hpp>

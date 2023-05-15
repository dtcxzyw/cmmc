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

static std::ostream& operator<<(std::ostream& out, const OperandDumper& operand) {
    CMMC_UNUSED(out);
    CMMC_UNUSED(operand);
    reportNotImplemented(CMMC_LOCATION());
}

static bool isOperandVReg(std::ostream&, const MIROperand& operand) {
    return operand.isReg() && isVirtualReg(operand.reg());
}

static bool isOperandVal(std::ostream&, const MIROperand& operand) {
    return (operand.isReg() && (isVirtualReg(operand.reg()) || isStackObject(operand.reg()))) || operand.isImm();
}

static bool isOperandReloc(std::ostream&, const MIROperand& operand) {
    return operand.isReloc();
}

CMMC_TARGET_NAMESPACE_END

#include <TAC/InstInfoImpl.hpp>

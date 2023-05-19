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

static bool isOperandGPR(std::ostream& out, const MIROperand& operand) {
    CMMC_UNUSED(out);
    CMMC_UNUSED(operand);
    reportNotImplemented(CMMC_LOCATION());
}

static bool isOperandFPR(std::ostream& out, const MIROperand& operand) {
    CMMC_UNUSED(out);
    CMMC_UNUSED(operand);
    reportNotImplemented(CMMC_LOCATION());
}

static bool isOperandImm12(std::ostream& out, const MIROperand& operand) {
    CMMC_UNUSED(out);
    CMMC_UNUSED(operand);
    reportNotImplemented(CMMC_LOCATION());
}

static bool isOperandImm20(std::ostream& out, const MIROperand& operand) {
    CMMC_UNUSED(out);
    CMMC_UNUSED(operand);
    reportNotImplemented(CMMC_LOCATION());
}

using mir::isOperandProb;
using mir::isOperandReloc;

static bool verifyInstSLLI(std::ostream& out, const MIRInst& inst) {
    CMMC_UNUSED(out);
    CMMC_UNUSED(inst);
    reportNotImplemented(CMMC_LOCATION());
}

static bool verifyInstSRAI(std::ostream& out, const MIRInst& inst) {
    CMMC_UNUSED(out);
    CMMC_UNUSED(inst);
    reportNotImplemented(CMMC_LOCATION());
}

static bool verifyInstSRLI(std::ostream& out, const MIRInst& inst) {
    CMMC_UNUSED(out);
    CMMC_UNUSED(inst);
    reportNotImplemented(CMMC_LOCATION());
}

static bool verifyInstSLLIW(std::ostream& out, const MIRInst& inst) {
    CMMC_UNUSED(out);
    CMMC_UNUSED(inst);
    reportNotImplemented(CMMC_LOCATION());
}

static bool verifyInstSRAIW(std::ostream& out, const MIRInst& inst) {
    CMMC_UNUSED(out);
    CMMC_UNUSED(inst);
    reportNotImplemented(CMMC_LOCATION());
}

static bool verifyInstSRLIW(std::ostream& out, const MIRInst& inst) {
    CMMC_UNUSED(out);
    CMMC_UNUSED(inst);
    reportNotImplemented(CMMC_LOCATION());
}

static MIRInst emitGotoImpl(MIRBasicBlock*) {
    reportNotImplemented(CMMC_LOCATION());
}

CMMC_TARGET_NAMESPACE_END

#include <RISCV/InstInfoImpl.hpp>

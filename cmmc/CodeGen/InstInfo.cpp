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

#include <Generic/InstInfoDecl.hpp>
#include <cmmc/CodeGen/MIR.hpp>

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

static bool isOperandBool(std::ostream&, const MIROperand& operand) {
    return operand.type() == OperandType::Bool;
}

static bool isOperandReloc(std::ostream&, const MIROperand& operand) {
    return operand.isReloc();
}

static bool isOperandFreq(std::ostream&, const MIROperand& operand) {
    return operand.isFreq();
}

static bool isOperandImm(std::ostream&, const MIROperand& operand) {
    return operand.isImm();
}

static bool isOperandIReg(std::ostream&, const MIROperand& operand) {
    return operand.isReg() && operand.type() != OperandType::Float32;
}

static bool isOperandFReg(std::ostream&, const MIROperand& operand) {
    return operand.isReg() && operand.type() == OperandType::Float32;
}

CMMC_TARGET_NAMESPACE_END

#include <Generic/InstInfoImpl.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/Support/Diagnostics.hpp>

CMMC_MIR_NAMESPACE_BEGIN

const InstInfo& TargetInstInfo::getInstInfo(uint32_t opcode) const {
    constexpr uint32_t offset = Generic::GenericInstBegin + 1;
#define CMMC_ASSERT_OFFSET(NAME) static_assert(MIRGenericInst::Inst##NAME + offset == Generic::NAME)
    CMMC_ASSERT_OFFSET(Jump);
    CMMC_ASSERT_OFFSET(Branch);
    CMMC_ASSERT_OFFSET(Push);
    CMMC_ASSERT_OFFSET(Call);
    CMMC_ASSERT_OFFSET(Ret);
    CMMC_ASSERT_OFFSET(RetVoid);
    CMMC_ASSERT_OFFSET(Unreachable);
    CMMC_ASSERT_OFFSET(Load);
    CMMC_ASSERT_OFFSET(Add);
    CMMC_ASSERT_OFFSET(Sub);
    CMMC_ASSERT_OFFSET(Mul);
    CMMC_ASSERT_OFFSET(SDiv);
    CMMC_ASSERT_OFFSET(SRem);
    CMMC_ASSERT_OFFSET(UDiv);
    CMMC_ASSERT_OFFSET(URem);
    CMMC_ASSERT_OFFSET(Neg);
    CMMC_ASSERT_OFFSET(And);
    CMMC_ASSERT_OFFSET(Or);
    CMMC_ASSERT_OFFSET(Xor);
    CMMC_ASSERT_OFFSET(Shl);
    CMMC_ASSERT_OFFSET(LShr);
    CMMC_ASSERT_OFFSET(AShr);
    CMMC_ASSERT_OFFSET(FAdd);
    CMMC_ASSERT_OFFSET(FSub);
    CMMC_ASSERT_OFFSET(FMul);
    CMMC_ASSERT_OFFSET(FDiv);
    CMMC_ASSERT_OFFSET(FNeg);
    CMMC_ASSERT_OFFSET(FFma);
    CMMC_ASSERT_OFFSET(SCmp);
    CMMC_ASSERT_OFFSET(UCmp);
    CMMC_ASSERT_OFFSET(FCmp);
    CMMC_ASSERT_OFFSET(SExt);
    CMMC_ASSERT_OFFSET(ZExt);
    CMMC_ASSERT_OFFSET(Trunc);
    CMMC_ASSERT_OFFSET(F2U);
    CMMC_ASSERT_OFFSET(F2S);
    CMMC_ASSERT_OFFSET(U2F);
    CMMC_ASSERT_OFFSET(S2F);
    CMMC_ASSERT_OFFSET(FCast);
    CMMC_ASSERT_OFFSET(Copy);
    CMMC_ASSERT_OFFSET(Select);
#undef CMMC_ASSERT_OFFSET
    static Generic::GenericInstInfo instance;
    return instance.getInstInfo(opcode + offset);
}

CMMC_MIR_NAMESPACE_END

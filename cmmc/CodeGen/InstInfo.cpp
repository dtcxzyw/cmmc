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
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cstdint>
#include <ostream>

CMMC_TARGET_NAMESPACE_BEGIN

struct OperandDumper final {
    const mir::MIROperand& operand;
};

static std::ostream& operator<<(std::ostream& out, const OperandDumper& operand) {
    const auto& op = operand.operand;
    auto dumpType = [](OperandType type) {
        switch(type) {
            case OperandType::Bool:
                return "i1 ";
            case OperandType::Int8:
                return "i8 ";
            case OperandType::Int16:
                return "i16 ";
            case OperandType::Int32:
                return "i32 ";
            case OperandType::Int64:
                return "i64 ";
            case OperandType::Float32:
                return "f32 ";
            case OperandType::Special:
                return "special ";
        }
        reportUnreachable(CMMC_LOCATION());
    };
    out << '[';
    std::visit(Overload{
                   [&](uint32_t reg) {
                       out << dumpType(op.type());
                       if(reg == invalidReg) {
                           out << "invalid";
                       } else if(isVirtualReg(reg)) {
                           out << 'v' << (reg ^ virtualRegBegin);
                       } else if(isStackObject(reg)) {
                           out << 's' << (reg ^ stackObjectBegin);
                       } else {
                           out << "isa " << reg;
                       }
                   },
                   [&](intmax_t imm) { out << dumpType(op.type()) << imm; },
                   [&](MIRRelocable* reloc) {
                       out << "reloc ";
                       reloc->dumpAsTarget(out);
                   },
                   [&](double prob) { out << "prob " << prob; },
                   [&](std::monostate) { out << "invalid"; },
               },
               op.getStorage());
    out << ']';
    return out;
}

static bool isIntegerType(OperandType type) {
    return type <= OperandType::Int64;
}
static bool isFPType(OperandType type) {
    return type == OperandType::Float32;
}

static bool isOperandVReg(std::ostream&, const MIROperand& operand) {
    return operand.isReg() && isVirtualReg(operand.reg());
}

static bool isOperandVal(std::ostream&, const MIROperand& operand) {
    return operand.isReg() || operand.isImm();
}

static bool isOperandIVal(std::ostream& out, const MIROperand& operand) {
    return isIntegerType(operand.type()) && isOperandVal(out, operand);
}
static bool isOperandFVal(std::ostream& out, const MIROperand& operand) {
    return isFPType(operand.type()) && isOperandVal(out, operand);
}

static bool isOperandVRegOrInvalid(std::ostream&, const MIROperand& operand) {
    if(operand.isReg()) {
        const auto reg = operand.reg();
        if(isVirtualReg(reg) || reg == invalidReg)
            return true;
    }
    return false;
}

static bool isOperandBool(std::ostream&, const MIROperand& operand) {
    return operand.type() == OperandType::Bool;
}

static bool isOperandImm(std::ostream&, const MIROperand& operand) {
    return operand.isImm();
}

static bool isOperandIReg(std::ostream&, const MIROperand& operand) {
    return operand.isReg() && isIntegerType(operand.type());
}

static bool isOperandFReg(std::ostream&, const MIROperand& operand) {
    return operand.isReg() && isFPType(operand.type());
}

static bool isOperandFlag(std::ostream&, const MIROperand& operand) {
    return operand.isImm() && operand.type() == OperandType::Special;
}

using mir::isOperandProb;
using mir::isOperandReloc;
using mir::isOperandStackObject;

static MIRInst emitGotoImpl(MIRBasicBlock*) {
    reportUnreachable(CMMC_LOCATION());
}

CMMC_TARGET_NAMESPACE_END

#include <Generic/InstInfoImpl.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/Support/Diagnostics.hpp>

CMMC_MIR_NAMESPACE_BEGIN

static const Generic::GenericInstInfo& getGenericInstInfoInstance() {
    static Generic::GenericInstInfo instance;
    return instance;
}

const InstInfo& TargetInstInfo::getInstInfo(uint32_t opcode) const {
    constexpr uint32_t offset = Generic::GenericInstBegin + 1;
    static_assert(Generic::GenericInstEnd - Generic::GenericInstBegin - 1 == MIRGenericInst::ISASpecificBegin);
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
    CMMC_ASSERT_OFFSET(And);
    CMMC_ASSERT_OFFSET(Or);
    CMMC_ASSERT_OFFSET(Xor);
    CMMC_ASSERT_OFFSET(Shl);
    CMMC_ASSERT_OFFSET(LShr);
    CMMC_ASSERT_OFFSET(AShr);
    CMMC_ASSERT_OFFSET(Neg);
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
    CMMC_ASSERT_OFFSET(LoadGlobalAddress);
    CMMC_ASSERT_OFFSET(LoadImm);
    CMMC_ASSERT_OFFSET(LoadStackObjectAddr);
#undef CMMC_ASSERT_OFFSET
    return getGenericInstInfoInstance().getInstInfo(opcode + offset);
}

bool TargetInstInfo::matchBranch(const MIRInst& inst, MIRBasicBlock*& target, double& prob) const {
    CMMC_UNUSED(inst);
    CMMC_UNUSED(target);
    CMMC_UNUSED(prob);
    reportUnreachable(CMMC_LOCATION());
}

void TargetInstInfo::redirectBranch(MIRInst& inst, MIRBasicBlock* target) const {
    CMMC_UNUSED(inst);
    CMMC_UNUSED(target);
    reportUnreachable(CMMC_LOCATION());
}

MIRInst TargetInstInfo::emitGoto(MIRBasicBlock* target) const {
    CMMC_UNUSED(target);
    reportUnreachable(CMMC_LOCATION());
}

CMMC_MIR_NAMESPACE_END

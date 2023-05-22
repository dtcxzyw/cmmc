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
#include <string_view>

CMMC_MIR_NAMESPACE_BEGIN

static std::string_view getType(OperandType type) {
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
void dumpVirtualReg(std::ostream& out, const MIROperand& operand) {
    out << '[' << getType(operand.type()) << 'v' << (operand.reg() ^ virtualRegBegin) << ']';
}

CMMC_MIR_NAMESPACE_END

CMMC_TARGET_NAMESPACE_BEGIN

struct OperandDumper final {
    const mir::MIROperand& operand;
};

static std::ostream& operator<<(std::ostream& out, const OperandDumper& operand) {
    const auto& op = operand.operand;
    out << '[';
    std::visit(Overload{
                   [&](uint32_t reg) {
                       out << getType(op.type());
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
                   [&](intmax_t imm) { out << getType(op.type()) << imm; },
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

static bool isOperandVal(const MIROperand& operand) {
    return operand.isReg() || operand.isImm();
}

static bool isOperandIVal(const MIROperand& operand) {
    return isIntegerType(operand.type()) && isOperandVal(operand);
}
static bool isOperandFVal(const MIROperand& operand) {
    return isFPType(operand.type()) && isOperandVal(operand);
}

static bool isOperandBool(const MIROperand& operand) {
    return operand.type() == OperandType::Bool;
}

static bool isOperandFReg(const MIROperand& operand) {
    return operand.isReg() && isFPType(operand.type());
}

static bool isOperandFlag(const MIROperand& operand) {
    return operand.isImm() && operand.type() == OperandType::Special;
}

using mir::isOperandBoolReg;
using mir::isOperandImm;
using mir::isOperandIReg;
using mir::isOperandISAReg;
using mir::isOperandProb;
using mir::isOperandReloc;
using mir::isOperandStackObject;
using mir::isOperandVReg;
using mir::isOperandVRegOrISAReg;

static bool isSameTypeReg(OperandType lhs, OperandType rhs) {
    return (isIntegerType(lhs) && isIntegerType(rhs)) || (isFPType(lhs) || isFPType(rhs));
}
static bool verifyInstCopyFromReg(const MIRInst& inst) {
    return isSameTypeReg(inst.getOperand(0).type(), inst.getOperand(1).type());
}
static bool verifyInstCopyToReg(const MIRInst& inst) {
    return isSameTypeReg(inst.getOperand(0).type(), inst.getOperand(1).type());
}

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

constexpr uint32_t offset = Generic::GenericInstBegin + 1;
const InstInfo& TargetInstInfo::getInstInfo(uint32_t opcode) const {
    static_assert(Generic::GenericInstEnd - Generic::GenericInstBegin - 1 == MIRGenericInst::ISASpecificBegin);
#define CMMC_ASSERT_OFFSET(NAME) static_assert(MIRGenericInst::Inst##NAME + offset == Generic::NAME)
    CMMC_ASSERT_OFFSET(Jump);
    CMMC_ASSERT_OFFSET(Branch);
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
    CMMC_ASSERT_OFFSET(CopyFromReg);
    CMMC_ASSERT_OFFSET(CopyToReg);
    CMMC_ASSERT_OFFSET(LoadImmToReg);
    CMMC_ASSERT_OFFSET(LoadRegFromStack);
    CMMC_ASSERT_OFFSET(StoreRegToStack);
#undef CMMC_ASSERT_OFFSET
    return getGenericInstInfoInstance().getInstInfo(opcode + offset);
}

bool TargetInstInfo::matchBranch(const MIRInst& inst, MIRBasicBlock*& target, double& prob) const {
    auto& instRef = const_cast<MIRInst&>(inst);  // NOLINT
    const auto oldOpcode = instRef.opcode();
    instRef.setOpcode(oldOpcode + offset);
    bool res = getGenericInstInfoInstance().matchBranch(inst, target, prob);
    instRef.setOpcode(oldOpcode);
    return res;
}

void TargetInstInfo::redirectBranch(MIRInst& inst, MIRBasicBlock* target) const {
    auto& instRef = const_cast<MIRInst&>(inst);  // NOLINT
    const auto oldOpcode = instRef.opcode();
    instRef.setOpcode(oldOpcode + offset);
    getGenericInstInfoInstance().redirectBranch(inst, target);
    instRef.setOpcode(oldOpcode);
}

MIRInst TargetInstInfo::emitGoto(MIRBasicBlock* target) const {
    return MIRInst{ InstBranch }.setOperand<0>(MIROperand::asReloc(target));
}

bool TargetInstInfo::matchConditionalBranch(const MIRInst& inst, MIRBasicBlock*& target, double& prob) const {
    return matchBranch(inst, target, prob) && !requireFlag(getInstInfo(inst.opcode()).getInstFlag(), InstFlagNoFallthrough);
}
bool TargetInstInfo::matchUnconditionalBranch(const MIRInst& inst, MIRBasicBlock*& target) const {
    double prob;
    return matchBranch(inst, target, prob) && requireFlag(getInstInfo(inst.opcode()).getInstFlag(), InstFlagNoFallthrough);
}

bool checkISASpecificOperands(const MIRInst& inst, const CodeGenContext& ctx, uint32_t count) {
    if(!ctx.registerInfo)
        return true;
    auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
    for(uint32_t idx = 0; idx < count; ++idx) {
        auto& operand = inst.getOperand(idx);
        if(!isOperandISAReg(operand))
            continue;
        if(!ctx.registerInfo->isLegalISARegOperand(operand, instInfo.getOperandFlag(idx))) {
            return false;
        }
    }
    return true;
}

CMMC_MIR_NAMESPACE_END

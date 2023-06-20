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

#pragma once
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cstdint>
#include <list>
#include <unordered_map>
#include <unordered_set>

CMMC_MIR_NAMESPACE_BEGIN

class ISelContext final {
    CodeGenContext& mCodeGenCtx;
    std::unordered_map<MIROperand, MIRInst*, MIROperandHasher> mInstMapping, mConstantMapping;
    MIRBasicBlock* mCurrentBlock;
    std::list<MIRInst>::iterator mInsertPoint;
    std::unordered_map<MIROperand, MIROperand, MIROperandHasher> mReplaceList;
    std::unordered_set<MIRInst*> mRemoveWorkList, mReplaceBlockList;

public:
    explicit ISelContext(CodeGenContext& codeGenCtx);
    void runISel(MIRFunction& func);
    MIRInst* lookupDef(const MIROperand& operand) const;
    bool isDefinedAfter(const MIROperand& operand, const MIRInst& inst,
                        std::optional<std::list<MIRInst>::iterator>* iterPtr = nullptr) const;
    std::optional<MIROperand> getRegRef(const MIROperand& reg, const MIRInst& inst);
    MIRInst& newInst(uint32_t opcode);
    MIROperand& getInstDef(MIRInst& inst) const;
    std::list<MIRInst>& getInstructions() const;
    std::list<MIRInst>::iterator getCurrentInstIter() const;
    void removeInst(MIRInst& inst);
    void replaceOperand(const MIROperand& src, const MIROperand& dst);
    void blockReplace(MIRInst& inst);
    CodeGenContext& getCodeGenCtx() const {
        return mCodeGenCtx;
    }
    MIRBasicBlock* getCurrentBlock() const {
        return mCurrentBlock;
    }
};

struct InstLegalizeContext final {
    MIRInst& inst;
    std::list<MIRInst>& instructions;
    std::list<MIRInst>::iterator iter;
    const CodeGenContext& ctx;
};

class TargetISelInfo {
public:
    virtual ~TargetISelInfo() = default;
    [[nodiscard]] virtual bool isLegalGenericInst(uint32_t opcode) const = 0;
    static bool expandCmp(MIRInst& inst, ISelContext& ctx);
    static bool expandSelect(MIRInst& inst, ISelContext& ctx);
    virtual bool matchAndSelect(MIRInst& inst, ISelContext& ctx, bool allowComplexPattern) const = 0;
    virtual void postLegalizeInst(const InstLegalizeContext& ctx) const = 0;
    virtual void postLegalizeInstSeq(const CodeGenContext& ctx, std::list<MIRInst>& instructions) const = 0;
    virtual void preRALegalizeInst(const InstLegalizeContext& ctx) const = 0;
    virtual void legalizeInstWithStackOperand(const InstLegalizeContext& ctx, MIROperand& op, const StackObject& obj) const = 0;
    virtual MIROperand materializeFPConstant(ConstantFloatingPoint* fp, LoweringContext& loweringCtx) const = 0;
    virtual bool lowerInst(Instruction* inst, LoweringContext& loweringCtx) const = 0;
};

uint32_t selectCopyOpcode(const MIROperand& dst, const MIROperand& src);
MIROperand getZExtMask(OperandType dstType, OperandType srcType);
MIROperand getTruncMask(OperandType dstType, OperandType srcType);
intmax_t getMaxSignedValue(OperandType type);
intmax_t getMinSignedValue(OperandType type);
uintmax_t getMaxUnsignedValue(OperandType type);
uintmax_t getUnsignedImm(const MIROperand& imm);
MIROperand getTruncShift(const OperandType type);

constexpr MIROperand getNeg(const MIROperand& operand) {
    return MIROperand::asImm(-operand.imm(), operand.type());
}
inline MIROperand getHighBits(const MIROperand& operand) {
    assert(isOperandReloc(operand));
    return MIROperand{ operand.getStorage(), OperandType::HighBits };
}
inline MIROperand getLowBits(const MIROperand& operand) {
    assert(isOperandReloc(operand));
    return MIROperand{ operand.getStorage(), OperandType::LowBits };
}

constexpr bool isRationalOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op != CompareOp::Equal && op != CompareOp::NotEqual;
}
constexpr bool isEqualityOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::Equal || op == CompareOp::NotEqual;
}

constexpr bool isLessThanOrLessEqualOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::LessThan || op == CompareOp::LessEqual;
}

constexpr bool isGreaterThanOrGreaterEqualOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::GreaterThan || op == CompareOp::GreaterEqual;
}

constexpr bool isLessThanOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::LessThan;
}

constexpr bool isLessEqualOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::LessEqual;
}

constexpr bool isGreaterThanOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::GreaterThan;
}
constexpr bool isGreaterEqualOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::GreaterEqual;
}

constexpr bool isEqualOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::Equal;
}

constexpr bool isNotEqualOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == CompareOp::NotEqual;
}
CMMC_MIR_NAMESPACE_END

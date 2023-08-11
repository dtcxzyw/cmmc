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
    MIRInstList::iterator mInsertPoint;
    std::unordered_map<MIROperand, MIROperand, MIROperandHasher> mReplaceList;
    std::unordered_set<MIRInst*> mRemoveWorkList, mReplaceBlockList;
    std::unordered_map<MIROperand, uint32_t, MIROperandHasher> mUseCount;

public:
    explicit ISelContext(CodeGenContext& codeGenCtx);
    void runISel(MIRFunction& func);
    bool hasOneUse(const MIROperand& operand) const;
    MIRInst* lookupDef(const MIROperand& operand) const;
    bool isDefinedAfter(const MIROperand& operand, const MIRInst& inst, std::optional<MIRInstList::iterator>* iterPtr) const;
    bool isSafeToUse(const MIROperand& val, const MIROperand& def) const;
    std::optional<MIROperand> getRegRef(const MIROperand& reg, const MIRInst& inst);
    MIRInst& newInst(uint32_t opcode);
    MIROperand& getInstDef(MIRInst& inst) const;
    MIRInstList& getInstructions() const;
    MIRInstList::iterator getCurrentInstIter() const;
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
    MIRInstList& instructions;
    MIRInstList::iterator iter;
    CodeGenContext& ctx;
    std::optional<std::list<std::unique_ptr<MIRBasicBlock>>::iterator> blockIter;
    MIRFunction& func;
};

class TargetISelInfo {
public:
    virtual ~TargetISelInfo() = default;
    [[nodiscard]] virtual bool isLegalGenericInst(uint32_t opcode) const = 0;
    static bool expandCmp(MIRInst& inst, ISelContext& ctx);
    static bool expandSelect(MIRInst& inst, ISelContext& ctx);
    virtual bool matchAndSelect(MIRInst& inst, ISelContext& ctx, bool allowComplexPattern) const = 0;
    virtual void postLegalizeInst(const InstLegalizeContext& ctx) const = 0;
    virtual void postLegalizeInstSeq(const CodeGenContext& ctx, MIRInstList& instructions) const = 0;
    virtual void preRALegalizeInst(const InstLegalizeContext& ctx) const = 0;
    virtual void legalizeInstWithStackOperand(const InstLegalizeContext& ctx, MIROperand& op, const StackObject& obj) const = 0;
    virtual MIROperand materializeFPConstant(ConstantFloatingPoint* fp, LoweringContext& loweringCtx) const = 0;
    virtual bool lowerInst(Instruction* inst, LoweringContext& loweringCtx) const = 0;
    virtual void lowerIndirectJump(MIRJumpTable* jumpTable, const MIROperand& offset, LoweringContext& ctx) const = 0;
};

uint32_t selectCopyOpcode(const MIROperand& dst, const MIROperand& src);
MIROperand getZExtMask(OperandType dstType, OperandType srcType);
MIROperand getTruncMask(OperandType dstType, OperandType srcType);
intmax_t getMaxSignedValue(OperandType type);
intmax_t getMinSignedValue(OperandType type);
uintmax_t getMaxUnsignedValue(OperandType type);
uintmax_t getUnsignedImm(const MIROperand& imm);
MIROperand getTruncShift(OperandType type);

bool isPowerOf2Divisor(const MIROperand& rhs);
bool selectSDiv32ByPowerOf2(const MIROperand& rhs, MIROperand& shift);
bool isOperandSDiv32ByConstantDivisor(const MIROperand& rhs);
bool selectSDiv32ByConstant(const MIROperand& rhs, MIROperand& magic, MIROperand& shift, MIROperand& factor);
MIROperand getSDivHint(const MIROperand& hint);

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

constexpr bool isICmpSignedRationalOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    switch(op) {
        case CompareOp::ICmpSignedLessThan:
        case CompareOp::ICmpSignedLessEqual:
        case CompareOp::ICmpSignedGreaterThan:
        case CompareOp::ICmpSignedGreaterEqual:
            return true;
        default:
            return false;
    }
}

constexpr bool isICmpUnsignedRationalOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    switch(op) {
        case CompareOp::ICmpUnsignedLessThan:
        case CompareOp::ICmpUnsignedLessEqual:
        case CompareOp::ICmpUnsignedGreaterThan:
        case CompareOp::ICmpUnsignedGreaterEqual:
            return true;
        default:
            return false;
    }
}

constexpr bool isICmpEqualityOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    switch(op) {
        case CompareOp::ICmpEqual:
        case CompareOp::ICmpNotEqual:
            return true;
        default:
            return false;
    }
}

constexpr bool isICmpLessThanOrLessEqualOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    switch(op) {
        case CompareOp::ICmpSignedLessThan:
        case CompareOp::ICmpSignedLessEqual:
        case CompareOp::ICmpUnsignedLessThan:
        case CompareOp::ICmpUnsignedLessEqual:
            return true;
        default:
            return false;
    }
}

constexpr bool isICmpGreaterThanOrGreaterEqualOp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    switch(op) {
        case CompareOp::ICmpSignedGreaterThan:
        case CompareOp::ICmpSignedGreaterEqual:
        case CompareOp::ICmpUnsignedGreaterThan:
        case CompareOp::ICmpUnsignedGreaterEqual:
            return true;
        default:
            return false;
    }
}

constexpr bool isCompareOp(const MIROperand& operand, CompareOp rhs) {
    const auto op = static_cast<CompareOp>(operand.imm());
    return op == rhs;
}

CMMC_MIR_NAMESPACE_END

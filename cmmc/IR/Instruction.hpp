/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2022 Yingwei Zheng and Bingzhen Wang
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
#include <cassert>
#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/Config.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Arena.hpp>
#include <functional>
#include <ostream>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class Block;
class Type;

enum class InstructionID {
    None,
    // control-flow
    // terminators
    TerminatorBegin,
    Ret,
    Branch,
    ConditionalBranch,
    Unreachable,
    TerminatorEnd,
    // memory ops
    MemoryOpBegin,
    Load,
    Store,
    MemoryOpEnd,
    // integer arithmetic ops
    IntegerOpBegin,
    Add,
    Sub,
    Mul,
    SDiv,
    UDiv,
    SRem,
    URem,
    Neg,
    // bitwise ops
    And,
    Or,
    Not,
    Xor,
    Shl,
    LShr,
    AShr,
    IntegerOpEnd,
    // floating point ops
    FloatingPointOpBegin,
    FAdd,
    FSub,
    FMul,
    FDiv,
    FNeg,
    FFma,
    FloatingPointOpEnd,
    // compare ops
    CompareOpBegin,
    SCmp,
    UCmp,
    FCmp,
    CompareOpEnd,
    // convert ops
    ConvertOpBegin,
    SExt,
    ZExt,
    Trunc,
    Bitcast,
    F2U,
    F2S,
    U2F,
    S2F,
    FCast,
    ConvertOpEnd,
    // miscellaneous
    Alloc,
    GetElementPtr,
    PtrCast,
    PtrToInt,
    IntToPtr,
    Select,
    Call,
    Phi
};

class Instruction : public Value {
    InstructionID mInstID;
    Deque<Value*> mOperands;
    Block* mBlock;
    String mLabel;

    // bool isVolatile;
public:
    Instruction(InstructionID instID, const Type* valueType, Deque<Value*> operands)
        : Value{ valueType }, mInstID{ instID }, mOperands{ std::move(operands) } {}

    [[nodiscard]] InstructionID getInstID() const noexcept {
        return mInstID;
    }
    void setBlock(Block* block) noexcept {
        mBlock = block;
    }
    [[nodiscard]] Block* getBlock() const noexcept final {
        return mBlock;
    }
    Deque<Value*>& operands() noexcept {
        return mOperands;
    }
    [[nodiscard]] const Deque<Value*>& operands() const noexcept {
        return mOperands;
    }
    [[nodiscard]] Value* getOperand(uint32_t idx) const noexcept {
        return mOperands[idx];
    }

    virtual bool replaceOperand(Value* oldOperand, Value* newOperand);
    bool hasOperand(Value* operand) const noexcept;

    void setLabel(String label) {
        mLabel = label;
    }
    [[nodiscard]] const String& getLabel() const noexcept {
        return mLabel;
    }
    [[nodiscard]] bool isInstruction() const noexcept final {
        return true;
    }

    virtual bool verify(std::ostream& out) const;

    void dumpAsOperand(std::ostream& out) const final;

    void dumpWithNoOperand(std::ostream& out) const;
    void dumpBinary(std::ostream& out) const;
    void dumpUnary(std::ostream& out) const;

    // NOLINTNEXTLINE
#define CMMC_GET_INST_CATEGORY(KIND)                                                       \
    bool is##KIND() const noexcept {                                                       \
        return InstructionID::KIND##Begin < mInstID && mInstID < InstructionID::KIND##End; \
    }

    CMMC_GET_INST_CATEGORY(Terminator);
    CMMC_GET_INST_CATEGORY(MemoryOp);
    CMMC_GET_INST_CATEGORY(IntegerOp);
    CMMC_GET_INST_CATEGORY(FloatingPointOp);
    CMMC_GET_INST_CATEGORY(ConvertOp);
    CMMC_GET_INST_CATEGORY(CompareOp);

#undef CMMC_GET_INST_CATEGORY

    [[nodiscard]] bool isBranch() const noexcept {
        return mInstID == InstructionID::Branch || mInstID == InstructionID::ConditionalBranch;
    }
    [[nodiscard]] bool canbeOperand() const noexcept;

    [[nodiscard]] virtual Instruction* clone() const = 0;
    virtual bool isEqual(const Instruction* rhs) const;  // only check metadata
};

class BinaryInst final : public Instruction {
public:
    BinaryInst(InstructionID instID, const Type* valueType, Value* lhs, Value* rhs)
        : Instruction{ instID, valueType, { lhs, rhs } } {}
    void dump(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
    bool verify(std::ostream& out) const override;
};

enum class CompareOp { LessThan, LessEqual, GreaterThan, GreaterEqual, Equal, NotEqual };

// a < b => b > a
constexpr auto getReversedOp(CompareOp op) {
    switch(op) {
        case CompareOp::LessThan:
            return CompareOp::GreaterThan;
        case CompareOp::LessEqual:
            return CompareOp::GreaterEqual;
        case CompareOp::GreaterThan:
            return CompareOp::LessThan;
        case CompareOp::GreaterEqual:
            return CompareOp::LessEqual;
        case CompareOp::Equal:
            return CompareOp::Equal;
        case CompareOp::NotEqual:
            return CompareOp::NotEqual;
    }
    // unreachable
    return static_cast<CompareOp>(-1);
}

constexpr auto getInvertedOp(CompareOp op) {
    switch(op) {
        case CompareOp::LessThan:
            return CompareOp::GreaterEqual;
        case CompareOp::LessEqual:
            return CompareOp::GreaterThan;
        case CompareOp::GreaterThan:
            return CompareOp::LessEqual;
        case CompareOp::GreaterEqual:
            return CompareOp::LessThan;
        case CompareOp::Equal:
            return CompareOp::NotEqual;
        case CompareOp::NotEqual:
            return CompareOp::Equal;
    }
    // unreachable
    return static_cast<CompareOp>(-1);
}

class CompareInst final : public Instruction {
    CompareOp mCompare;

public:
    CompareInst(InstructionID instID, CompareOp compare, Value* lhs, Value* rhs)
        : Instruction{ instID, IntegerType::getBoolean(), { lhs, rhs } }, mCompare{ compare } {}
    void dump(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
    bool isEqual(const Instruction* rhs) const override;
    [[nodiscard]] CompareOp getOp() const noexcept {
        return mCompare;
    }
    void setOp(CompareOp op) noexcept {
        mCompare = op;
    }
    bool verify(std::ostream& out) const override;
};

class UnaryInst final : public Instruction {
public:
    UnaryInst(InstructionID instID, const Type* valueType, Value* val) : Instruction{ instID, valueType, { val } } {}
    void dump(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class CastInst final : public Instruction {
public:
    CastInst(InstructionID instID, const Type* valueType, Value* srcValue) : Instruction{ instID, valueType, { srcValue } } {}
    void dump(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class LoadInst final : public Instruction {
public:
    explicit LoadInst(Value* address)
        : Instruction{ InstructionID::Load, address->getType()->as<PointerType>()->getPointee(), { address } } {}
    void dump(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
    bool verify(std::ostream& out) const override;
};

class StoreInst final : public Instruction {
public:
    explicit StoreInst(Value* address, Value* value) : Instruction{ InstructionID::Store, VoidType::get(), { address, value } } {
        assert(address->getType()->as<PointerType>()->getPointee()->isSame(value->getType()));
    }
    void dump(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
    bool verify(std::ostream& out) const override;
};

class BranchInst final : public Instruction {
    Block* mTrueTarget;
    Block* mFalseTarget;
    double mBranchProb;

public:
    explicit BranchInst(Block* target);
    explicit BranchInst(Value* condition, double branchProb, Block* trueTarget, Block* falseTarget);

    void updateBranchProb(double branchProb);
    [[nodiscard]] double getBranchProb() const noexcept {
        return mBranchProb;
    }
    void dump(std::ostream& out) const override;
    bool verify(std::ostream& out) const override;
    bool isEqual(const Instruction* rhs) const override;

    [[nodiscard]] auto& getTrueTarget() noexcept {
        return mTrueTarget;
    }
    [[nodiscard]] auto& getFalseTarget() noexcept {
        return mFalseTarget;
    }
    [[nodiscard]] auto getTrueTarget() const noexcept {
        return mTrueTarget;
    }
    [[nodiscard]] auto getFalseTarget() const noexcept {
        return mFalseTarget;
    }
    [[nodiscard]] Instruction* clone() const override;
};

class ReturnInst final : public Instruction {
public:
    explicit ReturnInst() : Instruction{ InstructionID::Ret, VoidType::get(), {} } {}
    explicit ReturnInst(Value* retValue) : Instruction{ InstructionID::Ret, VoidType::get(), { retValue } } {
        assert(retValue);
    }
    void dump(std::ostream& out) const override;
    bool verify(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class UnreachableInst final : public Instruction {
public:
    explicit UnreachableInst() : Instruction{ InstructionID::Unreachable, VoidType::get(), {} } {}
    void dump(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class FunctionCallInst final : public Instruction {
public:
    FunctionCallInst(Value* callee, const Vector<Value*>& args)
        : Instruction{ InstructionID::Call, callee->getType()->as<FunctionType>()->getRetType(), {} } {
        auto& list = operands();
        list.insert(list.cend(), args.cbegin(), args.cend());
        list.push_back(callee);
    }
    void dump(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class SelectInst final : public Instruction {
public:
    explicit SelectInst(Value* predicate, Value* lhs, Value* rhs)
        : Instruction{ InstructionID::Select, lhs->getType(), { predicate, lhs, rhs } } {
        assert(lhs->getType()->isSame(rhs->getType()));
    }

    void dump(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class StackAllocInst final : public Instruction {
public:
    // TODO: VLA
    explicit StackAllocInst(const Type* type) : Instruction{ InstructionID::Alloc, PointerType::get(type), {} } {}

    void dump(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class FMAInst final : public Instruction {
public:
    explicit FMAInst(Value* x, Value* y, Value* z) : Instruction{ InstructionID::FFma, x->getType(), { x, y, z } } {}
    void dump(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class GetElementPtrInst final : public Instruction {
public:
    static const Type* getValueType(Value* base, const Vector<Value*>& indices);
    explicit GetElementPtrInst(Value* base, const Vector<Value*>& indices)
        : Instruction{ InstructionID::GetElementPtr, PointerType::get(getValueType(base, indices)), {} } {
        auto& list = operands();
        list.insert(list.cend(), indices.cbegin(), indices.cend());
        list.push_back(base);
    }
    void dump(std::ostream& out) const override;
    [[nodiscard]] std::pair<size_t, std::vector<std::pair<size_t, Value*>>> gatherOffsets(const DataLayout& dataLayout) const;
    [[nodiscard]] Instruction* clone() const override;
};

class PtrCastInst final : public Instruction {
public:
    explicit PtrCastInst(Value* base, const Type* targetType) : Instruction{ InstructionID::PtrCast, targetType, { base } } {
        assert(base->getType()->isPointer());
        assert(targetType->isPointer());
    }
    void dump(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class PtrToIntInst final : public Instruction {
public:
    explicit PtrToIntInst(Value* base, const Type* targetType) : Instruction{ InstructionID::PtrToInt, targetType, { base } } {
        assert(base->getType()->isPointer());
        assert(targetType->isInteger());
    }
    void dump(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class IntToPtrInst final : public Instruction {
public:
    explicit IntToPtrInst(Value* base, const Type* targetType) : Instruction{ InstructionID::IntToPtr, targetType, { base } } {
        assert(base->getType()->isInteger());
        assert(targetType->isPointer());
    }
    void dump(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class PhiInst final : public Instruction {
    std::unordered_map<Block*, Value*, std::hash<Block*>, std::equal_to<>,
                       ArenaAllocator<Arena::Source::IR, std::pair<Block* const, Value*>>>
        mIncomings;

public:
    explicit PhiInst(const Type* type) : Instruction{ InstructionID::Phi, type, {} } {}
    void addIncoming(Block* block, Value* value) {
        assert(getType()->isSame(value->getType()));
        assert(!mIncomings.count(block));
        mIncomings.emplace(block, value);
        operands().push_back(value);
    }
    auto& incomings() const noexcept {
        return mIncomings;
    }
    void removeSource(Block* block);
    void replaceSource(Block* oldBlock, Block* newBlock);
    bool replaceOperand(Value* oldOperand, Value* newOperand) override;
    void dump(std::ostream& out) const override;
    bool verify(std::ostream& out) const override;
    bool isEqual(const Instruction* rhs) const override;
    [[nodiscard]] Instruction* clone() const override;
};

CMMC_NAMESPACE_END

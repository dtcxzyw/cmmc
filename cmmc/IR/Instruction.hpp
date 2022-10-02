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
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Arena.hpp>
#include <ostream>

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
    ExtractValue,
    InsertValue,
    Select,
    Call,
};

class Instruction : public Value {
    InstructionID mInstID;
    Deque<Value*> mOperands;
    Block* mBlock;
    StringIR mLabel;

    // bool isVolatile;
public:
    Instruction(InstructionID instID, Type* valueType, Deque<Value*> operands)
        : Value{ valueType }, mInstID{ instID }, mOperands{ std::move(operands) } {}

    InstructionID getInstID() const noexcept {
        return mInstID;
    }
    void setBlock(Block* block) noexcept {
        mBlock = block;
    }
    Block* getBlock() const noexcept final {
        return mBlock;
    }
    Deque<Value*>& operands() noexcept {
        return mOperands;
    }
    const Deque<Value*>& operands() const noexcept {
        return mOperands;
    }
    Value* getOperand(uint32_t idx) const noexcept {
        return mOperands[idx];
    }

    virtual bool replaceOperand(Value* oldOperand, Value* newOperand);
    bool hasOperand(Value* operand) const noexcept;

    void setLabel(StringIR label) {
        mLabel = std::move(label);
    }
    const StringIR& getLabel() const noexcept {
        return mLabel;
    }
    bool isInstruction() const noexcept final {
        return true;
    }

    virtual bool verify(std::ostream& out) const;

    virtual void dump(std::ostream& out) const = 0;
    void dumpAsOperand(std::ostream& out) const final;

    void dumpWithNoOperand(std::ostream& out) const;
    void dumpBinary(std::ostream& out) const;
    void dumpUnary(std::ostream& out) const;

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

    bool isBranch() const noexcept {
        return mInstID == InstructionID::Branch || mInstID == InstructionID::ConditionalBranch;
    }
    bool canbeOperand() const noexcept;
};

class BinaryInst final : public Instruction {
public:
    BinaryInst(InstructionID instID, Type* valueType, Value* lhs, Value* rhs) : Instruction{ instID, valueType, { lhs, rhs } } {}
    void dump(std::ostream& out) const override;
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

class CompareInst final : public Instruction {
    CompareOp mCompare;

public:
    CompareInst(InstructionID instID, CompareOp compare, Value* lhs, Value* rhs)
        : Instruction{ instID, IntegerType::getBoolean(), { lhs, rhs } }, mCompare{ compare } {}
    void dump(std::ostream& out) const override;
    CompareOp getOp() const noexcept {
        return mCompare;
    }
};

class UnaryInst final : public Instruction {
public:
    UnaryInst(InstructionID instID, Type* valueType, Value* val) : Instruction{ instID, valueType, { val } } {}
    void dump(std::ostream& out) const override;
};

class CastInst final : public Instruction {
public:
    CastInst(InstructionID instID, Type* valueType, Value* srcValue) : Instruction{ instID, valueType, { srcValue } } {}
    void dump(std::ostream& out) const override;
};

class LoadInst final : public Instruction {
public:
    explicit LoadInst(Value* address)
        : Instruction{ InstructionID::Load, address->getType()->as<PointerType>()->getPointee(), { address } } {}
    void dump(std::ostream& out) const override;
};

class StoreInst final : public Instruction {
public:
    explicit StoreInst(Value* address, Value* value) : Instruction{ InstructionID::Store, VoidType::get(), { address, value } } {
        assert(address->getType()->as<PointerType>()->getPointee()->isSame(value->getType()));
    }
    void dump(std::ostream& out) const override;
};

class BranchTarget final {
    Block* mTarget;
    Vector<Value*> mArgs;

    friend class ConditionalBranchInst;
    Vector<Value*>& getArgsRef() noexcept {
        return mArgs;
    }

public:
    BranchTarget() noexcept : mTarget{ nullptr } {}
    template <typename... Args>
    explicit BranchTarget(Block* target, Args... args) : mTarget{ target }, mArgs{ args... } {}

    void resetTarget(Block* target) noexcept {
        mTarget = target;
    }
    Block* getTarget() const noexcept {
        return mTarget;
    }
    const Vector<Value*>& getArgs() const noexcept {
        return mArgs;
    }
    void dump(std::ostream& out) const;
    void replaceOperand(Value* oldOperand, Value* newOperand);
};

class ConditionalBranchInst final : public Instruction {
    BranchTarget mTrueTarget, mFalseTarget;

public:
    explicit ConditionalBranchInst(BranchTarget target);
    explicit ConditionalBranchInst(Value* condition, BranchTarget trueTarget, BranchTarget falseTarget);

    bool replaceOperand(Value* oldOperand, Value* newOperand) override;
    void updateTargetArgs(BranchTarget& target, Vector<Value*> args);
    void dump(std::ostream& out) const override;
    bool verify(std::ostream& out) const override;

    BranchTarget& getTrueTarget() noexcept {
        return mTrueTarget;
    }
    BranchTarget& getFalseTarget() noexcept {
        return mFalseTarget;
    }
};

class ReturnInst final : public Instruction {
public:
    explicit ReturnInst() : Instruction{ InstructionID::Ret, VoidType::get(), {} } {}
    explicit ReturnInst(Value* retValue) : Instruction{ InstructionID::Ret, VoidType::get(), { retValue } } {
        assert(retValue);
    }
    void dump(std::ostream& out) const override;
};

class UnreachableInst final : public Instruction {
public:
    explicit UnreachableInst() : Instruction{ InstructionID::Unreachable, VoidType::get(), {} } {}
    void dump(std::ostream& out) const override;
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
};

class SelectInst final : public Instruction {
public:
    explicit SelectInst(Value* predicate, Value* lhs, Value* rhs)
        : Instruction{ InstructionID::Select, lhs->getType(), { predicate, lhs, rhs } } {}

    void dump(std::ostream& out) const override;
};

class StackAllocInst final : public Instruction {
public:
    // TODO: VLA
    explicit StackAllocInst(Type* type) : Instruction{ InstructionID::Alloc, PointerType::get(type), {} } {}

    void dump(std::ostream& out) const override;
};

class FMAInst final : public Instruction {
public:
    explicit FMAInst(Value* x, Value* y, Value* z) : Instruction{ InstructionID::FFma, x->getType(), { x, y, z } } {}
    void dump(std::ostream& out) const override;
};

class GetElementPtrInst final : public Instruction {
public:
    static Type* getValueType(Value* base, const Vector<Value*>& indices);
    explicit GetElementPtrInst(Value* base, const Vector<Value*>& indices)
        : Instruction{ InstructionID::GetElementPtr, PointerType::get(getValueType(base, indices)), {} } {
        auto& list = operands();
        list.insert(list.cend(), indices.cbegin(), indices.cend());
        list.push_back(base);
    }
    void dump(std::ostream& out) const override;
};

class PtrCastInst final : public Instruction {
public:
    explicit PtrCastInst(Value* base, Type* targetType) : Instruction{ InstructionID::PtrCast, targetType, { base } } {
        assert(base->getType()->isPointer());
        assert(targetType->isPointer());
    }
    void dump(std::ostream& out) const override;
};

CMMC_NAMESPACE_END

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
#include <cassert>
#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/Config.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cmmc/Support/IntrusiveList.hpp>
#include <cstddef>
#include <cstdint>
#include <functional>
#include <initializer_list>
#include <memory>
#include <ostream>
#include <unordered_map>
#include <utility>

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
    Abs,
    // bitwise ops
    And,
    Or,
    Xor,
    Shl,
    LShr,
    AShr,
    SMin,
    SMax,
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
    ICmp,
    FCmp,
    CompareOpEnd,
    // convert ops
    ConvertOpBegin,
    SExt,
    ZExt,
    SignedTrunc,
    UnsignedTrunc,
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

struct ValueRef final {
    Value* value;
    Instruction* user;
    ValueRef* prev = nullptr;
    ValueRef* next = nullptr;

    ValueRef(Value* val, Instruction* userInst);
    ValueRef(const ValueRef& ref) = delete;
    ValueRef(ValueRef&& ref) = delete;
    ValueRef& operator=(const ValueRef& ref) = delete;
    ValueRef& operator=(ValueRef&& ref) = delete;
    void resetValue(Value* newValue);
    ~ValueRef();
};
CMMC_ARENA_TRAIT(ValueRef, IR);

struct DisableValueRefCheckScope final {
    DisableValueRefCheckScope();
    ~DisableValueRefCheckScope();
    DisableValueRefCheckScope(const DisableValueRefCheckScope&) = delete;
    DisableValueRefCheckScope(DisableValueRefCheckScope&&) = delete;
    DisableValueRefCheckScope& operator=(const DisableValueRefCheckScope& rhs) = delete;
    DisableValueRefCheckScope& operator=(DisableValueRefCheckScope&& rhs) = delete;
};

class UserIterator final {
    ValueRef* mRef;

public:
    explicit UserIterator(ValueRef* ref) : mRef{ ref } {}
    bool operator!=(const UserIterator& other) const noexcept {
        return mRef != other.mRef;
    }
    UserIterator& operator++() noexcept {
        mRef = mRef->next;
        return *this;
    }
    Instruction* operator*() const {
        assert(mRef->user);
        return mRef->user;
    }
    [[nodiscard]] ValueRef* ref() const noexcept {
        return mRef;
    }
};
class UserList final {
    ValueRef mHead;
    int32_t mUseCount;

public:
    explicit UserList(Value* self);
    UserList(const UserList&) = delete;
    UserList(UserList&&) = delete;
    UserList& operator=(const UserList& rhs) = delete;
    UserList& operator=(UserList&& rhs) = delete;
    ~UserList();
    void addRef(ValueRef& ref);
    void removeRef(ValueRef& ref);
    bool replaceWith(Value* value);
    bool replaceWithInBlock(Block* block, Value* value);
    bool replaceWithInBlockList(const std::unordered_set<Block*>& blocks, Value* value);
    [[nodiscard]] int32_t useCount() const noexcept {
        return mUseCount;
    }

    [[nodiscard]] UserIterator begin() const noexcept;
    [[nodiscard]] UserIterator end() const noexcept;
};

class TrackableValue : public Value {
    UserList mUsers;

public:
    explicit TrackableValue(const Type* type);
    ~TrackableValue() override = default;
    bool replaceWith(Value* value);
    bool replaceWithInBlock(Block* block, Value* value);
    bool replaceWithInBlockList(const std::unordered_set<Block*>& blocks, Value* value);
    [[nodiscard]] bool isUsed() const {
        return mUsers.useCount() > 0;
    }
    [[nodiscard]] bool hasExactlyOneUse() const noexcept {
        return mUsers.useCount() == 1;
    }
    [[nodiscard]] UserList& users() noexcept {
        return mUsers;
    }
    [[nodiscard]] const UserList& users() const noexcept {
        return mUsers;
    }
};

class ValueRefHandle final {
    ValueRef* mRef;

public:
    ValueRefHandle() : mRef{ nullptr } {}
    ValueRefHandle(ValueRef* ref) : mRef{ ref } {}
    ValueRefHandle(const ValueRefHandle& rhs) = delete;
    ValueRefHandle(ValueRefHandle&& rhs) noexcept : mRef{ rhs.mRef } {
        rhs.mRef = nullptr;
    }
    ValueRefHandle& operator=(const ValueRefHandle& rhs) = delete;
    ValueRefHandle& operator=(ValueRefHandle&& rhs) noexcept {
        ValueRefHandle tmp{ std::move(rhs) };
        swap(tmp);
        return *this;
    }
    ~ValueRefHandle();
    void swap(ValueRefHandle& rhs) noexcept {
        std::swap(mRef, rhs.mRef);
    }
    ValueRef& operator*() const {
        assert(mRef);
        return *mRef;
    }
    ValueRef* operator->() const {
        assert(mRef);
        return mRef;
    }
    [[nodiscard]] ValueRef* get() const noexcept {
        assert(mRef);
        return mRef;
    }
    ValueRef* release() noexcept {
        return std::exchange(mRef, nullptr);
    }
};
CMMC_ARENA_TRAIT(ValueRefHandle, IR);

class OperandIterator final {
    Deque<ValueRefHandle>::const_iterator mIter;

public:
    explicit OperandIterator(const Deque<ValueRefHandle>::const_iterator& iter) : mIter{ iter } {}
    bool operator!=(const OperandIterator& other) const noexcept {
        return mIter != other.mIter;
    }
    OperandIterator& operator++() noexcept {
        ++mIter;
        return *this;
    }
    Value* operator*() const {
        return (*mIter)->value;
    }
};
class OperandView final {
    const Deque<ValueRefHandle>& mRef;

public:
    explicit OperandView(const Deque<ValueRefHandle>& ref);
    OperandView(const OperandView&) = delete;
    OperandView(OperandView&&) = delete;
    OperandView& operator=(const OperandView& rhs) = delete;
    OperandView& operator=(OperandView&& rhs) = delete;
    ~OperandView() = default;

    [[nodiscard]] bool empty() const {
        return mRef.empty();
    }
    [[nodiscard]] size_t size() const {
        return mRef.size();
    }
    [[nodiscard]] Value* front() const {
        return mRef.front()->value;
    }
    [[nodiscard]] Value* back() const {
        return mRef.back()->value;
    }

    [[nodiscard]] OperandIterator begin() const noexcept;
    [[nodiscard]] OperandIterator end() const noexcept;
};

class ArgumentView final {
    const Deque<ValueRefHandle>& mRef;  // args/indices + callee/base

public:
    explicit ArgumentView(const Deque<ValueRefHandle>& ref);
    ArgumentView(const ArgumentView&) = delete;
    ArgumentView(ArgumentView&&) = delete;
    ArgumentView& operator=(const ArgumentView& rhs) = delete;
    ArgumentView& operator=(ArgumentView&& rhs) = delete;
    ~ArgumentView() = default;

    [[nodiscard]] bool empty() const {
        return mRef.size() <= 1;
    }
    [[nodiscard]] size_t size() const {
        return mRef.size() - 1;
    }
    [[nodiscard]] Value* front() const {
        return mRef.front()->value;
    }
    [[nodiscard]] Value* back() const {
        return (*std::next(mRef.rbegin()))->value;
    }

    [[nodiscard]] OperandIterator begin() const noexcept;
    [[nodiscard]] OperandIterator end() const noexcept;
};

class Instruction : public TrackableValue {
    InstructionID mInstID;
    Deque<ValueRefHandle> mOperands;
    Block* mBlock;
    String mLabel;
    mutable IntrusiveListNode<Instruction> mNode;

public:
    Instruction(InstructionID instID, const Type* valueType)
        : TrackableValue{ valueType }, mInstID{ instID }, mBlock{ nullptr }, mNode{ nullptr, nullptr, this } {}
    Instruction(InstructionID instID, const Type* valueType, std::initializer_list<Value*> initOperands)
        : Instruction{ instID, valueType } {
        for(auto val : initOperands) {
            mOperands.push_back(make<ValueRef>(val, this));
        }
    }
    ~Instruction() override = default;

    [[nodiscard]] InstructionID getInstID() const noexcept {
        return mInstID;
    }
    [[nodiscard]] Block* getBlock() const noexcept final {
        return mBlock;
    }
    [[nodiscard]] auto& mutableOperands() noexcept {
        return mOperands;
    }
    [[nodiscard]] OperandView operands() const noexcept {
        return OperandView{ mOperands };
    }
    [[nodiscard]] ArgumentView arguments() const noexcept {
        return ArgumentView{ mOperands };
    }
    [[nodiscard]] Value* lastOperand() const noexcept {
        return mOperands.back()->value;
    }
    [[nodiscard]] Value* getOperand(uint32_t idx) const noexcept {
        return mOperands[idx]->value;
    }
    ValueRef* addOperand(Value* value);
    ValueRef* addArgument(Value* value);

    void insertBefore(Block* block, IntrusiveListIterator<Instruction> it);
    IntrusiveListIterator<Instruction> asIterator() const;
    IntrusiveListNode<Instruction>* asNode() const;

    void setLabel(String label) {
        mLabel = label;
    }
    [[nodiscard]] const String& getLabel() const noexcept {
        return mLabel;
    }
    [[nodiscard]] ValueRank rank() const noexcept final {
        return ValueRank::Instruction;
    }

    virtual bool verify(std::ostream& out) const;

    void dumpAsOperand(std::ostream& out) const final;

    void dumpWithNoOperand(std::ostream& out) const;
    void dumpBinary(std::ostream& out) const;
    void dumpUnary(std::ostream& out) const;
    virtual void dumpInst(std::ostream& out) const = 0;
    void dump(std::ostream& out, const HighlightSelector& selector) const final;

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

template <>
struct IntrusiveListItemAccessor<Instruction> final {
    static void destroy(IntrusiveListNode<Instruction>* node) {
        std::destroy_at(node->ptr);
    }
};

class BinaryInst final : public Instruction {
public:
    BinaryInst(InstructionID instID, Value* lhs, Value* rhs) : Instruction{ instID, lhs->getType(), { lhs, rhs } } {
        assert(lhs->getType()->isSame(rhs->getType()));
    }
    void dumpInst(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
    bool verify(std::ostream& out) const override;
};

enum class CompareOp {
    ICmpEqual,
    ICmpNotEqual,
    ICmpSignedLessThan,
    ICmpSignedLessEqual,
    ICmpSignedGreaterThan,
    ICmpSignedGreaterEqual,
    ICmpUnsignedLessThan,
    ICmpUnsignedLessEqual,
    ICmpUnsignedGreaterThan,
    ICmpUnsignedGreaterEqual,

    FCmpOrderedEqual,
    FCmpOrderedNotEqual,
    FCmpOrderedLessThan,
    FCmpOrderedLessEqual,
    FCmpOrderedGreaterThan,
    FCmpOrderedGreaterEqual,
    FCmpUnorderedEqual,
    FCmpUnorderedNotEqual,
    FCmpUnorderedLessThan,
    FCmpUnorderedLessEqual,
    FCmpUnorderedGreaterThan,
    FCmpUnorderedGreaterEqual
};

// a < b => b > a
constexpr auto getReversedOp(CompareOp op) {
    switch(op) {
        case CompareOp::ICmpEqual:
            return CompareOp::ICmpEqual;
        case CompareOp::ICmpNotEqual:
            return CompareOp::ICmpNotEqual;
        case CompareOp::ICmpSignedLessThan:
            return CompareOp::ICmpSignedGreaterThan;
        case CompareOp::ICmpSignedLessEqual:
            return CompareOp::ICmpSignedGreaterEqual;
        case CompareOp::ICmpSignedGreaterThan:
            return CompareOp::ICmpSignedLessThan;
        case CompareOp::ICmpSignedGreaterEqual:
            return CompareOp::ICmpSignedLessEqual;
        case CompareOp::ICmpUnsignedLessThan:
            return CompareOp::ICmpUnsignedGreaterThan;
        case CompareOp::ICmpUnsignedLessEqual:
            return CompareOp::ICmpUnsignedGreaterEqual;
        case CompareOp::ICmpUnsignedGreaterThan:
            return CompareOp::ICmpUnsignedLessThan;
        case CompareOp::ICmpUnsignedGreaterEqual:
            return CompareOp::ICmpUnsignedLessEqual;
        case CompareOp::FCmpOrderedEqual:
            return CompareOp::FCmpOrderedEqual;
        case CompareOp::FCmpOrderedNotEqual:
            return CompareOp::FCmpOrderedNotEqual;
        case CompareOp::FCmpOrderedLessThan:
            return CompareOp::FCmpOrderedGreaterThan;
        case CompareOp::FCmpOrderedLessEqual:
            return CompareOp::FCmpOrderedGreaterEqual;
        case CompareOp::FCmpOrderedGreaterThan:
            return CompareOp::FCmpOrderedLessThan;
        case CompareOp::FCmpOrderedGreaterEqual:
            return CompareOp::FCmpOrderedLessEqual;
        case CompareOp::FCmpUnorderedEqual:
            return CompareOp::FCmpUnorderedEqual;
        case CompareOp::FCmpUnorderedNotEqual:
            return CompareOp::FCmpUnorderedNotEqual;
        case CompareOp::FCmpUnorderedLessThan:
            return CompareOp::FCmpUnorderedGreaterThan;
        case CompareOp::FCmpUnorderedLessEqual:
            return CompareOp::FCmpUnorderedGreaterEqual;
        case CompareOp::FCmpUnorderedGreaterThan:
            return CompareOp::FCmpUnorderedLessThan;
        case CompareOp::FCmpUnorderedGreaterEqual:
            return CompareOp::FCmpUnorderedLessEqual;
            break;
    }
    // unreachable
    return static_cast<CompareOp>(-1);
}

constexpr auto getInvertedOp(CompareOp op) {
    switch(op) {
        case CompareOp::ICmpEqual:
            return CompareOp::ICmpNotEqual;
        case CompareOp::ICmpNotEqual:
            return CompareOp::ICmpEqual;
        case CompareOp::ICmpSignedLessThan:
            return CompareOp::ICmpSignedGreaterEqual;
        case CompareOp::ICmpSignedLessEqual:
            return CompareOp::ICmpSignedGreaterThan;
        case CompareOp::ICmpSignedGreaterThan:
            return CompareOp::ICmpSignedLessEqual;
        case CompareOp::ICmpSignedGreaterEqual:
            return CompareOp::ICmpSignedLessThan;
        case CompareOp::ICmpUnsignedLessThan:
            return CompareOp::ICmpUnsignedGreaterEqual;
        case CompareOp::ICmpUnsignedLessEqual:
            return CompareOp::ICmpUnsignedGreaterThan;
        case CompareOp::ICmpUnsignedGreaterThan:
            return CompareOp::ICmpUnsignedLessEqual;
        case CompareOp::ICmpUnsignedGreaterEqual:
            return CompareOp::ICmpUnsignedLessThan;
        case CompareOp::FCmpOrderedEqual:
            return CompareOp::FCmpUnorderedNotEqual;
        case CompareOp::FCmpOrderedNotEqual:
            return CompareOp::FCmpUnorderedEqual;
        case CompareOp::FCmpOrderedLessThan:
            return CompareOp::FCmpUnorderedGreaterEqual;
        case CompareOp::FCmpOrderedLessEqual:
            return CompareOp::FCmpUnorderedGreaterThan;
        case CompareOp::FCmpOrderedGreaterThan:
            return CompareOp::FCmpUnorderedLessEqual;
        case CompareOp::FCmpOrderedGreaterEqual:
            return CompareOp::FCmpUnorderedLessThan;
        case CompareOp::FCmpUnorderedEqual:
            return CompareOp::FCmpOrderedNotEqual;
        case CompareOp::FCmpUnorderedNotEqual:
            return CompareOp::FCmpOrderedEqual;
        case CompareOp::FCmpUnorderedLessThan:
            return CompareOp::FCmpOrderedGreaterEqual;
        case CompareOp::FCmpUnorderedLessEqual:
            return CompareOp::FCmpOrderedGreaterThan;
        case CompareOp::FCmpUnorderedGreaterThan:
            return CompareOp::FCmpOrderedLessEqual;
        case CompareOp::FCmpUnorderedGreaterEqual:
            return CompareOp::FCmpOrderedLessThan;
            break;
    }
    // unreachable
    return static_cast<CompareOp>(-1);
}

class CompareInst final : public Instruction {
    CompareOp mCompare;

public:
    CompareInst(InstructionID instID, CompareOp compare, Value* lhs, Value* rhs)
        : Instruction{ instID, IntegerType::getBoolean(), { lhs, rhs } }, mCompare{ compare } {}
    void dumpInst(std::ostream& out) const override;
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
    UnaryInst(InstructionID instID, Value* val) : Instruction{ instID, val->getType(), { val } } {}
    void dumpInst(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class CastInst final : public Instruction {
public:
    CastInst(InstructionID instID, const Type* valueType, Value* srcValue) : Instruction{ instID, valueType, { srcValue } } {}
    void dumpInst(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
    bool verify(std::ostream& out) const override;
};

class LoadInst final : public Instruction {
public:
    explicit LoadInst(Value* address)
        : Instruction{ InstructionID::Load, address->getType()->as<PointerType>()->getPointee(), { address } } {}
    void dumpInst(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
    bool verify(std::ostream& out) const override;
};

class StoreInst final : public Instruction {
public:
    explicit StoreInst(Value* address, Value* value) : Instruction{ InstructionID::Store, VoidType::get(), { address, value } } {
        assert(address->getType()->as<PointerType>()->getPointee()->isSame(value->getType()));
    }
    void dumpInst(std::ostream& out) const override;
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
    void dumpInst(std::ostream& out) const override;
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
    void dumpInst(std::ostream& out) const override;
    bool verify(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class UnreachableInst final : public Instruction {
public:
    explicit UnreachableInst() : Instruction{ InstructionID::Unreachable, VoidType::get(), {} } {}
    void dumpInst(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class FunctionCallInst final : public Instruction {
public:
    FunctionCallInst(Value* callee, const std::vector<Value*>& args)
        : Instruction{ InstructionID::Call, callee->getType()->as<FunctionType>()->getRetType(), {} } {
        for(auto arg : args)
            addOperand(arg);
        addOperand(callee);
    }
    void dumpInst(std::ostream& out) const override;
    bool verify(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class SelectInst final : public Instruction {
public:
    explicit SelectInst(Value* predicate, Value* lhs, Value* rhs)
        : Instruction{ InstructionID::Select, lhs->getType(), { predicate, lhs, rhs } } {
        assert(lhs->getType()->isSame(rhs->getType()));
    }

    void dumpInst(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class StackAllocInst final : public Instruction {
public:
    // TODO: VLA
    explicit StackAllocInst(const Type* type) : Instruction{ InstructionID::Alloc, PointerType::get(type), {} } {}

    void dumpInst(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class FMAInst final : public Instruction {
public:
    explicit FMAInst(Value* x, Value* y, Value* z) : Instruction{ InstructionID::FFma, x->getType(), { x, y, z } } {}
    void dumpInst(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class GetElementPtrInst final : public Instruction {
public:
    static const Type* getValueType(Value* base, const std::vector<Value*>& indices);
    explicit GetElementPtrInst(Value* base, const std::vector<Value*>& indices)
        : Instruction{ InstructionID::GetElementPtr, PointerType::get(getValueType(base, indices)), {} } {
        for(auto index : indices)
            addOperand(index);
        addOperand(base);
    }
    void dumpInst(std::ostream& out) const override;
    bool verify(std::ostream& out) const override;
    [[nodiscard]] std::pair<intptr_t, std::vector<std::pair<size_t, Value*>>> gatherOffsets(const DataLayout& dataLayout) const;
    [[nodiscard]] Instruction* clone() const override;
};

class PtrCastInst final : public Instruction {
public:
    explicit PtrCastInst(Value* base, const Type* targetType) : Instruction{ InstructionID::PtrCast, targetType, { base } } {
        assert(base->getType()->isPointer());
        assert(targetType->isPointer());
    }
    void dumpInst(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class PtrToIntInst final : public Instruction {
public:
    explicit PtrToIntInst(Value* base, const Type* targetType) : Instruction{ InstructionID::PtrToInt, targetType, { base } } {
        assert(base->getType()->isPointer());
        assert(targetType->isInteger());
    }
    void dumpInst(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class IntToPtrInst final : public Instruction {
public:
    explicit IntToPtrInst(Value* base, const Type* targetType) : Instruction{ InstructionID::IntToPtr, targetType, { base } } {
        assert(base->getType()->isInteger());
        assert(targetType->isPointer());
    }
    void dumpInst(std::ostream& out) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class PhiInst final : public Instruction {
    std::unordered_map<Block*, ValueRef*, std::hash<Block*>, std::equal_to<>,
                       ArenaAllocator<Arena::Source::IR, std::pair<Block* const, ValueRef*>>>
        mIncomings;

public:
    explicit PhiInst(const Type* type) : Instruction{ InstructionID::Phi, type, {} } {}
    void addIncoming(Block* block, Value* value);
    auto& incomings() const noexcept {
        return mIncomings;
    }
    void clear();
    void removeSource(Block* block);
    void replaceSource(Block* oldBlock, Block* newBlock);
    void keepOneIncoming(Block* block);
    void dumpInst(std::ostream& out) const override;
    bool verify(std::ostream& out) const override;
    bool isEqual(const Instruction* rhs) const override;
    [[nodiscard]] Instruction* clone() const override;
};

class HighlightInst final : public HighlightSelector {
    const Instruction* mTarget;

public:
    HighlightInst(Instruction* target) : mTarget{ target } {}
    bool highlight(const Block* block) const noexcept override {
        return block == mTarget->getBlock();
    }
    bool highlight(const Instruction* inst) const noexcept override {
        return inst == mTarget;
    }
};

CMMC_NAMESPACE_END

namespace std {
    template <>
    class iterator_traits<cmmc::UserIterator> {
    public:
        using difference_type = ptrdiff_t;
        using pointer = cmmc::Instruction*;
        using iterator_category = forward_iterator_tag;
    };
}  // namespace std

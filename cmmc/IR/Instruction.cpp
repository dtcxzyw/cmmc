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

#include <algorithm>
#include <cassert>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/IR/Attachments.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstddef>
#include <cstdint>
#include <memory>
#include <ostream>
#include <string>
#include <string_view>

CMMC_NAMESPACE_BEGIN

ValueRef::ValueRef(Value* val, Instruction* userInst) : value{ val }, user{ userInst } {
    assert(val);
    if(auto trackable = dynamic_cast<TrackableValue*>(value)) {
        trackable->users().addRef(*this);
    }
}

void ValueRef::resetValue(Value* newValue) {
    assert(newValue);
    if(newValue == value)
        return;
    if(auto trackable = dynamic_cast<TrackableValue*>(value)) {
        trackable->users().removeRef(*this);
    }
    value = newValue;
    if(auto trackable = dynamic_cast<TrackableValue*>(value)) {
        trackable->users().addRef(*this);
    }
}
ValueRef::~ValueRef() {
    if(auto trackable = dynamic_cast<TrackableValue*>(value)) {
        trackable->users().removeRef(*this);
    }
}

ValueRefHandle::~ValueRefHandle() {
    if(mRef)
        std::destroy_at(mRef);
}

UserList::UserList(Value* self) : mHead{ self, nullptr }, mUseCount{ 0 } {}
void UserList::addRef(ValueRef& ref) {
    if(&ref == &mHead)
        return;
    assert(ref.value == mHead.value);
    ref.prev = &mHead;
    ref.next = mHead.next;
    if(mHead.next) {
        mHead.next->prev = &ref;
    }
    mHead.next = &ref;
    ++mUseCount;
}
void UserList::removeRef(ValueRef& ref) {
    if(&ref == &mHead)
        return;
    assert(ref.value == mHead.value);
    if(ref.prev) {
        ref.prev->next = ref.next;
    }
    if(ref.next) {
        ref.next->prev = ref.prev;
    }
    --mUseCount;
    assert(mUseCount >= 0);
}

[[nodiscard]] UserIterator UserList::begin() const noexcept {
    return UserIterator{ mHead.next };
}
[[nodiscard]] UserIterator UserList::end() const noexcept {
    return UserIterator{ nullptr };
}

static uint32_t disableRefCheck = 0;
DisableValueRefCheckScope::DisableValueRefCheckScope() {
    ++disableRefCheck;
}
DisableValueRefCheckScope::~DisableValueRefCheckScope() {
    --disableRefCheck;
}

UserList::~UserList() {
    if(!disableRefCheck) {
        assert(!mHead.next);
    }
}

OperandView::OperandView(const Deque<ValueRefHandle>& ref) : mRef{ ref } {}
OperandIterator OperandView::begin() const noexcept {
    return OperandIterator{ mRef.cbegin() };
}
OperandIterator OperandView::end() const noexcept {
    return OperandIterator{ mRef.cend() };
}
ArgumentView::ArgumentView(const Deque<ValueRefHandle>& ref) : mRef{ ref } {
    assert(mRef.size() >= 1);
}
OperandIterator ArgumentView::begin() const noexcept {
    return OperandIterator{ mRef.cbegin() };
}
OperandIterator ArgumentView::end() const noexcept {
    return OperandIterator{ std::prev(mRef.cend()) };
}

ValueRef* Instruction::addOperand(Value* value) {
    auto ref = make<ValueRef>(value, this);
    mOperands.push_back(ref);
    return ref;
}
ValueRef* Instruction::addArgument(Value* value) {
    auto ref = make<ValueRef>(value, this);
    mOperands.insert(std::prev(mOperands.end()), ref);
    return ref;
}

void Instruction::dumpAsOperand(std::ostream& out) const {
    dumpPrefix(out);
    getType()->dumpName(out);
    out << " %"sv << mLabel;
}

bool Instruction::canbeOperand() const noexcept {
    if(mInstID == InstructionID::Call) {
        return !getType()->isVoid();
    }
    return !isTerminator() && mInstID != InstructionID::Store;
}

void Instruction::dump(std::ostream& out, const HighlightSelector& selector) const {
    if(selector.highlight(this)) {
        out << "\033[0;31m";
    }
    dumpInst(out);
    if(selector.highlight(this)) {
        out << "\033[0m";
    }
}

bool UserList::replaceWith(Value* value) {
    auto cur = mHead.next;
    if(!cur)
        return false;
    while(cur) {
        const auto next = cur->next;
        cur->resetValue(value);
        cur = next;
    }
    return true;
}

bool UserList::replaceWithInBlock(Block* block, Value* value) {
    auto cur = mHead.next;
    bool modified = false;
    while(cur) {
        const auto next = cur->next;
        if(cur->user->getBlock() == block) {
            cur->resetValue(value);
            modified = true;
        }
        cur = next;
    }
    return modified;
}

bool UserList::replaceWithInBlockList(const std::unordered_set<Block*>& blocks, Value* value) {
    auto cur = mHead.next;
    bool modified = false;
    while(cur) {
        const auto next = cur->next;
        if(blocks.count(cur->user->getBlock())) {
            cur->resetValue(value);
            modified = true;
        }
        cur = next;
    }
    return modified;
}

bool TrackableValue::replaceWith(Value* value) {
    assert(value != this);
    return mUsers.replaceWith(value);
}
bool TrackableValue::replaceWithInBlock(Block* block, Value* value) {
    assert(value != this);
    return mUsers.replaceWithInBlock(block, value);
}
bool TrackableValue::replaceWithInBlockList(const std::unordered_set<Block*>& blocks, Value* value) {
    assert(value != this);
    return mUsers.replaceWithInBlockList(blocks, value);
}

void Instruction::insertBefore(Block* block, IntrusiveListIterator<Instruction> it) {
    if(mBlock) {
        mBlock->instructions().erase(asNode(), false);
    }
    mBlock = block;
    block->instructions().insert(it, asNode());
}
IntrusiveListIterator<Instruction> Instruction::asIterator() const {
    return IntrusiveListIterator<Instruction>{ asNode() };
}
IntrusiveListNode<Instruction>* Instruction::asNode() const {
    return &mNode;
}

bool Instruction::verify(std::ostream& out) const {
    CMMC_UNUSED(out);
    return true;
}

static std::string_view getInstName(InstructionID instID) {
    switch(instID) {
        case InstructionID::Ret:
            return "ret"sv;
        case InstructionID::Branch:
            return "ubr"sv;
        case InstructionID::ConditionalBranch:
            return "cbr"sv;
        case InstructionID::Unreachable:
            return "unreachable"sv;
        case InstructionID::Switch:
            return "switch"sv;
        case InstructionID::Load:
            return "load"sv;
        case InstructionID::Store:
            return "store"sv;
        case InstructionID::Add:
            return "add"sv;
        case InstructionID::Sub:
            return "sub"sv;
        case InstructionID::Mul:
            return "mul"sv;
        case InstructionID::SDiv:
            return "sdiv"sv;
        case InstructionID::UDiv:
            return "udiv"sv;
        case InstructionID::SRem:
            return "srem"sv;
        case InstructionID::URem:
            return "urem"sv;
        case InstructionID::Neg:
            return "neg"sv;
        case InstructionID::Abs:
            return "abs"sv;
        case InstructionID::And:
            return "and"sv;
        case InstructionID::Or:
            return "or"sv;
        case InstructionID::Xor:
            return "xor"sv;
        case InstructionID::Shl:
            return "shl"sv;
        case InstructionID::LShr:
            return "lshr"sv;
        case InstructionID::AShr:
            return "ashr"sv;
        case InstructionID::SMin:
            return "smin"sv;
        case InstructionID::SMax:
            return "smax"sv;
        case InstructionID::FAdd:
            return "fadd"sv;
        case InstructionID::FSub:
            return "fsub"sv;
        case InstructionID::FMul:
            return "fmul"sv;
        case InstructionID::FDiv:
            return "fdiv"sv;
        case InstructionID::FNeg:
            return "fneg"sv;
        case InstructionID::FAbs:
            return "fabs"sv;
        case InstructionID::FFma:
            return "ffma"sv;
        case InstructionID::ICmp:
            return "icmp"sv;
        case InstructionID::FCmp:
            return "fcmp"sv;
        case InstructionID::SExt:
            return "sext"sv;
        case InstructionID::ZExt:
            return "zext"sv;
        case InstructionID::SignedTrunc:
            return "strunc"sv;
        case InstructionID::UnsignedTrunc:
            return "ztrunc"sv;
        case InstructionID::Bitcast:
            return "bitcast"sv;
        case InstructionID::F2U:
            return "f2u"sv;
        case InstructionID::F2S:
            return "f2s"sv;
        case InstructionID::U2F:
            return "u2f"sv;
        case InstructionID::S2F:
            return "s2f"sv;
        case InstructionID::FCast:
            return "fcast"sv;
        case InstructionID::Alloc:
            return "alloc"sv;
        case InstructionID::GetElementPtr:
            return "getelementptr"sv;
        case InstructionID::PtrCast:
            return "ptrcast"sv;
        case InstructionID::PtrToInt:
            return "ptrtoint"sv;
        case InstructionID::IntToPtr:
            return "inttoptr"sv;
        case InstructionID::PtrAdd:
            return "ptradd"sv;
        case InstructionID::Select:
            return "select"sv;
        case InstructionID::Call:
            return "call"sv;
        case InstructionID::Phi:
            return "phi"sv;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

void Instruction::dumpWithoutOperand(std::ostream& out) const {
    if(!getType()->isVoid()) {
        dumpAsOperand(out);
        out << " = "sv;
    }
    out << getInstName(getInstID());
}
void Instruction::dumpBinary(std::ostream& out) const {
    dumpUnary(out);
    out << ", "sv;
    getOperand(1)->dumpAsOperand(out);
}
void Instruction::dumpUnary(std::ostream& out) const {
    dumpWithoutOperand(out);
    out << ' ';
    getOperand(0)->dumpAsOperand(out);
}

void BinaryInst::dumpInst(std::ostream& out) const {
    dumpBinary(out);
}

static std::string_view getCompareName(CompareOp op) {
    switch(op) {
        case CompareOp::ICmpEqual:
            return "eq"sv;
        case CompareOp::ICmpNotEqual:
            return "neq"sv;
        case CompareOp::ICmpSignedLessThan:
            return "slt"sv;
        case CompareOp::ICmpSignedLessEqual:
            return "sle"sv;
        case CompareOp::ICmpSignedGreaterThan:
            return "sgt"sv;
        case CompareOp::ICmpSignedGreaterEqual:
            return "sge"sv;
        case CompareOp::ICmpUnsignedLessThan:
            return "ult"sv;
        case CompareOp::ICmpUnsignedLessEqual:
            return "ule"sv;
        case CompareOp::ICmpUnsignedGreaterThan:
            return "ugt"sv;
        case CompareOp::ICmpUnsignedGreaterEqual:
            return "uge"sv;
        case CompareOp::FCmpOrderedEqual:
            return "oeq"sv;
        case CompareOp::FCmpOrderedNotEqual:
            return "one"sv;
        case CompareOp::FCmpOrderedLessThan:
            return "olt"sv;
        case CompareOp::FCmpOrderedLessEqual:
            return "ole"sv;
        case CompareOp::FCmpOrderedGreaterThan:
            return "ogt"sv;
        case CompareOp::FCmpOrderedGreaterEqual:
            return "oge"sv;
        case CompareOp::FCmpUnorderedEqual:
            return "ueq"sv;
        case CompareOp::FCmpUnorderedNotEqual:
            return "une"sv;
        case CompareOp::FCmpUnorderedLessThan:
            return "ult"sv;
        case CompareOp::FCmpUnorderedLessEqual:
            return "ule"sv;
        case CompareOp::FCmpUnorderedGreaterThan:
            return "ugt"sv;
        case CompareOp::FCmpUnorderedGreaterEqual:
            return "uge"sv;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

void CompareInst::dumpInst(std::ostream& out) const {
    dumpAsOperand(out);
    out << " = "sv << getInstName(getInstID()) << ' ' << getCompareName(mCompare) << ' ';
    getOperand(0)->dumpAsOperand(out);
    out << ", "sv;
    getOperand(1)->dumpAsOperand(out);
}

void UnaryInst::dumpInst(std::ostream& out) const {
    dumpUnary(out);
}

void CastInst::dumpInst(std::ostream& out) const {
    dumpWithoutOperand(out);
    out << ' ';
    getOperand(0)->dumpAsOperand(out);
    out << " to "sv;
    getType()->dumpName(out);
}

void LoadInst::dumpInst(std::ostream& out) const {
    dumpUnary(out);
}

void StoreInst::dumpInst(std::ostream& out) const {
    out << getInstName(getInstID());
    out << ' ';
    getOperand(0)->dumpAsOperand(out);
    out << " with "sv;
    getOperand(1)->dumpAsOperand(out);
}

void BranchInst::dumpInst(std::ostream& out) const {
    out << getInstName(getInstID()) << ' ';
    if(getInstID() == InstructionID::Branch) {
        mTrueTarget->dumpAsTarget(out);
    } else {
        getOperand(0)->dumpAsOperand(out);
        out << "(prob = " << mBranchProb << "), "sv;
        mTrueTarget->dumpAsTarget(out);
        out << ", "sv;
        mFalseTarget->dumpAsTarget(out);
    }
}

bool BranchInst::verify(std::ostream& out) const {
    if(!Instruction::verify(out))
        return false;
    if(mBranchProb < 0.0 || mBranchProb > 1.0) {
        out << "invalid branch prob = " << mBranchProb << std::endl;
        return false;
    }
    auto verifyTarget = [&](const Block* block) {
        if(!block)
            return false;
        if(block == getBlock()->getFunction()->entryBlock()) {
            out << "Cannot branch to entry block"sv << std::endl;
            return false;
        }
        return true;
    };
    if(getInstID() == InstructionID::Branch) {
        return verifyTarget(mTrueTarget) && !mFalseTarget;
    }
    return verifyTarget(mTrueTarget) && verifyTarget(mFalseTarget);
}

BranchInst::BranchInst(Block* targetBlock)
    : Instruction{ InstructionID::Branch, VoidType::get(), {} }, mTrueTarget{ targetBlock }, mFalseTarget{ nullptr }, mBranchProb{
          0.0
      } {}
BranchInst::BranchInst(Value* condition, double branchProb, Block* trueTarget, Block* falseTarget)
    : Instruction{ InstructionID::ConditionalBranch, VoidType::get(), { condition } }, mTrueTarget{ trueTarget },
      mFalseTarget{ falseTarget }, mBranchProb{ branchProb } {}
void BranchInst::updateBranchProb(double branchProb) {
    assert(getInstID() == InstructionID::ConditionalBranch);
    mBranchProb = branchProb;
}

void ReturnInst::dumpInst(std::ostream& out) const {
    out << getInstName(getInstID());
    if(!operands().empty()) {
        out << ' ';
        getOperand(0)->dumpAsOperand(out);
    }
}

void UnreachableInst::dumpInst(std::ostream& out) const {
    out << getInstName(getInstID());
}

void FunctionCallInst::dumpInst(std::ostream& out) const {
    const auto callee = lastOperand();
    dumpWithoutOperand(out);
    out << ' ';
    callee->dumpAsOperand(out);
    out << '(';
    size_t cnt = 0;
    for(auto arg : arguments()) {
        if(cnt != 0) {
            out << ", "sv;
        }
        ++cnt;
        arg->dumpAsOperand(out);
    }
    out << ')';
}

bool FunctionCallInst::verify(std::ostream&) const {
    const auto type = lastOperand()->getType()->as<FunctionType>();
    if(!type->getRetType()->isSame(getType()))
        return false;
    uint32_t idx = 0;
    for(auto arg : arguments()) {
        if(!arg->getType()->isSame(type->getArgTypes()[idx++]))
            return false;
    }
    return idx == type->getArgTypes().size();
}

void SelectInst::dumpInst(std::ostream& out) const {
    dumpWithoutOperand(out);
    out << ' ';
    getOperand(0)->dumpAsOperand(out);
    out << " ? "sv;
    getOperand(1)->dumpAsOperand(out);
    out << " : "sv;
    getOperand(2)->dumpAsOperand(out);
}

void StackAllocInst::dumpInst(std::ostream& out) const {
    dumpWithoutOperand(out);
    out << ' ';
    getType()->as<PointerType>()->getPointee()->dumpName(out);
    out << ", align " << mAlignment;
}

void FMAInst::dumpInst(std::ostream& out) const {
    dumpBinary(out);
    out << ", "sv;
    getOperand(2)->dumpAsOperand(out);
}

const Type* GetElementPtrInst::getValueType(Value* base, const std::vector<Value*>& indices) {
    assert(base->getType()->isPointer());
    const Type* cur = base->getType();
    for(auto idx : indices) {
        if(idx->getType()->isInteger()) {
            if(cur->isArray()) {
                cur = cur->as<ArrayType>()->getElementType();
            } else if(cur->isPointer()) {
                cur = cur->as<PointerType>()->getPointee();
            } else {
                DiagnosticsContext::get()
                    .attach<Reason>("GEP fatal")
                    .attach<TypeAttachment>("cur type", cur)
                    .attach<ValueAttachment>("index", idx)
                    .reportFatal();
            }
        } else if(auto offset = idx->as<ConstantOffset>(); offset) {
            cur = cur->as<StructType>()->getFieldType(offset);
        } else
            reportUnreachable(CMMC_LOCATION());
    }
    return cur;
}

std::pair<intptr_t, std::vector<std::pair<size_t, Value*>>> GetElementPtrInst::gatherOffsets(const DataLayout& dataLayout) const {
    intptr_t constantOffset = 0;
    std::vector<std::pair<size_t, Value*>> offsets;
    const auto addOffset = [&](intptr_t offset, Value* index) {
        if(index->isConstant()) {
            constantOffset += offset * static_cast<intptr_t>(index->as<ConstantInteger>()->getSignExtended());
        } else {
            offsets.emplace_back(offset, index);
        }
    };

    const Type* cur = lastOperand()->getType();
    for(auto idx : arguments()) {
        if(idx->getType()->isInteger()) {
            if(cur->isArray()) {
                cur = cur->as<ArrayType>()->getElementType();
            } else if(cur->isPointer()) {
                cur = cur->as<PointerType>()->getPointee();
            } else {
                DiagnosticsContext::get()
                    .attach<Reason>("GEP fatal")
                    .attach<TypeAttachment>("cur type", cur)
                    .attach<ValueAttachment>("index", idx)
                    .reportFatal();
            }

            addOffset(static_cast<int64_t>(cur->getSize(dataLayout)), idx);
        } else if(auto offset = idx->as<ConstantOffset>(); offset) {
            const auto structType = cur->as<StructType>();
            constantOffset += static_cast<intptr_t>(structType->getFieldOffset(offset, dataLayout));
            cur = structType->getFieldType(offset);
        } else
            reportUnreachable(CMMC_LOCATION());
    }
    return { constantOffset, std::move(offsets) };
}

void GetElementPtrInst::dumpInst(std::ostream& out) const {
    dumpWithoutOperand(out);
    const auto base = lastOperand();
    out << " &("sv;
    base->dumpAsOperand(out);
    out << ')';
    for(auto idx : operands()) {
        if(idx == base)
            break;
        if(idx->getType()->isInteger()) {
            out << '[';
            idx->dumpAsOperand(out);
            out << ']';
        } else if(auto offset = idx->as<ConstantOffset>()) {
            out << '.' << offset->getName();
        } else
            reportUnreachable(CMMC_LOCATION());
    }
}

bool GetElementPtrInst::verify(std::ostream& out) const {
    std::vector<Value*> indices;
    for(auto idx : arguments()) {
        indices.push_back(idx);
    }
    auto type = PointerType::get(getValueType(lastOperand(), indices));
    CMMC_UNUSED(out);
    return type->isSame(getType());
}

void PtrCastInst::dumpInst(std::ostream& out) const {
    dumpUnary(out);
    out << " to "sv;
    getType()->dump(out);
}

Instruction* BinaryInst::clone() const {
    return make<BinaryInst>(getInstID(), getOperand(0), getOperand(1));
}

Instruction* CompareInst::clone() const {
    return make<CompareInst>(getInstID(), getOp(), getOperand(0), getOperand(1));
}

Instruction* UnaryInst::clone() const {
    return make<UnaryInst>(getInstID(), getOperand(0));
}

Instruction* CastInst::clone() const {
    return make<CastInst>(getInstID(), getType(), getOperand(0));
}

Instruction* LoadInst::clone() const {
    return make<LoadInst>(getOperand(0));
}

Instruction* StoreInst::clone() const {
    return make<StoreInst>(getOperand(0), getOperand(1));
}

Instruction* BranchInst::clone() const {
    if(getInstID() == InstructionID::Branch)
        return make<BranchInst>(getTrueTarget());
    return make<BranchInst>(getOperand(0), mBranchProb, getTrueTarget(), getFalseTarget());
}

Instruction* ReturnInst::clone() const {
    if(operands().empty())
        return make<ReturnInst>();
    return make<ReturnInst>(getOperand(0));
}

Instruction* UnreachableInst::clone() const {
    return make<UnreachableInst>();
}

Instruction* FunctionCallInst::clone() const {
    std::vector<Value*> args;
    auto arguments = this->arguments();
    args.reserve(arguments.size());
    for(auto arg : arguments) {
        args.push_back(arg);
    }
    return make<FunctionCallInst>(lastOperand(), args);
}

Instruction* SelectInst::clone() const {
    return make<SelectInst>(getOperand(0), getOperand(1), getOperand(2));
}

Instruction* StackAllocInst::clone() const {
    return make<StackAllocInst>(getType()->as<PointerType>()->getPointee(), mAlignment);
}

Instruction* FMAInst::clone() const {
    return make<FMAInst>(getOperand(0), getOperand(1), getOperand(2));
}

Instruction* GetElementPtrInst::clone() const {
    std::vector<Value*> indices;
    for(auto idx : arguments()) {
        indices.push_back(idx);
    }
    return make<GetElementPtrInst>(lastOperand(), indices);
}

Instruction* PtrCastInst::clone() const {
    return make<PtrCastInst>(getOperand(0), getType());
}

void PtrToIntInst::dumpInst(std::ostream& out) const {
    dumpUnary(out);
    out << " to "sv;
    getType()->dump(out);
}
Instruction* PtrToIntInst::clone() const {
    return make<PtrToIntInst>(getOperand(0), getType());
}

void IntToPtrInst::dumpInst(std::ostream& out) const {
    // TODO: dump cast
    dumpUnary(out);
    out << " to "sv;
    getType()->dump(out);
}
Instruction* IntToPtrInst::clone() const {
    return make<IntToPtrInst>(getOperand(0), getType());
}

bool ReturnInst::verify(std::ostream& out) const {
    if(!Instruction::verify(out))
        return false;
    const auto func = getBlock()->getFunction();
    const auto ret = func->getType()->as<FunctionType>()->getRetType();
    if(ret->isVoid()) {
        if(operands().empty())
            return true;
        out << "should return void"sv << std::endl;
        return false;
    }
    if(operands().size() == 1 && getOperand(0)->getType()->isSame(ret)) {
        return true;
    }
    out << "return type mismatch"sv << std::endl;
    return false;
}

bool Instruction::isEqual(const Instruction* rhs) const {
    if(getInstID() != rhs->getInstID())
        return false;
    if(!getType()->isSame(rhs->getType()))
        return false;
    return true;
}

bool CompareInst::isEqual(const Instruction* rhs) const {
    if(!Instruction::isEqual(rhs))
        return false;
    const auto rhsCompare = rhs->as<CompareInst>();
    return mCompare == rhsCompare->mCompare;
}

bool BranchInst::isEqual(const Instruction* rhs) const {
    if(!Instruction::isEqual(rhs))
        return false;
    const auto rhsBranch = rhs->as<BranchInst>();
    return mTrueTarget == rhsBranch->mTrueTarget && mFalseTarget == rhsBranch->mFalseTarget;
}

bool LoadInst::verify(std::ostream& out) const {
    if(!getType()->isPrimitive()) {
        out << "Cannot load non-primitive values"sv;
        return false;
    }
    return true;
}
bool StoreInst::verify(std::ostream& out) const {
    if(!getOperand(0)->getType()->isPointer()) {
        out << "The destination must be a pointer"sv << std::endl;
        return false;
    }
    if(!getOperand(0)->getType()->as<PointerType>()->getPointee()->isSame(getOperand(1)->getType())) {
        out << "Type mismatch [Destination = "sv;
        getOperand(0)->getType()->dump(out);
        out << ", Value = "sv;
        getOperand(1)->getType()->dump(out);
        out << ']' << std::endl;
        return false;
    }
    if(!getOperand(1)->getType()->isPrimitive()) {
        out << "Cannot store non-primitive values"sv;
        return false;
    }
    return true;
}
static bool checkBinaryOpType(const Instruction* op, std::ostream& out) {
    const auto lhs = op->getOperand(0);
    const auto rhs = op->getOperand(1);

    if(!lhs->getType()->isSame(rhs->getType())) {
        out << "Type mismatch [Lhs = "sv;
        lhs->getType()->dump(out);
        out << ", Rhs = "sv;
        rhs->getType()->dump(out);
        out << ']' << std::endl;
        return false;
    }
    return true;
}
bool BinaryInst::verify(std::ostream& out) const {
    return checkBinaryOpType(this, out);
}
bool CompareInst::verify(std::ostream& out) const {
    return checkBinaryOpType(this, out);
}
void PhiInst::addIncoming(Block* block, Value* value) {
    assert(getType()->isSame(value->getType()));
    assert(!mIncomings.count(block));
    mIncomings.emplace(block, addOperand(value));
}
void PhiInst::dumpInst(std::ostream& out) const {
    dumpWithoutOperand(out);
    std::vector<std::pair<Block*, ValueRef*>> incomings{ mIncomings.cbegin(), mIncomings.cend() };
    std::sort(incomings.begin(), incomings.end(),
              [](auto lhs, auto rhs) { return lhs.first->getIndex() < rhs.first->getIndex(); });
    for(auto [block, val] : incomings) {
        out << " ["sv;
        block->dumpAsTarget(out);
        out << ", "sv;
        val->value->dumpAsOperand(out);
        out << ']';
    }
}
bool PhiInst::verify(std::ostream& out) const {
    if(!Instruction::verify(out))
        return false;
    std::vector<Value*> values1;
    values1.reserve(mIncomings.size());
    for(auto [block, val] : mIncomings) {
        CMMC_UNUSED(block);
        values1.push_back(val->value);
        if(!val->value->getType()->isSame(getType())) {
            out << "Type mismatch\n";
            return false;
        }
    }
    std::vector<Value*> values2;
    values2.reserve(mIncomings.size());
    for(auto operand : operands())
        values2.push_back(operand);
    std::sort(values1.begin(), values1.end());
    std::sort(values2.begin(), values2.end());
    if(values1 != values2) {
        out << "Values mismatch\n";
        return false;
    }
    // TODO: verify predecessors
    return true;
}
Instruction* PhiInst::clone() const {
    const auto inst = make<PhiInst>(getType());
    for(auto [block, val] : mIncomings) {
        inst->addIncoming(block, val->value);
    }
    return inst;
}
bool PhiInst::isEqual(const Instruction* rhs) const {
    if(!Instruction::isEqual(rhs))
        return false;
    auto rhsPhi = rhs->as<PhiInst>();
    for(auto [block, val] : mIncomings) {
        if(auto iter = rhsPhi->mIncomings.find(block); iter != rhsPhi->mIncomings.end()) {
            if(iter->second->value != val->value)
                return false;
        } else
            return false;
    }
    return true;
}
void PhiInst::replaceSource(cmmc::Block* oldBlock, cmmc::Block* newBlock) {
    assert(oldBlock != newBlock);
    const auto iter = mIncomings.find(oldBlock);
    assert(iter != mIncomings.cend());
    mIncomings.emplace(newBlock, iter->second);
    mIncomings.erase(iter);
}
void PhiInst::removeSource(Block* block) {
    const auto iter = mIncomings.find(block);
    assert(iter != mIncomings.cend());
    const auto val = iter->second;
    mIncomings.erase(iter);
    auto& operands = mutableOperands();
    const auto it = std::find_if(operands.begin(), operands.end(), [&](const ValueRefHandle& ref) { return ref.get() == val; });
    assert(it != operands.end());
    operands.erase(it);
}
void PhiInst::keepOneIncoming(Block* block) {
    const auto val = mIncomings.at(block);
    mIncomings = { { block, val } };
    auto& operands = mutableOperands();
    for(auto& ref : operands)
        if(ref.get() == val)
            ref.release();
    operands.clear();
    operands.push_back(ValueRefHandle{ val });
}
void PhiInst::clear() {
    mutableOperands().clear();
    mIncomings.clear();
}

bool CastInst::verify(std::ostream& out) const {
    CMMC_UNUSED(out);

    auto src = getOperand(0);
    switch(getInstID()) {
        case InstructionID::SignedTrunc:
        case InstructionID::UnsignedTrunc: {
            return src->getType()->getFixedSize() >= getType()->getFixedSize();
        }
        case InstructionID::SExt:
        case InstructionID::ZExt: {
            if(src->getType()->isBoolean() && !getType()->isBoolean())
                return true;
            return src->getType()->getFixedSize() < getType()->getFixedSize();
        }
        default:
            return true;
    }
}

void PtrAddInst::dumpInst(std::ostream& out) const {
    dumpBinary(out);
}
[[nodiscard]] Instruction* PtrAddInst::clone() const {
    return make<PtrAddInst>(getOperand(0), getOperand(1), getType());
}

void SwitchInst::addEdge(intmax_t key, Block* label) {
    assert(!mEdges.count(key));
    mEdges.emplace(key, label);
}
void SwitchInst::dumpInst(std::ostream& out) const {
    dumpWithoutOperand(out);
    for(auto [k, v] : mEdges) {
        out << " [ "sv << k << ", "sv;
        v->dumpAsTarget(out);
        out << "]\n";
    }
    out << " default "sv;
    mDefaultBlock->dumpAsTarget(out);
}
[[nodiscard]] Instruction* SwitchInst::clone() const {
    auto inst = make<SwitchInst>(getOperand(0), mDefaultBlock);
    inst->edges() = mEdges;
    return inst;
}
std::unordered_set<Block*> SwitchInst::getUniqueSuccessors() const {
    std::unordered_set<Block*> blocks;
    for(auto [k, v] : mEdges) {
        blocks.insert(v);
    }
    blocks.insert(mDefaultBlock);
    return blocks;
}

CMMC_NAMESPACE_END
cmmc::TrackableValue::TrackableValue(const Type* type) : Value{ type }, mUsers{ this } {}

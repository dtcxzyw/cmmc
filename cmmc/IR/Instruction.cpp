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
    if(auto inst = dynamic_cast<Instruction*>(value)) {
        inst->users().addRef(*this);
    }
}

void ValueRef::resetValue(Value* newValue) {
    if(newValue == value)
        return;
    if(auto inst = dynamic_cast<Instruction*>(value)) {
        inst->users().removeRef(*this);
    }
    value = newValue;
    if(auto inst = dynamic_cast<Instruction*>(value)) {
        inst->users().addRef(*this);
    }
}
ValueRef::~ValueRef() {
    resetValue(nullptr);
}

ValueRefHandle::~ValueRefHandle() {
    if(mRef)
        std::destroy_at(mRef);
}

UserList::UserList(Value* self) : mHead{ self, nullptr }, mUseCount{ 0 } {}
void UserList::addRef(ValueRef& ref) {
    ref.prev = &mHead;
    ref.next = mHead.next;
    if(mHead.next) {
        mHead.next->prev = &ref;
    }
    mHead.next = &ref;
    ++mUseCount;
}
void UserList::removeRef(ValueRef& ref) {
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

UserList::~UserList() {
    assert(!mHead.next);
}

OperandView::OperandView(const Deque<ValueRefHandle>& ref) : mRef{ ref } {}
OperandIterator OperandView::begin() const noexcept {
    return OperandIterator{ mRef.cbegin() };
}
OperandIterator OperandView::end() const noexcept {
    return OperandIterator{ std::prev(mRef.cend()) };
}
ArgumentView::ArgumentView(const Deque<ValueRefHandle>& ref) : mRef{ ref } {}
OperandIterator ArgumentView::begin() const noexcept {
    return OperandIterator{ mRef.cbegin() };
}
OperandIterator ArgumentView::end() const noexcept {
    return OperandIterator{ std::prev(mRef.cend()) };
}

void Instruction::addOperand(Value* value) {
    mOperands.push_back(make<ValueRef>(value, this));
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

void UserList::replaceWith(Value* value) {
    auto cur = mHead.next;
    while(cur) {
        const auto next = cur->next;
        cur->resetValue(value);
        cur = next;
    }
}

void Instruction::replaceWith(Value* value) {
    mUsers.replaceWith(value);
}

void Instruction::insertBefore(Block* block, IntrusiveListIterator<Instruction> it) {
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
        case InstructionID::FFma:
            return "ffma"sv;
        case InstructionID::SCmp:
            return "scmp"sv;
        case InstructionID::UCmp:
            return "ucmp"sv;
        case InstructionID::FCmp:
            return "fcmp"sv;
        case InstructionID::SExt:
            return "sext"sv;
        case InstructionID::ZExt:
            return "zext"sv;
        case InstructionID::Trunc:
            return "trunc"sv;
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

void Instruction::dumpWithNoOperand(std::ostream& out) const {
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
    dumpWithNoOperand(out);
    out << ' ';
    getOperand(0)->dumpAsOperand(out);
}

void BinaryInst::dumpInst(std::ostream& out) const {
    dumpBinary(out);
}

static std::string_view getCompareName(CompareOp op) {
    switch(op) {
        case CompareOp::LessThan:
            return "lt"sv;
        case CompareOp::LessEqual:
            return "le"sv;
        case CompareOp::GreaterThan:
            return "gt"sv;
        case CompareOp::GreaterEqual:
            return "ge"sv;
        case CompareOp::Equal:
            return "eq"sv;
        case CompareOp::NotEqual:
            return "neq"sv;
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
    dumpWithNoOperand(out);
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
        const auto prec = out.precision(2);
        out << "(prob = " << mBranchProb << "), "sv;
        out.precision(prec);
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
    const auto callee = operands().back();
    dumpWithNoOperand(out);
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

void SelectInst::dumpInst(std::ostream& out) const {
    dumpWithNoOperand(out);
    out << ' ';
    getOperand(0)->dumpAsOperand(out);
    out << " ? "sv;
    getOperand(1)->dumpAsOperand(out);
    out << " : "sv;
    getOperand(2)->dumpAsOperand(out);
}

void StackAllocInst::dumpInst(std::ostream& out) const {
    dumpWithNoOperand(out);
    out << ' ';
    getType()->as<PointerType>()->getPointee()->dumpName(out);
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

    const Type* cur = operands().back()->getType();
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
    dumpWithNoOperand(out);
    const auto base = operands().back();
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
    return make<UnaryInst>(getInstID(), getType(), getOperand(0));
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
    args.reserve(operands().size() - 1);
    for(auto arg : arguments()) {
        args.push_back(arg);
    }
    return make<FunctionCallInst>(operands().back(), args);
}

Instruction* SelectInst::clone() const {
    return make<SelectInst>(getOperand(0), getOperand(1), getOperand(2));
}

Instruction* StackAllocInst::clone() const {
    return make<StackAllocInst>(getType()->as<PointerType>()->getPointee());
}

Instruction* FMAInst::clone() const {
    return make<FMAInst>(getOperand(0), getOperand(1), getOperand(2));
}

Instruction* GetElementPtrInst::clone() const {
    std::vector<Value*> indices;
    for(uint32_t idx = 0; idx + 1 < operands().size(); ++idx) {
        indices.push_back(getOperand(idx));
    }
    return make<GetElementPtrInst>(operands().back(), indices);
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
void PhiInst::dumpInst(std::ostream& out) const {
    dumpWithNoOperand(out);
    std::vector<std::pair<Block*, Value*>> incomings{ mIncomings.cbegin(), mIncomings.cend() };
    std::sort(incomings.begin(), incomings.end(),
              [](auto lhs, auto rhs) { return lhs.first->getIndex() < rhs.first->getIndex(); });
    for(auto [block, val] : incomings) {
        out << " ["sv;
        block->dumpAsTarget(out);
        out << ", "sv;
        val->dumpAsOperand(out);
        out << ']';
    }
}
bool PhiInst::verify(std::ostream& out) const {
    if(!Instruction::verify(out))
        return false;
    for(auto [block, val] : mIncomings) {
        CMMC_UNUSED(block);
        if(!val->getType()->isSame(getType())) {
            out << "Type mismatch\n";
            return false;
        }
    }
    // TODO: verify predecessors
    return true;
}
Instruction* PhiInst::clone() const {
    const auto inst = make<PhiInst>(getType());
    for(auto val : operands())
        inst->addOperand(val);
    inst->mIncomings = mIncomings;
    return inst;
}
bool PhiInst::isEqual(const Instruction* rhs) const {
    if(!Instruction::isEqual(rhs))
        return false;
    return mIncomings == rhs->as<PhiInst>()->mIncomings;
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
    // TODO: lazy update
    auto& operands = mutableOperands();
    const auto it = std::find_if(operands.begin(), operands.end(), [&](const ValueRefHandle& ref) { return ref->value == val; });
    assert(it != operands.end());
    operands.erase(it);
}
void PhiInst::keepOneIncoming(Block* block) {
    const auto val = mIncomings.at(block);
    mIncomings = { { block, val } };
    mutableOperands().clear();
    mutableOperands().push_back(ValueRefHandle{ make<ValueRef>(val, this) });
}
void PhiInst::clear() {
    mutableOperands().clear();
    mIncomings.clear();
}
CMMC_NAMESPACE_END

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

#include <algorithm>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <ostream>

CMMC_NAMESPACE_BEGIN

void Instruction::dumpAsOperand(std::ostream& out) const {
    dumpPrefix(out);
    getType()->dumpName(out);
    out << " %" << mLabel;
}

bool Instruction::replaceOperand(Value* oldOperand, Value* newOperand) {
    bool modified = false;
    for(auto& operand : mOperands)
        if(operand == oldOperand) {
            operand = newOperand;
            modified = true;
        }
    return modified;
}
bool Instruction::hasOperand(Value* operand) const noexcept {
    return std::find(mOperands.cbegin(), mOperands.cend(), operand) != mOperands.cend();
}

bool Instruction::canbeOperand() const noexcept {
    if(mInstID == InstructionID::Call) {
        return !getType()->isVoid();
    }
    return !isTerminator() && mInstID != InstructionID::Store;
}

bool Instruction::verify(std::ostream& out) const {
    // TODO: cross block reference

    return true;
}

static const char* getInstName(InstructionID instID) {
    switch(instID) {
        case InstructionID::Ret:
            return "ret";
        case InstructionID::Branch:
            return "ubr";
        case InstructionID::ConditionalBranch:
            return "cbr";
        case InstructionID::Unreachable:
            return "unreachable";
        case InstructionID::Load:
            return "load";
        case InstructionID::Store:
            return "store";
        case InstructionID::Add:
            return "add";
        case InstructionID::Sub:
            return "sub";
        case InstructionID::Mul:
            return "mul";
        case InstructionID::SDiv:
            return "sdiv";
        case InstructionID::UDiv:
            return "udiv";
        case InstructionID::SRem:
            return "srem";
        case InstructionID::URem:
            return "urem";
        case InstructionID::Neg:
            return "neg";
        case InstructionID::And:
            return "and";
        case InstructionID::Or:
            return "or";
        case InstructionID::Not:
            return "not";
        case InstructionID::Xor:
            return "xor";
        case InstructionID::Shl:
            return "shl";
        case InstructionID::LShr:
            return "lshr";
        case InstructionID::AShr:
            return "ashr";
        case InstructionID::FAdd:
            return "fadd";
        case InstructionID::FSub:
            return "fsub";
        case InstructionID::FMul:
            return "fmul";
        case InstructionID::FDiv:
            return "fdiv";
        case InstructionID::FNeg:
            return "fneg";
        case InstructionID::FFma:
            return "ffma";
        case InstructionID::SCmp:
            return "scmp";
        case InstructionID::UCmp:
            return "ucmp";
        case InstructionID::FCmp:
            return "fcmp";
        case InstructionID::SExt:
            return "sext";
        case InstructionID::ZExt:
            return "zext";
        case InstructionID::Trunc:
            return "trunc";
        case InstructionID::Bitcast:
            return "bitcast";
        case InstructionID::F2U:
            return "f2u";
        case InstructionID::F2S:
            return "f2s";
        case InstructionID::U2F:
            return "u2f";
        case InstructionID::S2F:
            return "s2f";
        case InstructionID::Alloc:
            return "alloc";
        case InstructionID::Select:
            return "select";
        case InstructionID::Call:
            return "call";
        default:
            reportUnreachable();
    }
}

void Instruction::dumpWithNoOperand(std::ostream& out) const {
    if(!getType()->isVoid()) {
        dumpAsOperand(out);
        out << " = ";
    }
    out << getInstName(getInstID());
}
void Instruction::dumpBinary(std::ostream& out) const {
    dumpUnary(out);
    out << ", ";
    getOperand(1)->dumpAsOperand(out);
}
void Instruction::dumpUnary(std::ostream& out) const {
    dumpWithNoOperand(out);
    out << ' ';
    getOperand(0)->dumpAsOperand(out);
}

void BinaryInst::dump(std::ostream& out) const {
    dumpBinary(out);
}

static const char* getCompareName(CompareOp op) {
    switch(op) {
        case CompareOp::LessThan:
            return "lt";
        case CompareOp::LessEqual:
            return "le";
        case CompareOp::GreaterThan:
            return "gt";
        case CompareOp::GreaterEqual:
            return "ge";
        case CompareOp::Equal:
            return "eq";
        case CompareOp::NotEqual:
            return "neq";
        default:
            reportUnreachable();
    }
}

void CompareInst::dump(std::ostream& out) const {
    dumpAsOperand(out);
    out << " = " << getInstName(getInstID()) << ' ' << getCompareName(mCompare) << ' ';
    getOperand(0)->dumpAsOperand(out);
    out << ", ";
    getOperand(1)->dumpAsOperand(out);
}

void UnaryInst::dump(std::ostream& out) const {
    dumpUnary(out);
}

void CastInst::dump(std::ostream& out) const {
    dumpWithNoOperand(out);
    out << ' ';
    getOperand(0)->dumpAsOperand(out);
    out << " to ";
    getType()->dumpName(out);
}

void LoadInst::dump(std::ostream& out) const {
    dumpUnary(out);
}

void StoreInst::dump(std::ostream& out) const {
    out << getInstName(getInstID());
    out << ' ';
    getOperand(0)->dumpAsOperand(out);
    out << " with ";
    getOperand(1)->dumpAsOperand(out);
}

void BranchTarget::dump(std::ostream& out) const {
    mTarget->dumpAsTarget(out);
    if(!mArgs.empty()) {
        out << ' ';
        bool isFirst = true;
        for(auto arg : mArgs) {
            if(!isFirst)
                out << ", ";
            else
                isFirst = false;
            arg->dumpAsOperand(out);
        }
    }
}

void ConditionalBranchInst::dump(std::ostream& out) const {
    out << getInstName(getInstID()) << ' ';
    if(getInstID() == InstructionID::Branch) {
        out << "[ ";
        mTrueTarget.dump(out);
        out << " ]";
    } else {
        getOperand(0)->dumpAsOperand(out);
        out << ", [ ";
        mTrueTarget.dump(out);
        out << " ], [ ";
        mFalseTarget.dump(out);
        out << " ]";
    }
}

static void replaceRoot(Block* block, Value* oldOperand, Value* newOperand) {
    if(!block)
        return;
    bool modified = false;
    for(auto arg : block->args()) {
        if(arg->getTarget() == oldOperand) {
            arg->setTarget(newOperand);
            modified = true;
        }
    }
    if(!modified)
        return;
    const auto terminator = block->getTerminator();
    if(terminator->isBranch()) {
        const auto branch = dynamic_cast<ConditionalBranchInst*>(terminator);
        replaceRoot(branch->getTrueTarget().getTarget(), oldOperand, newOperand);
        replaceRoot(branch->getFalseTarget().getTarget(), oldOperand, newOperand);
    }
}

void BranchTarget::replaceOperand(Value* oldOperand, Value* newOperand) {
    bool modified = false;
    for(auto& operand : mArgs)
        if(operand == oldOperand) {
            operand = newOperand;
            modified = true;
        }
    if(modified)
        replaceRoot(mTarget, oldOperand, newOperand);
}

ConditionalBranchInst::ConditionalBranchInst(BranchTarget target)
    : Instruction{ InstructionID::Branch, VoidType::get(), {} }, mTrueTarget{ std::move(target) }, mFalseTarget{ nullptr } {
    operands().insert(operands().cend(), mTrueTarget.getArgs().cbegin(), mTrueTarget.getArgs().cend());
}
ConditionalBranchInst::ConditionalBranchInst(Value* condition, BranchTarget trueTarget, BranchTarget falseTarget)
    : Instruction{ InstructionID::ConditionalBranch, VoidType::get(), { condition } }, mTrueTarget{ std::move(trueTarget) },
      mFalseTarget{ std::move(falseTarget) } {
    operands().insert(operands().cend(), mTrueTarget.getArgs().cbegin(), mTrueTarget.getArgs().cend());
    operands().insert(operands().cend(), mFalseTarget.getArgs().cbegin(), mFalseTarget.getArgs().cend());
}

bool ConditionalBranchInst::replaceOperand(Value* oldOperand, Value* newOperand) {
    bool ret = Instruction::replaceOperand(oldOperand, newOperand);
    mTrueTarget.replaceOperand(oldOperand, newOperand);
    mFalseTarget.replaceOperand(oldOperand, newOperand);
    return ret;
}

void ConditionalBranchInst::updateTargetArgs(BranchTarget& target, Vector<Value*> args) {
    target.getArgsRef() = std::move(args);
    if(getInstID() == InstructionID::Branch)
        operands().clear();
    else
        operands().resize(1);
    operands().insert(operands().cend(), mTrueTarget.getArgs().cbegin(), mTrueTarget.getArgs().cend());
    if(getInstID() != InstructionID::Branch)
        operands().insert(operands().cend(), mFalseTarget.getArgs().cbegin(), mFalseTarget.getArgs().cend());
}

void ReturnInst::dump(std::ostream& out) const {
    out << getInstName(getInstID());
    if(!operands().empty()) {
        out << ' ';
        getOperand(0)->dumpAsOperand(out);
    }
}

void UnreachableInst::dump(std::ostream& out) const {
    out << getInstName(getInstID());
}

void FunctionCallInst::dump(std::ostream& out) const {
    const auto callee = operands().back();
    dumpWithNoOperand(out);
    out << ' ';
    callee->dumpAsOperand(out);
    out << '(';
    auto& args = operands();
    size_t cnt = 0, size = args.size() - 1;
    for(auto arg : operands()) {
        if(cnt == size)
            break;
        if(cnt != 0) {
            out << ", ";
        }
        ++cnt;
        arg->dumpAsOperand(out);
    }
    out << ')';
}

void SelectInst::dump(std::ostream& out) const {
    dumpWithNoOperand(out);
    out << ' ';
    getOperand(0)->dumpAsOperand(out);
    out << " ? ";
    getOperand(1)->dumpAsOperand(out);
    out << " : ";
    getOperand(2)->dumpAsOperand(out);
}

void StackAllocInst::dump(std::ostream& out) const {
    dumpWithNoOperand(out);
    out << ' ';
    getType()->as<PointerType>()->getPointee()->dumpName(out);
}

void FMAInst::dump(std::ostream& out) const {
    dumpBinary(out);
    out << ", ";
    getOperand(2)->dumpAsOperand(out);
}

CMMC_NAMESPACE_END

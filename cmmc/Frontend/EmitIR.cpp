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

#include "cmmc/Frontend/EmitIR.hpp"
#include "cmmc/Frontend/AST.hpp"
#include "cmmc/IR/ConstantValue.hpp"
#include "cmmc/IR/Instruction.hpp"
#include "cmmc/IR/Type.hpp"
#include "cmmc/Support/Diagnostics.hpp"

CMMC_NAMESPACE_BEGIN

void FunctionDefinition::emit(EmitContext& ctx) const {
    reportNotImplemented();
}

static InstructionID getBinaryOp(OperatorID op, bool isFloatingPoint) {
    if(isFloatingPoint) {
        switch(op) {
            case OperatorID::Add:
                return InstructionID::FAdd;
            case OperatorID::Sub:
                return InstructionID::FSub;
            case OperatorID::Mul:
                return InstructionID::FMul;
            case OperatorID::Div:
                return InstructionID::FDiv;

            case OperatorID::LessThan:
                [[fallthrough]];
            case OperatorID::LessEqual:
                [[fallthrough]];
            case OperatorID::GreaterThan:
                [[fallthrough]];
            case OperatorID::GreaterEqual:
                [[fallthrough]];
            case OperatorID::Equal:
                [[fallthrough]];
            case OperatorID::NotEqual:
                return InstructionID::FCmp;

            default:
                reportUnreachable();
        }
    } else {
        switch(op) {
            case OperatorID::Add:
                return InstructionID::Add;
            case OperatorID::Sub:
                return InstructionID::Sub;
            case OperatorID::Mul:
                return InstructionID::Mul;

                // TODO: unsigned
            case OperatorID::Div:
                return InstructionID::SDiv;
            case OperatorID::Rem:
                return InstructionID::SRem;

            case OperatorID::LessThan:
                [[fallthrough]];
            case OperatorID::LessEqual:
                [[fallthrough]];
            case OperatorID::GreaterThan:
                [[fallthrough]];
            case OperatorID::GreaterEqual:
                [[fallthrough]];
            case OperatorID::Equal:
                [[fallthrough]];
            case OperatorID::NotEqual:
                return InstructionID::SCmp;

            default:
                reportUnreachable();
        }
    }
}

static CompareOp getCompareOp(OperatorID op) {
    assert(static_cast<uint32_t>(op) >= static_cast<uint32_t>(OperatorID::LessThan) &&
           static_cast<uint32_t>(op) <= static_cast<uint32_t>(OperatorID::NotEqual));
    return static_cast<CompareOp>(static_cast<uint32_t>(op) - static_cast<uint32_t>(OperatorID::LessThan) +
                                  static_cast<uint32_t>(CompareOp::LessThan));
}

static Value* makeBinaryOp(EmitContext& ctx, OperatorID op, bool isFloatintPoint, Value* lhs, Value* rhs) {
    auto inst = getBinaryOp(op, isFloatintPoint);

    if(inst == InstructionID::FCmp) {
        return ctx.makeOp<FloatingPointCompareInst>(getCompareOp(op), lhs, rhs);
    } else if(inst == InstructionID::SCmp) {
        return ctx.makeOp<IntegerCompareInst>(true, getCompareOp(op), lhs, rhs);
    } else {
        return ctx.makeOp<BinaryInst>(inst, lhs->getType(), lhs, rhs);
    }
}

Value* BinaryExpr::emit(EmitContext& ctx) const {
    // assign op
    if(mOp == OperatorID::Assign) {
        auto lhs = ctx.getLValue(mLhs);
        auto rhs = ctx.getRValue(mRhs);
        rhs = ctx.convertTo(rhs, dynamic_cast<PointerType*>(lhs->getType())->getPointee());

        return ctx.makeOp<StoreInst>(lhs, rhs);
    }

    // short circut logical op
    auto lhs = ctx.getRValue(mLhs);
    if(mOp == OperatorID::LogicalAnd || mOp == OperatorID::LogicalOr) {
        lhs = ctx.convertTo(lhs, IntegerType::getBoolean());

        auto rhsBlock = ctx.addBlock();
        auto newBlock = ctx.addBlock(IntegerType::getBoolean());

        if(mOp == OperatorID::LogicalAnd) {
            ctx.makeOp<ConditionalBranchInst>(lhs, BranchTarget{ rhsBlock }, BranchTarget{ newBlock, ctx.getFalse() });
        } else {
            ctx.makeOp<ConditionalBranchInst>(lhs, BranchTarget{ newBlock, ctx.getTrue() }, BranchTarget{ rhsBlock });
        }

        ctx.setCurrentBlock(rhsBlock);
        ctx.makeOp<ConditionalBranchInst>(BranchTarget{ rhsBlock, ctx.convertTo(mRhs->emit(ctx), IntegerType::getBoolean()) });
        ctx.setCurrentBlock(newBlock);
        return newBlock->getArg(0);
    }

    // arithmetic op
    auto rhs = ctx.getRValue(mRhs);

    auto lt = lhs->getType();
    auto rt = rhs->getType();
    if(!lt->isPrimitiveType() || !rt->isPrimitiveType())
        reportFatal("Custom operator is not supported");

    assert(!lt->isPointer() && !rt->isPointer());

    switch(mOp) {
        // IOP/FOP
        case OperatorID::Add:
            [[fallthrough]];
        case OperatorID::Sub:
            [[fallthrough]];
        case OperatorID::Mul:
            [[fallthrough]];
        case OperatorID::Div:
            [[fallthrough]];
        case OperatorID::LessThan:
            [[fallthrough]];
        case OperatorID::LessEqual:
            [[fallthrough]];
        case OperatorID::GreaterThan:
            [[fallthrough]];
        case OperatorID::GreaterEqual:
            [[fallthrough]];
        case OperatorID::Equal:
            [[fallthrough]];
        case OperatorID::NotEqual: {
            Type* target = nullptr;
            if((lt->isInteger() && rt->isInteger()) || (lt->isFloatingPoint() || rt->isFloatingPoint())) {
                target = lt->getSize() > rt->getSize() ? lt : rt;
            } else {
                target = lt->isFloatingPoint() ? lt : rt;

                lhs = ctx.convertTo(lhs, target);
                rhs = ctx.convertTo(rhs, target);

                return makeBinaryOp(ctx, mOp, target->isFloatingPoint(), lhs, rhs);
            }
        }
        // IOP
        case OperatorID::Rem:
            [[fallthrough]];
        case OperatorID::BitwiseAnd:
            [[fallthrough]];
        case OperatorID::BitwiseOr:
            [[fallthrough]];
        case OperatorID::Xor: {
            if(lt->isFloatingPoint() || rt->isFloatingPoint())
                reportFatal("");

            const auto target = lt->getSize() > rt->getSize() ? lt : rt;
            return makeBinaryOp(ctx, mOp, false, lhs, rhs);
        }
        default:
            reportUnreachable();
    }
}

Value* UnaryExpr::emit(EmitContext& ctx) const {
    auto value = ctx.getRValue(mValue);

    switch(mOp) {
        case OperatorID::Neg: {
            if(value->getType()->isInteger())
                return ctx.makeOp<UnaryInst>(InstructionID::Neg, value);
            return ctx.makeOp<UnaryInst>(InstructionID::FNeg, value);
        }
        case OperatorID::BitwiseNot: {
            if(value->getType()->isInteger()) {
                return ctx.makeOp<UnaryInst>(InstructionID::Xor, value, ConstantInteger::get(value->getType(), -1));
            }
            reportFatal("");
        }
        case OperatorID::LogicalNot: {
            value = ctx.convertTo(value, IntegerType::getBoolean());
            return ctx.makeOp<UnaryInst>(InstructionID::Not, value);
        }
        default:
            reportUnreachable();
    }
}

Value* ConstantIntExpr::emit(EmitContext& ctx) const {
    return ConstantInteger::get(IntegerType::get(mBitWidth, mIsSigned), mValue);
}

Value* ConstantFloatExpr::emit(EmitContext& ctx) const {
    return ConstantFloatingPoint::get(FloatingPointType::get(mIsFloat), mValue);
}

Value* ConstantStringExpr::emit(EmitContext& ctx) const {
    return nullptr;
}

Value* FunctionCallExpr::emit(EmitContext& ctx) const {
    auto callee = ctx.convertToRValue(mCallee, mCallee->isAddressable(ctx));

    Vector<Value*> args;
    args.reserve(mArgs.size());
    for(auto arg : mArgs)
        args.push_back(ctx.convertToRValue(arg->emit(ctx)));

    // TODO: va_args
    auto& argTypes = dynamic_cast<FunctionType*>(callee->getType())->getArgTypes();
    if(argTypes.size() != args.size())
        reportFatal("");

    for(size_t idx = 0; idx < args.size(); ++idx)
        args[idx] = ctx.convertTo(args[idx], argTypes[idx]);

    return ctx.makeOp<FunctionCall>(callee, std::move(args));
}

Value* ReturnExpr::emit(EmitContext& ctx) const {
    auto func = ctx.getCurrentFunction();
    auto type = func->getRetType();
    if(type->isVoidType()) {
        if(mValue)
            reportFatal("");
    } else if(!mValue) {
        reportFatal("");
    }

    if(type->isVoidType())
        return ctx.makeOp<ReturnInst>(nullptr);
    auto val = ctx.convertTo(ctx.convertToRValue(mValue->emit(ctx), mValue->isAddressable(ctx)), type);
    return ctx.makeOp<ReturnInst>(val);
}

Value* IfElseExpr::emit(EmitContext& ctx) const {
    auto val = ctx.convertTo(ctx.convertToRValue(mPredicate->emit(ctx), mPredicate->isAddressable(ctx)), ctx.getBooleanType());

    auto ifBlock = make<Block>();
    auto elseBlock = make<Block>();
    auto newBlock = make<Block>();
    ctx.makeOp<ConditionalBranch>(val, BranchTarget{ ifBlock }, BranchTarget{ elseBlock });

    ctx.setCurrentBlock(ifBlock);
    mIfBlock->emit(ctx);
    ctx.makeOp<ConditionalBranch>(BranchTarget{ newBlock });
    ctx.setCurrentBlock(elseBlock);
    mElseBlock->emit(ctx);
    ctx.makeOp<ConditionalBranch>(BranchTarget{ newBlock });

    ctx.setCurrentBlock(newBlock);
    return nullptr;
}

Value* IdentifierExpr::emit(EmitContext& ctx) const {
    auto value = ctx.lookUpIdentifier(mIdentifier);
    if(!value) {
        value = ctx.makeOp<StackAllocInst>(IntegerType::get(32, true));
        ctx.addIdentifier(mIdentifier, value);
    }
    return value;
}

Value* ScopedExpr::emit(EmitContext& ctx) const {
    ctx.pushScope();
    for(auto statement : mBlock)
        statement->emit(ctx);
    ctx.popScope();
    return nullptr;
}

Value* WhileExpr::emit(EmitContext& ctx) const {
    auto whileHeader = make<Block>();
    ctx.makeOp<ConditionalBranch>(BranchTarget{ whileHeader });
    ctx.setCurrentBlock(whileHeader);

    auto val = ctx.convertTo(ctx.convertToRValue(mPredicate->emit(ctx), mPredicate->isAddressable(ctx)), ctx.getBooleanType());

    auto whileBody = make<Block>();
    auto newBlock = make<Block>();

    ctx.makeOp<ConditionalBranch>(val, BranchTarget{ whileBody }, BranchTarget{ newBlock });

    ctx.setCurrentBlock(whileBody);
    mBlock->emit(ctx);
    ctx.makeOp<ConditionalBranch>(BranchTarget{ whileHeader });

    ctx.setCurrentBlock(newBlock);

    return nullptr;
}

CMMC_NAMESPACE_END

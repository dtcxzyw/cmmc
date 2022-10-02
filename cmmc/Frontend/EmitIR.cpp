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

#include <cassert>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/CodeGen/TargetFrameInfo.hpp>
#include <cmmc/Frontend/AST.hpp>
#include <cmmc/Frontend/EmitIR.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cstdint>
#include <limits>
#include <queue>
#include <type_traits>
#include <variant>

CMMC_NAMESPACE_BEGIN

extern Flag strictMode;

std::pair<FunctionCallInfo, FunctionType*> FunctionDeclaration::getSignature(EmitContext& ctx) const {
    FunctionCallInfo info;

    auto ret = ctx.getType(retType.typeIdentifier, retType.space, {});
    info.retQualifier = info.retQualifier;
    if(ret->isArray())
        reportFatal("returning an array is not allowed");

    const auto& target = ctx.getModule()->getTarget();
    const auto& targetFrameInfo = target.getTargetFrameInfo();
    const auto& dataLayout = target.getDataLayout();
    Vector<Type*> argTypes;
    for(auto& arg : args) {
        assert(!arg.var.initialValue);
        const auto type = ctx.getType(arg.type.typeIdentifier, arg.type.space, arg.var.arraySize);
        if(type->isVoid())
            reportFatal("the type of argument cannot be void");
        if(!type->isArray() && targetFrameInfo.shouldPassByRegister(type, dataLayout)) {
            argTypes.push_back(type);
            info.passingArgsByPointer.push_back(false);
        } else {
            argTypes.push_back(make<PointerType>(type));
            info.passingArgsByPointer.push_back(true);
        }
        info.argQualifiers.push_back(arg.type.qualifier);
    }

    if(!ret->isVoid() && !targetFrameInfo.shouldPassByRegister(ret, dataLayout)) {
        argTypes.push_back(make<PointerType>(ret));
        ret = VoidType::get();
        info.passingRetValByPointer = true;
    }

    return { std::move(info), make<FunctionType>(ret, std::move(argTypes)) };
}

static void sortBlocks(Function& func);

void FunctionDefinition::emit(EmitContext& ctx) const {
    auto module = ctx.getModule();
    auto [info, funcType] = decl.getSignature(ctx);
    auto func = make<Function>(StringIR{ decl.symbol }, funcType);
    module->add(func);
    ctx.addIdentifier(decl.symbol, QualifiedValue{ func });
    ctx.addFunctionCallInfo(funcType, info);

    ctx.setCurrentFunction(func);
    ctx.pushScope();  // arguments
    const auto entry = ctx.addBlock(funcType->getArgTypes());
    entry->setLabel("entry");
    ctx.setCurrentBlock(entry);

    // NOTICE: function arguments must be lvalues
    for(size_t idx = 0; idx < decl.args.size(); ++idx) {
        const auto& name = decl.args[idx].var.name;
        auto label = StringIR{ name };
        const auto arg = entry->getArg(idx);
        arg->setLabel(label);

        if(!info.passingArgsByPointer[idx]) {
            // passing by register
            const auto memArg = ctx.makeOp<StackAllocInst>(arg->getType());
            memArg->setLabel(label);
            ctx.makeOp<StoreInst>(memArg, arg);
            ctx.addIdentifier(name, { memArg, ValueQualifier::AsLValue, decl.args[idx].type.qualifier });
        } else {
            // passing by pointer
            if(arg->getType()->isArray()) {
                ctx.addIdentifier(name, { arg, ValueQualifier::AsLValue, decl.args[idx].type.qualifier });
            } else {
                // create a copy
                const auto type = arg->getType()->as<PointerType>()->getPointee();
                const auto memArg = ctx.makeOp<StackAllocInst>(type);
                memArg->setLabel(label);
                ctx.makeOp<StoreInst>(memArg, ctx.makeOp<LoadInst>(arg));
                ctx.addIdentifier(name, { memArg, ValueQualifier::AsLValue, decl.args[idx].type.qualifier });
            }
        }
    }
    for(auto st : block)
        st->emit(ctx);
    ctx.setCurrentBlock(nullptr);  // clean up

    // trim instructions after the first terminator
    const auto retType = funcType->getRetType();
    for(auto funcBlock : func->blocks()) {
        auto& insts = funcBlock->instructions();
        bool hasTerminator = false;
        for(auto iter = insts.cbegin(); iter != insts.cend(); ++iter) {
            if((*iter)->isTerminator()) {
                ++iter;
                insts.erase(iter, insts.cend());
                hasTerminator = true;
                break;
            }
        }
        if(!hasTerminator) {
            // fix terminator
            ctx.setCurrentBlock(funcBlock);
            if(retType->isVoid() && !info.passingRetValByPointer) {
                ctx.makeOp<ReturnInst>();
            } else {
                ctx.makeOp<UnreachableInst>();
            }
        }
    }

    blockArgPropagation(*func);
    sortBlocks(*func);

    ctx.popScope();
    assert(func->verify(reportDebug()));
}

static InstructionID getBinaryOp(OperatorID op, bool isSigned, bool isFloatingPoint) {
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

            case OperatorID::Div:
                return isSigned ? InstructionID::SDiv : InstructionID::UDiv;
            case OperatorID::Rem:
                return isSigned ? InstructionID::SRem : InstructionID::URem;

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
                return isSigned ? InstructionID::SCmp : InstructionID::UCmp;

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

// TODO: [un]signed ops

template <typename T>
std::variant<std::monostate, T> evaluateOp(OperatorID op, T lhs, T rhs) {
    switch(op) {
        case OperatorID::Add:
            return lhs + rhs;
        case OperatorID::Sub:
            return lhs - rhs;
        case OperatorID::Mul:
            return lhs * rhs;
        case OperatorID::Div: {
            if constexpr(std::is_integral_v<T>) {
                if(rhs)
                    return lhs / rhs;
                reportFatal("divided by zero");
            } else
                return lhs / rhs;
        }
        case OperatorID::Rem: {
            if constexpr(std::is_integral_v<T>) {
                if(rhs)
                    return lhs % rhs;
                reportFatal("divided by zero");
            } else
                reportUnreachable();
        }
        default:
            return std::monostate{};
    }
}

static Value* makeBinaryOp(EmitContext& ctx, OperatorID op, bool isFloatingPoint, bool isSigned, Value* lhs, Value* rhs) {
    if(lhs->isConstant() && rhs->isConstant()) {
        if(isFloatingPoint) {
            const auto lhsValue = lhs->as<ConstantFloatingPoint>()->getValue();
            const auto rhsValue = rhs->as<ConstantFloatingPoint>()->getValue();
            const auto res = evaluateOp(op, lhsValue, rhsValue);

            if(res.index() != 0)
                return make<ConstantFloatingPoint>(lhs->getType(), std::get<double>(res));
        } else {
            if(isSigned) {
                const auto lhsValue = lhs->as<ConstantInteger>()->getSignExtended();
                const auto rhsValue = rhs->as<ConstantInteger>()->getSignExtended();
                const auto res = evaluateOp(op, lhsValue, rhsValue);

                if(res.index() != 0)
                    return make<ConstantInteger>(lhs->getType(), std::get<intmax_t>(res));
            } else {
                const auto lhsValue = lhs->as<ConstantInteger>()->getZeroExtended();
                const auto rhsValue = rhs->as<ConstantInteger>()->getZeroExtended();
                const auto res = evaluateOp(op, lhsValue, rhsValue);

                if(res.index() != 0)
                    return make<ConstantInteger>(lhs->getType(), static_cast<intmax_t>(std::get<uintmax_t>(res)));
            }
        }
    }

    auto inst = getBinaryOp(op, isSigned, isFloatingPoint);

    if(inst == InstructionID::FCmp || inst == InstructionID::SCmp || inst == InstructionID::UCmp) {
        return ctx.makeOp<CompareInst>(inst, getCompareOp(op), lhs, rhs);
    } else {
        return ctx.makeOp<BinaryInst>(inst, lhs->getType(), lhs, rhs);
    }
}

QualifiedValue BinaryExpr::emit(EmitContext& ctx) const {
    // assign op
    if(mOp == OperatorID::Assign) {
        auto [lhs, dstQualifier] = ctx.getLValue(mLhs);
        if(dstQualifier.isConst)
            reportFatal("require a mutable lvalue");
        auto rhs = ctx.getRValue(mRhs, lhs->getType()->as<PointerType>()->getPointee(), dstQualifier);
        if(rhs->getType()->isArray())
            reportFatal("cannot assign an array");

        ctx.makeOp<StoreInst>(lhs, rhs);
        return { lhs, ValueQualifier::AsLValue, dstQualifier };
    }

    // short circut logical op
    auto [lhs, lhsQualifier] = ctx.getRValue(mLhs);
    if(mOp == OperatorID::LogicalAnd || mOp == OperatorID::LogicalOr) {
        lhs = ctx.convertTo(lhs, IntegerType::getBoolean(), lhsQualifier, {});

        auto rhsBlock = ctx.addBlock();
        auto newBlock = ctx.addBlock(IntegerType::getBoolean());

        if(mOp == OperatorID::LogicalAnd) {
            ctx.makeOp<ConditionalBranchInst>(lhs, BranchTarget{ rhsBlock }, BranchTarget{ newBlock, ctx.getFalse() });
        } else {
            ctx.makeOp<ConditionalBranchInst>(lhs, BranchTarget{ newBlock, ctx.getTrue() }, BranchTarget{ rhsBlock });
        }

        ctx.setCurrentBlock(rhsBlock);
        const auto rhs = ctx.getRValue(mRhs, IntegerType::getBoolean(), {});
        ctx.makeOp<ConditionalBranchInst>(BranchTarget{ newBlock, rhs });
        ctx.setCurrentBlock(newBlock);
        return QualifiedValue{ newBlock->getArg(0) };
    }

    // arithmetic op
    auto [rhs, rhsQualifier] = ctx.getRValue(mRhs);

    auto lt = lhs->getType();
    auto rt = rhs->getType();
    if(!lt->isPrimitive() || !rt->isPrimitive())
        reportFatal("Custom operator is not supported");

    assert(!lt->isPointer() && !rt->isPointer());

    auto selectTargetType = [&](Type*& target, Qualifier& targetQualifier, Qualifier lhsQ, Qualifier rhsQ) {
        if(lt->getFixedSize() != rt->getFixedSize()) {
            target = lt->getFixedSize() > rt->getFixedSize() ? lt : rt;
            targetQualifier = (target == lt ? lhsQ : rhsQ);
        } else {
            target = lt;
            targetQualifier = lhsQ.isSigned ? rhsQ : rhsQ;  // signed op unsigned -> unsigned
        }
    };

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
            Qualifier targetQualifier;

            if((lt->isInteger() && rt->isInteger()) || (lt->isFloatingPoint() || rt->isFloatingPoint())) {
                selectTargetType(target, targetQualifier, lhsQualifier, rhsQualifier);
            } else {
                target = lt->isFloatingPoint() ? lt : rt;
                targetQualifier = (target == lt ? lhsQualifier : rhsQualifier);

                lhs = ctx.convertTo(lhs, target, lhsQualifier, targetQualifier);
                rhs = ctx.convertTo(rhs, target, rhsQualifier, targetQualifier);

                return QualifiedValue{ makeBinaryOp(ctx, mOp, target->isFloatingPoint(), targetQualifier.isSigned, lhs, rhs) };
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
                reportFatal("xor float,float is not allowed");
            Type* target = nullptr;
            Qualifier targetQualifier;
            selectTargetType(target, targetQualifier, lhsQualifier, rhsQualifier);
            lhs = ctx.convertTo(lhs, target, lhsQualifier, targetQualifier);
            rhs = ctx.convertTo(rhs, target, rhsQualifier, targetQualifier);
            return QualifiedValue{ makeBinaryOp(ctx, mOp, false, targetQualifier.isSigned, lhs, rhs) };
        }
        default:
            reportUnreachable();
    }
}

// TODO: [un]signed ops

template <typename T>
std::variant<std::monostate, T> evaluateOp(OperatorID op, T val) {
    switch(op) {
        case OperatorID::Neg:
            return -val;
        case OperatorID::Positive:
            return val;
        default:
            return std::monostate{};
    }
}

QualifiedValue UnaryExpr::emit(EmitContext& ctx) const {
    auto [value, valueQualifier] = ctx.getRValue(mValue);

    if(value->isConstant()) {
        if(value->getType()->isFloatingPoint()) {
            const auto val = value->as<ConstantFloatingPoint>()->getValue();
            const auto res = evaluateOp(mOp, val);

            if(res.index() != 0)
                return QualifiedValue{ make<ConstantFloatingPoint>(value->getType(), std::get<double>(res)) };
        } else {
            const auto val = value->as<ConstantInteger>()->getSignExtended();
            const auto res = evaluateOp(mOp, val);

            if(res.index() != 0)
                return QualifiedValue{ make<ConstantInteger>(value->getType(), std::get<intmax_t>(res)) };
        }
    }

    switch(mOp) {
        case OperatorID::Neg:
            return QualifiedValue{ ctx.makeOp<UnaryInst>(value->getType()->isInteger() ? InstructionID::Neg : InstructionID::FNeg,
                                                         value->getType(), value) };
        case OperatorID::BitwiseNot: {
            if(value->getType()->isInteger()) {
                return QualifiedValue{ ctx.makeOp<BinaryInst>(InstructionID::Xor, value->getType(), value,
                                                              make<ConstantInteger>(value->getType(), -1)) };
            }
            reportFatal("bitwise not is only allowed for integer types");
        }
        case OperatorID::LogicalNot: {
            value = ctx.convertTo(value, IntegerType::getBoolean(), valueQualifier, {});
            return QualifiedValue{ ctx.makeOp<UnaryInst>(InstructionID::Not, value->getType(), value) };
        }
        case OperatorID::Positive: {
            if(value->getType()->isInteger() || value->getType()->isFloatingPoint())
                return QualifiedValue{ value };
            reportFatal("unary plus is only allowed for scalar types");
        }
        default:
            reportUnreachable();
    }
}

QualifiedValue ConstantIntExpr::emit(EmitContext& ctx) const {
    // TODO: signed/unsigned?
    return QualifiedValue{ make<ConstantInteger>(IntegerType::get(mBitWidth), static_cast<intmax_t>(mValue)),
                           ValueQualifier::AsRValue, Qualifier::getSigned() };
}

QualifiedValue ConstantFloatExpr::emit(EmitContext& ctx) const {
    return QualifiedValue{ make<ConstantFloatingPoint>(FloatingPointType::get(mIsFloat), mValue) };
}

QualifiedValue ConstantStringExpr::emit(EmitContext& ctx) const {
    reportNotImplemented();
}

QualifiedValue FunctionCallExpr::emit(EmitContext& ctx) const {
    auto [callee, calleeQualifier] = ctx.getRValue(mCallee);
    const auto& info = ctx.getFunctionCallInfo(callee->getType()->as<FunctionType>());

    // TODO: va_args
    auto& argTypes = callee->getType()->as<FunctionType>()->getArgTypes();
    if(argTypes.size() != mArgs.size())
        reportFatal("the numbers of provided/required arguments mismatch");

    Vector<Value*> args;
    args.reserve(mArgs.size());
    for(uint32_t idx = 0; idx < mArgs.size(); ++idx) {
        const auto arg = mArgs[idx];
        const auto destType = argTypes[idx];
        const auto destQualifier = info.argQualifiers[idx];
        if(info.passingArgsByPointer[idx]) {
            const auto val = ctx.getLValueForce(arg, destType, destQualifier);
            args.push_back(val);
        } else {
            args.push_back(ctx.getRValue(arg, destType, destQualifier));
        }
    }

    if(info.passingRetValByPointer) {
        const auto retType = argTypes.back()->as<PointerType>()->getPointee();
        const auto storage = ctx.makeOp<StackAllocInst>(retType);
        args.push_back(storage);
        ctx.makeOp<FunctionCallInst>(callee, std::move(args));
        return QualifiedValue{ ctx.makeOp<LoadInst>(storage) };
    } else
        return QualifiedValue{ ctx.makeOp<FunctionCallInst>(callee, std::move(args)) };
}

QualifiedValue ReturnExpr::emit(EmitContext& ctx) const {
    auto func = ctx.getCurrentFunction();
    const auto& info = ctx.getFunctionCallInfo(func->getType()->as<FunctionType>());

    if(info.passingRetValByPointer) {
        const auto ret = func->entryBlock()->args().back();
        const auto retType = ret->getType();
        const auto retVal = ctx.getRValue(mReturnValue, retType, info.retQualifier);
        ctx.makeOp<StoreInst>(ret, retVal);
        ctx.makeOp<ReturnInst>();
    } else {
        auto type = func->getType()->as<FunctionType>();
        auto retType = type->getRetType();
        if(retType->isVoid()) {
            if(mReturnValue)
                reportFatal("the function should return nothing");
            ctx.makeOp<ReturnInst>();
        } else {
            if(!mReturnValue)
                reportFatal("the function should return a value");
            const auto retVal = ctx.getRValue(mReturnValue, retType, info.retQualifier);
            ctx.makeOp<ReturnInst>(retVal);
        }
    }

    return QualifiedValue{};
}

QualifiedValue IfElseExpr::emit(EmitContext& ctx) const {
    const auto pred = ctx.getRValue(mPredicate, IntegerType::getBoolean(), {});

    const auto oldBlock = ctx.getCurrentBlock();

    const auto ifBlock = ctx.addBlock();
    ifBlock->setLabel("if.then");
    const auto newBlock = ctx.addBlock();

    ctx.setCurrentBlock(ifBlock);
    mThenBlock->emit(ctx);
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ newBlock });

    if(mElseBlock) {
        const auto elseBlock = ctx.addBlock();
        elseBlock->setLabel("if.else");

        ctx.setCurrentBlock(oldBlock);
        ctx.makeOp<ConditionalBranchInst>(pred, BranchTarget{ ifBlock }, BranchTarget{ elseBlock });

        ctx.setCurrentBlock(elseBlock);
        mElseBlock->emit(ctx);
        ctx.makeOp<ConditionalBranchInst>(BranchTarget{ newBlock });
    } else {
        ctx.setCurrentBlock(oldBlock);
        ctx.makeOp<ConditionalBranchInst>(pred, BranchTarget{ ifBlock }, BranchTarget{ newBlock });
    }

    ctx.setCurrentBlock(newBlock);
    return QualifiedValue{};
}

QualifiedValue IdentifierExpr::emit(EmitContext& ctx) const {
    return ctx.lookupIdentifier(mIdentifier);
}

QualifiedValue ScopedExpr::emit(EmitContext& ctx) const {
    ctx.pushScope();
    for(auto statement : mBlock)
        statement->emit(ctx);
    ctx.popScope();
    return QualifiedValue{};
}

QualifiedValue WhileExpr::emit(EmitContext& ctx) const {
    auto whileHeader = ctx.addBlock();
    whileHeader->setLabel("while.header");
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ whileHeader });
    ctx.setCurrentBlock(whileHeader);

    auto val = ctx.getRValue(mPredicate, IntegerType::getBoolean(), {});

    auto whileBody = ctx.addBlock();
    whileBody->setLabel("while.body");
    auto newBlock = ctx.addBlock();

    ctx.makeOp<ConditionalBranchInst>(val, BranchTarget{ whileBody }, BranchTarget{ newBlock });

    ctx.pushLoop(whileHeader, newBlock);
    ctx.setCurrentBlock(whileBody);
    mBlock->emit(ctx);
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ whileHeader });
    ctx.popLoop();

    ctx.setCurrentBlock(newBlock);

    return QualifiedValue{};
}

QualifiedValue LocalVarDefExpr::emit(EmitContext& ctx) const {
    for(auto& [name, arraySize, initExpr] : mVars) {
        const auto type = ctx.getType(mType.typeIdentifier, mType.space, arraySize);
        auto local = ctx.makeOp<StackAllocInst>(type);
        local->setLabel(StringIR{ name });

        if(initExpr) {
            if(type->isArray()) {
                if(auto arrayInitializer = dynamic_cast<ArrayInitializer*>(initExpr)) {
                    arrayInitializer->shapeAwareEmitDynamic(ctx, local, type->as<ArrayType>(), mType.qualifier);
                } else
                    reportFatal("cannot initialize an array with a scalar value");
            } else {
                if(dynamic_cast<ArrayInitializer*>(initExpr))
                    reportFatal("cannot initialize a scalar with an array initializer");
                const auto val = ctx.getRValue(initExpr, type, mType.qualifier);
                ctx.makeOp<StoreInst>(local, val);

                if(val->isConstant() && mType.qualifier.isConst)
                    ctx.addConstant(local, val);
            }
        }

        ctx.addIdentifier(name, { local, ValueQualifier::AsLValue, mType.qualifier });
    }

    return QualifiedValue{};
}

QualifiedValue ArrayIndexExpr::emit(EmitContext& ctx) const {
    const auto [base, valueQualifier, qualifier] = mBase->emit(ctx);
    const auto idx = ctx.getRValue(mIndex, ctx.getIndexType(), Qualifier::getUnsigned());
    if(valueQualifier == ValueQualifier::AsLValue) {
        // int a[10];
        // a[i];
        return { ctx.makeOp<GetElementPtrInst>(base, Vector<Value*>{ ctx.getZeroIndex(), idx }), ValueQualifier::AsLValue,
                 qualifier };
    } else {
        // int* a;
        // a[i];
        return { ctx.makeOp<GetElementPtrInst>(base, Vector<Value*>{ idx }), ValueQualifier::AsLValue, qualifier };
    }
}

QualifiedValue StructIndexExpr::emit(EmitContext& ctx) const {
    const auto [base, qualifier] = ctx.getLValue(mBase);
    const auto pointer = base->getType()->as<PointerType>();
    const auto structType = pointer->getPointee();
    if(!structType->isStruct())
        reportFatal("cannot index a non-struct value");
    const auto offset = structType->as<StructType>()->getOffset(mField);
    const auto ptr = ctx.makeOp<GetElementPtrInst>(base, Vector<Value*>{ ctx.getZeroIndex(), offset });
    return { ptr, ValueQualifier::AsLValue, qualifier };  // TODO: sign/unsign mutable/const qualifier from struct field
}

Value* EmitContext::convertTo(Value* value, Type* type, Qualifier srcQualifier, Qualifier dstQualifier) {
    const auto srcType = value->getType();
    if(srcType->isPointer() && srcQualifier.isConst && !dstQualifier.isConst)
        reportFatal("cannot remove the const qualifier");

    if(srcType->isSame(type))
        return value;

    InstructionID id = InstructionID::None;
    if(type->isBoolean()) {
        if(srcType->isInteger()) {
            return makeOp<CompareInst>(InstructionID::SCmp, CompareOp::NotEqual, value, make<ConstantInteger>(srcType, 0));
        } else if(srcType->isFloatingPoint()) {
            return makeOp<CompareInst>(InstructionID::FCmp, CompareOp::NotEqual, value,
                                       make<ConstantFloatingPoint>(srcType, 0.0));
        }
    } else if(srcType->isInteger() && type->isInteger()) {
        if(srcType->getFixedSize() < type->getFixedSize())
            id = srcQualifier.isSigned ? InstructionID::SExt : InstructionID::ZExt;
        else
            id = InstructionID::Trunc;
    } else if(srcType->isInteger() && type->isFloatingPoint()) {
        if(strictMode.get())
            reportFatal("implicit I2F conversion is not allowed in strict mode");
        id = srcQualifier.isSigned ? InstructionID::S2F : InstructionID::U2F;
    } else if(srcType->isFloatingPoint() && type->isInteger()) {
        if(strictMode.get())
            reportFatal("implicit F2I conversion is not allowed in strict mode");
        id = dstQualifier.isSigned ? InstructionID::F2S : InstructionID::F2U;
    } else if(srcType->isFloatingPoint() && type->isFloatingPoint()) {
        id = InstructionID::FCast;
    }

    if(id == InstructionID::None) {
        auto& err = reportError();
        srcType->dump(err << "from ");
        type->dump(err << " to ");
        reportFatal("cannot convert scalar value");
    }
    return makeOp<CastInst>(id, type, value);
}
std::pair<Value*, Qualifier> EmitContext::getRValue(Expr* expr) {
    const auto [val, valQualifier, qualifier] = expr->emit(*this);
    if(valQualifier == ValueQualifier::AsLValue) {
        if(auto iter = mConstantBinding.find(val); iter != mConstantBinding.cend())
            return { iter->second, qualifier };
        if(val->getType()->as<PointerType>()->getPointee()->isArray())
            return { makeOp<GetElementPtrInst>(val, Vector<Value*>{ getZeroIndex(), getZeroIndex() }),
                     qualifier };  // decay to pointer
        else
            return { makeOp<LoadInst>(val), qualifier };
    }
    return { val, qualifier };
}
Value* EmitContext::getRValue(Expr* expr, Type* type, Qualifier dstQualifier) {
    const auto [val, valQualifier] = getRValue(expr);
    return convertTo(val, type, valQualifier, dstQualifier);
}
std::pair<Value*, Qualifier> EmitContext::getLValue(Expr* expr) {
    const auto [val, valQualifier, qualifier] = expr->emit(*this);
    if(valQualifier == ValueQualifier::AsLValue)
        return { val, qualifier };
    reportFatal("cannot convert a rvalue to a lvalue");
}
Value* EmitContext::getLValueForce(Expr* expr, Type* type, Qualifier dstQualifier) {
    const auto createFromRValue = [&](Value* rvalue, Qualifier srcQualifier) -> Value* {
        const auto val = convertTo(rvalue, type, srcQualifier, dstQualifier);
        const auto storage = makeOp<StackAllocInst>(val->getType());
        makeOp<StoreInst>(storage, val);
        return storage;
    };

    const auto [val, valQualifier, qualifier] = expr->emit(*this);

    if(valQualifier == ValueQualifier::AsLValue) {
        if(val->getType()->isSame(type))
            return val;
        assert(val->getType()->isPointer());
        const auto rvalue = makeOp<LoadInst>(val);
        return createFromRValue(rvalue, qualifier);
    } else {
        return createFromRValue(val, qualifier);
    }
}
void EmitContext::pushScope() {
    mScopes.push_back({});
}
void EmitContext::popScope() {
    mScopes.pop_back();
}
void EmitContext::addIdentifier(StringAST identifier, QualifiedValue value) {
    assert(!mScopes.empty());
    auto& scope = mScopes.back();
    if(scope.variables.count(identifier))
        reportFatal("redefined identifier");
    scope.variables.emplace(identifier, value);
    if(auto iter = uniqueVariables.find(identifier); iter != uniqueVariables.cend())
        iter->second.value = nullptr;
    else
        uniqueVariables.emplace(identifier, value);
}
QualifiedValue EmitContext::lookupIdentifier(const StringAST& identifier) {
    assert(!mScopes.empty());
    if(auto iter = uniqueVariables.find(identifier); iter != uniqueVariables.cend() && iter->second.value)
        return iter->second;

    for(auto iter = mScopes.crbegin(); iter != mScopes.crend(); ++iter)
        if(auto it = iter->variables.find(identifier); it != iter->variables.cend())
            return it->second;
    reportFatal("undefined identifier");
}
void EmitContext::addConstant(Value* address, Value* val) {
    mConstantBinding.emplace(address, val);
}
EmitContext::EmitContext(Module* module) : mModule{ module } {
    mInteger = make<IntegerType>(32U);
    mFloat = make<FloatingPointType>(true);
    mChar = make<IntegerType>(8U);
}
Type* EmitContext::getType(const StringAST& type, TypeLookupSpace space, const ArraySize& arraySize) {
    Type* ret = nullptr;
    if(space == TypeLookupSpace::Default) {
        if(type == "int")
            ret = mInteger;
        else if(type == "float")
            ret = mFloat;
        else if(type == "char")
            ret = mChar;
        else if(type == "void")
            ret = VoidType::get();
    } else if(space == TypeLookupSpace::Struct) {
        const auto iter = mStructTypes.find(type);
        if(iter != mStructTypes.cend())
            ret = iter->second;
    }

    if(!ret)
        reportNotImplemented();

    if(!arraySize.empty()) {
        if(ret->isVoid())
            reportFatal("void-based array is not allowed");

        bool unknownSize = false;
        for(auto iter = arraySize.rbegin(); iter != arraySize.rend(); ++iter) {
            const auto expr = *iter;

            if(expr == nullptr) {
                if(unknownSize)
                    reportFatal("invalid unknown-sized array");
                unknownSize = true;
                ret = make<PointerType>(ret);
            } else {
                if(unknownSize)
                    reportFatal("invalid unknown-sized array");

                const auto constantSize = getRValue(*iter, getIndexType(), Qualifier::getUnsigned());

                if(constantSize->isConstant()) {
                    const auto val = constantSize->as<ConstantInteger>();
                    const auto size = val->getZeroExtended();

                    if(size <= 0)
                        reportFatal("invalid array size");
                    if(size >= (1U << 24))
                        reportFatal("array is too large");

                    ret = make<ArrayType>(ret, static_cast<uint32_t>(size));
                } else
                    reportFatal("array size must be constant integer");
            }
        }
    }
    return ret;
}
void EmitContext::addIdentifier(StringAST identifier, StructType* type) {
    if(mStructTypes.count(identifier))
        reportFatal("redefined struct");
    mStructTypes.emplace(std::move(identifier), type);
}

void EmitContext::addFunctionCallInfo(FunctionType* func, FunctionCallInfo info) {
    mCallInfo.emplace(func, std::move(info));
}
const FunctionCallInfo& EmitContext::getFunctionCallInfo(FunctionType* func) {
    const auto iter = mCallInfo.find(func);
    if(iter != mCallInfo.cend())
        return iter->second;

    // for runtime functions, pass arguments by register
    FunctionCallInfo defaultInfo;
    const auto size = func->getArgTypes().size();
    defaultInfo.passingArgsByPointer.resize(size, false);
    defaultInfo.argQualifiers.resize(size);
    return mCallInfo.emplace(func, std::move(defaultInfo)).first->second;
}

void EmitContext::pushLoop(Block* continueTarget, Block* breakTarget) {
    mTerminatorTarget.emplace_back(continueTarget, breakTarget);
}
void EmitContext::popLoop() {
    mTerminatorTarget.pop_back();
}
Block* EmitContext::getContinueTarget() {
    if(!mTerminatorTarget.empty())
        return mTerminatorTarget.back().first;
    reportFatal("no continue target");
}
Block* EmitContext::getBreakTarget() {
    if(!mTerminatorTarget.empty())
        return mTerminatorTarget.back().second;
    reportFatal("no break target");
}

// Simple BFS with post heuristic
// not for performance, just for readability
void sortBlocks(Function& func) {
    std::unordered_map<Block*, uint32_t> weight;
    constexpr uint32_t branchTrueCost = 100;
    constexpr uint32_t branchFalseCost = 101;
    constexpr uint32_t ubrCost = 2;
    constexpr uint32_t brCost = 0;
    constexpr uint32_t retCost = 10;
    constexpr uint32_t unreachableCost = 1'000'000;

    std::queue<Block*> q{ { func.entryBlock() } };
    const auto addTarget = [&](const BranchTarget& target, uint32_t w) {
        const auto block = target.getTarget();
        if(weight.emplace(block, w).second)
            q.push(block);
    };

    while(!q.empty()) {
        const auto u = q.front();
        q.pop();
        auto& val = weight[u];
        const auto terminator = u->getTerminator();
        switch(terminator->getInstID()) {
            case InstructionID::Branch: {
                const auto& branch = terminator->as<ConditionalBranchInst>();
                addTarget(branch->getTrueTarget(), val + branchTrueCost);
                val += brCost;
                break;
            }
            case InstructionID::ConditionalBranch: {
                const auto& branch = terminator->as<ConditionalBranchInst>();
                addTarget(branch->getTrueTarget(), val + branchTrueCost);
                addTarget(branch->getFalseTarget(), val + branchFalseCost);
                val += ubrCost;
                break;
            }
            case InstructionID::Unreachable: {
                val += unreachableCost;
                break;
            }
            case InstructionID::Ret: {
                val += retCost;
                break;
            }
            default:
                reportUnreachable();
        }
    }

    for(auto& block : func.blocks())
        if(!weight.count(block))
            weight[block] = std::numeric_limits<uint32_t>::max();

    func.blocks().sort([&](Block* lhs, Block* rhs) { return weight[lhs] < weight[rhs]; });
}

QualifiedValue ArrayInitializer::emit(EmitContext&) const {
    reportUnreachable();
}

static ConstantArray* flushScalarsStatic(const std::vector<ConstantValue*>& values, uint32_t offset, ArrayType* type) {
    const auto elementType = type->getElementType();
    const auto count = type->getElementCount();

    Vector<ConstantValue*> elements;

    if(elementType->isArray()) {
        const auto subArrayType = elementType->as<ArrayType>();
        const auto subCount = subArrayType->getScalarCount();
        for(uint32_t idx = 0; idx < count; ++idx) {
            const auto newOffset = offset + idx * subCount;
            if(newOffset < values.size()) {
                elements.push_back(flushScalarsStatic(values, newOffset, subArrayType));
            } else
                break;
        }

    } else {
        for(uint32_t idx = 0; idx < count; ++idx) {
            const auto newOffset = offset + idx;
            if(newOffset >= values.size())
                break;
            elements.push_back(values[newOffset]);
        }
    }

    return make<ConstantArray>(type, std::move(elements));
}

ConstantValue* ArrayInitializer::shapeAwareEmitStatic(EmitContext& ctx, ArrayType* type, Qualifier dstQualifier) const {
    const auto elementType = type->getElementType();
    Vector<ConstantValue*> values;
    values.reserve(mElements.size());
    auto getConstantScalar = [&](Expr* expr, Type* type) {
        const auto value = ctx.getRValue(expr, type, dstQualifier);
        if(!value->isConstant())
            reportFatal("require constants in static array initialization");
        return value->as<ConstantValue>();
    };

    if(elementType->isArray()) {
        const auto subArrayType = elementType->as<ArrayType>();
        const auto count = subArrayType->getScalarCount();
        const auto scalarType = subArrayType->getScalarType();

        std::vector<ConstantValue*> cachedScalars;
        auto flushScalars = [&] {
            values.push_back(flushScalarsStatic(cachedScalars, 0, subArrayType));
            cachedScalars.clear();
        };
        for(auto element : mElements) {
            if(auto subArr = dynamic_cast<ArrayInitializer*>(element)) {
                if(!cachedScalars.empty()) {
                    if(cachedScalars.size() != count)
                        reportFatal("invalid array initializer");
                    flushScalars();
                }
                values.push_back(subArr->shapeAwareEmitStatic(ctx, subArrayType, dstQualifier));
            } else {
                const auto value = getConstantScalar(element, scalarType);
                cachedScalars.push_back(value);
                if(cachedScalars.size() == count)
                    flushScalars();
            }
        }

        if(!cachedScalars.empty())
            flushScalars();
    } else {
        for(auto element : mElements) {
            if(dynamic_cast<ArrayInitializer*>(element))
                reportFatal("too many braces");
            else
                values.push_back(getConstantScalar(element, elementType));
        }
    }

    if(values.size() > type->getElementCount())
        reportFatal("too much elements in the array initializer");

    return make<ConstantArray>(type, std::move(values));
}

static void zeroInitialize(EmitContext& ctx, Value* storage, Type* type) {
    // TODO: use memset?
    if(type->isArray()) {
        const auto arrayType = type->as<ArrayType>();
        const auto subType = arrayType->getElementType();
        for(uint32_t idx = 0; idx < arrayType->getElementCount(); ++idx) {
            const auto ptr =
                ctx.makeOp<GetElementPtrInst>(storage, Vector<Value*>{ make<ConstantInteger>(ctx.getIndexType(), idx) });
            zeroInitialize(ctx, ptr, subType);
        }
    } else {
        if(type->isInteger()) {
            ctx.makeOp<StoreInst>(storage, make<ConstantInteger>(type, 0));
        } else if(type->isFloatingPoint()) {
            ctx.makeOp<StoreInst>(storage, make<ConstantFloatingPoint>(type, 0.0));
        } else
            reportFatal("cannot zero initialize a non-scalar");
    }
}

static void flushScalarsDynamic(EmitContext& ctx, const std::vector<Value*>& values, uint32_t offset, Value* storage,
                                ArrayType* type, Qualifier dstQualifier) {
    if(offset >= values.size()) {
        zeroInitialize(ctx, storage, type);
        return;
    }

    const auto makePtr = [&](uint32_t idx) {
        return ctx.makeOp<GetElementPtrInst>(storage, Vector<Value*>{ make<ConstantInteger>(ctx.getIndexType(), idx) });
    };

    const auto elementType = type->getElementType();
    const auto count = type->getElementCount();

    if(elementType->isArray()) {
        const auto subArrayType = elementType->as<ArrayType>();
        const auto subCount = subArrayType->getScalarCount();

        for(uint32_t idx = 0; idx < count; ++idx) {
            const auto newOffset = offset + idx * subCount;
            flushScalarsDynamic(ctx, values, newOffset, makePtr(idx), subArrayType, dstQualifier);
        }

    } else {
        for(uint32_t idx = 0; idx < count; ++idx) {
            const auto ptr = makePtr(idx);
            const auto newOffset = offset + idx;
            if(newOffset >= values.size()) {
                zeroInitialize(ctx, ptr, elementType);
            } else {
                ctx.makeOp<StoreInst>(ptr, values[newOffset]);
            }
        }
    }
}

void ArrayInitializer::shapeAwareEmitDynamic(EmitContext& ctx, Value* storage, ArrayType* type, Qualifier dstQualifier) const {
    const auto elementType = type->getElementType();
    const auto elementCount = type->getElementCount();
    const auto makePtr = [&](uint32_t idx) {
        if(idx >= elementCount)
            reportFatal("too much elements in the array initializer");
        return ctx.makeOp<GetElementPtrInst>(storage, Vector<Value*>{ make<ConstantInteger>(ctx.getIndexType(), idx) });
    };

    uint32_t idx = 0;
    if(elementType->isArray()) {
        auto subArrayType = elementType->as<ArrayType>();
        const auto count = subArrayType->getScalarCount();
        const auto scalarType = subArrayType->getScalarType();

        std::vector<Value*> cachedScalars;
        auto flushScalars = [&] {
            flushScalarsDynamic(ctx, cachedScalars, 0, makePtr(idx++), subArrayType, dstQualifier);
            cachedScalars.clear();
        };
        for(auto element : mElements) {
            if(auto subArr = dynamic_cast<ArrayInitializer*>(element)) {
                if(!cachedScalars.empty()) {
                    if(cachedScalars.size() != count)
                        reportFatal("invalid array initializer");
                    flushScalars();
                }

                const auto ptr = makePtr(idx++);
                subArr->shapeAwareEmitDynamic(ctx, ptr, subArrayType, dstQualifier);
            } else {
                const auto value = ctx.getRValue(element, scalarType, dstQualifier);
                cachedScalars.push_back(value);
                if(cachedScalars.size() == count)
                    flushScalars();
            }
        }

        if(!cachedScalars.empty())
            flushScalars();
    } else {
        for(auto element : mElements) {
            if(dynamic_cast<ArrayInitializer*>(element))
                reportFatal("too many braces");
            else {
                const auto ptr = makePtr(idx++);
                ctx.makeOp<StoreInst>(ptr, ctx.getRValue(element, elementType, dstQualifier));
            }
        }
    }
    for(; idx < type->getElementCount(); ++idx) {
        zeroInitialize(ctx, makePtr(idx), elementType);
    }
}
QualifiedValue BreakExpr::emit(EmitContext& ctx) const {
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ ctx.getBreakTarget() });
    return QualifiedValue{};
}
QualifiedValue ContinueExpr::emit(EmitContext& ctx) const {
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ ctx.getContinueTarget() });
    return QualifiedValue{};
}

QualifiedValue EmptyExpr::emit(EmitContext& ctx) const {
    return QualifiedValue{};
}

void GlobalVarDefinition::emit(EmitContext& ctx) const {
    auto module = ctx.getModule();
    const auto t = ctx.getType(type.typeIdentifier, type.space, var.arraySize);
    auto global = make<GlobalVariable>(StringIR{ var.name }, t);
    if(var.initialValue) {
        if(t->isArray()) {
            if(auto arrayInitializer = dynamic_cast<ArrayInitializer*>(var.initialValue))
                global->setInitialValue(arrayInitializer->shapeAwareEmitStatic(ctx, t->as<ArrayType>(), type.qualifier));
            else
                reportFatal("cannot initialize a global array with a scalar");
        } else {
            if(dynamic_cast<ArrayInitializer*>(var.initialValue))
                reportFatal("cannot initialize a global scalar with an array initializer");

            const auto initialValue = ctx.getRValue(var.initialValue, t, type.qualifier);
            if(initialValue->isConstant()) {
                global->setInitialValue(initialValue->as<ConstantValue>());
                ctx.addConstant(global, initialValue);
            } else
                reportFatal("cannot initialize a global scalar with a non-constant");
        }
    }
    module->add(global);
    ctx.addIdentifier(var.name, QualifiedValue{ global, ValueQualifier::AsLValue, type.qualifier });
}

void StructDefinition::emit(EmitContext& ctx) const {
    Vector<StructField> fields;
    for(auto& item : list) {
        for(auto& subItem : item.var) {
            const auto type = ctx.getType(item.type.typeIdentifier, item.type.space, subItem.arraySize);
            fields.push_back(StructField{ SourceLocation{}, type, StringIR{ subItem.name } });
            if(subItem.initialValue)
                reportFatal("initial values of struct fields is not allowed");
        }
    }
    auto type = make<StructType>(StringIR{ name }, std::move(fields));
    ctx.addIdentifier(name, type);
    ctx.getModule()->add(type);
}

CMMC_NAMESPACE_END

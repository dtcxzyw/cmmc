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
#include <cmmc/Frontend/SourceLocation.hpp>
#include <cmmc/IR/Attachments.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/EnumName.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <cmmc/Support/StringFlyWeight.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <limits>
#include <queue>
#include <type_traits>
#include <unordered_map>
#include <variant>

CMMC_NAMESPACE_BEGIN

extern Flag strictMode;

std::pair<FunctionCallInfo, const FunctionType*> FunctionDeclaration::getSignature(EmitContext& ctx) const {
    FunctionCallInfo info;

    auto ret = ctx.getType(retType.typeIdentifier, retType.space, {});
    info.retQualifier = info.retQualifier;
    if(ret->isArray())
        DiagnosticsContext::get().attach<Reason>("returning an array is not allowed").reportFatal();

    const auto& target = ctx.getModule()->getTarget();
    const auto& targetFrameInfo = target.getTargetFrameInfo();
    const auto& dataLayout = target.getDataLayout();
    Vector<const Type*> argTypes;
    for(auto& arg : args) {
        assert(!arg.var.initialValue);
        const auto type = ctx.getType(arg.type.typeIdentifier, arg.type.space, arg.var.arraySize);
        if(type->isVoid())
            DiagnosticsContext::get().attach<Reason>("the type of argument cannot be void").reportFatal();
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

bool sortBlocks(Function& func);

void FunctionDefinition::emit(EmitContext& ctx) const {
    Stage stage{ "emit function" };

    auto module = ctx.getModule();
    auto [info, funcType] = decl.getSignature(ctx);
    auto func = make<Function>(decl.symbol, funcType);
    module->add(func);
    ctx.addIdentifier(decl.symbol, QualifiedValue{ func });
    ctx.addFunctionCallInfo(funcType, info);

    ctx.setCurrentFunction(func);
    ctx.pushScope();  // arguments
    const auto entry = ctx.addBlock(funcType->getArgTypes());
    entry->setLabel(String::get("entry"));
    ctx.setCurrentBlock(entry);

    // NOTICE: function arguments must be lvalues
    for(size_t idx = 0; idx < decl.args.size(); ++idx) {
        const auto& name = decl.args[idx].var.name;
        const auto arg = entry->getArg(idx);
        arg->setLabel(name);

        if(!info.passingArgsByPointer[idx]) {
            // passing by register
            const auto memArg = ctx.makeOp<StackAllocInst>(arg->getType());
            memArg->setLabel(name);
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
                memArg->setLabel(name);
                ctx.makeOp<StoreInst>(memArg, ctx.makeOp<LoadInst>(arg));
                ctx.addIdentifier(name, { memArg, ValueQualifier::AsLValue, decl.args[idx].type.qualifier });
            }
        }
    }
    {
        Stage stage{ "emit function body" };
        for(auto st : block)
            st->emitWithLoc(ctx);
    }

    ctx.popScope();
    ctx.setCurrentBlock(nullptr);  // clean up

    {
        Stage stage{ "post fixup" };
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
    }

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

            case OperatorID::BitwiseNot:
                return InstructionID::Not;
            case OperatorID::BitwiseAnd:
                return InstructionID::And;
            case OperatorID::BitwiseOr:
                return InstructionID::Or;
            case OperatorID::Xor:
                return InstructionID::Xor;

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

[[noreturn]] static void reportDividedByZero() {
    DiagnosticsContext::get().attach<Reason>("divided by zero").reportFatal();
};

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
                reportDividedByZero();
            } else
                return lhs / rhs;
        }
        case OperatorID::Rem: {
            if constexpr(std::is_integral_v<T>) {
                if(rhs)
                    return lhs % rhs;
                reportDividedByZero();
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
        return ctx.booleanToInt(ctx.makeOp<CompareInst>(inst, getCompareOp(op), lhs, rhs));
    } else {
        return ctx.makeOp<BinaryInst>(inst, lhs->getType(), lhs, rhs);
    }
}

static QualifiedValue emitArithmeticOp(EmitContext& ctx, Value* lhs, const Qualifier& lhsQualifier, Value* rhs,
                                       const Qualifier& rhsQualifier, OperatorID op) {
    auto lt = lhs->getType();
    auto rt = rhs->getType();
    if(!lt->isPrimitive() || !rt->isPrimitive())
        DiagnosticsContext::get().attach<Reason>("Custom operator is not supported").reportFatal();

    assert(!lt->isPointer() && !rt->isPointer());

    auto selectTargetType = [&](const Type*& target, Qualifier& targetQualifier, Qualifier lhsQ, Qualifier rhsQ) {
        if(lt->getFixedSize() != rt->getFixedSize()) {
            target = lt->getFixedSize() > rt->getFixedSize() ? lt : rt;
            targetQualifier = (target == lt ? lhsQ : rhsQ);
        } else {
            target = lt;
            targetQualifier = lhsQ.isSigned ? rhsQ : rhsQ;  // signed op unsigned -> unsigned
        }
    };

    const Type* target = nullptr;
    Qualifier targetQualifier;

    switch(op) {
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
            if((lt->isInteger() && rt->isInteger()) || (lt->isFloatingPoint() && rt->isFloatingPoint())) {
                selectTargetType(target, targetQualifier, lhsQualifier, rhsQualifier);
            } else {
                target = lt->isFloatingPoint() ? lt : rt;
                targetQualifier = (target == lt ? lhsQualifier : rhsQualifier);
            }
            break;
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
                DiagnosticsContext::get().attach<Reason>("rem/band/bor/xor float,float is not allowed").reportFatal();
            selectTargetType(target, targetQualifier, lhsQualifier, rhsQualifier);
            break;
        }
        default:
            reportUnreachable();
    }

    lhs = ctx.convertTo(lhs, target, lhsQualifier, targetQualifier);
    rhs = ctx.convertTo(rhs, target, rhsQualifier, targetQualifier);
    return QualifiedValue{ makeBinaryOp(ctx, op, target->isFloatingPoint(), targetQualifier.isSigned, lhs, rhs),
                           ValueQualifier::AsRValue, targetQualifier };
}

QualifiedValue BinaryExpr::emit(EmitContext& ctx) const {
    // assign op
    if(mOp == OperatorID::Assign) {
        auto [lhs, dstQualifier] = ctx.getLValue(mLhs);
        if(dstQualifier.isConst)
            DiagnosticsContext::get().attach<Reason>("require a mutable lvalue").reportFatal();
        auto rhs = ctx.getRValue(mRhs, lhs->getType()->as<PointerType>()->getPointee(), dstQualifier);
        if(rhs->getType()->isArray())
            DiagnosticsContext::get().attach<Reason>("cannot assign an array").reportFatal();

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
        return QualifiedValue{ ctx.booleanToInt(newBlock->getArg(0)) };
    }

    auto [rhs, rhsQualifier] = ctx.getRValue(mRhs);
    return emitArithmeticOp(ctx, lhs, lhsQualifier, rhs, rhsQualifier, mOp);
}

QualifiedValue CompoundAssignExpr::emit(EmitContext& ctx) const {
    const auto [lhs, lhsQualifier] = ctx.getLValue(mLhs);
    if(lhsQualifier.isConst)
        DiagnosticsContext::get().attach<Reason>("require a mutable lvalue").reportFatal();
    const auto valueType = lhs->getType()->as<PointerType>()->getPointee();

    const auto lhsValue = ctx.makeOp<LoadInst>(lhs);
    const auto [rhs, rhsQualifier] = ctx.getRValue(mRhs);
    const auto newValue = emitArithmeticOp(ctx, lhsValue, lhsQualifier, rhs, rhsQualifier, mOp);
    const auto newResult = ctx.convertTo(newValue.value, valueType, newValue.qualifier, lhsQualifier);
    ctx.makeOp<StoreInst>(lhs, newResult);
    return QualifiedValue{ lhs, ValueQualifier::AsLValue, lhsQualifier };
}

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
            DiagnosticsContext::get()
                .attach<Reason>("bitwise not is only allowed for integer types")
                .attach<TypeAttachment>("operand type", value->getType())
                .reportFatal();
        }
        case OperatorID::LogicalNot: {
            value = ctx.convertTo(value, IntegerType::getBoolean(), valueQualifier, {});
            return QualifiedValue{ ctx.booleanToInt(ctx.makeOp<UnaryInst>(InstructionID::Not, value->getType(), value)) };
        }
        case OperatorID::Positive: {
            if(value->getType()->isInteger() || value->getType()->isFloatingPoint())
                return QualifiedValue{ value };
            DiagnosticsContext::get().attach<Reason>("unary plus is only allowed for scalar types").reportFatal();
        }
        default:
            reportUnreachable();
    }
}

QualifiedValue SelfIncDecExpr::emit(EmitContext& ctx) const {
    auto [ptr, qualifier] = ctx.getLValue(mValue);
    if(qualifier.isConst)
        DiagnosticsContext::get()
            .attach<Reason>("Cannot apply self increment/decrement operator to an immutable left value")
            .reportFatal();
    const auto type = ptr->getType()->as<PointerType>()->getPointee();
    const auto val = ctx.makeOp<LoadInst>(ptr);
    if(type->isBoolean()) {
        reportWarning() << "Apply self increment/decrement operator to a boolean" << std::endl;
    }
    InstructionID instID;
    Value* rhs;
    if(type->isInteger()) {
        rhs = make<ConstantInteger>(val->getType(), 1);
        instID = ((mOp == OperatorID::PrefixInc || mOp == OperatorID::SuffixInc) ? InstructionID::Add : InstructionID::Sub);
    } else if(type->isFloatingPoint()) {
        rhs = make<ConstantFloatingPoint>(val->getType(), 1.0);
        instID = ((mOp == OperatorID::PrefixInc || mOp == OperatorID::SuffixInc) ? InstructionID::FAdd : InstructionID::FSub);
    } else {
        DiagnosticsContext::get().attach<Reason>("Unsupported type for self increment/decrement operator").reportFatal();
    }

    const auto newVal = ctx.makeOp<BinaryInst>(instID, type, val, rhs);
    ctx.makeOp<StoreInst>(ptr, newVal);
    if(mOp == OperatorID::PrefixInc || mOp == OperatorID::PrefixDec) {
        return QualifiedValue{ ptr, ValueQualifier::AsLValue, qualifier };
    } else {
        return QualifiedValue{ val, ValueQualifier::AsRValue, qualifier };
    }
}

QualifiedValue AddressExpr::emit(EmitContext& ctx) const {
    const auto [val, qualifier] = ctx.getLValue(mValue);
    return { val, ValueQualifier::AsRValue, qualifier };
}
QualifiedValue DerefExpr::emit(EmitContext& ctx) const {
    const auto [val, qualifier] = ctx.getRValue(mValue);
    return { val, ValueQualifier::AsLValue, qualifier };
}

QualifiedValue ConstantIntExpr::emit(EmitContext&) const {
    // TODO: signed/unsigned?
    return QualifiedValue{ make<ConstantInteger>(IntegerType::get(mBitWidth), static_cast<intmax_t>(mValue)),
                           ValueQualifier::AsRValue, Qualifier::getSigned() };
}

QualifiedValue ConstantFloatExpr::emit(EmitContext&) const {
    return QualifiedValue{ make<ConstantFloatingPoint>(FloatingPointType::get(mIsFloat), mValue) };
}

QualifiedValue ConstantStringExpr::emit(EmitContext& ctx) const {
    const auto val =
        emitGlobal(String::get("cmmc.str.s" + std::to_string(mString.hash())), std::numeric_limits<uint32_t>::max(), ctx);
    val->attr().addAttr(GlobalVariableAttribute::ReadOnly);
    return QualifiedValue{ val, ValueQualifier::AsRValue, Qualifier{ true } };
}

GlobalVariable* ConstantStringExpr::emitGlobal(String symbol, uint32_t size, EmitContext& ctx) const {
    const auto str = mString.prefix();
    const auto count = str.size();
    const auto i8 = IntegerType::get(8);
    Vector<ConstantValue*> elements;
    if(size < count)
        DiagnosticsContext::get().attach<Reason>("the array size is too small").reportFatal();

    for(uint32_t idx = 0; idx < count; ++idx) {
        elements.push_back(make<ConstantInteger>(i8, static_cast<intmax_t>(str[idx])));
    }
    const auto type = make<ArrayType>(i8, size == std::numeric_limits<uint32_t>::max() ? static_cast<uint32_t>(count + 1) : size);
    const auto global = make<GlobalVariable>(symbol, type);
    global->setInitialValue(make<ConstantArray>(type, std::move(elements)));
    ctx.getModule()->add(global);
    return global;
}

QualifiedValue FunctionCallExpr::emit(EmitContext& ctx) const {
    auto [callee, calleeQualifier] = ctx.getRValue(mCallee);
    CMMC_UNUSED(calleeQualifier);
    if(!callee->getType()->isFunction())
        DiagnosticsContext::get().attach<Reason>("cannot call uninvokable").reportFatal();
    const auto& info = ctx.getFunctionCallInfo(callee->getType()->as<FunctionType>());

    auto argExprs = mArgs;
    // SysY starttime/stoptime
    if(auto func = dynamic_cast<Function*>(callee)) {
        const auto symbol = func->getSymbol();
        if(symbol == "starttime" || symbol == "stoptime") {
            if(argExprs.empty())
                argExprs.push_back(make<ConstantIntExpr>(location(), location().line, 32U, false));
            else
                DiagnosticsContext::get().attach<Reason>("the numbers of provided/required arguments mismatch").reportFatal();
        }
    }

    // TODO: va_args
    auto& argTypes = callee->getType()->as<FunctionType>()->getArgTypes();
    if(argTypes.size() != argExprs.size())
        DiagnosticsContext::get().attach<Reason>("the numbers of provided/required arguments mismatch").reportFatal();

    Vector<Value*> args;
    args.reserve(argExprs.size());
    for(uint32_t idx = 0; idx < argExprs.size(); ++idx) {
        const auto arg = argExprs[idx];
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
                DiagnosticsContext::get().attach<Reason>("the function should return nothing").reportFatal();
            ctx.makeOp<ReturnInst>();
        } else {
            if(!mReturnValue)
                DiagnosticsContext::get().attach<Reason>("the function should return a value").reportFatal();
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
    ifBlock->setLabel(String::get("if.then"));
    const auto newBlock = ctx.addBlock();

    ctx.setCurrentBlock(ifBlock);
    mThenBlock->emitWithLoc(ctx);
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ newBlock });

    if(mElseBlock) {
        const auto elseBlock = ctx.addBlock();
        elseBlock->setLabel(String::get("if.else"));

        ctx.setCurrentBlock(oldBlock);
        ctx.makeOp<ConditionalBranchInst>(pred, BranchTarget{ ifBlock }, BranchTarget{ elseBlock });

        ctx.setCurrentBlock(elseBlock);
        mElseBlock->emitWithLoc(ctx);
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
        statement->emitWithLoc(ctx);
    ctx.popScope();
    return QualifiedValue{};
}

QualifiedValue WhileExpr::emit(EmitContext& ctx) const {
    auto whileHeader = ctx.addBlock();
    whileHeader->setLabel(String::get("while.header"));
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ whileHeader });
    ctx.setCurrentBlock(whileHeader);

    auto val = ctx.getRValue(mPredicate, IntegerType::getBoolean(), {});

    auto whileBody = ctx.addBlock();
    whileBody->setLabel(String::get("while.body"));
    auto newBlock = ctx.addBlock();

    ctx.makeOp<ConditionalBranchInst>(val, BranchTarget{ whileBody }, BranchTarget{ newBlock });

    ctx.pushLoop(whileHeader, newBlock);
    ctx.setCurrentBlock(whileBody);
    mBlock->emitWithLoc(ctx);
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ whileHeader });
    ctx.popLoop();

    ctx.setCurrentBlock(newBlock);

    return QualifiedValue{};
}

QualifiedValue DoWhileExpr::emit(EmitContext& ctx) const {
    auto body = ctx.addBlock();
    body->setLabel(String::get("dowhile.body"));
    auto header = ctx.addBlock();
    header->setLabel(String::get("dowhile.header"));
    auto next = ctx.addBlock();

    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ body });

    ctx.pushLoop(header, next);
    ctx.setCurrentBlock(body);
    mBody->emitWithLoc(ctx);
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ header });
    ctx.popLoop();

    ctx.setCurrentBlock(header);
    auto val = ctx.getRValue(mCondition, IntegerType::getBoolean(), {});
    ctx.makeOp<ConditionalBranchInst>(val, BranchTarget{ body }, BranchTarget{ next });
    ctx.setCurrentBlock(next);

    return QualifiedValue{};
}

QualifiedValue LocalVarDefExpr::emit(EmitContext& ctx) const {
    for(auto& [name, arraySize, initExpr] : mVars) {
        const auto type = ctx.getType(mType.typeIdentifier, mType.space, arraySize);
        auto local = ctx.makeOp<StackAllocInst>(type);
        local->setLabel(name);

        if(initExpr) {
            if(type->isArray()) {
                if(auto arrayInitializer = dynamic_cast<ArrayInitializer*>(initExpr)) {
                    arrayInitializer->shapeAwareEmitDynamic(ctx, local, type->as<ArrayType>(), mType.qualifier);
                } else
                    DiagnosticsContext::get().attach<Reason>("cannot initialize an array with a scalar value").reportFatal();
            } else {
                if(dynamic_cast<ArrayInitializer*>(initExpr))
                    DiagnosticsContext::get()
                        .attach<Reason>("cannot initialize a scalar with an array initializer")
                        .reportFatal();
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
    const auto [base, valueQualifier, qualifier] = mBase->emitWithLoc(ctx);
    const auto idx = ctx.getRValue(mIndex, ctx.getIndexType(), Qualifier::getUnsigned());
    if(valueQualifier == ValueQualifier::AsLValue) {
        if(base->getType()->as<PointerType>()->getPointee()->isArray()) {
            // int a[10];
            // a[i];
            return { ctx.makeOp<GetElementPtrInst>(base, Vector<Value*>{ ctx.getZeroIndex(), idx }), ValueQualifier::AsLValue,
                     qualifier };
        } else if(base->getType()->as<PointerType>()->getPointee()->isPointer()) {
            // int a[];
            // a[i];
            const auto addr = ctx.makeOp<LoadInst>(base);
            return { ctx.makeOp<GetElementPtrInst>(addr, Vector<Value*>{ idx }), ValueQualifier::AsLValue, qualifier };
        } else
            reportUnreachable();
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
        DiagnosticsContext::get().attach<Reason>("cannot index a non-struct value").reportFatal();
    const auto offset = structType->as<StructType>()->getOffset(mField);
    const auto ptr = ctx.makeOp<GetElementPtrInst>(base, Vector<Value*>{ ctx.getZeroIndex(), offset });
    return { ptr, ValueQualifier::AsLValue, qualifier };  // TODO: sign/unsign mutable/const qualifier from struct field
}
Value* EmitContext::booleanToInt(Value* value) {
    assert(value->getType()->isBoolean());
    return makeOp<CastInst>(InstructionID::ZExt, mInteger, value);
}
Value* EmitContext::convertTo(Value* value, const Type* type, Qualifier srcQualifier, Qualifier dstQualifier) {
    const auto srcType = value->getType();
    if(srcType->isPointer() && srcQualifier.isConst && !dstQualifier.isConst)
        DiagnosticsContext::get().attach<Reason>("cannot remove the const qualifier").reportFatal();

    if(srcType->isSame(type))
        return value;
    if(srcType->isPointer() && type->isPointer()) {
        const auto pointee = srcType->as<PointerType>()->getPointee();
        if(pointee->isArray()) {
            auto base = makeOp<GetElementPtrInst>(value, Vector<Value*>{ getZeroIndex(), getZeroIndex() });
            while(!base->getType()->isSame(type)) {
                if(!base->getType()->as<PointerType>()->getPointee()->isArray())
                    DiagnosticsContext::get().attach<Reason>("cannot decay array to pointer").reportFatal();
                base = makeOp<GetElementPtrInst>(base, Vector<Value*>{ getZeroIndex(), getZeroIndex() });
            }
            return base;
        } else
            DiagnosticsContext::get().attach<Reason>("unsupported pointer conversion").reportFatal();
    }

    InstructionID id = InstructionID::None;
    if(type->isBoolean()) {
        if(srcType->isInteger()) {
            return makeOp<CompareInst>(InstructionID::SCmp, CompareOp::NotEqual, value, make<ConstantInteger>(srcType, 0));
        } else if(srcType->isFloatingPoint()) {
            return makeOp<CompareInst>(InstructionID::FCmp, CompareOp::NotEqual, value,
                                       make<ConstantFloatingPoint>(srcType, 0.0));
        }
    } else if(srcType->isInteger() && type->isInteger()) {
        if(value->isConstant()) {
            const auto cint = value->as<ConstantInteger>();
            return make<ConstantInteger>(
                type, srcQualifier.isSigned ? cint->getSignExtended() : static_cast<intmax_t>(cint->getZeroExtended()));
        }

        if(srcType->getFixedSize() < type->getFixedSize()) {
            id = srcQualifier.isSigned ? InstructionID::SExt : InstructionID::ZExt;
        } else
            id = InstructionID::Trunc;
    } else if(srcType->isInteger() && type->isFloatingPoint()) {
        if(strictMode.get())
            DiagnosticsContext::get().attach<Reason>("implicit I2F conversion is not allowed in strict mode").reportFatal();

        if(value->isConstant()) {
            const auto cint = value->as<ConstantInteger>();
            return make<ConstantFloatingPoint>(type,
                                               srcQualifier.isSigned ? static_cast<double>(cint->getSignExtended()) :
                                                                       static_cast<double>(cint->getZeroExtended()));
        }
        id = srcQualifier.isSigned ? InstructionID::S2F : InstructionID::U2F;
    } else if(srcType->isFloatingPoint() && type->isInteger()) {
        if(strictMode.get())
            DiagnosticsContext::get().attach<Reason>("implicit F2I conversion is not allowed in strict mode").reportFatal();

        if(value->isConstant()) {
            const auto cfp = value->as<ConstantFloatingPoint>()->getValue();
            return make<ConstantInteger>(
                type, dstQualifier.isSigned ? static_cast<intmax_t>(cfp) : static_cast<intmax_t>(static_cast<uintmax_t>(cfp)));
        }
        id = dstQualifier.isSigned ? InstructionID::F2S : InstructionID::F2U;
    } else if(srcType->isFloatingPoint() && type->isFloatingPoint()) {
        if(value->isConstant()) {
            const auto cfp = value->as<ConstantFloatingPoint>()->getValue();
            return make<ConstantFloatingPoint>(type, cfp);
        }

        id = InstructionID::FCast;
    }

    if(id == InstructionID::None) {
        auto& err = reportError();
        srcType->dump(err << "from ");
        type->dump(err << " to ");
        DiagnosticsContext::get()
            .attach<Reason>("cannot convert scalar value")
            .attach<TypeAttachment>("from", srcType)
            .attach<TypeAttachment>("to", type)
            .reportFatal();
    }
    return makeOp<CastInst>(id, type, value);
}
std::pair<Value*, Qualifier> EmitContext::getRValue(Expr* expr) {
    return getRValue(expr->emitWithLoc(*this));
}
Value* EmitContext::getRValue(Expr* expr, const Type* type, Qualifier dstQualifier) {
    const auto [val, valQualifier] = getRValue(expr);
    return convertTo(val, type, valQualifier, dstQualifier);
}
std::pair<Value*, Qualifier> EmitContext::getLValue(Expr* expr) {
    const auto [val, valQualifier, qualifier] = expr->emitWithLoc(*this);
    if(valQualifier == ValueQualifier::AsLValue)
        return { val, qualifier };
    DiagnosticsContext::get().attach<Reason>("cannot convert a rvalue to a lvalue").reportFatal();
}
Value* EmitContext::getLValueForce(Expr* expr, const Type* type, Qualifier dstQualifier) {
    const auto createFromRValue = [&](Value* rvalue, Qualifier srcQualifier) -> Value* {
        const auto val = convertTo(rvalue, type, srcQualifier, dstQualifier);
        const auto storage = makeOp<StackAllocInst>(val->getType());
        makeOp<StoreInst>(storage, val);
        return storage;
    };

    const auto [val, valQualifier, qualifier] = expr->emitWithLoc(*this);

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
    assert(!mScopes.empty());
    for(auto& [symbol, val] : mScopes.back().variables) {
        if(auto iter = uniqueVariables.find(symbol); iter != uniqueVariables.cend())
            uniqueVariables.erase(iter);
        mConstantBinding.erase(val.value);
        if(auto alloc = dynamic_cast<StackAllocInst*>(val.value)) {
            makeOp<StackFreeInst>(alloc);
        }
    }
    mScopes.pop_back();
}

// TODO: last definition?
struct RedefinedIdentifier final {
    String identifier;
    friend void operator<<(std::ostream& out, const RedefinedIdentifier& err) {
        out << "Redefined identifier \"" << err.identifier << '"' << std::endl;
    }
};
void EmitContext::addIdentifier(String identifier, QualifiedValue value) {
    assert(!mScopes.empty());
    auto& scope = mScopes.back();
    if(scope.variables.count(identifier))
        DiagnosticsContext::get().attach<RedefinedIdentifier>(identifier).reportFatal();
    scope.variables.emplace(identifier, value);
    if(auto iter = uniqueVariables.find(identifier); iter != uniqueVariables.cend())
        iter->second.value = nullptr;
    else
        uniqueVariables.emplace(identifier, value);
}
struct UndefinedIdentifier final {
    String identifier;
    friend void operator<<(std::ostream& out, const UndefinedIdentifier& err) {
        out << "Undefined identifier \"" << err.identifier << '"' << std::endl;
    }
};
QualifiedValue EmitContext::lookupIdentifier(const String& identifier) {
    assert(!mScopes.empty());
    if(auto iter = uniqueVariables.find(identifier); iter != uniqueVariables.cend() && iter->second.value)
        return iter->second;

    for(auto iter = mScopes.crbegin(); iter != mScopes.crend(); ++iter)
        if(auto it = iter->variables.find(identifier); it != iter->variables.cend())
            return it->second;
    DiagnosticsContext::get().attach<UndefinedIdentifier>(identifier).reportFatal();
}
void EmitContext::addConstant(Value* address, Value* val) {
    mConstantBinding.emplace(address, val);
}
EmitContext::EmitContext(Module* module) : mModule{ module } {
    mInteger = make<IntegerType>(32U);
    mFloat = make<FloatingPointType>(true);
    mChar = make<IntegerType>(8U);
}
const Type* EmitContext::getType(const String& type, TypeLookupSpace space, const ArraySize& arraySize) {
    const Type* ret = nullptr;
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
            DiagnosticsContext::get().attach<Reason>("void-based array is not allowed").reportFatal();

        bool unknownSize = false;
        for(auto iter = arraySize.rbegin(); iter != arraySize.rend(); ++iter) {
            const auto expr = *iter;

            if(unknownSize)
                DiagnosticsContext::get().attach<Reason>("invalid unknown-sized array").reportFatal();

            if(expr == nullptr) {
                unknownSize = true;
                ret = make<PointerType>(ret);
                // TODO: add const qualifier
                // int[] -> int* const
            } else {
                const auto constantSize = getRValue(*iter, getIndexType(), Qualifier::getUnsigned());

                if(constantSize->isConstant()) {
                    const auto val = constantSize->as<ConstantInteger>();
                    const auto size = val->getZeroExtended();

                    if(size <= 0)
                        DiagnosticsContext::get().attach<Reason>("invalid array size").reportFatal();
                    if(size >= (1U << 30))
                        DiagnosticsContext::get().attach<Reason>("array is too large").reportFatal();

                    ret = make<ArrayType>(ret, static_cast<uint32_t>(size));
                } else
                    DiagnosticsContext::get().attach<Reason>("array size must be constant integer").reportFatal();
            }
        }
    }
    return ret;
}

void EmitContext::addIdentifier(String identifier, const StructType* type) {
    if(mStructTypes.count(identifier))
        DiagnosticsContext::get().attach<RedefinedIdentifier>(identifier).reportFatal();
    mStructTypes.emplace(std::move(identifier), type);
}

void EmitContext::addFunctionCallInfo(const FunctionType* func, FunctionCallInfo info) {
    mCallInfo.emplace(func, std::move(info));
}
const FunctionCallInfo& EmitContext::getFunctionCallInfo(const FunctionType* func) {
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
    DiagnosticsContext::get().attach<Reason>("no continue target").reportFatal();
}
Block* EmitContext::getBreakTarget() {
    if(!mTerminatorTarget.empty())
        return mTerminatorTarget.back().second;
    DiagnosticsContext::get().attach<Reason>("no break target").reportFatal();
}

QualifiedValue ArrayInitializer::emit(EmitContext&) const {
    reportUnreachable();
}

void ArrayInitializer::gatherArrayElementsImpl(EmitContext& ctx, uint32_t& offset, uint32_t layer,
                                               const std::vector<uint32_t>& sizes, std::map<uint32_t, Expr*>& values) const {
    assert(offset % sizes[layer] == 0);
    const auto upperBound = offset + sizes[layer];
    uint32_t nextLayer = std::numeric_limits<uint32_t>::max();
    for(auto element : mElements) {
        if(auto subArray = dynamic_cast<ArrayInitializer*>(element)) {
            if(element == mElements.front()) {  // begins with an opening brace
                nextLayer = layer + 1;
                if(nextLayer >= sizes.size())
                    DiagnosticsContext::get().attach<Reason>("too many braces in array initializer").reportFatal();
            } else if(nextLayer == std::numeric_limits<uint32_t>::max()) {
                for(uint32_t idx = layer + 1; idx < sizes.size(); ++idx) {
                    if(offset % sizes[idx] == 0) {
                        nextLayer = idx;
                        break;
                    }
                }
                if(nextLayer == std::numeric_limits<uint32_t>::max())
                    DiagnosticsContext::get().attach<Reason>("invalid array initializer").reportFatal();
            }

            subArray->gatherArrayElementsImpl(ctx, offset, nextLayer, sizes, values);
        } else {
            values[offset++] = element;
        }
    }
    if(offset > upperBound)
        DiagnosticsContext::get().attach<Reason>("too many elements in array initializer").reportFatal();
    offset = upperBound;
}

static std::vector<uint32_t> calculateArrayScalarSizes(const ArrayType* type) {
    std::vector<uint32_t> sizes;

    auto cur = type;
    while(true) {
        sizes.push_back(cur->getElementCount());
        const auto next = cur->getElementType();
        if(next->isArray())
            cur = next->as<ArrayType>();
        else {
            sizes.push_back(1);
            break;
        }
    }
    for(uint32_t idx = sizes.size() - 1; idx >= 1; --idx)
        sizes[idx - 1] *= sizes[idx];
    return sizes;
}

std::map<uint32_t, Expr*> ArrayInitializer::gatherArrayElements(EmitContext& ctx, const ArrayType* type) const {
    std::map<uint32_t, Expr*> values;
    uint32_t offset = 0;
    gatherArrayElementsImpl(ctx, offset, 0, calculateArrayScalarSizes(type), values);
    return values;
}

ConstantValue* ArrayInitializer::shapeAwareEmitStaticImpl(EmitContext& ctx, const std::map<uint32_t, Expr*>& values,
                                                          uint32_t offset, const ArrayType* type, Qualifier dstQualifier) const {
    const auto subType = type->getElementType();
    const auto count = type->getElementCount();

    Vector<ConstantValue*> elements;

    if(subType->isArray()) {
        const auto subArrayType = subType->as<ArrayType>();
        const auto subCount = subArrayType->getScalarCount();
        for(uint32_t idx = 0; idx < count; ++idx) {
            const auto beg = offset + subCount * idx;
            const auto end = offset + subCount * (idx + 1);

            auto begIter = values.lower_bound(beg);
            auto endIter = values.lower_bound(end);

            if(begIter != endIter) {
                if(elements.size() != idx)
                    DiagnosticsContext::get().attach<Reason>("sparse array initialization is not supported").reportFatal();
                elements.push_back(shapeAwareEmitStaticImpl(ctx, values, beg, subArrayType, dstQualifier));
            }
        }
    } else {
        for(uint32_t idx = 0; idx < count; ++idx) {
            if(auto iter = values.find(idx + offset); iter != values.cend()) {
                if(elements.size() != idx)
                    DiagnosticsContext::get().attach<Reason>("sparse array initialization is not supported").reportFatal();
                const auto value = ctx.getRValue(iter->second, subType, dstQualifier);
                if(!value->isConstant())
                    DiagnosticsContext::get().attach<Reason>("require constants in static array initialization").reportFatal();
                elements.push_back(value->as<ConstantValue>());
            }
        }
    }

    return make<ConstantArray>(type, std::move(elements));
}

ConstantValue* ArrayInitializer::shapeAwareEmitStatic(EmitContext& ctx, const ArrayType* type, Qualifier dstQualifier) const {
    const auto values = gatherArrayElements(ctx, type);
    return shapeAwareEmitStaticImpl(ctx, values, 0, type, dstQualifier);
}

void ArrayInitializer::shapeAwareEmitDynamic(EmitContext& ctx, Value* storage, const ArrayType* type,
                                             Qualifier dstQualifier) const {
    const auto scalarType = type->getScalarType();
    ConstantValue* zero = nullptr;
    if(scalarType->isInteger())
        zero = make<ConstantInteger>(scalarType, 0);
    else if(scalarType->isFloatingPoint())
        zero = make<ConstantFloatingPoint>(scalarType, 0.0);
    else
        DiagnosticsContext::get().attach<Reason>("cannot zero initialization a non-builtin scalar").reportFatal();

    const auto sizes = calculateArrayScalarSizes(type);
    const auto getAddress = [&](uint32_t offset) -> Value* {
        Vector<Value*> indices;
        indices.reserve(sizes.size());

        for(auto siz : sizes) {
            indices.push_back(make<ConstantInteger>(ctx.getIndexType(), offset / siz));
            offset %= siz;
        }

        const auto ptr = ctx.makeOp<GetElementPtrInst>(storage, std::move(indices));
        assert(ptr->getType()->as<PointerType>()->getPointee()->isSame(scalarType));
        return ptr;
    };

    const auto memsetFunc = ctx.getIntrinsic(Intrinsic::memset);
    const auto& dataLayout = ctx.getModule()->getTarget().getDataLayout();
    const auto i8ptr = make<PointerType>(IntegerType::get(8U));
    const auto zeroByte = make<ConstantInteger>(IntegerType::get(32), 0);
    const auto scalarSize = scalarType->getSize(dataLayout);

    uint32_t lastNotAssigned = 0;
    const auto zeroTo = [&](uint32_t offset) -> Value* {
        const auto end = getAddress(offset);
        if(lastNotAssigned == offset)
            return end;
        const auto totalSize = static_cast<intmax_t>(scalarSize * (offset - lastNotAssigned));
        constexpr intmax_t inlineMemsetThreshold = 256;

        if(totalSize <= inlineMemsetThreshold) {
            while(lastNotAssigned != offset) {
                ctx.makeOp<StoreInst>(getAddress(lastNotAssigned), zero);
                ++lastNotAssigned;
            }
        } else {
            const auto beg = getAddress(lastNotAssigned);
            const auto ptr = ctx.makeOp<PtrCastInst>(beg, i8ptr);
            const auto size =
                make<ConstantInteger>(ctx.getIndexType(), static_cast<intmax_t>(scalarSize * (offset - lastNotAssigned)));
            ctx.makeOp<FunctionCallInst>(memsetFunc,
                                         Vector<Value*>{
                                             ptr,
                                             zeroByte,
                                             size,
                                         });
        }
        return end;
    };

    const auto values = gatherArrayElements(ctx, type);
    for(auto [offset, value] : values) {
        const auto val = ctx.getRValue(value, scalarType, dstQualifier);
        if(val->isConstant()) {
            if(cint_(0)(val) || cfp_(0.0)(val))
                continue;  // use zero initialization
        }
        const auto dst = zeroTo(offset);
        lastNotAssigned = offset + 1;
        ctx.makeOp<StoreInst>(dst, val);
    }
    zeroTo(type->getScalarCount());
}
QualifiedValue BreakExpr::emit(EmitContext& ctx) const {
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ ctx.getBreakTarget() });
    return QualifiedValue{};
}
QualifiedValue ContinueExpr::emit(EmitContext& ctx) const {
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ ctx.getContinueTarget() });
    return QualifiedValue{};
}

QualifiedValue EmptyExpr::emit(EmitContext&) const {
    return QualifiedValue{};
}

void GlobalVarDefinition::emit(EmitContext& ctx) const {
    Stage stage{ "emit global" };

    auto module = ctx.getModule();
    GlobalVariable* global = nullptr;
    const auto t = ctx.getType(type.typeIdentifier, type.space, var.arraySize);
    if(auto str = dynamic_cast<ConstantStringExpr*>(var.initialValue)) {
        uint32_t size = std::numeric_limits<uint32_t>::max();
        const auto i8 = IntegerType::get(8U);
        if(auto arr = dynamic_cast<const ArrayType*>(t)) {
            size = arr->getElementCount();
            if(!arr->getElementType()->isSame(i8))
                DiagnosticsContext::get().attach<Reason>("type mismatch").reportFatal();
        } else if(auto ptr = dynamic_cast<const PointerType*>(t)) {
            if(!ptr->getPointee()->isSame(i8))
                DiagnosticsContext::get().attach<Reason>("type mismatch").reportFatal();
        } else
            reportUnreachable();

        global = str->emitGlobal(var.name, size, ctx);
    } else {
        global = make<GlobalVariable>(var.name, t);
        if(var.initialValue) {
            if(t->isArray()) {
                if(auto arrayInitializer = dynamic_cast<ArrayInitializer*>(var.initialValue))
                    global->setInitialValue(arrayInitializer->shapeAwareEmitStatic(ctx, t->as<ArrayType>(), type.qualifier));
                else
                    DiagnosticsContext::get().attach<Reason>("cannot initialize a global array with a scalar").reportFatal();
            } else {
                if(dynamic_cast<ArrayInitializer*>(var.initialValue))
                    DiagnosticsContext::get()
                        .attach<Reason>("cannot initialize a global scalar with an array initializer")
                        .reportFatal();

                const auto initialValue = ctx.getRValue(var.initialValue, t, type.qualifier);
                if(initialValue->isConstant()) {
                    global->setInitialValue(initialValue->as<ConstantValue>());
                    if(type.qualifier.isConst)
                        ctx.addConstant(global, initialValue);
                } else
                    DiagnosticsContext::get()
                        .attach<Reason>("cannot initialize a global scalar with a non-constant")
                        .reportFatal();
            }
        }
        module->add(global);
    }

    if(type.qualifier.isConst) {
        global->attr().addAttr(GlobalVariableAttribute::ReadOnly);
    }
    ctx.addIdentifier(var.name, QualifiedValue{ global, ValueQualifier::AsLValue, type.qualifier });
}

void StructDefinition::emit(EmitContext& ctx) const {
    Stage stage{ "emit struct" };

    Vector<StructField> fields;
    for(auto& item : list) {
        for(auto& subItem : item.var) {
            const auto type = ctx.getType(item.type.typeIdentifier, item.type.space, subItem.arraySize);
            fields.push_back(StructField{ SourceLocation{}, type, subItem.name });
            if(subItem.initialValue)
                DiagnosticsContext::get().attach<Reason>("initial values of struct fields is not allowed").reportFatal();
        }
    }
    auto type = make<StructType>(name, std::move(fields));
    ctx.addIdentifier(name, type);
    ctx.getModule()->add(type);
}

Function* EmitContext::getIntrinsic(Intrinsic intrinsic) {
    auto symbol = enumName(intrinsic);
    for(auto global : mModule->globals())
        if(global->getSymbol() == symbol)
            return global->as<Function>();
    FunctionType* funcType = nullptr;
    switch(intrinsic) {
        case Intrinsic::none:
            reportUnreachable();
        case Intrinsic::memset: {
            const auto ptr = make<PointerType>(IntegerType::get(8));
            funcType = make<FunctionType>(ptr, Vector<const Type*>{ ptr, IntegerType::get(32), getIndexType() });
            break;
        }
        default:
            reportNotImplemented();
    }
    auto func = make<Function>(String::get(symbol), funcType, intrinsic);
    mModule->add(func);
    switch(intrinsic) {
        case Intrinsic::none:
            reportUnreachable();
        case Intrinsic::memset: {
            func->attr().addAttr(FunctionAttribute::NoMemoryRead);
            break;
        }
        default:
            reportNotImplemented();
    }
    return func;
}

QualifiedValue ForExpr::emit(EmitContext& ctx) const {
    ctx.pushScope();
    mInit->emitWithLoc(ctx);

    auto header = ctx.addBlock();
    header->setLabel(String::get("for.header"));
    auto body = ctx.addBlock();
    body->setLabel(String::get("for.body"));
    auto iteration = ctx.addBlock();
    iteration->setLabel(String::get("for.iteration"));
    auto next = ctx.addBlock();

    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ header });
    ctx.setCurrentBlock(header);
    if(mCondition)
        ctx.makeOp<ConditionalBranchInst>(ctx.getRValue(mCondition, IntegerType::getBoolean(), Qualifier{}), BranchTarget{ body },
                                          BranchTarget{ next });
    else
        ctx.makeOp<ConditionalBranchInst>(BranchTarget{ body });

    ctx.setCurrentBlock(body);
    ctx.pushLoop(iteration, next);
    mBody->emitWithLoc(ctx);
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ iteration });
    ctx.popLoop();

    ctx.setCurrentBlock(iteration);
    if(mIteration)
        mIteration->emitWithLoc(ctx);

    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ header });

    ctx.setCurrentBlock(next);
    ctx.popScope();

    return QualifiedValue{ nullptr };
}
std::pair<Value*, Qualifier> EmitContext::getRValue(const QualifiedValue& value) {
    const auto [val, valQualifier, qualifier] = value;
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
QualifiedValue SelectExpr::emit(EmitContext& ctx) const {
    auto lhsBlock = ctx.addBlock();
    lhsBlock->setLabel(String::get("lhsBlock"));
    auto rhsBlock = ctx.addBlock();
    rhsBlock->setLabel(String::get("rhsBlock"));

    const auto condition = ctx.getRValue(mCondition, IntegerType::getBoolean(), Qualifier{});
    ctx.makeOp<ConditionalBranchInst>(condition, BranchTarget{ lhsBlock }, BranchTarget{ rhsBlock });

    ctx.setCurrentBlock(lhsBlock);
    const auto lhs = mLhs->emitWithLoc(ctx);

    ctx.setCurrentBlock(rhsBlock);
    const auto rhs = mRhs->emitWithLoc(ctx);

    Qualifier qualifier;
    ValueQualifier valueQualifier;
    auto next = ctx.addBlock();
    if(lhs.valueQualifier == ValueQualifier::AsLValue && rhs.valueQualifier == ValueQualifier::AsLValue) {
        if(!lhs.value->getType()->isSame(rhs.value->getType()))
            DiagnosticsContext::get()
                .attach<Reason>("type mismatch")
                .attach<TypeAttachment>("lhs", lhs.value->getType())
                .attach<TypeAttachment>("rhs", rhs.value->getType())
                .reportFatal();
        if(lhs.qualifier.isSigned != rhs.qualifier.isSigned)
            DiagnosticsContext::get().attach<Reason>("type mismatch (integer extension mismatch)").reportFatal();
        next->addArg(lhs.value->getType());
        qualifier.isSigned = lhs.qualifier.isSigned;
        qualifier.isConst = lhs.qualifier.isConst || rhs.qualifier.isConst;
        ctx.setCurrentBlock(lhsBlock);
        ctx.makeOp<ConditionalBranchInst>(BranchTarget{ next, lhs.value });
        ctx.setCurrentBlock(rhsBlock);
        ctx.makeOp<ConditionalBranchInst>(BranchTarget{ next, rhs.value });
        valueQualifier = ValueQualifier::AsLValue;
    } else {
        // convert to rvalue
        ctx.setCurrentBlock(lhsBlock);
        auto [lhsValue, lhsQualifier] = ctx.getRValue(lhs);
        ctx.setCurrentBlock(rhsBlock);
        auto [rhsValue, rhsQualifier] = ctx.getRValue(rhs);

        if(!lhsValue->getType()->isSame(rhsValue->getType()))
            DiagnosticsContext::get()
                .attach<Reason>("type mismatch")
                .attach<TypeAttachment>("lhs", lhsValue->getType())
                .attach<TypeAttachment>("rhs", rhsValue->getType())
                .reportFatal();
        next->addArg(lhsValue->getType());
        if(lhsQualifier.isSigned != rhsQualifier.isSigned)
            DiagnosticsContext::get().attach<Reason>("type mismatch (integer extension mismatch)").reportFatal();
        qualifier.isSigned = lhsQualifier.isSigned;
        qualifier.isConst = lhsQualifier.isConst || rhsQualifier.isConst;
        ctx.setCurrentBlock(lhsBlock);
        ctx.makeOp<ConditionalBranchInst>(BranchTarget{ next, lhsValue });
        ctx.setCurrentBlock(rhsBlock);
        ctx.makeOp<ConditionalBranchInst>(BranchTarget{ next, rhsValue });
        valueQualifier = ValueQualifier::AsRValue;
    }

    ctx.setCurrentBlock(next);
    return QualifiedValue{ next->getArg(0), valueQualifier, qualifier };
}

QualifiedValue Expr::emitWithLoc(EmitContext& ctx) const {
#ifndef NDEBUG
    if(mEmitted) {
        DiagnosticsContext::get().attach<Reason>("emit twice").reportFatal();
    } else {
        mEmitted = true;
    }
#endif
    ctx.pushLoc(mLocation);
    const auto ret = emit(ctx);
    assert(!ret.value->getType()->isBoolean());
    ctx.popLoc();
    return ret;
}

void EmitContext::pushLoc(const SourceLocation& loc) {
    DiagnosticsContext::get().push<SourceLocation>(loc);
}
void EmitContext::popLoc() {
    DiagnosticsContext::get().pop<SourceLocation>();
}

CMMC_NAMESPACE_END

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

CMMC_NAMESPACE_BEGIN

extern Flag strictMode;

std::pair<PassingPlan, FunctionType*> FunctionDeclaration::getSignature(EmitContext& ctx) const {
    PassingPlan plan;

    auto ret = ctx.getType(retType.typeIdentifier, retType.space, {});
    if(ret->isArray())
        reportFatal("");

    const auto& target = ctx.getModule()->getTarget();
    const auto& targetFrameInfo = target.getTargetFrameInfo();
    const auto& dataLayout = target.getDataLayout();
    Vector<Type*> argTypes;
    for(auto& arg : args) {
        assert(!arg.var.initialValue);
        const auto type = ctx.getType(arg.type.typeIdentifier, arg.type.space, arg.var.arraySize);
        if(type->isVoid())
            reportFatal("");
        if(!type->isArray() && targetFrameInfo.shouldPassByRegister(type, dataLayout)) {
            argTypes.push_back(type);
            plan.passingArgsByPointer.push_back(false);
        } else {
            argTypes.push_back(make<PointerType>(type));
            plan.passingArgsByPointer.push_back(true);
        }
    }

    if(!ret->isVoid() && !targetFrameInfo.shouldPassByRegister(ret, dataLayout)) {
        argTypes.push_back(make<PointerType>(ret));
        ret = VoidType::get();
        plan.passingRetValByPointer = true;
    }

    return { std::move(plan), make<FunctionType>(ret, std::move(argTypes)) };
}

static void sortBlocks(Function& func);

void FunctionDefinition::emit(EmitContext& ctx) const {
    auto module = ctx.getModule();
    auto [plan, funcType] = decl.getSignature(ctx);
    auto func = make<Function>(StringIR{ decl.symbol }, funcType);
    module->add(func);
    ctx.addIdentifier(decl.symbol, func);
    ctx.addPassingPlan(func, plan);

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

        if(!plan.passingArgsByPointer[idx]) {
            // passing by register
            const auto memArg = ctx.makeOp<StackAllocInst>(arg->getType());
            memArg->setLabel(label);
            ctx.makeOp<StoreInst>(memArg, arg);
            ctx.addIdentifier(name, memArg);
        } else {
            // passing by pointer
            if(arg->getType()->isArray()) {
                ctx.addIdentifier(name, arg);
            } else {
                // TODO: handle const args
                // create a copy
                const auto type = arg->getType()->as<PointerType>()->getPointee();
                const auto memArg = ctx.makeOp<StackAllocInst>(type);
                memArg->setLabel(label);
                ctx.makeOp<StoreInst>(memArg, ctx.makeOp<LoadInst>(arg));
                ctx.addIdentifier(name, memArg);
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
            if(retType->isVoid() && !plan.passingRetValByPointer) {
                ctx.makeOp<ReturnInst>();
            } else {
                ctx.makeOp<UnreachableInst>();
            }
        }
    }

    blockArgPropagation(*func);
    sortBlocks(*func);

    ctx.popScope();
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

    if(inst == InstructionID::FCmp || inst == InstructionID::SCmp || inst == InstructionID::UCmp) {
        return ctx.makeOp<CompareInst>(inst, getCompareOp(op), lhs, rhs);
    } else {
        return ctx.makeOp<BinaryInst>(inst, lhs->getType(), lhs, rhs);
    }
}

Value* BinaryExpr::emit(EmitContext& ctx) const {
    // assign op
    if(mOp == OperatorID::Assign) {
        auto lhs = ctx.getLValue(mLhs);
        auto rhs = ctx.getRValue(mRhs);
        rhs = ctx.convertTo(rhs, lhs->getType()->as<PointerType>()->getPointee());

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
        ctx.makeOp<ConditionalBranchInst>(
            BranchTarget{ newBlock, ctx.convertTo(ctx.getRValue(mRhs), IntegerType::getBoolean()) });
        ctx.setCurrentBlock(newBlock);
        return newBlock->getArg(0);
    }

    // arithmetic op
    auto rhs = ctx.getRValue(mRhs);

    auto lt = lhs->getType();
    auto rt = rhs->getType();
    if(!lt->isPrimitive() || !rt->isPrimitive())
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
                target = lt->getFixedSize() > rt->getFixedSize() ? lt : rt;
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

            const auto target = lt->getFixedSize() > rt->getFixedSize() ? lt : rt;
            lhs = ctx.convertTo(lhs, target);
            rhs = ctx.convertTo(rhs, target);
            return makeBinaryOp(ctx, mOp, false, lhs, rhs);
        }
        default:
            reportUnreachable();
    }
}

Value* UnaryExpr::emit(EmitContext& ctx) const {
    auto value = ctx.getRValue(mValue);

    switch(mOp) {
        case OperatorID::Neg:
            return ctx.makeOp<UnaryInst>(value->getType()->isInteger() ? InstructionID::Neg : InstructionID::FNeg,
                                         value->getType(), value);
        case OperatorID::BitwiseNot: {
            if(value->getType()->isInteger()) {
                return ctx.makeOp<BinaryInst>(InstructionID::Xor, value->getType(), value,
                                              make<ConstantInteger>(value->getType(), -1));
            }
            reportFatal("");
        }
        case OperatorID::LogicalNot: {
            value = ctx.convertTo(value, IntegerType::getBoolean());
            return ctx.makeOp<UnaryInst>(InstructionID::Not, value->getType(), value);
        }
        case OperatorID::Positive: {
            if(value->getType()->isInteger() || value->getType()->isFloatingPoint())
                return value;
            reportFatal("");
        }
        default:
            reportUnreachable();
    }
}

Value* ConstantIntExpr::emit(EmitContext& ctx) const {
    return make<ConstantInteger>(IntegerType::get(mBitWidth), static_cast<intmax_t>(mValue));
}

Value* ConstantFloatExpr::emit(EmitContext& ctx) const {
    return make<ConstantFloatingPoint>(FloatingPointType::get(mIsFloat), mValue);
}

Value* ConstantStringExpr::emit(EmitContext& ctx) const {
    reportNotImplemented();
    return nullptr;
}

Value* FunctionCallExpr::emit(EmitContext& ctx) const {
    auto callee = ctx.getRValue(mCallee);
    const auto& passing = ctx.getPassingPlan(callee);

    // TODO: va_args
    auto& argTypes = callee->getType()->as<FunctionType>()->getArgTypes();
    if(argTypes.size() != mArgs.size())
        reportFatal("");

    Vector<Value*> args;
    args.reserve(mArgs.size());
    for(uint32_t idx = 0; idx < mArgs.size(); ++idx) {
        const auto arg = mArgs[idx];
        const auto destType = argTypes[idx];
        if(passing.passingArgsByPointer[idx]) {
            const auto val = ctx.getLValueForce(arg, destType);
            args.push_back(val);
        } else {
            const auto val = ctx.getRValue(arg);
            args.push_back(ctx.convertTo(val, destType));
        }
    }

    if(passing.passingRetValByPointer) {
        const auto retType = argTypes.back()->as<PointerType>()->getPointee();
        const auto storage = make<StackAllocInst>(retType);
        args.push_back(storage);
        ctx.makeOp<FunctionCallInst>(callee, std::move(args));
        return ctx.makeOp<LoadInst>(storage);
    } else
        return ctx.makeOp<FunctionCallInst>(callee, std::move(args));
}

Value* ReturnExpr::emit(EmitContext& ctx) const {
    auto func = ctx.getCurrentFunction();
    const auto& passing = ctx.getPassingPlan(func);

    if(passing.passingRetValByPointer) {
        const auto ret = func->entryBlock()->args().back();
        const auto retType = ret->getType();
        auto val = ctx.convertTo(ctx.getRValue(mReturnValue), retType);
        ctx.makeOp<StoreInst>(ret, val);
        return ctx.makeOp<ReturnInst>(nullptr);
    } else {
        auto type = func->getType()->as<FunctionType>();
        auto retType = type->getRetType();
        if(retType->isVoid()) {
            if(mReturnValue)
                reportFatal("");
        } else if(!mReturnValue) {
            reportFatal("");
        }
        if(type->isVoid())
            return ctx.makeOp<ReturnInst>(nullptr);
        auto val = ctx.convertTo(ctx.getRValue(mReturnValue), retType);
        return ctx.makeOp<ReturnInst>(val);
    }
}

Value* IfElseExpr::emit(EmitContext& ctx) const {
    const auto pred = ctx.convertTo(ctx.getRValue(mPredicate), IntegerType::getBoolean());

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
    return nullptr;
}

Value* IdentifierExpr::emit(EmitContext& ctx) const {
    auto value = ctx.lookupIdentifier(mIdentifier);
    if(!value) {
        value = ctx.makeOp<StackAllocInst>(IntegerType::get(32));
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
    auto whileHeader = ctx.addBlock();
    whileHeader->setLabel("while.header");
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ whileHeader });
    ctx.setCurrentBlock(whileHeader);

    auto val = ctx.convertTo(ctx.getRValue(mPredicate), IntegerType::getBoolean());

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

    return nullptr;
}

Value* LocalVarDefExpr::emit(EmitContext& ctx) const {
    for(auto& [name, arraySize, initExpr] : mVars) {
        const auto type = ctx.getType(mType.typeIdentifier, mType.space, arraySize);
        auto local = ctx.makeOp<StackAllocInst>(type);
        local->setLabel(StringIR{ name });
        ctx.addIdentifier(name, local);
        if(initExpr)
            ctx.makeOp<StoreInst>(local, ctx.getRValue(initExpr));
    }

    return nullptr;
}

Value* ArrayIndexExpr::emit(EmitContext& ctx) const {
    const auto base = ctx.getLValue(mBase);
    const auto idx = ctx.convertTo(ctx.getRValue(mIndex), IntegerType::get(32U));
    return ctx.makeOp<GetElementPtrInst>(base, Vector<Value*>{ idx });
}

Value* StructIndexExpr::emit(EmitContext& ctx) const {
    const auto base = ctx.getLValue(mBase);
    const auto pointer = base->getType()->as<PointerType>();
    const auto structType = pointer->getPointee();
    if(!structType->isStruct())
        reportFatal("");
    const auto offset = structType->as<StructType>()->getOffset(mField);
    return ctx.makeOp<GetElementPtrInst>(base, Vector<Value*>{ offset });
}

Value* EmitContext::convertTo(Value* value, Type* type) {
    const auto srcType = value->getType();

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
            id = InstructionID::SExt;
        else
            id = InstructionID::Trunc;
    } else if(srcType->isInteger() && type->isFloatingPoint()) {
        if(strictMode.get())
            reportFatal("implicit I2F conversion is not allowed in strict mode");
        id = InstructionID::S2F;
    } else if(srcType->isFloatingPoint() && type->isInteger()) {
        if(strictMode.get())
            reportFatal("implicit F2I conversion is not allowed in strict mode");
        id = InstructionID::F2S;
    } else if(srcType->isFloatingPoint() && type->isFloatingPoint()) {
        id = InstructionID::FCast;
    }

    if(id == InstructionID::None)
        reportFatal("");

    return makeOp<CastInst>(id, type, value);
}
Value* EmitContext::getRValue(Expr* expr) {
    const auto val = expr->emit(*this);
    if(expr->isLValue()) {
        if(!val->getType()->isPointer()) {
            if(val->is<Function>())
                return val;
            reportUnreachable();
        }
        return makeOp<LoadInst>(val);
    }

    return val;
}
Value* EmitContext::getLValue(Expr* expr) {
    if(!expr->isLValue())
        reportFatal("");
    return expr->emit(*this);
}
Value* EmitContext::getLValueForce(Expr* expr, Type* type) {
    const auto createFromRValue = [&](Value* rvalue) -> Value* {
        const auto val = convertTo(rvalue, type);
        const auto storage = makeOp<StackAllocInst>(val->getType());
        makeOp<StoreInst>(storage, val);
        return storage;
    };

    if(expr->isLValue()) {
        const auto ptr = expr->emit(*this);
        if(ptr->getType()->isSame(type))
            return ptr;
        assert(ptr->getType()->isPointer());
        const auto rvalue = makeOp<LoadInst>(ptr);
        return createFromRValue(rvalue);
    } else {
        const auto val = getRValue(expr);
        return createFromRValue(val);
    }
}
void EmitContext::pushScope() {
    mScopes.push_back({});
}
void EmitContext::popScope() {
    mScopes.pop_back();
}
void EmitContext::addIdentifier(StringAST identifier, Value* value) {
    assert(!mScopes.empty());
    auto& scope = mScopes.back();
    if(scope.count(identifier))
        reportFatal("");
    scope.emplace(std::move(identifier), value);
}
Value* EmitContext::lookupIdentifier(const StringAST& identifier) {
    assert(!mScopes.empty());

    for(auto iter = mScopes.crbegin(); iter != mScopes.crend(); ++iter)
        if(auto it = iter->find(identifier); it != iter->cend())
            return it->second;
    reportFatal("");
}
EmitContext::EmitContext(Module* module) : mModule{ module } {
    mInteger = make<IntegerType>(32U);
    mFloat = make<FloatingPointType>(true);
    mChar = make<IntegerType>(8U);
}
Type* EmitContext::getType(const StringAST& type, TypeLookupSpace space, const ArraySize& arraySize) const {
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

    {
        bool unknownSize = false;
        for(auto iter = arraySize.rbegin(); iter != arraySize.rend(); ++iter) {
            const auto expr = *iter;

            if(expr == nullptr) {
                if(unknownSize)
                    reportFatal("");
                unknownSize = true;
                ret = make<PointerType>(ret);
            } else {
                const auto constantSize = (*iter)->evaluate();

                std::visit(
                    [&](auto x) {
                        using T = std::decay_t<decltype(x)>;
                        if constexpr(std::is_same_v<uintmax_t, T>) {
                            if(x == 0)
                                reportFatal("");
                            if(x >= (1U << 24))
                                reportFatal("array is too large");

                            ret = make<ArrayType>(ret, static_cast<uint32_t>(x));
                        } else {
                            reportFatal("");
                        }
                    },
                    constantSize);
            }
        }
    }
    return ret;
}
void EmitContext::addIdentifier(StringAST identifier, StructType* type) {
    if(mStructTypes.count(identifier))
        reportFatal("");
    mStructTypes.emplace(std::move(identifier), type);
}

void EmitContext::addPassingPlan(Value* func, PassingPlan plan) {
    mPassingPlan.emplace(func, std::move(plan));
}
const PassingPlan& EmitContext::getPassingPlan(Value* func) {
    const auto iter = mPassingPlan.find(func);
    if(iter != mPassingPlan.cend())
        return iter->second;
    const auto type = func->getType()->as<FunctionType>();
    PassingPlan defaultPlan;
    defaultPlan.passingArgsByPointer.resize(type->getArgTypes().size(), false);
    return mPassingPlan.emplace(func, std::move(defaultPlan)).first->second;
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
    reportFatal("");
}
Block* EmitContext::getBreakTarget() {
    if(!mTerminatorTarget.empty())
        return mTerminatorTarget.back().second;
    reportFatal("");
}
ConstantValue* EmitContext::convertToConstant(ConstantValue* value, Type* type) {
    if(value->getType()->isSame(type))
        return value;
    reportNotImplemented();
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

Value* ArrayInitializer::emit(EmitContext&) const {
    reportUnreachable();
}
ConstantValue* ArrayInitializer::shapeAwareEmitStatic(EmitContext& ctx, ArrayType* type) const {
    const auto elementType = type->getElementType();
    if(mElements.size() > type->getElementCount())
        reportFatal("");
    Vector<ConstantValue*> values;
    values.reserve(mElements.size());
    if(elementType->isArray()) {
        for(auto element : mElements) {
            if(auto subArr = dynamic_cast<ArrayInitializer*>(element)) {
                values.push_back(subArr->shapeAwareEmitStatic(ctx, type));
            } else
                reportFatal("");
        }
    } else {
        for(auto element : mElements) {
            if(dynamic_cast<ArrayInitializer*>(element))
                reportFatal("");
            else {
                const auto value = ctx.getRValue(element);
                assert(value->isConstant());
                values.push_back(ctx.convertToConstant(value->as<ConstantValue>(), elementType));
            }
        }
    }
    return make<ConstantArray>(type, std::move(values));
}
static void zeroInitialize(EmitContext& ctx, Value* storage, Type* type) {
    // TODO: use memset?
    if(type->isArray()) {
        const auto arrayType = type->as<ArrayType>();
        for(uint32_t idx = 0; idx < arrayType->getElementCount(); ++idx) {
            const auto ptr = make<GetElementPtrInst>(storage, Vector<Value*>{ ctx.getInteger(IntegerType::get(32), idx) });
            zeroInitialize(ctx, ptr, type);
        }
    } else {
        if(type->isInteger()) {
            ctx.makeOp<StoreInst>(storage, make<ConstantInteger>(type, 0));
        } else if(type->isFloatingPoint()) {
            ctx.makeOp<StoreInst>(storage, make<ConstantFloatingPoint>(type, 0.0));
        } else
            reportFatal("");
    }
}
void ArrayInitializer::shapeAwareEmitDynamic(EmitContext& ctx, Value* storage, ArrayType* type) const {
    const auto elementType = type->getElementType();
    if(mElements.size() > type->getElementCount())
        reportFatal("");
    const auto makePtr = [&](uint32_t idx) {
        return make<GetElementPtrInst>(storage, Vector<Value*>{ ctx.getInteger(IntegerType::get(32), idx++) });
    };
    uint32_t idx = 0;
    if(elementType->isArray()) {
        auto subArrayType = elementType->as<ArrayType>();
        for(auto element : mElements) {
            if(auto subArr = dynamic_cast<ArrayInitializer*>(element)) {
                const auto ptr = makePtr(idx++);
                subArr->shapeAwareEmitDynamic(ctx, ptr, subArrayType);
            } else
                reportFatal("");
        }
    } else {
        for(auto element : mElements) {
            if(dynamic_cast<ArrayInitializer*>(element))
                reportFatal("");
            else {
                const auto ptr = makePtr(idx++);
                const auto value = ctx.convertTo(ctx.getRValue(element), elementType);
                ctx.makeOp<StoreInst>(ptr, value);
            }
        }
    }
    for(; idx <= type->getElementCount(); ++idx) {
        zeroInitialize(ctx, makePtr(idx), elementType);
    }
}

Value* BreakExpr::emit(EmitContext& ctx) const {
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ ctx.getBreakTarget() });
    return nullptr;
}
Value* ContinueExpr::emit(EmitContext& ctx) const {
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ ctx.getContinueTarget() });
    return nullptr;
}

void GlobalVarDefinition::emit(EmitContext& ctx) const {
    auto module = ctx.getModule();
    auto global = make<GlobalVariable>(StringIR{ var.name }, ctx.getType(type.typeIdentifier, type.space, var.arraySize),
                                       var.initialValue ? ctx.getRValue(var.initialValue) : nullptr);
    // TODO: dynamic initializer?
    module->add(global);
    ctx.addIdentifier(var.name, global);
}

void StructDefinition::emit(EmitContext& ctx) const {
    Vector<StructField> fields;
    for(auto& item : list) {
        for(auto& subItem : item.var) {
            const auto type = ctx.getType(item.type.typeIdentifier, item.type.space, subItem.arraySize);  // TODO: array
            fields.push_back(StructField{ SourceLocation{}, type, StringIR{ subItem.name } });
            if(subItem.initialValue)
                reportFatal("");
        }
    }
    auto type = make<StructType>(StringIR{ name }, std::move(fields));
    ctx.addIdentifier(name, type);
    ctx.getModule()->add(type);
}

CMMC_NAMESPACE_END

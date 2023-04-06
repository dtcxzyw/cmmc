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
#include <cmmc/Frontend/EmitIR.hpp>
#include <cmmc/Frontend/SourceLocation.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cmmc/Support/StringFlyWeight.hpp>
#include <cstdint>
#include <map>
#include <utility>
#include <variant>

CMMC_NAMESPACE_BEGIN

class EmitContext;

class Expr;
CMMC_ARENA_TRAIT(Expr*, AST);

struct IntegerStorage final {
    uintmax_t val;
    uint32_t width;
    bool isSigned;
};

struct FloatingPointStorage final {
    double val;
    bool isFloat;
};

struct TypeRef final {
    String typeIdentifier;
    TypeLookupSpace space;

    Qualifier qualifier = Qualifier::getDefault();
};

struct NamedVar final {
    SourceLocation loc;
    String name;
    ArraySize arraySize;
    Expr* initialValue;
};
CMMC_ARENA_TRAIT(NamedVar, AST);
using VarList = Deque<NamedVar>;

struct VarDef final {
    SourceLocation loc;
    TypeRef type;
    VarList var;
};
CMMC_ARENA_TRAIT(VarDef, AST);
using VarDefList = Deque<VarDef>;

struct NamedArg final {
    TypeRef type;
    NamedVar var;
};
CMMC_ARENA_TRAIT(NamedArg, AST);

using ArgList = Deque<NamedArg>;

struct FunctionDeclaration final {
    SourceLocation loc;
    String symbol;
    TypeRef retType;
    ArgList args;
    // bool isVarArg;

    std::pair<FunctionCallInfo, const FunctionType*> getSignature(EmitContext& ctx) const;
    Function* emit(EmitContext& ctx);
};

struct StructDefinition final {
    SourceLocation location;
    String name;
    VarDefList list;

    void emit(EmitContext& ctx) const;
};

struct GlobalVarDefinition final {
    TypeRef type;
    NamedVar var;
    void emit(EmitContext& ctx) const;
};

using StatementBlock = Deque<Expr*>;

struct FunctionDefinition final {
    FunctionDeclaration decl;
    StatementBlock block;

    void emit(EmitContext& ctx);
};

class Expr {
    SourceLocation mLocation;
#ifndef NDEBUG
    mutable bool mEmitted = false;
#endif
    virtual QualifiedValue emit(EmitContext& ctx) const = 0;

public:
    static constexpr auto arenaSource = Arena::Source::AST;

    explicit Expr(const SourceLocation& location) : mLocation{ location } {}
    Expr(const Expr&) = delete;
    Expr(Expr&&) = delete;
    Expr& operator=(const Expr&) = delete;
    Expr& operator=(Expr&&) = delete;
    virtual ~Expr() = default;
    QualifiedValue emitWithLoc(EmitContext& ctx) const;
    [[nodiscard]] const SourceLocation& location() const noexcept {
        return mLocation;
    }
};

enum class OperatorID {
    Add,
    Sub,
    Mul,
    Div,
    Rem,
    Neg,
    Positive,
    LessThan,
    LessEqual,
    GreaterThan,
    GreaterEqual,
    Equal,
    NotEqual,
    LogicalNot,
    BitwiseNot,
    LogicalAnd,
    BitwiseAnd,
    LogicalOr,
    BitwiseOr,
    Xor,
    Assign,
    PrefixInc,
    PrefixDec,
    SuffixInc,
    SuffixDec,
    ShiftLeft,
    ShiftRight,
    Select
};

class BinaryExpr final : public Expr {
    OperatorID mOp;
    Expr* mLhs;
    Expr* mRhs;

public:
    BinaryExpr(const SourceLocation& location, OperatorID op, Expr* lhs, Expr* rhs) noexcept
        : Expr{ location }, mOp{ op }, mLhs{ lhs }, mRhs{ rhs } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class CompoundAssignExpr final : public Expr {
    OperatorID mOp;
    Expr* mLhs;
    Expr* mRhs;

public:
    CompoundAssignExpr(const SourceLocation& location, OperatorID op, Expr* lhs, Expr* rhs) noexcept
        : Expr{ location }, mOp{ op }, mLhs{ lhs }, mRhs{ rhs } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class UnaryExpr final : public Expr {
    OperatorID mOp;
    Expr* mValue;

public:
    UnaryExpr(const SourceLocation& location, OperatorID op, Expr* value) noexcept
        : Expr{ location }, mOp{ op }, mValue{ value } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class SelfIncDecExpr final : public Expr {
    OperatorID mOp;
    Expr* mValue;

public:
    SelfIncDecExpr(const SourceLocation& location, OperatorID op, Expr* value) noexcept
        : Expr{ location }, mOp{ op }, mValue{ value } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class AddressExpr final : public Expr {
    Expr* mValue;

public:
    AddressExpr(const SourceLocation& location, Expr* value) noexcept : Expr{ location }, mValue{ value } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class DerefExpr final : public Expr {
    Expr* mValue;

public:
    DerefExpr(const SourceLocation& location, Expr* value) noexcept : Expr{ location }, mValue{ value } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class ConstantIntExpr final : public Expr {
    uintmax_t mValue;
    uint32_t mBitWidth;
    bool mIsSigned;

public:
    ConstantIntExpr(const SourceLocation& location, uintmax_t value, uint32_t bitWidth, bool isSigned)
        : Expr{ location }, mValue{ value }, mBitWidth{ bitWidth }, mIsSigned{ isSigned } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class ConstantFloatExpr final : public Expr {
    double mValue;
    bool mIsFloat;

public:
    ConstantFloatExpr(const SourceLocation& location, double value, bool isFloat) noexcept
        : Expr{ location }, mValue{ value }, mIsFloat{ isFloat } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class ConstantStringExpr final : public Expr {
    String mString;

public:
    ConstantStringExpr(const SourceLocation& location, const String& str) : Expr{ location }, mString{ str } {}
    QualifiedValue emit(EmitContext& ctx) const override;
    GlobalVariable* emitGlobal(String symbol, uint32_t size, EmitContext& ctx) const;
};

using ExprPack = Deque<Expr*>;

class ArrayInitializer final : public Expr {
    ExprPack mElements;

    void gatherArrayElementsImpl(EmitContext& ctx, uint32_t& offset, uint32_t layer, const std::vector<uint32_t>& sizes,
                                 std::map<uint32_t, Expr*>& values) const;
    std::map<uint32_t, Expr*> gatherArrayElements(EmitContext& ctx, const ArrayType* type) const;
    ConstantValue* shapeAwareEmitStaticImpl(EmitContext& ctx, const std::map<uint32_t, Expr*>& values, uint32_t offset,
                                            const ArrayType* type, Qualifier dstQualifier) const;

public:
    ArrayInitializer(const SourceLocation& location, ExprPack elements) : Expr{ location }, mElements{ std::move(elements) } {}
    QualifiedValue emit(EmitContext& ctx) const override;
    ConstantValue* shapeAwareEmitStatic(EmitContext& ctx, const ArrayType* type, Qualifier dstQualifier) const;
    void shapeAwareEmitDynamic(EmitContext& ctx, Value* storage, const ArrayType* type, Qualifier dstQualifier) const;
};

class FunctionCallExpr final : public Expr {
    Expr* mCallee;
    ExprPack mArgs;

public:
    FunctionCallExpr(const SourceLocation& location, Expr* callee, ExprPack args)
        : Expr{ location }, mCallee{ callee }, mArgs{ std::move(args) } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class ReturnExpr final : public Expr {
    Expr* mReturnValue;

public:
    ReturnExpr(const SourceLocation& location, Expr* returnValue) noexcept : Expr{ location }, mReturnValue{ returnValue } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class IfElseExpr final : public Expr {
    Expr* mPredicate;
    Expr* mThenBlock;
    Expr* mElseBlock;

public:
    IfElseExpr(const SourceLocation& location, Expr* pred, Expr* ifPart, Expr* elsePart) noexcept
        : Expr{ location }, mPredicate{ pred }, mThenBlock{ ifPart }, mElseBlock{ elsePart } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class IdentifierExpr final : public Expr {
    String mIdentifier;
    IdentifierUsageHint mUsageHint;

public:
    IdentifierExpr(const SourceLocation& location, const String& str, IdentifierUsageHint usageHint)
        : Expr{ location }, mIdentifier{ str }, mUsageHint{ usageHint } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class ScopedExpr final : public Expr {
    StatementBlock mBlock;

public:
    ScopedExpr(const SourceLocation& location, StatementBlock block) : Expr{ location }, mBlock{ std::move(block) } {};
    QualifiedValue emit(EmitContext& ctx) const override;
};

class WhileExpr final : public Expr {
    Expr* mPredicate;
    Expr* mBlock;

public:
    WhileExpr(const SourceLocation& location, Expr* pred, Expr* block) : Expr{ location }, mPredicate{ pred }, mBlock{ block } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class LocalVarDefExpr final : public Expr {
    TypeRef mType;
    Deque<NamedVar> mVars;

public:
    LocalVarDefExpr(const SourceLocation& location, TypeRef type, Deque<NamedVar> vars)
        : Expr{ location }, mType{ type }, mVars{ std::move(vars) } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class ArrayIndexExpr final : public Expr {
    Expr* mBase;
    Expr* mIndex;

public:
    ArrayIndexExpr(const SourceLocation& location, Expr* base, Expr* index) noexcept
        : Expr{ location }, mBase{ base }, mIndex{ index } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class StructIndexExpr final : public Expr {
    Expr* mBase;
    String mField;

public:
    StructIndexExpr(const SourceLocation& location, Expr* base, String field)
        : Expr{ location }, mBase{ base }, mField{ field } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class BreakExpr final : public Expr {
public:
    explicit BreakExpr(const SourceLocation& location) noexcept : Expr{ location } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class ContinueExpr final : public Expr {
public:
    explicit ContinueExpr(const SourceLocation& location) noexcept : Expr{ location } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class EmptyExpr final : public Expr {
public:
    explicit EmptyExpr(const SourceLocation& location) noexcept : Expr{ location } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class ForExpr final : public Expr {
    Expr* mInit;
    Expr* mCondition;
    Expr* mIteration;
    Expr* mBody;

public:
    explicit ForExpr(const SourceLocation& location, Expr* init, Expr* condition, Expr* iteration, Expr* body) noexcept
        : Expr{ location }, mInit{ init }, mCondition{ condition }, mIteration{ iteration }, mBody{ body } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class DoWhileExpr final : public Expr {
    Expr* mBody;
    Expr* mCondition;

public:
    explicit DoWhileExpr(const SourceLocation& location, Expr* body, Expr* condition) noexcept
        : Expr{ location }, mBody{ body }, mCondition{ condition } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class SelectExpr final : public Expr {
    Expr* mCondition;
    Expr* mLhs;
    Expr* mRhs;

public:
    explicit SelectExpr(const SourceLocation& location, Expr* condition, Expr* lhs, Expr* rhs)
        : Expr{ location }, mCondition{ condition }, mLhs{ lhs }, mRhs{ rhs } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class CastExpr final : public Expr {
    TypeRef mType;
    Expr* mVal;

public:
    explicit CastExpr(const SourceLocation& location, const TypeRef& type, Expr* val)
        : Expr{ location }, mType{ type }, mVal{ val } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

class CommaExpr final : public Expr {
    Expr* mLhs;
    Expr* mRhs;

public:
    CommaExpr(const SourceLocation& location, Expr* lhs, Expr* rhs) noexcept : Expr{ location }, mLhs{ lhs }, mRhs{ rhs } {}
    QualifiedValue emit(EmitContext& ctx) const override;
};

template <typename T>
void concatPack(Deque<T>& res, const T& lhs, Deque<T>& rhs) {
    res.swap(rhs);
    res.push_front(lhs);
}

template <typename T>
void concatPack(Deque<T>& res, Deque<T>& lhs, Deque<T>& rhs) {
    if(lhs.size() > rhs.size()) {
        res.swap(lhs);
        res.insert(res.cend(), rhs.cbegin(), rhs.cend());
    } else {
        res.swap(rhs);
        res.insert(res.begin(), lhs.cbegin(), lhs.cend());
    }
}

template <typename T>
void concatPack(Deque<T>& res, Deque<T>& lhs, const T& rhs) {
    res.swap(lhs);
    res.push_back(rhs);
}

CMMC_NAMESPACE_END

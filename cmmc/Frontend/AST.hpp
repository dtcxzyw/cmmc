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
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cstdint>
#include <utility>
#include <variant>

CMMC_NAMESPACE_BEGIN

class EmitContext;

class Expr;
CMMC_ARENA_TRAIT(Expr*, AST);

struct Qualifier final {
    bool isConst = false;
    // bool isVolatile;
};

struct TypeRef final {
    StringAST typeIdentifier;
    TypeLookupSpace space;

    Qualifier qualifier;
};

struct QualifiedType final {
    Type* type;
    bool isLeftValue;
    Qualifier qualifier;
};

struct NamedVar final {
    StringAST name;
    ArraySize arraySize;
    Expr* initialValue;
};
CMMC_ARENA_TRAIT(NamedVar, AST);
using VarList = Deque<NamedVar>;

struct VarDef final {
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
    StringAST symbol;
    TypeRef retType;
    ArgList args;
    // bool isVarArg;

    std::pair<PassingPlan, FunctionType*> getSignature(EmitContext& ctx) const;
};

struct StructDefinition final {
    StringAST name;
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

    void emit(EmitContext& ctx) const;
};

class Expr {
    SourceLocation mLocation;

public:
    static constexpr auto arenaSource = Arena::Source::AST;

    Expr() = default;
    Expr(const Expr&) = delete;
    Expr(Expr&&) = delete;
    Expr& operator=(const Expr&) = delete;
    Expr& operator=(Expr&&) = delete;
    virtual ~Expr() = default;
    virtual Value* emit(EmitContext& ctx) const = 0;
    virtual bool isLValue() const noexcept {
        return false;
    }
    virtual CompileTimeEvaluatedValue evaluate(const EmitContext& ctx) const {
        return std::monostate{};
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
    Assign
};

class BinaryExpr final : public Expr {
    OperatorID mOp;
    Expr* mLhs;
    Expr* mRhs;

public:
    BinaryExpr(OperatorID op, Expr* lhs, Expr* rhs) noexcept : mOp{ op }, mLhs{ lhs }, mRhs{ rhs } {}
    Value* emit(EmitContext& ctx) const override;
    CompileTimeEvaluatedValue evaluate(const EmitContext& ctx) const override;
};

class UnaryExpr final : public Expr {
    OperatorID mOp;
    Expr* mValue;

public:
    UnaryExpr(OperatorID op, Expr* value) noexcept : mOp{ op }, mValue{ value } {}
    Value* emit(EmitContext& ctx) const override;
    CompileTimeEvaluatedValue evaluate(const EmitContext& ctx) const override;
};

class ConstantIntExpr final : public Expr {
    uintmax_t mValue;
    uint32_t mBitWidth;
    bool mIsSigned;

public:
    ConstantIntExpr(uintmax_t value, uint32_t bitWidth, bool isSigned)
        : mValue{ value }, mBitWidth{ bitWidth }, mIsSigned{ isSigned } {}
    Value* emit(EmitContext& ctx) const override;
    CompileTimeEvaluatedValue evaluate(const EmitContext&) const override {
        return mValue;
    }
};

class ConstantFloatExpr final : public Expr {
    double mValue;
    bool mIsFloat;

public:
    ConstantFloatExpr(double value, bool isFloat) noexcept : mValue{ value }, mIsFloat{ isFloat } {}
    Value* emit(EmitContext& ctx) const override;
};

class ConstantStringExpr final : public Expr {
    StringAST mString;

public:
    explicit ConstantStringExpr(const StringAST& str) : mString{ str } {}
    Value* emit(EmitContext& ctx) const override;
};

using ExprPack = Deque<Expr*>;

class ArrayInitializer final : public Expr {
    ExprPack mElements;

public:
    explicit ArrayInitializer(ExprPack elements) : mElements{ std::move(elements) } {}
    Value* emit(EmitContext& ctx) const override;
    ConstantValue* shapeAwareEmitStatic(EmitContext& ctx, ArrayType* type) const;
    void shapeAwareEmitDynamic(EmitContext& ctx, Value* storage, ArrayType* type) const;
};

class FunctionCallExpr final : public Expr {
    Expr* mCallee;
    ExprPack mArgs;

public:
    FunctionCallExpr(Expr* callee, ExprPack args) : mCallee{ callee }, mArgs{ std::move(args) } {}
    Value* emit(EmitContext& ctx) const override;
};

class ReturnExpr final : public Expr {
    Expr* mReturnValue;

public:
    explicit ReturnExpr(Expr* returnValue) noexcept : mReturnValue{ returnValue } {}
    Value* emit(EmitContext& ctx) const override;
};

class IfElseExpr final : public Expr {
    Expr* mPredicate;
    Expr* mThenBlock;
    Expr* mElseBlock;

public:
    IfElseExpr(Expr* pred, Expr* ifPart, Expr* elsePart) noexcept
        : mPredicate{ pred }, mThenBlock{ std::move(ifPart) }, mElseBlock{ std::move(elsePart) } {}
    Value* emit(EmitContext& ctx) const override;
};

class IdentifierExpr final : public Expr {
    StringAST mIdentifier;

public:
    explicit IdentifierExpr(const StringAST& str) : mIdentifier{ str } {}
    Value* emit(EmitContext& ctx) const override;
    bool isLValue() const noexcept override {
        return true;
    }
    CompileTimeEvaluatedValue evaluate(const EmitContext& ctx) const override;
};

class ScopedExpr final : public Expr {
    StatementBlock mBlock;

public:
    explicit ScopedExpr(StatementBlock block) : mBlock{ std::move(block) } {};
    Value* emit(EmitContext& ctx) const override;
};

class WhileExpr final : public Expr {
    Expr* mPredicate;
    Expr* mBlock;

public:
    WhileExpr(Expr* pred, Expr* block) : mPredicate{ pred }, mBlock{ block } {}
    Value* emit(EmitContext& ctx) const override;
};

class LocalVarDefExpr final : public Expr {
    TypeRef mType;
    Deque<NamedVar> mVars;

public:
    LocalVarDefExpr(TypeRef type, Deque<NamedVar> vars) : mType{ std::move(type) }, mVars{ std::move(vars) } {}
    Value* emit(EmitContext& ctx) const override;
};

class ArrayIndexExpr final : public Expr {
    Expr* mBase;
    Expr* mIndex;

public:
    ArrayIndexExpr(Expr* base, Expr* index) noexcept : mBase{ base }, mIndex{ index } {}
    Value* emit(EmitContext& ctx) const override;
    bool isLValue() const noexcept override {
        return true;
    }
};

class StructIndexExpr final : public Expr {
    Expr* mBase;
    StringAST mField;

public:
    StructIndexExpr(Expr* base, StringAST field) : mBase{ base }, mField{ field } {}
    Value* emit(EmitContext& ctx) const override;
    bool isLValue() const noexcept override {
        return true;
    }
};

class BreakExpr final : public Expr {
public:
    Value* emit(EmitContext& ctx) const override;
};

class ContinueExpr final : public Expr {
public:
    Value* emit(EmitContext& ctx) const override;
};

class EmptyExpr final : public Expr {
public:
    Value* emit(EmitContext& ctx) const override;
};

template <typename T>
void concatPack(Deque<T>& res, const T& lhs, Deque<T>& rhs) {
    res.swap(rhs);
    res.push_front(lhs);
}

template <typename T>
void concatPack(Deque<T>& res, Deque<T>& lhs, const Deque<T>& rhs) {
    res.swap(lhs);
    res.insert(res.cend(), rhs.cbegin(), rhs.cend());
}

template <typename T>
void concatPack(Deque<T>& res, Deque<T>& lhs, const T& rhs) {
    res.swap(lhs);
    res.push_back(rhs);
}

CMMC_NAMESPACE_END

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
#include "cmmc/Frontend/EmitIR.hpp"
#include "cmmc/Frontend/SourceLocation.hpp"
#include "cmmc/IR/Block.hpp"
#include "cmmc/IR/IRBuilder.hpp"
#include "cmmc/IR/Module.hpp"
#include "cmmc/IR/Type.hpp"
#include "cmmc/IR/Value.hpp"
#include "cmmc/Support/Arena.hpp"
#include <cstdint>
#include <utility>

CMMC_NAMESPACE_BEGIN

class EmitContext;

struct Qualifier final {
    // bool isConst;
    // bool isVolatile;
};

struct TypeRef final {
    String<Arena::Source::AST> typeIdentifier;
    enum class LookupSpace { Default /* Builtins & Aliases */, Struct, Enum } space;

    // Type* anonymousType = nullptr; // Function Signature/ Anonymous Struct
    Qualifier qualifier;
};

struct QualifiedType final {
    Type* type;
    bool isLeftValue;
    Qualifier qualifier;
};

struct NamedArg final {
    TypeRef type;
    String<Arena::Source::AST> name;
};
CMMC_ARENA_TRAIT(NamedArg, AST);
using ArgList = Deque<NamedArg>;

struct FunctionDeclaration final {
    SourceLocation loc;
    String<Arena::Source::AST> symbol;
    TypeRef retType;
    ArgList args;
    // bool isVarArg;
};

class Expr;
CMMC_ARENA_TRAIT(Expr*, AST);
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
};

enum class OperatorID {
    Add,
    Sub,
    Mul,
    Div,
    Rem,
    Neg,
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
    static BinaryExpr* get(OperatorID op, Expr* lhs, Expr* rhs);
    Value* emit(EmitContext& ctx) const override;
};

class UnaryExpr final : public Expr {
    OperatorID mOp;
    Expr* mValue;

public:
    UnaryExpr(OperatorID op, Expr* value) noexcept : mOp{ op }, mValue{ value } {}
    static UnaryExpr* get(OperatorID op, Expr* value);
    Value* emit(EmitContext& ctx) const override;
};

class ConstantIntExpr final : public Expr {
    uintmax_t mValue;
    uint32_t mBitWidth;
    bool mIsSigned;

public:
    ConstantIntExpr(uintmax_t value, uint32_t bitWidth, bool isSigned)
        : mValue{ value }, mBitWidth{ bitWidth }, mIsSigned{ isSigned } {}
    Value* emit(EmitContext& ctx) const override;
    static ConstantIntExpr* get(uintmax_t value, uint32_t bitWidth, bool isSigned);
};

class ConstantFloatExpr final : public Expr {
    double mValue;
    bool mIsFloat;

public:
    ConstantFloatExpr(double value, bool isFloat) noexcept : mValue{ value }, mIsFloat{ isFloat } {}
    Value* emit(EmitContext& ctx) const override;
    static ConstantFloatExpr* get(double value, bool isFloat);
};

class ConstantStringExpr final : public Expr {
    String<Arena::Source::AST> mString;

public:
    explicit ConstantStringExpr(const String<Arena::Source::AST>& str) : mString{ str } {}
    Value* emit(EmitContext& ctx) const override;
};

using ExprPack = Deque<Expr*>;

class FunctionCallExpr final : public Expr {
    Expr* mCallee;
    ExprPack mArgs;

public:
    FunctionCallExpr(Expr* callee, ExprPack args) : mCallee{ callee }, mArgs{ std::move(args) } {}
    Value* emit(EmitContext& ctx) const override;
    static FunctionCallExpr* get(Expr* callee, ExprPack args);
};

class ReturnExpr final : public Expr {
    Expr* mReturnValue;

public:
    explicit ReturnExpr(Expr* returnValue) noexcept : mReturnValue{ returnValue } {}
    Value* emit(EmitContext& ctx) const override;
    static ReturnExpr* get(Expr* returnValue);
};

class IfElseExpr final : public Expr {
    Expr* mPredicate;
    Expr* mIfBlock;
    Expr* mElseBlock;

public:
    IfElseExpr(Expr* pred, Expr* ifPart, Expr* elsePart) noexcept
        : mPredicate{ pred }, mIfBlock{ std::move(ifPart) }, mElseBlock{ std::move(elsePart) } {}
    Value* emit(EmitContext& ctx) const override;
    static IfElseExpr* get(Expr* pred, Expr* ifPart, Expr* elsePart);
};

class IdentifierExpr final : public Expr {
    String<Arena::Source::AST> mIdentifier;

public:
    explicit IdentifierExpr(const String<Arena::Source::AST>& str) : mIdentifier{ str } {}
    Value* emit(EmitContext& ctx) const override;
    static IdentifierExpr* get(const String<Arena::Source::AST>& str);
};

class ScopedExpr final : public Expr {
    StatementBlock mBlock;

public:
    explicit ScopedExpr(StatementBlock block) : mBlock{ std::move(block) } {};
    Value* emit(EmitContext& ctx) const override;
    static ScopedExpr* get(StatementBlock block);
};

class WhileExpr final : public Expr {
    Expr* mPredicate;
    Expr* mBlock;

public:
    WhileExpr(Expr* pred, Expr* block) : mPredicate{ pred }, mBlock{ block } {}
    Value* emit(EmitContext& ctx) const override;
    static WhileExpr* get(Expr* pred, Expr* block);
};

template <typename T>
void concatPack(Deque<T>& res, const T& lhs, const Deque<T>& rhs) {
    res = rhs;
    res.push_front(lhs);
}

CMMC_NAMESPACE_END

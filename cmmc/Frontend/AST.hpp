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
#include "cmmc/Frontend/SourceLocation.hpp"
#include "cmmc/IR/BasicBlock.hpp"
#include "cmmc/IR/Type.hpp"
#include "cmmc/IR/Value.hpp"

CMMC_NAMESPACE_BEGIN

using SymbolID = uint64_t;

struct QualifiedType final {
    Type* type;
    bool isLeftValue;
    bool isConst;
    // bool isVolatile;
};

struct FunctionDeclaration final {
    SourceLocation loc;
    SymbolID symbol;
    QualifiedType retType;
    List<QualifiedType> args;
    // bool isVarArg;
};

class Expr;
using StatementBlock = List<Expr*>;

struct FunctionDefinition {
    FunctionDeclaration decl;
    StatementBlock block;
};

struct FunctionTranslationContext {
    BasicBlock* currentBB;

    // functions
    // labels
    // variables

    // BasicBlock* breakTarget;
    // BasicBlock* continuousTarget;
};

class Expr {
    SourceLocation mLocation;

public:
    virtual Value* emit(FunctionTranslationContext& ctx) = 0;
};

enum class OperatorID {
    Add,
    Sub,
    Mul,
    Div,
    Mod,
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
    BitwiseOr
};

class BinaryExpr final : public Expr {
    OperatorID mOp;
    Expr* mLhs;
    Expr* mRhs;
};

class UnaryExpr final : public Expr {
    OperatorID mOp;
    Expr* mLhs;

public:
};

CMMC_NAMESPACE_END

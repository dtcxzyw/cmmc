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
#include "cmmc/Frontend/SourceLocation.h"
#include "cmmc/IR/BasicBlock.h"
#include "cmmc/IR/Type.h"
#include "cmmc/IR/Value.h"
#include <stdbool.h>
#include <stdint.h>

typedef uint64_t SymbolID;

struct QualifiedType {
    struct Type* type;
    bool isLeftValue;
    bool isConst;
    // bool isVolatile;
};

LIST_NODE_DECL(QualifiedType, struct QualifiedType);

struct FunctionDecl {
    struct SourceLocation loc;
    SymbolID symbol;
    struct QualifiedType retType;
    LIST_NODE(QualifiedType) args;
    // bool isVarArg;
};

struct Statement;

struct StatementBlock {
    LIST_NODE(Statement) statements;
};

struct FunctionDefine {
    struct FunctionDecl decl;
    struct StatementBlock block;
};

struct FunctionTranslationContext {
    struct BasicBlock* currentBB;

    // functions
    // labels
    // variables

    // struct BasicBlock* breakTarget;
    // struct BasicBlock* continuousTarget;
};

struct StatementVTable {
    void (*emit)(const struct Statement* statement, struct FunctionTranslationContext* ctx);
    void (*verify)(const struct Statement* statement, struct FunctionTranslationContext* ctx);
};

struct Statement {
    struct SourceLocation loc;
};

LIST_NODE_DECL(Statement, struct Statement);

struct Expr;

struct ExprVTable {
    struct Value* (*emit)(const struct Expr* expr);
    struct QualifiedType (*verify)(const struct Expr* expr);
};

struct Expr {
    struct Statement statement;
    struct ExprVTable* vptr;
};

enum OperatorID {
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

struct BinaryExpr {
    struct Expr base;
    enum OperatorID op;
    struct ExprBase* lhs;
    struct ExprBase* rhs;
};

struct UnaryExpr {
    struct Expr base;
    enum OperatorID op;
    struct ExprBase* lhs;
};

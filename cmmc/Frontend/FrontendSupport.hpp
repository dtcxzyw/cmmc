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
#include <cmmc/Frontend/Driver.hpp>
#include <cmmc/Frontend/DriverImpl.hpp>

#define YYLLOC_DEFAULT(CURRENT, RHS, N)                                                  \
    do                                                                                   \
        if(N) {                                                                          \
            (CURRENT).second.begin = YYRHSLOC(RHS, 1).second.begin;                      \
            (CURRENT).second.end = YYRHSLOC(RHS, N).second.end;                          \
        } else {                                                                         \
            (CURRENT).second.begin = (CURRENT).second.end = YYRHSLOC(RHS, 0).second.end; \
        }                                                                                \
    while(false)

#define CMMC_RECORD(ID, METADATA, ...)                                                                                         \
    (driver.shouldRecordHierarchy() ? driver.record({ __VA_ARGS__ },                                                           \
                                                    Hierarchy::Desc{ #ID, static_cast<uint32_t>(driver.location().begin.line), \
                                                                     Hierarchy::Variant{ METADATA } }) :                       \
                                      0)

#define CMMC_TERMINAL(ID) return Parser::make_##ID({ CMMC_RECORD(ID, std::monostate{}), loc })

#define CMMC_NONTERMINAL(LOC, ID, ...) LOC.first = CMMC_RECORD(ID, Hierarchy::NonTerminal{}, __VA_ARGS__)
#define CMMC_EMPTY(LOC, ID) LOC.first = CMMC_RECORD(Empty##ID, Hierarchy::Empty{})

#define CMMC_BINARY_OP(OP, LHS, RHS) make<BinaryExpr>(OperatorID::OP, LHS, RHS)
#define CMMC_UNARY_OP(OP, VAL) make<UnaryExpr>(OperatorID::OP, VAL)
#define CMMC_INT(VAL, BIT_WIDTH, SIGNED) make<ConstantIntExpr>(VAL, BIT_WIDTH, SIGNED)
#define CMMC_FLOAT(VAL, IS_FLOAT) make<ConstantFloatExpr>(VAL, IS_FLOAT)
#define CMMC_CHAR(VAL) make<ConstantIntExpr>(static_cast<uintmax_t>(VAL), 8U, true)
#define CMMC_ID(NAME) make<IdentifierExpr>(std::move(NAME))
#define CMMC_CALL(CALLEE, ARGS) make<FunctionCallExpr>(CALLEE, std::move(ARGS))
#define CMMC_RETURN(RET) make<ReturnExpr>(RET)
#define CMMC_IF(PRED, IF_PART) make<IfElseExpr>(PRED, IF_PART, nullptr)
#define CMMC_IF_ELSE(PRED, IF_PART, ELSE_PART) make<IfElseExpr>(PRED, IF_PART, ELSE_PART)
#define CMMC_CONCAT_PACK(RES_PACK, LHS_VALUE, RHS_PACK) concatPack((RES_PACK), (LHS_VALUE), (RHS_PACK))
#define CMMC_SCOPE(BLOCK) make<ScopedExpr>(std::move(BLOCK))
#define CMMC_WHILE(PRED, BLOCK) make<WhileExpr>(PRED, BLOCK)
#define CMMC_SCOPE_GEN(EXPR_PACK, LOCAL_VARS, STATEMENTS) generateScope((EXPR_PACK), std::move(LOCAL_VARS), std::move(STATEMENTS))
#define CMMC_DEF(DEF) generateDef(std::move(DEF))
#define CMMC_ARRAY_INDEX(BASE, INDEX) make<ArrayIndexExpr>((BASE), INDEX)
#define CMMC_STRUCT_INDEX(BASE, ID) make<StructIndexExpr>((BASE), std::move(ID))
#define CMMC_ARRAY_INITIALIZER(EXPR_PACK) make<ArrayInitializer>(std::move(EXPR_PACK))
#define CMMC_BREAK() make<BreakExpr>()
#define CMMC_CONTINUE() make<ContinueExpr>()
#define CMMC_EMPTY_STMT() make<EmptyExpr>()

#define CMMC_MISS_RP(LOC) driver.reportParserError((LOC), "Missing closing parenthesis ')'")
#define CMMC_MISS_RB(LOC) driver.reportParserError((LOC), "Missing closing bracket ']'")
#define CMMC_MISS_RC(LOC) driver.reportParserError((LOC), "Missing closing curly bracket '}'")
#define CMMC_MISS_SEMI(LOC) driver.reportParserError((LOC), "Missing semicolon ';'")
#define CMMC_MISS_SPECIFIER(LOC) driver.reportParserError((LOC), "Missing specifier")
#define CMMC_NEED_EXTENSION(LOC, EXT) \
    if(!driver.checkExtension())      \
    driver.reportParserError((LOC), #EXT " is not allowed in strict spl mode")
#define CMMC_LEXER_ERROR(TEXT)                       \
    driver.reportLexerError("unknown lexeme", TEXT); \
    CMMC_TERMINAL(ERR)
#define CMMC_COMMENT_ERROR() driver.reportLexerError("Missing closing comment", "*/")
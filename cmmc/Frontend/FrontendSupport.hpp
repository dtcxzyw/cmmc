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

#define YY_DECL yy::parser::symbol_type yylex(cmmc::DriverImpl& driver)
extern "C" YY_DECL;

#define CMMC_RECORD(ID, METADATA, ...)                                                                                         \
    (driver.shouldRecordHierarchy() ? driver.record({ __VA_ARGS__ },                                                           \
                                                    Hierarchy::Desc{ #ID, static_cast<uint32_t>(driver.location().begin.line), \
                                                                     Hierarchy::Variant{ METADATA } }) :                       \
                                      0)

#define CMMC_TERMINAL(ID) return yy::parser::make_##ID({ CMMC_RECORD(ID, std::monostate{}), loc })

#define CMMC_NONTERMINAL(LOC, ID, ...) LOC.first = CMMC_RECORD(ID, Hierarchy::NonTerminal{}, __VA_ARGS__)
#define CMMC_EMPTY(LOC, ID) LOC.first = CMMC_RECORD(Empty##ID, Hierarchy::Empty{})

#define CMMC_BINARY_OP(OP, LHS, RHS) BinaryExpr::get(OperatorID::OP, LHS, RHS)
#define CMMC_UNARY_OP(OP, VAL) UnaryExpr::get(OperatorID::OP, VAL)
#define CMMC_INT(VAL, BIT_WIDTH, SIGNED) ConstantIntExpr::get(VAL, BIT_WIDTH, SIGNED)
#define CMMC_FLOAT(VAL, IS_FLOAT) ConstantFloatExpr::get(VAL, IS_FLOAT)
#define CMMC_CHAR(VAL) ConstantIntExpr::get(VAL, 8, true)
#define CMMC_ID(NAME) IdentifierExpr::get(NAME)
#define CMMC_CALL(CALLEE, ARGS) FunctionCallExpr::get(CALLEE, std::move(ARGS))
#define CMMC_RETURN(RET) ReturnExpr::get(RET)
#define CMMC_IF(PRED, IF_PART) IfElseExpr::get(PRED, IF_PART, nullptr)
#define CMMC_IF_ELSE(PRED, IF_PART, ELSE_PART) IfElseExpr::get(PRED, IF_PART, ELSE_PART)
#define CMMC_CONCAT_PACK(RES_PACK, LHS_VALUE, RHS_PACK) concatPack((RES_PACK), (LHS_VALUE), (RHS_PACK))
#define CMMC_SCOPE(BLOCK) ScopedExpr::get(std::move(BLOCK))
#define CMMC_WHILE(PRED, BLOCK) WhileExpr::get(PRED, BLOCK)
#define CMMC_SCOPE_GEN(EXPR_PACK, LOCAL_VARS, STATEMENTS) generateScope((EXPR_PACK), (LOCAL_VARS), (STATEMENTS))
#define CMMC_MISS_RP(LOC) driver.reportParserError((LOC), "Missing closing parenthesis ')'")
#define CMMC_MISS_RB(LOC) driver.reportParserError((LOC), "Missing closing bracket ']'")
#define CMMC_MISS_RC(LOC) driver.reportParserError((LOC), "Missing closing curly bracket '}'")
#define CMMC_MISS_SEMI(LOC) driver.reportParserError((LOC), "Missing semicolon ';'")
#define CMMC_MISS_SPECIFIER(LOC) driver.reportParserError((LOC), "Missing specifier")
#define CMMC_NEED_EXTENSION(LOC, EXT) \
    if(!driver.checkExtension())      \
    driver.reportParserError((LOC), #EXT " is not allowed in strict spl mode")
#define CMMC_LEXER_ERROR(TEXT)     \
    driver.reportLexerError(TEXT); \
    CMMC_TERMINAL(ERR)

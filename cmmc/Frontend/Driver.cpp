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

#include "cmmc/Frontend/Driver.hpp"
#include "ParserDecl.hpp"
#include "cmmc/Frontend/AST.hpp"
#include <cstdlib>

#define CMMC_BINARY_OP(OP, LHS, RHS) BinaryExpr::get(OperatorID::OP, LHS, RHS)
#define CMMC_UNARY_OP(OP, VAL) UnaryExpr::get(OperatorID::OP, VAL)
#define CMMC_INT(VAL, BIT_WIDTH, SIGNED) ConstantIntExpr::get(VAL, BIT_WIDTH, SIGNED)
#define CMMC_ID(NAME) IdentifierExpr::get(NAME)
#define CMMC_CALL(CALLEE, ARGS) FunctionCallExpr::get(CALLEE, ARGS)
#define CMMC_RETURN(RET) ReturnExpr::get(RET)
#define CMMC_IF(PRED, IF_PART) IfElseExpr::get(PRED, IF_PART, nullptr)
#define CMMC_IF_ELSE(PRED, IF_PART, ELSE_PART) IfElseExpr::get(PRED, IF_PART, ELSE_PART)
#define CMMC_EMPTY_PACK(TYPE)                     \
    Deque<TYPE> {                                 \
        ArenaAllocator<TYPE*>(Arena::Source::AST) \
    }
#define CMMC_SINGLE_PACK(TYPE, INIT_VALUE)                       \
    Deque<TYPE> {                                                \
        { INIT_VALUE }, ArenaAllocator<TYPE>(Arena::Source::AST) \
    }
#define CMMC_CONCAT_PACK(RES_PACK, LHS_VALUE, RHS_PACK) concatPack((RES_PACK), (LHS_VALUE), (RHS_PACK))
#define CMMC_STR(STR)                                     \
    {                                                     \
        String {                                          \
            STR, ArenaAllocator<char>(Arena::Source::AST) \
        }                                                 \
    }

#include "ParserImpl.hpp"
#include "ScannerImpl.hpp"
#include <cstdio>
#include <fstream>
#include <iostream>
#include <string>

CMMC_NAMESPACE_BEGIN

Driver::Driver(const std::string& file) : mFile{ file } {}

void Driver::parse() {
    Arena arena;
    Arena::setArena(Arena::Source::AST, &arena);

    mLocation.initialize(&mFile);
    // yy_flex_debug = 1;
    yyin = fopen(mFile.c_str(), "r");
    mEnd = false;
    yy::parser parser{ *this };
    parser.set_debug_level(10);
    parser.set_debug_stream(std::cerr);
    parser.parse();
    if(!mEnd) {
        std::cerr << "Failed to parse" << std::endl;
        std::abort();
    }
    fclose(yyin);
}

yy::location& Driver::location() noexcept {
    return mLocation;
}

void Driver::emit(Module& module) {}

Value* BinaryExpr::emit(FunctionTranslationContext& ctx) const {
    return nullptr;
}

Value* UnaryExpr::emit(FunctionTranslationContext& ctx) const {
    return nullptr;
}

Value* ConstantIntExpr::emit(FunctionTranslationContext& ctx) const {
    return nullptr;
}

Value* FunctionCallExpr::emit(FunctionTranslationContext& ctx) const {
    return nullptr;
}

Value* ReturnExpr::emit(FunctionTranslationContext& ctx) const {
    return nullptr;
}

Value* IfElseExpr::emit(FunctionTranslationContext& ctx) const {
    return nullptr;
}

Value* IdentifierExpr::emit(FunctionTranslationContext& ctx) const {
    return nullptr;
}

void Driver::dump(std::ostream& out) {}

void Driver::markEnd() noexcept {
    mEnd = true;
}

void Driver::addFunctionDef(FunctionDeclaration decl, StatementBlock body) {}

BinaryExpr* BinaryExpr::get(OperatorID op, Expr* lhs, Expr* rhs) {
    return make<BinaryExpr>(op, lhs, rhs);
}

UnaryExpr* UnaryExpr::get(OperatorID op, Expr* value) {
    return make<UnaryExpr>(op, value);
}

ConstantIntExpr* ConstantIntExpr::get(uintmax_t value, uint32_t bitWidth, bool isSigned) {
    return make<ConstantIntExpr>(value, bitWidth, isSigned);
}

IdentifierExpr* IdentifierExpr::get(const String& str) {
    return make<IdentifierExpr>(str);
}

FunctionCallExpr* FunctionCallExpr::get(Expr* callee, ExprPack args) {
    return make<FunctionCallExpr>(callee, std::move(args));
}

ReturnExpr* ReturnExpr::get(Expr* returnValue) {
    return make<ReturnExpr>(returnValue);
}

IfElseExpr* IfElseExpr::get(Expr* pred, Expr* ifPart, Expr* elsePart) {
    return make<IfElseExpr>(pred, ifPart, elsePart);
}

CMMC_NAMESPACE_END

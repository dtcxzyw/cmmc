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
#include "cmmc/Frontend/AST.hpp"

using StringAST = cmmc::String<cmmc::Arena::Source::AST>;

#include "ParserDecl.hpp"
#include <cstdlib>

CMMC_NAMESPACE_BEGIN

class DriverImpl final {
    std::string mFile;
    yy::location mLocation;
    bool mEnd;
    Arena mArena;

public:
    DriverImpl(const std::string& file) : mFile{ file } {
        Arena::setArena(Arena::Source::AST, &mArena);
        mLocation.initialize(&mFile);
    }

    void markEnd() noexcept {
        mEnd = true;
    }
    void addFunctionDef(FunctionDeclaration decl, StatementBlock body);
    yy::location& location() noexcept {
        return mLocation;
    }
    bool complete() const noexcept {
        return mEnd;
    }
};

CMMC_NAMESPACE_END

#define YY_DECL yy::parser::symbol_type yylex(cmmc::DriverImpl& driver)
extern "C" YY_DECL;

#define CMMC_BINARY_OP(OP, LHS, RHS) BinaryExpr::get(OperatorID::OP, LHS, RHS)
#define CMMC_UNARY_OP(OP, VAL) UnaryExpr::get(OperatorID::OP, VAL)
#define CMMC_INT(VAL, BIT_WIDTH, SIGNED) ConstantIntExpr::get(VAL, BIT_WIDTH, SIGNED)
#define CMMC_ID(NAME) IdentifierExpr::get(NAME)
#define CMMC_CALL(CALLEE, ARGS) FunctionCallExpr::get(CALLEE, ARGS)
#define CMMC_RETURN(RET) ReturnExpr::get(RET)
#define CMMC_IF(PRED, IF_PART) IfElseExpr::get(PRED, IF_PART, nullptr)
#define CMMC_IF_ELSE(PRED, IF_PART, ELSE_PART) IfElseExpr::get(PRED, IF_PART, ELSE_PART)
#define CMMC_CONCAT_PACK(RES_PACK, LHS_VALUE, RHS_PACK) concatPack((RES_PACK), (LHS_VALUE), (RHS_PACK))
#define CMMC_STR(STR)            \
    String<Arena::Source::AST> { \
        std::string_view {       \
            STR                  \
        }                        \
    }

#define CMMC_SCOPE(BLOCK) ScopedExpr::get(BLOCK);

#include "ParserImpl.hpp"
#include "ScannerImpl.hpp"
#include <cstdio>
#include <fstream>
#include <iostream>
#include <string>

CMMC_NAMESPACE_BEGIN

Driver::Driver(const std::string& file) {
    parse(file);
}
Driver::~Driver() {}

void Driver::parse(const std::string& file) {
    mImpl = std::make_unique<DriverImpl>(file);
    // yy_flex_debug = 1;
    yyin = fopen(file.c_str(), "r");
    yy::parser parser{ *mImpl };
    parser.set_debug_level(10);
    parser.set_debug_stream(std::cerr);
    parser.parse();
    if(!mImpl->complete()) {
        std::cerr << "Failed to parse" << std::endl;
        std::abort();
    }
    fclose(yyin);
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

Value* ScopedExpr::emit(FunctionTranslationContext& ctx) const {
    return nullptr;
}

void Driver::dump(std::ostream& out) {}

void DriverImpl::addFunctionDef(FunctionDeclaration decl, StatementBlock body) {}

BinaryExpr* BinaryExpr::get(OperatorID op, Expr* lhs, Expr* rhs) {
    return make<BinaryExpr>(op, lhs, rhs);
}

UnaryExpr* UnaryExpr::get(OperatorID op, Expr* value) {
    return make<UnaryExpr>(op, value);
}

ConstantIntExpr* ConstantIntExpr::get(uintmax_t value, uint32_t bitWidth, bool isSigned) {
    return make<ConstantIntExpr>(value, bitWidth, isSigned);
}

IdentifierExpr* IdentifierExpr::get(const String<Arena::Source::AST>& str) {
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

ScopedExpr* ScopedExpr::get(StatementBlock block) {
    return make<ScopedExpr>(std::move(block));
}

CMMC_NAMESPACE_END

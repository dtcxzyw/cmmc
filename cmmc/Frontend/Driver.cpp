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
#include "location.hh"
#include <cassert>
#include <cstdint>
#include <memory>
#include <ostream>
#include <string_view>

using StringAST = cmmc::String<cmmc::Arena::Source::AST>;

#include "ParserDecl.hpp"
#include <cstdlib>
#include <variant>

CMMC_NAMESPACE_BEGIN

using MixedDefinition = std::variant<FunctionDefinition>;
CMMC_ARENA_TRAIT(MixedDefinition, AST);

struct Hierarchy final {
    static constexpr uint32_t indentInc = 2;

    // NAME + Metadata
    // literals non-terminal identifiers others
    struct Empty final {};
    struct NonTerminal final {};
    using Variant = std::variant<uintmax_t, double, char, NonTerminal, StringAST, Empty, std::monostate>;
    struct Desc final {
        const char* name;
        uint32_t line;
        Variant metadata;
    };
    Desc desc;
    Deque<Hierarchy> children;

    template <typename T>
    static void print(std::ostream& out, const char* name, uint32_t line, T metadata) {
        out << name << ": " << metadata << std::endl;
    }

    static void print(std::ostream& out, const char* name, uint32_t line, std::monostate) {
        out << name << std::endl;
    }

    static void print(std::ostream& out, const char* name, uint32_t line, char ch) {
        out << name << ": '" << ch << '\'' << std::endl;
    }

    static void print(std::ostream& out, const char* name, uint32_t line, NonTerminal) {
        out << name << " (" << line << ')' << std::endl;
    }

    [[noreturn]] static void print(std::ostream& out, const char*, uint32_t line, Empty) {
        CMMC_UNREACHABLE();
    }

    uint32_t updateLocation() {
        auto& res = desc.line;
        for(auto& child : children)
            res = std::min(res, child.updateLocation());
        return res;
    }

    void dump(std::ostream& out, uint32_t indent) {
        if(std::holds_alternative<Empty>(desc.metadata))
            return;  // empty non-terminal
        for(uint32_t i = 0; i < indent; ++i)
            out << ' ';
        std::visit([&](auto& val) { print(out, desc.name, desc.line, val); }, desc.metadata);
        indent += indentInc;
        for(auto& child : children)
            child.dump(out, indent);
    }
};
CMMC_ARENA_TRAIT(Hierarchy, AST);

class DriverImpl final {
    std::string mFile;
    bool mRecordHierarchy;
    bool mStrictMode;
    yy::location mLocation;
    bool mEnd;
    std::shared_ptr<Arena> mArena;

    Deque<MixedDefinition> mDefs;  // decls/defs **in order**
    Deque<Hierarchy> mHierarchyStack;

public:
    DriverImpl(const std::string& file, bool recordHierarchy, bool strictMode, std::shared_ptr<Arena> arena)
        : mFile{ file }, mRecordHierarchy{ recordHierarchy }, mStrictMode{ strictMode }, mArena{ std::move(arena) } {
        mLocation.initialize(&mFile);
    }
    ~DriverImpl() {
        mDefs = {};
        mHierarchyStack = {};
    }

    void markEnd() noexcept {
        mEnd = true;
    }
    void addFunctionDef(FunctionDefinition def) {
        mDefs.push_back(std::move(def));
    }
    yy::location& location() noexcept {
        return mLocation;
    }
    bool complete() const noexcept {
        return mEnd;
    }

    bool shouldRecordHierarchy() const noexcept {
        return mRecordHierarchy;
    }
    bool checkExtension(const char* ext) const noexcept {
        if(mStrictMode) {
            std::cerr << "Extension " << ext << " is not allowed in strict mode" << std::endl;
            return true;
        }
        return false;
    }

    void record(uint32_t pack, Hierarchy::Desc desc) {
        assert(shouldRecordHierarchy());
        assert(static_cast<size_t>(pack) <= mHierarchyStack.size());
        Hierarchy unit{ std::move(desc) };
        for(uint32_t i = 0; i < pack; ++i) {
            unit.children.emplace_front(std::move(mHierarchyStack.back()));
            mHierarchyStack.pop_back();
        }
        mHierarchyStack.emplace_back(std::move(unit));
    }

    void emit(Module& module);
    void dump(std::ostream& out);
};

CMMC_NAMESPACE_END

#define YY_DECL yy::parser::symbol_type yylex(cmmc::DriverImpl& driver)
extern "C" YY_DECL;

#define CMMC_RECORD(ID, PACK, ...)     \
    if(driver.shouldRecordHierarchy()) \
    driver.record(                     \
        PACK, Hierarchy::Desc{ #ID, static_cast<uint32_t>(driver.location().begin.line), Hierarchy::Variant{ __VA_ARGS__ } })

#define CMMC_TERMINAL(ID)                 \
    CMMC_RECORD(ID, 0, std::monostate{}); \
    return yy::parser::make_##ID(loc);

#define CMMC_NONTERMINAL(ID, PACK) CMMC_RECORD(ID, PACK, Hierarchy::NonTerminal{})
#define CMMC_EMPTY() CMMC_RECORD(Empty, 0, Hierarchy::Empty{})

#define CMMC_BINARY_OP(OP, LHS, RHS) BinaryExpr::get(OperatorID::OP, LHS, RHS)
#define CMMC_UNARY_OP(OP, VAL) UnaryExpr::get(OperatorID::OP, VAL)
#define CMMC_INT(VAL, BIT_WIDTH, SIGNED) ConstantIntExpr::get(VAL, BIT_WIDTH, SIGNED)
#define CMMC_CHAR(VAL) ConstantIntExpr::get(VAL, 8, true)
#define CMMC_ID(NAME) IdentifierExpr::get(NAME)
#define CMMC_CALL(CALLEE, ARGS) FunctionCallExpr::get(CALLEE, ARGS)
#define CMMC_RETURN(RET) ReturnExpr::get(RET)
#define CMMC_IF(PRED, IF_PART) IfElseExpr::get(PRED, IF_PART, nullptr)
#define CMMC_IF_ELSE(PRED, IF_PART, ELSE_PART) IfElseExpr::get(PRED, IF_PART, ELSE_PART)
#define CMMC_CONCAT_PACK(RES_PACK, LHS_VALUE, RHS_PACK) concatPack((RES_PACK), (LHS_VALUE), (RHS_PACK))
#define CMMC_SCOPE(BLOCK) ScopedExpr::get(BLOCK);
#define CMMC_EXTENSION(EXT)         \
    if(driver.checkExtension(#EXT)) \
        YYABORT;

#include "ParserImpl.hpp"
#include "ScannerImpl.hpp"
#include <cstdio>
#include <fstream>
#include <iostream>
#include <string>

CMMC_NAMESPACE_BEGIN

Driver::Driver(const std::string& file, bool recordHierarchy, bool strictMode) {
    parse(file, recordHierarchy, strictMode);
}
Driver::~Driver() {}

void Driver::parse(const std::string& file, bool recordHierarchy, bool strictMode) {
    auto arena = std::make_shared<Arena>();
    Arena::setArena(Arena::Source::AST, arena.get());
    mImpl = std::make_unique<DriverImpl>(file, recordHierarchy, strictMode, std::move(arena));
    yy_flex_debug = 1;
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

void Driver::emit(Module& module) {
    mImpl->emit(module);
}

void DriverImpl::emit(Module& module) {}

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

void Driver::dump(std::ostream& out) {
    mImpl->dump(out);
}

void DriverImpl::dump(std::ostream& out) {
    if(mHierarchyStack.empty()) {
        std::cerr << "please enable recordHierarchy" << std::endl;
        std::abort();
    }

    if(mHierarchyStack.size() != 1 || !mEnd) {
        std::cerr << "invalid program" << std::endl;
        std::abort();
    }

    auto& root = mHierarchyStack.front();
    root.updateLocation();
    root.dump(out, 0);
}

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

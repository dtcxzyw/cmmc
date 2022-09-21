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

#include <cassert>
#include <cctype>
#include <cmmc/Frontend/AST.hpp>
#include <cmmc/Frontend/Driver.hpp>
#include <cmmc/Frontend/Location.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>
#include <memory>
#include <ostream>
#include <string_view>

namespace std {  // NOTICE: we need ADL
    std::ostream& operator<<(std::ostream& out, const std::pair<uint32_t, yy::location>& loc) {
        return out << loc.second;
    }
}  // namespace std

#define YYLLOC_DEFAULT(CURRENT, RHS, N)                                                  \
    do                                                                                   \
        if(N) {                                                                          \
            (CURRENT).second.begin = YYRHSLOC(RHS, 1).second.begin;                      \
            (CURRENT).second.end = YYRHSLOC(RHS, N).second.end;                          \
        } else {                                                                         \
            (CURRENT).second.begin = (CURRENT).second.end = YYRHSLOC(RHS, 0).second.end; \
        }                                                                                \
    while(false)

using StringAST = cmmc::String<cmmc::Arena::Source::AST>;

#include <ParserDecl.hpp>
#include <cstdlib>
#include <variant>

CMMC_NAMESPACE_BEGIN

using MixedDefinition = std::variant<FunctionDefinition>;
CMMC_ARENA_TRAIT(MixedDefinition, AST);

struct ChildRef final {
    uint32_t pos;

    ChildRef(const std::pair<uint32_t, yy::location>& loc) : pos{ loc.first } {}
};
CMMC_ARENA_TRAIT(ChildRef, AST);

struct Hierarchy final {
    static constexpr uint32_t indentInc = 2;

    // NAME + Metadata
    // literals non-terminal identifiers others
    struct Empty final {};
    struct NonTerminal final {};
    using Variant = std::variant<NonTerminal, uintmax_t, char, double, StringAST, Empty, std::monostate>;
    struct Desc final {
        const char* name;
        uint32_t line;
        Variant metadata;
    };

    Desc desc;
    Deque<ChildRef> children;

    template <typename T>
    static void print(std::ostream& out, const char* name, uint32_t, const T& metadata) {
        out << name << ": " << metadata << std::endl;
    }

    static void print(std::ostream& out, const char* name, uint32_t, const char metadata) {
        out << name << ": '";
        if(std::isprint(metadata))
            out << metadata;
        else {
            constexpr auto lut = "0123456789ABCDEF";
            const uint8_t val = metadata;
            const auto p1 = lut[val / 16];
            const auto p2 = lut[val % 16];
            out << "\\x" << p1 << p2;
        }
        out << '\'' << std::endl;
    }

    static void print(std::ostream& out, const char* name, uint32_t line, std::monostate) {
        out << name << std::endl;
    }

    static void print(std::ostream& out, const char* name, uint32_t line, NonTerminal) {
        out << name << " (" << line << ')' << std::endl;
    }

    [[noreturn]] static void print(std::ostream& out, const char*, uint32_t line, Empty) {
        reportUnreachable();
    }

    uint32_t updateLocation(DriverImpl& driver);
    void dump(DriverImpl& driver, std::ostream& out, uint32_t indent) const;
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
    Deque<Hierarchy> mHierarchyTree;

public:
    DriverImpl(const std::string& file, bool recordHierarchy, bool strictMode, std::shared_ptr<Arena> arena)
        : mFile{ file }, mRecordHierarchy{ recordHierarchy }, mStrictMode{ strictMode }, mArena{ std::move(arena) } {
        mLocation.initialize(&mFile);
    }
    ~DriverImpl() {
        mDefs = {};
        mHierarchyTree = {};
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
            reportError() << "Extension " << ext << " is not allowed in strict mode" << std::endl;
            return true;
        }
        return false;
    }

    Hierarchy& hierarchy(ChildRef ref) {
        return mHierarchyTree[ref.pos];
    }

    uint32_t record(Deque<ChildRef> children, Hierarchy::Desc desc) {
        assert(shouldRecordHierarchy());
        const auto index = static_cast<uint32_t>(mHierarchyTree.size());
        mHierarchyTree.push_back(Hierarchy{ std::move(desc), std::move(children) });
        return index;
    }

    void emit(Module& module);
    void dump(std::ostream& out);

    void reportLexerError(const char* str) {
        reportError() << "Error type A at Line " << mLocation.begin.line << ": unknown lexeme " << str << std::endl;
    }
};

CMMC_NAMESPACE_END

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
#define CMMC_CALL(CALLEE, ARGS) FunctionCallExpr::get(CALLEE, ARGS)
#define CMMC_RETURN(RET) ReturnExpr::get(RET)
#define CMMC_IF(PRED, IF_PART) IfElseExpr::get(PRED, IF_PART, nullptr)
#define CMMC_IF_ELSE(PRED, IF_PART, ELSE_PART) IfElseExpr::get(PRED, IF_PART, ELSE_PART)
#define CMMC_CONCAT_PACK(RES_PACK, LHS_VALUE, RHS_PACK) concatPack((RES_PACK), (LHS_VALUE), (RHS_PACK))
#define CMMC_SCOPE(BLOCK) ScopedExpr::get(BLOCK)
#define CMMC_WHILE(PRED, BLOCK) WhileExpr::get(PRED, BLOCK)
#define CMMC_VAR(NAME, INIT_EXPR) \
    NamedVar {                    \
        NAME, INIT_EXPR           \
    }
#define CMMC_VAR_DEF(TYPE, VARS) LocalVarDefExpr::get(TYPE, VARS)
#define CMMC_EXTENSION(EXT)         \
    if(driver.checkExtension(#EXT)) \
        YYABORT;

#include <ParserImpl.hpp>
#include <ScannerImpl.hpp>
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
    // yy_flex_debug = 1;
    yyin = fopen(file.c_str(), "r");
    if(!yyin) {
        reportError() << "Failed to open the source file " << file << std::endl;
        std::abort();
    }
    yy::parser parser{ *mImpl };
    // parser.set_debug_level(10);
    // parser.set_debug_stream(std::cerr);
    parser.parse();
    if(!mImpl->complete()) {
        reportError() << "Failed to parse" << std::endl;
        std::abort();
    }
    fclose(yyin);
}

void Driver::emit(Module& module) {
    mImpl->emit(module);
}

void DriverImpl::emit(Module& module) {
    EmitContext ctx{ &module };
    ctx.pushScope();

    const auto read =
        make<Function>(String<Arena::Source::IR>{ "read" }, make<FunctionType>(IntegerType::get(32), Vector<Type*>{}));
    const auto write = make<Function>(String<Arena::Source::IR>{ "write" },
                                      make<FunctionType>(VoidType::get(), Vector<Type*>{ IntegerType::get(32) }));
    ctx.addIdentifier(StringAST{ "read" }, read);
    ctx.addIdentifier(StringAST{ "write" }, write);
    module.add(read);
    module.add(write);

    for(auto& def : mDefs) {
        std::visit([&ctx](auto& def) { def.emit(ctx); }, def);
    }
    assert(module.verify(std::cerr));
}

void Driver::dump(std::ostream& out) {
    mImpl->dump(out);
}

void DriverImpl::dump(std::ostream& out) {
    if(!mRecordHierarchy) {
        reportError() << "please enable recordHierarchy" << std::endl;
        std::abort();
    }

    if(!mEnd) {
        reportError() << "invalid program" << std::endl;
        std::abort();
    }

    auto& root = mHierarchyTree.back();
    root.updateLocation(*this);
    root.dump(*this, out, 0);
}

uint32_t Hierarchy::updateLocation(DriverImpl& driver) {
    auto& res = desc.line;
    for(auto child : children)
        res = std::min(res, driver.hierarchy(child).updateLocation(driver));
    return res;
}

void Hierarchy::dump(DriverImpl& driver, std::ostream& out, uint32_t indent) const {
    if(std::holds_alternative<Empty>(desc.metadata))
        return;  // empty non-terminal
    for(uint32_t i = 0; i < indent; ++i)
        out << ' ';
    std::visit([&](auto& val) { print(out, desc.name, desc.line, val); }, desc.metadata);
    indent += indentInc;
    for(auto child : children)
        driver.hierarchy(child).dump(driver, out, indent);
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

WhileExpr* WhileExpr::get(Expr* pred, Expr* block) {
    return make<WhileExpr>(pred, block);
}

ConstantFloatExpr* ConstantFloatExpr::get(double value, bool isFloat) {
    return make<ConstantFloatExpr>(value, isFloat);
}

CMMC_NAMESPACE_END

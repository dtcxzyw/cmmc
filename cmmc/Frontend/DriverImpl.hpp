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
#include <cassert>
#include <cctype>
#include <cmmc/Frontend/AST.hpp>
#include <cmmc/Frontend/Driver.hpp>
#include <cmmc/Frontend/Location.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>
#include <cstdlib>
#include <memory>
#include <ostream>
#include <string_view>
#include <variant>

namespace std {  // NOTICE: we need ADL
    std::ostream& operator<<(std::ostream& out, const std::pair<uint32_t, yy::location>& loc);
}  // namespace std

CMMC_NAMESPACE_BEGIN

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

using MixedDefinition = std::variant<FunctionDefinition, GlobalVarDefinition, StructDefinition>;
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
    bool mEnd = false;
    bool mError = false;
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
    void addGlobalDef(const TypeRef& typeDef, const VarList& varList) {
        for(auto& var : varList)
            mDefs.push_back(GlobalVarDefinition{ typeDef, var });
    }
    void addOpaqueType(const TypeRef& typeName) {
        // TODO
    }
    void addStructType(StringAST typeName, VarDefList list) {
        mDefs.push_back(StructDefinition{ std::move(typeName), std::move(list) });
    }
    yy::location& location() noexcept {
        return mLocation;
    }
    bool complete() const noexcept {
        return mEnd && !mError;
    }

    bool shouldRecordHierarchy() const noexcept {
        return mRecordHierarchy;
    }
    bool checkExtension() noexcept {
        return !mStrictMode;
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

    void emit(Module& module, FrontEndLang lang);
    void dump(std::ostream& out);

    void reportLexerError(const char* str) {
        reportError() << "Error type A at Line " << mLocation.begin.line << ": unknown lexeme " << str << std::endl;
        mError = true;
    }
    void reportParserError(const std::pair<uint32_t, yy::location>& location, const char* str) {
        reportError() << "Error type B at Line " << location.second.begin.line << ": " << str << std::endl;
        mError = true;
    }
};

void generateScope(ExprPack& result, const VarDefList& list, const ExprPack& src);

CMMC_NAMESPACE_END

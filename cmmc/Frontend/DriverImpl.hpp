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
#include <cmmc/Frontend/SourceLocation.hpp>
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
    using Variant = std::variant<NonTerminal, uintmax_t, char, double, String, Empty, std::monostate>;
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

    static void print(std::ostream& out, const char* name, uint32_t, std::monostate) {
        out << name << std::endl;
    }

    static void print(std::ostream& out, const char* name, uint32_t line, NonTerminal) {
        out << name << " (" << line << ')' << std::endl;
    }

    [[noreturn]] static void print(std::ostream&, const char*, uint32_t, Empty) {
        reportUnreachable();
    }

    uint32_t updateLocation(DriverImpl& driver);
    void dump(DriverImpl& driver, std::ostream& out, uint32_t indent) const;
};
CMMC_ARENA_TRAIT(Hierarchy, AST);

SourceLocation castLoc(const std::pair<uint32_t, yy::location>& location);

class DriverImpl final {
    std::string mFile;
    FrontEndLang mLang;
    bool mRecordHierarchy;
    bool mStrictMode;
    yy::location mLocation;
    bool mEnd = false;
    bool mError = false;
    std::shared_ptr<Arena> mArena;

    Deque<MixedDefinition> mDefs;  // decls/defs **in order**
    Deque<Hierarchy> mHierarchyTree;

public:
    DriverImpl(const std::string& file, FrontEndLang lang, bool recordHierarchy, bool strictMode, std::shared_ptr<Arena> arena);
    ~DriverImpl();

    void markEnd() noexcept;
    void addFunctionDef(FunctionDefinition def);
    void addGlobalDef(const TypeRef& typeDef, const VarList& varList);
    void addOpaqueType(const TypeRef&);
    void addStructType(const SourceLocation& loc, String typeName, VarDefList list);
    yy::location& location() noexcept;
    bool complete() const noexcept;
    bool shouldRecordHierarchy() const noexcept;
    bool checkExtension() noexcept;

    Hierarchy& hierarchy(ChildRef ref);
    uint32_t record(Deque<ChildRef> children, Hierarchy::Desc desc);

    void emit(Module& module);
    void dump(std::ostream& out);

    void reportLexerError(const char* reason, const char* str);
    void reportParserError(const std::pair<uint32_t, yy::location>& location, const char* str);
};

void generateScope(ExprPack& result, VarDefList list, const ExprPack& src);
Expr* generateDef(VarDef def);

CMMC_NAMESPACE_END

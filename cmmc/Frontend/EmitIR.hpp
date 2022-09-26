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
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cstdint>
#include <utility>

CMMC_NAMESPACE_BEGIN
using StringAST = String<Arena::Source::AST>;

enum class TypeLookupSpace { Default /* Builtins & Aliases */, Struct, Enum };
using ArraySize = Vector<uint32_t, ArenaAllocator<Arena::Source::AST, uint32_t>>;

class Expr;

using Scope = HashTable<StringAST, Value*, Arena::Source::AST, StringHasher<Arena::Source::AST>>;
CMMC_ARENA_TRAIT(Scope, AST);

class EmitContext final : public IRBuilder {
    Module* mModule;
    Deque<Scope> mScopes;

    Type* mInteger;
    Type* mFloat;
    Type* mChar;

public:
    explicit EmitContext(Module* module);

    Module* getModule() const noexcept {
        return mModule;
    }
    Value* convertTo(Value* value, Type* type);
    Value* getRValue(Expr* expr);
    Value* getLValue(Expr* expr);
    void pushScope();
    void popScope();
    void addIdentifier(StringAST identifier, Value* value);
    Value* lookupIdentifier(const StringAST& identifier);
    Type* getType(const StringAST& type, TypeLookupSpace space, const ArraySize& arraySize) const;
};

CMMC_NAMESPACE_END

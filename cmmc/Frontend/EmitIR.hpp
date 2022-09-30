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
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cstdint>
#include <deque>
#include <utility>
#include <variant>

CMMC_NAMESPACE_BEGIN

class Expr;
enum class TypeLookupSpace { Default /* Builtins & Aliases */, Struct, Enum };
using ArraySize = Vector<Expr*, ArenaAllocator<Arena::Source::AST, Expr*>>;

using Scope = HashTable<StringAST, Value*, Arena::Source::AST, StringHasher<Arena::Source::AST>>;
CMMC_ARENA_TRAIT(Scope, AST);

struct PassingPlan final {
    bool passingRetValByPointer = false;
    std::vector<bool> passingArgsByPointer;
};

class EmitContext final : public IRBuilder {
    Module* mModule;
    std::deque<Scope> mScopes;
    std::unordered_map<StringAST, StructType*, StringHasher<Arena::Source::AST>> mStructTypes;
    std::unordered_map<Value*, PassingPlan> mPassingPlan;

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
    Value* getLValueForce(Expr* expr, Type* type);
    void pushScope();
    void popScope();
    void addIdentifier(StringAST identifier, Value* value);
    void addIdentifier(StringAST identifier, StructType* type);
    Value* lookupIdentifier(const StringAST& identifier);
    Type* getType(const StringAST& type, TypeLookupSpace space, const ArraySize& arraySize) const;
    void addPassingPlan(Value* func, PassingPlan plan);
    const PassingPlan& getPassingPlan(Value* func);
};

CMMC_NAMESPACE_END

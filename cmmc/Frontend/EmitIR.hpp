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

class Expr;

using Scope = HashTable<String<Arena::Source::AST>, Value*, Arena::Source::AST, StringHasher<Arena::Source::AST>>;
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
    Value* convertTo(Value* value, Type* type) const;
    Value* getRValue(Expr* expr) const;
    Value* getLValue(Expr* expr) const;
    void pushScope();
    void popScope();
    void addIdentifier(String<Arena::Source::AST> identifier, Value* value);
    Value* lookupIdentifier(const String<Arena::Source::AST>& identifier);
    Type* getType(const String<Arena::Source::AST>& name) const;  // TODO: lookup space
};

CMMC_NAMESPACE_END

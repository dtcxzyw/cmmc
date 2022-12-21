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
#include <cmmc/Frontend/SourceLocation.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cstdint>
#include <deque>
#include <unordered_map>
#include <utility>
#include <variant>

CMMC_NAMESPACE_BEGIN

enum class IdentifierUsageHint { Unknown, Function };

class Expr;
enum class TypeLookupSpace { Default /* Builtins & Aliases */, Struct, Enum };
using ArraySize = Vector<Expr*, ArenaAllocator<Arena::Source::AST, Expr*>>;

struct Qualifier final {
    bool isConst = false;
    bool isSigned = true;
    // bool isVolatile;

    static Qualifier getSigned() noexcept {
        return Qualifier{ false, true };
    }
    static Qualifier getUnsigned() noexcept {
        return Qualifier{ false, false };
    }
};

enum class ValueQualifier { AsRValue, AsLValue };

struct QualifiedValue final {
    Value* value;
    ValueQualifier valueQualifier;
    Qualifier qualifier;

    explicit QualifiedValue() : value{ nullptr }, valueQualifier{ ValueQualifier::AsRValue } {}
    explicit QualifiedValue(Value* val) : value{ val }, valueQualifier{ ValueQualifier::AsRValue } {}
    QualifiedValue(Value* val, ValueQualifier valueQualifierVal, Qualifier qualifierVal)
        : value{ val }, valueQualifier{ valueQualifierVal }, qualifier{ qualifierVal } {}
};

struct Scope final {
    std::unordered_set<String, StringHasher> variables;
};

CMMC_ARENA_TRAIT(Scope, AST);

struct FunctionCallInfo final {
    bool passingRetValByPointer = false;
    std::vector<bool> passingArgsByPointer;
    std::vector<Qualifier> argQualifiers;
    Qualifier retQualifier;
};

enum class ConversionUsage { Assignment, Condition, FunctionCall, Initialization, Index, Size, ReturnValue, Implicit };
enum class AsLValueUsage { Assignment, GetAddress, SelfIncDec };

class EmitContext final : public IRBuilder {
    Module* mModule;
    std::deque<Scope> mScopes;
    std::unordered_map<String, std::deque<QualifiedValue>, StringHasher> mVariables;

    std::deque<std::pair<Block*, Block*>> mTerminatorTarget;
    std::unordered_map<String, const StructType*, StringHasher> mStructTypes;
    std::unordered_map<const FunctionType*, FunctionCallInfo> mCallInfo;
    std::unordered_map<Value*, Value*> mConstantBinding;

    const Type* mInteger;
    const Type* mFloat;
    const Type* mChar;
    bool mIsInvalid = false;
    Value *mInvalid, *mInvalidPtr;

public:
    explicit EmitContext(Module* module);

    void markInvalid() noexcept {
        mIsInvalid = true;
    }
    Value* getInvalidLValue() noexcept {
        mIsInvalid = true;
        return mInvalidPtr;
    }
    Value* getInvalidRValue() noexcept {
        mIsInvalid = true;
        return mInvalid;
    }
    bool invalid() const noexcept {
        return mIsInvalid;
    }
    Module* getModule() const noexcept {
        return mModule;
    }
    Value* booleanToInt(Value* value);
    Value* convertTo(Value* value, const Type* type, Qualifier srcQualifier, Qualifier dstQualifier, ConversionUsage usage);
    std::pair<Value*, Qualifier> getRValue(const QualifiedValue& value);
    std::pair<Value*, Qualifier> getRValue(Expr* expr);
    Value* getRValue(Expr* expr, const Type* type, Qualifier dstQualifier, ConversionUsage usage);
    std::pair<Value*, Qualifier> getLValue(Expr* expr, AsLValueUsage usage);
    Value* getLValueForce(Expr* expr, const Type* type, Qualifier dstQualifier, ConversionUsage usage);
    void copyStruct(Value* dest, Value* src);
    void pushScope();
    void popScope();
    void addIdentifier(String identifier, QualifiedValue value);
    void addIdentifier(String identifier, const StructType* type);
    void addConstant(Value* address, Value* val);
    QualifiedValue lookupIdentifier(const String& identifier, IdentifierUsageHint hint);
    const Type* getType(const String& type, TypeLookupSpace space, const ArraySize& arraySize);

    void addFunctionCallInfo(const FunctionType* func, FunctionCallInfo info);
    const FunctionCallInfo& getFunctionCallInfo(const FunctionType* func);

    void pushLoop(Block* continueTarget, Block* breakTarget);
    void popLoop();
    Block* getContinueTarget();
    Block* getBreakTarget();

    Function* getIntrinsic(Intrinsic intrinsic);
    static void pushLoc(const SourceLocation& loc);
    static void popLoc();
};

CMMC_NAMESPACE_END

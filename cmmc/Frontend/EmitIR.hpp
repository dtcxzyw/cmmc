/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2023 CMMC Authors
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
#include <cmmc/IR/Instruction.hpp>
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
    bool isConst;
    bool isSigned;
    // bool isVolatile;

    Qualifier() = delete;
    constexpr Qualifier(bool isConstType, bool isSignedType) noexcept : isConst{ isConstType }, isSigned{ isSignedType } {}
    static constexpr Qualifier getDefault() noexcept {
        return Qualifier{ false, false };
    }
};

enum class ValueQualifier { AsRValue, AsLValue };

struct QualifiedType final {
    const Type* type;
    Qualifier qualifier;
};

struct QualifiedValue final {
    Value* value;
    ValueQualifier valueQualifier;
    Qualifier qualifier;

    constexpr QualifiedValue(Value* val, ValueQualifier valueQualifierVal, Qualifier qualifierVal) noexcept
        : value{ val }, valueQualifier{ valueQualifierVal }, qualifier{ qualifierVal } {}
    static QualifiedValue asRValue(Value* val, Qualifier qualifier) noexcept {
        return { val, ValueQualifier::AsRValue, qualifier };
    }
    static constexpr QualifiedValue getNull() noexcept {
        return { nullptr, ValueQualifier::AsRValue, Qualifier::getDefault() };
    }
};

struct Scope final {
    std::unordered_set<String, StringHasher> variables;
};

CMMC_ARENA_TRAIT(Scope, AST);

struct FunctionCallInfo final {
    bool passingRetValByPointer;
    std::vector<bool> passingArgsByPointer;
    std::vector<Qualifier> argQualifiers;
    Qualifier retQualifier;
};

enum class ConversionUsage { Assignment, Condition, FunctionCall, Initialization, Index, Size, ReturnValue, Implicit, Explcit };
enum class AsLValueUsage { Assignment, GetAddress, SelfIncDec };

class EmitContext final : public IRBuilder {
    Module* mModule;
    std::deque<Scope> mScopes;
    std::unordered_map<String, std::deque<QualifiedValue>, StringHasher> mVariables;

    std::deque<std::pair<Block*, Block*>> mTerminatorTarget;
    std::deque<SwitchInst*> mSwitchTarget;
    std::unordered_map<String, const StructType*, StringHasher> mStructTypes;
    std::unordered_map<const FunctionType*, FunctionCallInfo> mCallInfo;
    std::unordered_map<Value*, Value*> mConstantBinding;
    std::unordered_map<String, Block*, StringHasher> mNamedLabels;
    std::vector<std::pair<Instruction*, String>> mGotos;

    const Type* mInteger;
    const Type* mFloat;
    const Type* mDouble;
    const Type* mChar;
    bool mIsInvalid = false;
    Value *mInvalid, *mInvalidPtr;

public:
    explicit EmitContext(Module* module);

    void addNamedLabel(String label, Block* block);
    void addGoto(Instruction* gotoInst, String label);
    void finalizeGoto();

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
    bool isIdentifierDefined(const String& identifier) const;
    const Type* getType(const String& type, TypeLookupSpace space, const ArraySize& arraySize);

    void addFunctionCallInfo(const FunctionType* func, FunctionCallInfo info);
    const FunctionCallInfo& getFunctionCallInfo(const FunctionType* func);

    void pushLoop(Block* continueTarget, Block* breakTarget);
    void popLoop();
    Block* getContinueTarget();
    Block* getBreakTarget();

    void pushSwitch(SwitchInst* inst, Block* breakTarget);
    void popSwitch();
    SwitchInst* getSwitchInst();

    Function* getMemcpy();
    Function* getMemset(const Type* type);
    static void pushLoc(const SourceLocation& loc);
    static void popLoc();
};

CMMC_NAMESPACE_END

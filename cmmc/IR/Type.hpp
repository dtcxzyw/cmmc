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
#include "cmmc/Frontend/SourceLocation.hpp"
#include "cmmc/Support/Arena.hpp"
#include <cstdint>

CMMC_NAMESPACE_BEGIN

class Module;

class Type {
public:
    static constexpr auto arenaSource = Arena::Source::IR;

    Type() = default;
    Type(const Type&) = delete;
    Type(Type&&) = delete;
    Type& operator=(const Type&) = delete;
    Type& operator=(Type&&) = delete;
    virtual ~Type();

    template <typename T>
    T* as() {
        return dynamic_cast<T*>(this);
    }

    virtual bool isVoid() const noexcept {
        return false;
    }
    virtual bool isPointer() const noexcept {
        return false;
    }
    virtual bool isInteger() const noexcept {
        return false;
    }
    virtual bool isBoolean() const noexcept {
        return false;
    }
    virtual bool isFloatingPoint() const noexcept {
        return false;
    }
    virtual bool isStruct() const noexcept {
        return false;
    }
    virtual bool isArray() const noexcept {
        return false;
    }
    virtual bool isFunction() const noexcept {
        return false;
    }
    bool isPrimitiveType() const noexcept {
        return !isArray() && !isStruct();
    }

    virtual bool isSame(Type* rhs) const = 0;
};
CMMC_ARENA_TRAIT(Type, IR);

class VoidType final : public Type {
public:
    bool isVoid() const noexcept override {
        return true;
    }
    bool isSame(Type* rhs) const override;
    static VoidType* get();
};

class PointerType final : public Type {
    Type* mPointee;

public:
    explicit PointerType(Type* pointee) : mPointee{ pointee } {}
    bool isPointer() const noexcept override {
        return true;
    }
    Type* getPointee() const noexcept {
        return mPointee;
    }
    bool isSame(Type* rhs) const override;
};

class IntegerType final : public Type {
    uint32_t mBitWidth;
    bool mIsSigned;

public:
    IntegerType(uint32_t bitWidth, bool isSigned) : mBitWidth{ bitWidth }, mIsSigned{ isSigned } {}
    static IntegerType* get(uint32_t bitWidth, bool isSigned);
    static IntegerType* getBoolean() {
        return get(1, false);
    }
    bool isInteger() const noexcept override {
        return true;
    }
    bool isBoolean() const noexcept override {
        return mBitWidth == 1 && !mIsSigned;
    }
    bool isSame(Type* rhs) const override;
};

class FloatingPointType final : public Type {
    bool mIsFloat;

public:
    FloatingPointType(bool isFloat) : mIsFloat{ isFloat } {}
    static FloatingPointType* get(bool isFloat);
    static FloatingPointType* getFloat() {
        return get(true);
    }
    static FloatingPointType* getDouble() {
        return get(false);
    }
    bool isFloatingPoint() const noexcept override {
        return true;
    }
    bool isSame(Type* rhs) const override;
};

class FunctionType final : public Type {
    Type* mRetType;
    Vector<Type*> mArgTypes;
    // bool isVarArg
public:
    bool isFunction() const noexcept override {
        return true;
    }
    bool isSame(Type* rhs) const override;
};

struct StructField final {
    SourceLocation loc;
    Type* type;

    // uint32_t alignment;
};

class StructType final : public Type {
    List<StructField> fields;

public:
    bool isStruct() const noexcept override {
        return true;
    }
    bool isSame(Type* rhs) const override;
};

CMMC_NAMESPACE_END

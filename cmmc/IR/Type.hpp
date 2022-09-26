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
#include <cmmc/Frontend/SourceLocation.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cstdint>
#include <ostream>

CMMC_NAMESPACE_BEGIN

class Module;
class DataLayout;

class Type {
public:
    static constexpr auto arenaSource = Arena::Source::IR;

    Type() = default;
    Type(const Type&) = delete;
    Type(Type&&) = delete;
    Type& operator=(const Type&) = delete;
    Type& operator=(Type&&) = delete;
    virtual ~Type() = default;

    template <typename T>
    T* as() {
        const auto ptr = dynamic_cast<T*>(this);
        assert(ptr);
        return ptr;
    }

    template <typename T>
    const T* as() const {
        const auto ptr = dynamic_cast<const T*>(this);
        assert(ptr);
        return ptr;
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
    bool isPrimitive() const noexcept {
        return !isArray() && !isStruct();
    }
    virtual size_t getFixedSize() const noexcept {
        return 0;
    }

    virtual bool isSame(Type* rhs) const = 0;
    virtual void dump(std::ostream& out) const {
        dumpName(out);
    }
    virtual void dumpName(std::ostream& out) const = 0;
    virtual size_t getSize(const DataLayout& dataLayout) const noexcept = 0;
    virtual size_t getAlignment(const DataLayout& dataLayout) const noexcept = 0;
};
CMMC_ARENA_TRAIT(Type, IR);

class VoidType final : public Type {
public:
    bool isVoid() const noexcept override {
        return true;
    }
    bool isSame(Type* rhs) const override;
    void dumpName(std::ostream& out) const override;
    static VoidType* get();
    size_t getSize(const DataLayout& dataLayout) const noexcept override;
    size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
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
    void dumpName(std::ostream& out) const override;
    static PointerType* get(Type* pointee);
    size_t getSize(const DataLayout& dataLayout) const noexcept override;
    size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
};

class IntegerType final : public Type {
    uint32_t mBitWidth;

public:
    IntegerType(uint32_t bitWidth) : mBitWidth{ bitWidth } {}
    static IntegerType* get(uint32_t bitWidth);
    static IntegerType* getBoolean() {
        return get(1);
    }
    bool isInteger() const noexcept override {
        return true;
    }
    bool isBoolean() const noexcept override {
        return mBitWidth == 1;
    }
    uint32_t getBitwidth() const noexcept {
        return mBitWidth;
    }
    bool isSame(Type* rhs) const override;
    void dumpName(std::ostream& out) const override;
    size_t getFixedSize() const noexcept override;
    size_t getSize(const DataLayout& dataLayout) const noexcept override;
    size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
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
    void dumpName(std::ostream& out) const override;
    size_t getFixedSize() const noexcept override;
    size_t getSize(const DataLayout& dataLayout) const noexcept override;
    size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
};

class FunctionType final : public Type {
    Type* mRetType;
    Vector<Type*> mArgTypes;
    // bool isVarArg
public:
    FunctionType(Type* retType, Vector<Type*> argTypes) : mRetType{ retType }, mArgTypes{ std::move(argTypes) } {}
    bool isFunction() const noexcept override {
        return true;
    }
    void dumpName(std::ostream& out) const override;
    bool isSame(Type* rhs) const override;
    Type* getRetType() const noexcept {
        return mRetType;
    }
    const Vector<Type*> getArgTypes() const noexcept {
        return mArgTypes;
    }
    size_t getSize(const DataLayout& dataLayout) const noexcept override;
    size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
};

struct StructField final {
    SourceLocation loc;
    Type* type;
    String<Arena::Source::IR> fieldName;

    // uint32_t alignment;
};
CMMC_ARENA_TRAIT(StructField, IR);

class StructType final : public Type {
    String<Arena::Source::IR> mName;
    List<StructField> mFields;

public:
    bool isStruct() const noexcept override {
        return true;
    }
    void dump(std::ostream& out) const override;
    void dumpName(std::ostream& out) const override;
    bool isSame(Type* rhs) const override;
    size_t getSize(const DataLayout& dataLayout) const noexcept override;
    size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
};

class ArrayType final : public Type {
    Type* mElementType;
    uint32_t mElementCount;

public:
    ArrayType(Type* elementType, uint32_t elementCount) noexcept : mElementType{ elementType }, mElementCount{ elementCount } {
        assert(!elementType->isVoid());
        assert(elementCount);
    }

    Type* getElementType() const noexcept {
        return mElementType;
    }
    uint32_t getElementCount() const noexcept {
        return mElementCount;
    }

    bool isArray() const noexcept override {
        return true;
    }
    void dumpName(std::ostream& out) const override;
    bool isSame(Type* rhs) const override;
    size_t getSize(const DataLayout& dataLayout) const noexcept override;
    size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
};

CMMC_NAMESPACE_END

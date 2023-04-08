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
#include <cmmc/Support/StringFlyWeight.hpp>
#include <cstdint>
#include <ostream>

CMMC_NAMESPACE_BEGIN

class Module;
class DataLayout;

enum class TypeRank {
    Void,
    Integer,
    FloatingPoint,
    Pointer,
    Array,
    Struct,
    Function,
    StackStorage,
    Invalid,
};

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
    [[nodiscard]] const T* as() const {
        static_assert(std::is_base_of_v<Type, T>);
        const auto ptr = dynamic_cast<const T*>(this);
        assert(ptr);
        return ptr;
    }

    [[nodiscard]] virtual TypeRank rank() const noexcept = 0;

    [[nodiscard]] bool isVoid() const noexcept {
        return rank() == TypeRank::Void;
    }
    [[nodiscard]] bool isPointer() const noexcept {
        return rank() == TypeRank::Pointer;
    }
    [[nodiscard]] bool isInteger() const noexcept {
        return rank() == TypeRank::Integer;
    }
    [[nodiscard]] virtual bool isBoolean() const noexcept {
        return false;
    }
    [[nodiscard]] bool isFloatingPoint() const noexcept {
        return rank() == TypeRank::FloatingPoint;
    }
    [[nodiscard]] bool isStruct() const noexcept {
        return rank() == TypeRank::Struct;
    }
    [[nodiscard]] bool isArray() const noexcept {
        return rank() == TypeRank::Array;
    }
    [[nodiscard]] bool isStackStorage() const noexcept {
        return rank() == TypeRank::StackStorage;
    }
    [[nodiscard]] bool isFunction() const noexcept {
        return rank() == TypeRank::Function;
    }
    [[nodiscard]] bool isInvalid() const noexcept {
        return rank() == TypeRank::Invalid;
    }
    [[nodiscard]] bool isPrimitive() const noexcept {
        return !isArray() && !isStruct() && !isInvalid();
    }
    [[nodiscard]] bool isAggregate() const noexcept {
        return isArray() || isStruct();
    }
    [[nodiscard]] virtual size_t getFixedSize() const noexcept {
        return 0;
    }

    virtual bool isSame(const Type* rhs) const = 0;
    virtual void dump(std::ostream& out) const {
        dumpName(out);
    }
    virtual void dumpName(std::ostream& out) const = 0;
    [[nodiscard]] virtual size_t getSize(const DataLayout& dataLayout) const noexcept = 0;
    [[nodiscard]] virtual size_t getAlignment(const DataLayout& dataLayout) const noexcept = 0;
};
CMMC_ARENA_TRAIT(Type, IR);

class VoidType final : public Type {
public:
    [[nodiscard]] TypeRank rank() const noexcept override {
        return TypeRank::Void;
    }
    bool isSame(const Type* rhs) const override;
    void dumpName(std::ostream& out) const override;
    static const VoidType* get();
    [[nodiscard]] size_t getSize(const DataLayout& dataLayout) const noexcept override;
    [[nodiscard]] size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
};

class InvalidType final : public Type {
public:
    [[nodiscard]] TypeRank rank() const noexcept override {
        return TypeRank::Invalid;
    }
    bool isSame(const Type* rhs) const override;
    void dumpName(std::ostream& out) const override;
    static const InvalidType* get();
    [[nodiscard]] size_t getSize(const DataLayout& dataLayout) const noexcept override;
    [[nodiscard]] size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
};

class PointerType final : public Type {
    const Type* mPointee;

public:
    explicit PointerType(const Type* pointee) : mPointee{ pointee } {}
    [[nodiscard]] TypeRank rank() const noexcept override {
        return TypeRank::Pointer;
    }
    [[nodiscard]] const Type* getPointee() const noexcept {
        return mPointee;
    }
    bool isSame(const Type* rhs) const override;
    void dumpName(std::ostream& out) const override;
    static const PointerType* get(const Type* pointee);
    [[nodiscard]] size_t getSize(const DataLayout& dataLayout) const noexcept override;
    [[nodiscard]] size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
};

class IntegerType final : public Type {
    uint32_t mBitWidth;

public:
    explicit IntegerType(uint32_t bitWidth, ExplicitConstruct) : mBitWidth{ bitWidth } {}
    static const IntegerType* get(uint32_t bitWidth);
    static const IntegerType* getBoolean() {
        return get(1);
    }
    [[nodiscard]] TypeRank rank() const noexcept override {
        return TypeRank::Integer;
    }
    [[nodiscard]] bool isBoolean() const noexcept override {
        return mBitWidth == 1;
    }
    [[nodiscard]] uint32_t getBitwidth() const noexcept {
        return mBitWidth;
    }
    bool isSame(const Type* rhs) const override;
    void dumpName(std::ostream& out) const override;
    [[nodiscard]] size_t getFixedSize() const noexcept override;
    [[nodiscard]] size_t getSize(const DataLayout& dataLayout) const noexcept override;
    [[nodiscard]] size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
};

class FloatingPointType final : public Type {
    bool mIsFloat;

public:
    explicit FloatingPointType(bool isFloat, ExplicitConstruct) : mIsFloat{ isFloat } {}
    static const FloatingPointType* get(bool isFloat);
    static const FloatingPointType* getFloat() {
        return get(true);
    }
    static const FloatingPointType* getDouble() {
        return get(false);
    }
    [[nodiscard]] TypeRank rank() const noexcept override {
        return TypeRank::FloatingPoint;
    }
    bool isSame(const Type* rhs) const override;
    void dumpName(std::ostream& out) const override;
    [[nodiscard]] size_t getFixedSize() const noexcept override;
    [[nodiscard]] size_t getSize(const DataLayout& dataLayout) const noexcept override;
    [[nodiscard]] size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
};

class FunctionType final : public Type {
    const Type* mRetType;
    Vector<const Type*> mArgTypes;
    // bool isVarArg
public:
    FunctionType(const Type* retType, Vector<const Type*> argTypes) : mRetType{ retType }, mArgTypes{ std::move(argTypes) } {}
    [[nodiscard]] TypeRank rank() const noexcept override {
        return TypeRank::Function;
    }
    void dumpName(std::ostream& out) const override;
    bool isSame(const Type* rhs) const override;
    [[nodiscard]] const Type* getRetType() const noexcept {
        return mRetType;
    }
    [[nodiscard]] const Vector<const Type*>& getArgTypes() const noexcept {
        return mArgTypes;
    }
    [[nodiscard]] size_t getSize(const DataLayout& dataLayout) const noexcept override;
    [[nodiscard]] size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
};

struct StructField final {
    SourceLocation loc;
    const Type* type;
    String fieldName;

    // uint32_t alignment;
};
CMMC_ARENA_TRAIT(StructField, IR);

class ConstantOffset;

class StructType final : public Type {
    String mName;
    Vector<StructField> mFields;

public:
    explicit StructType(String name, Vector<StructField> fields) : mName{ name }, mFields{ std::move(fields) } {}
    [[nodiscard]] TypeRank rank() const noexcept override {
        return TypeRank::Struct;
    }
    void dump(std::ostream& out) const override;
    void dumpName(std::ostream& out) const override;
    bool isSame(const Type* rhs) const override;
    [[nodiscard]] size_t getSize(const DataLayout& dataLayout) const noexcept override;
    [[nodiscard]] size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
    [[nodiscard]] const Vector<StructField>& fields() const noexcept {
        return mFields;
    }
    [[nodiscard]] String name() const noexcept {
        return mName;
    }
    [[nodiscard]] ConstantOffset* getOffset(const String& fieldName) const;
    const Type* getFieldType(const ConstantOffset* offset) const;
    size_t getFieldOffset(const ConstantOffset* offset, const DataLayout& dataLayout) const;
};

class ArrayType final : public Type {
    const Type* mElementType;
    uint32_t mElementCount;

public:
    explicit ArrayType(const Type* elementType, uint32_t elementCount) noexcept
        : mElementType{ elementType }, mElementCount{ elementCount } {
        assert(!elementType->isVoid());
        assert(elementCount);
    }

    [[nodiscard]] const Type* getElementType() const noexcept {
        return mElementType;
    }
    [[nodiscard]] uint32_t getElementCount() const noexcept {
        return mElementCount;
    }
    [[nodiscard]] uint32_t getScalarCount() const noexcept;
    [[nodiscard]] const Type* getScalarType() const noexcept;

    [[nodiscard]] TypeRank rank() const noexcept override {
        return TypeRank::Array;
    }
    void dumpName(std::ostream& out) const override;
    bool isSame(const Type* rhs) const override;
    [[nodiscard]] size_t getSize(const DataLayout& dataLayout) const noexcept override;
    [[nodiscard]] size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
};

// Only used by CodeGen
class StackStorageType final : public Type {
    size_t mSize, mAlignment;

public:
    explicit StackStorageType(size_t size, size_t alignment) : mSize{ size }, mAlignment{ alignment } {}
    [[nodiscard]] TypeRank rank() const noexcept override {
        return TypeRank::StackStorage;
    }
    bool isSame(const Type* rhs) const override;
    void dumpName(std::ostream& out) const override;
    [[nodiscard]] size_t getFixedSize() const noexcept override;
    [[nodiscard]] size_t getSize(const DataLayout& dataLayout) const noexcept override;
    [[nodiscard]] size_t getAlignment(const DataLayout& dataLayout) const noexcept override;
};

CMMC_NAMESPACE_END

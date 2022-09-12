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

CMMC_NAMESPACE_BEGIN

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
};

inline bool isSameType(Type* lhs, Type* rhs) noexcept {
    return lhs == rhs;
}

class VoidType final : public Type {};

class PointerType final : public Type {
    struct Type* pointee;
};

class IntegerType final : public Type {
    uint32_t bitWidth;
    bool isSigned;
};

class FloatingPointType final : public Type {
    uint32_t bitWidth;
};

class FunctionType final : public Type {
    Type* mRetType;
    Vector<Type*> mArgTypes;
    // bool isVarArg
public:
};

struct StructField final {
    SourceLocation loc;
    Type* type;

    // uint32_t alignment;
};

class StructType final : public Type {
    List<StructField> fields;

public:
};

CMMC_NAMESPACE_END

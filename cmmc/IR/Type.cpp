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

#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/FlyWeight.hpp>
#include <cstdint>
#include <ostream>

CMMC_NAMESPACE_BEGIN

bool VoidType::isSame(const Type* rhs) const {
    if(this == rhs)
        return true;
    return rhs->isVoid();
}
const VoidType* VoidType::get() {
    static VoidType type;
    return &type;
}
void VoidType::dumpName(std::ostream& out) const {
    out << "void"sv;
}
size_t VoidType::getSize(const DataLayout&) const noexcept {
    reportUnreachable();
}
size_t VoidType::getAlignment(const DataLayout&) const noexcept {
    reportUnreachable();
}

bool PointerType::isSame(const Type* rhs) const {
    if(this == rhs)
        return true;
    return rhs->isPointer() && getPointee()->isSame(rhs->as<PointerType>()->getPointee());
}
struct PointerTypeHasher final {
    size_t operator()(const PointerType& type) const noexcept {
        return std::hash<const Type*>{}(type.getPointee());
    }
};
struct PointerTypeEqual final {
    size_t operator()(const PointerType& lhs, const PointerType& rhs) const noexcept {
        return lhs.getPointee() == rhs.getPointee();
    }
};
const PointerType* PointerType::get(const Type* pointee) {
    static FlyWeight<PointerType, PointerTypeHasher, PointerTypeEqual> flyweight;
    return flyweight.get(pointee);
}
void PointerType::dumpName(std::ostream& out) const {
    mPointee->dumpName(out);
    out << '*';
}
size_t PointerType::getSize(const DataLayout& dataLayout) const noexcept {
    return dataLayout.getPointerSize();
}
size_t PointerType::getAlignment(const DataLayout& dataLayout) const noexcept {
    return dataLayout.getBuiltinAlignment(this);
}

bool IntegerType::isSame(const Type* rhs) const {
    if(this == rhs)
        return true;
    return rhs->isInteger() && (mBitWidth == rhs->as<IntegerType>()->mBitWidth);
}
size_t IntegerType::getFixedSize() const noexcept {
    return mBitWidth / 8 + (mBitWidth % 8 ? 1 : 0);
}

struct IntegerTypeHasher final {
    size_t operator()(const IntegerType& type) const noexcept {
        return std::hash<uint32_t>{}(type.getBitwidth());
    }
};
struct IntegerTypeEqual final {
    size_t operator()(const IntegerType& lhs, const IntegerType& rhs) const noexcept {
        return lhs.getBitwidth() == rhs.getBitwidth();
    }
};

const IntegerType* IntegerType::get(uint32_t bitWidth) {
    static const IntegerType i1{ 1U }, i8{ 8U }, i16{ 16U }, i32{ 32U }, i64{ 64U };
    switch(bitWidth) {
        case 1:
            return &i1;
        case 8:
            return &i8;
        case 16:
            return &i16;
        case 32:
            return &i32;
        case 64:
            return &i64;
        default:
            reportUnreachable();
    }
}
void IntegerType::dumpName(std::ostream& out) const {
    out << 'i' << mBitWidth;
}
size_t IntegerType::getSize(const DataLayout&) const noexcept {
    return getFixedSize();
}
size_t IntegerType::getAlignment(const DataLayout& dataLayout) const noexcept {
    return dataLayout.getBuiltinAlignment(this);
}

const FloatingPointType* FloatingPointType::get(bool isFloat) {
    static FloatingPointType fp32{ true }, fp64{ false };
    return isFloat ? &fp32 : &fp64;
}
bool FloatingPointType::isSame(const Type* rhs) const {
    if(this == rhs)
        return true;
    return rhs->isFloatingPoint() && (mIsFloat == rhs->as<FloatingPointType>()->mIsFloat);
}
size_t FloatingPointType::getFixedSize() const noexcept {
    return mIsFloat ? sizeof(float) : sizeof(double);
}
void FloatingPointType::dumpName(std::ostream& out) const {
    out << (mIsFloat ? "f32" : "f64");
}
size_t FloatingPointType::getSize(const DataLayout&) const noexcept {
    return getFixedSize();
}
size_t FloatingPointType::getAlignment(const DataLayout& dataLayout) const noexcept {
    return dataLayout.getBuiltinAlignment(this);
}

bool FunctionType::isSame(const Type* rhs) const {
    if(this == rhs)
        return true;
    if(!rhs->isFunction())
        return false;
    auto rt = rhs->as<FunctionType>();
    if(mArgTypes.size() != rt->mArgTypes.size())
        return false;
    if(!mRetType->isSame(rt->mRetType))
        return false;
    for(size_t idx = 0; idx < mArgTypes.size(); ++idx)
        if(!mArgTypes[idx]->isSame(rt->mArgTypes[idx]))
            return false;
    return true;
}
void FunctionType::dumpName(std::ostream& out) const {
    out << '(';
    bool isFirst = true;
    for(auto arg : mArgTypes) {
        if(!isFirst) {
            out << ", "sv;
        } else
            isFirst = false;
        arg->dumpName(out);
    }
    out << ") -> "sv;
    mRetType->dumpName(out);
}
size_t FunctionType::getSize(const DataLayout&) const noexcept {
    reportUnreachable();
}
size_t FunctionType::getAlignment(const DataLayout&) const noexcept {
    reportUnreachable();
}

void StructType::dump(std::ostream& out) const {
    out << "struct "sv << mName;
    out << " {"sv;
    bool isFirst = true;
    for(auto& field : mFields) {
        if(!isFirst) {
            out << ", "sv;
        } else
            isFirst = false;

        field.type->dumpName(out);
        out << ' ' << field.fieldName;
    }
    out << "};\n";
}
void StructType::dumpName(std::ostream& out) const {
    out << "struct " << mName;
}
bool StructType::isSame(const Type* rhs) const {
    return this == rhs;
}
size_t StructType::getSize(const DataLayout& dataLayout) const noexcept {
    size_t offset = 0;
    for(auto& field : mFields) {
        const auto size = field.type->getSize(dataLayout);
        const auto alignment = field.type->getAlignment(dataLayout);
        offset = ((offset + alignment - 1) / alignment) * alignment + size;
    }
    return offset;
}
size_t StructType::getAlignment(const DataLayout& dataLayout) const noexcept {
    size_t maxAlignment = 1;
    for(auto& field : mFields)
        maxAlignment = std::max(maxAlignment, field.type->getAlignment(dataLayout));
    return maxAlignment;
}

ConstantOffset* StructType::getOffset(const String& fieldName) const {
    for(uint32_t idx = 0; idx < mFields.size(); ++idx)
        if(mFields[idx].fieldName == fieldName)
            return make<ConstantOffset>(this, idx);

    return nullptr;
}
struct InvalidOffset final {
    const StructType* thisStruct;
    const ConstantOffset* offset;
    friend void operator<<(std::ostream& out, const InvalidOffset& offset) {
        out << "mismatched struct offset:"sv << std::endl;
        out << "base's struct: "sv;
        offset.thisStruct->dump(out);
        out << std::endl;
        out << "offset's struct: "sv;
        offset.offset->base()->dump(out);
        out << std::endl;
    }
};
const Type* StructType::getFieldType(const ConstantOffset* offset) const {
    if(offset->base() != this)
        DiagnosticsContext::get().attach<InvalidOffset>(this, offset).reportFatal();
    assert(offset->index() <= mFields.size());
    return mFields[offset->index()].type;
}
size_t StructType::getFieldOffset(const ConstantOffset* offset, const DataLayout& dataLayout) const {
    if(offset->base() != this)
        DiagnosticsContext::get().attach<InvalidOffset>(this, offset).reportFatal();
    uint32_t idx = 0;
    size_t offsetBytes = 0;
    for(auto& field : mFields) {
        const auto size = field.type->getSize(dataLayout);
        const auto alignment = field.type->getAlignment(dataLayout);
        offsetBytes = ((offsetBytes + alignment - 1) / alignment) * alignment;
        if(idx == offset->index()) {
            return offsetBytes;
        }
        offsetBytes += size;
        ++idx;
    }
    reportUnreachable();
}
void ArrayType::dumpName(std::ostream& out) const {
    out << '[' << mElementCount << " * "sv;
    mElementType->dumpName(out);
    out << ']';
}
bool ArrayType::isSame(const Type* rhs) const {
    if(this == rhs)
        return true;
    if(auto rhsArray = dynamic_cast<const ArrayType*>(rhs))
        return mElementCount == rhsArray->mElementCount && mElementType->isSame(rhsArray->mElementType);
    return false;
}
size_t ArrayType::getSize(const DataLayout& dataLayout) const noexcept {
    const auto size = mElementType->getSize(dataLayout);
    const auto alignment = mElementType->getAlignment(dataLayout);
    return (size + alignment - 1) / alignment * alignment * mElementCount;
}
size_t ArrayType::getAlignment(const DataLayout& dataLayout) const noexcept {
    return mElementType->getAlignment(dataLayout);
}
uint32_t ArrayType::getScalarCount() const noexcept {
    if(mElementType->isArray())
        return mElementCount * mElementType->as<ArrayType>()->getScalarCount();
    return mElementCount;
}
const Type* ArrayType::getScalarType() const noexcept {
    if(mElementType->isArray())
        return mElementType->as<ArrayType>()->getScalarType();
    return mElementType;
}

bool InvalidType::isSame(const Type* rhs) const {
    return rhs->isInvalid();
}
void InvalidType::dumpName(std::ostream& out) const {
    out << "???"sv;
}
const InvalidType* InvalidType::get() {
    static const InvalidType invalid;
    return &invalid;
}
size_t InvalidType::getSize(const DataLayout&) const noexcept {
    reportUnreachable();
}
size_t InvalidType::getAlignment(const DataLayout&) const noexcept {
    reportUnreachable();
}

bool StackStorageType::isSame(const Type*) const {
    reportUnreachable();
}
void StackStorageType::dumpName(std::ostream& out) const {
    out << "storage["sv << mSize << ']';
}
size_t StackStorageType::getFixedSize() const noexcept {
    return mSize;
}
size_t StackStorageType::getSize(const DataLayout&) const noexcept {
    return mSize;
}
size_t StackStorageType::getAlignment(const DataLayout&) const noexcept {
    return mAlignment;
}

CMMC_NAMESPACE_END

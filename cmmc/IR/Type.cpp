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

#include "cmmc/IR/Type.hpp"

CMMC_NAMESPACE_BEGIN

bool VoidType::isSame(Type* rhs) const {
    return rhs->isVoid();
}
VoidType* VoidType::get() {
    return make<VoidType>();
}

bool PointerType::isSame(Type* rhs) const {
    return rhs->isPointer() && getPointee()->isSame(rhs->as<PointerType>()->getPointee());
}
PointerType* PointerType::get(Type* pointee) {
    return make<PointerType>(pointee);
}

bool IntegerType::isSame(Type* rhs) const {
    return rhs->isInteger() && (mBitWidth == rhs->as<IntegerType>()->mBitWidth);
}
size_t IntegerType::getFixedSize() const noexcept {
    return mBitWidth / 8;
}

FloatingPointType* FloatingPointType::get(bool isFloat) {
    return make<FloatingPointType>(isFloat);
}
bool FloatingPointType::isSame(Type* rhs) const {
    return rhs->isFloatingPoint() && (mIsFloat == rhs->as<FloatingPointType>()->mIsFloat);
}
size_t FloatingPointType::getFixedSize() const noexcept {
    return mIsFloat ? sizeof(float) : sizeof(double);
}

bool FunctionType::isSame(Type* rhs) const {
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

CMMC_NAMESPACE_END

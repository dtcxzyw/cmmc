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

#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>
#include <functional>

CMMC_NAMESPACE_BEGIN

void ConstantInteger::dump(std::ostream& out) const {
    if(getType()->isBoolean())
        out << (getZeroExtended() ? "true" : "false");
    else
        out << getSignExtended();
}

void ConstantFloatingPoint::dump(std::ostream& out) const {
    out << mValue;
}

void UndefinedValue::dump(std::ostream& out) const {
    out << "undef"sv;
}

intmax_t ConstantInteger::getSignExtended() const noexcept {
    const auto bits = getType()->as<IntegerType>()->getBitwidth();
    const auto mask = (static_cast<uintmax_t>(1) << bits) - 1;
    const auto low = mValue & mask;
    const auto high = ((mValue >> (bits - 1)) & 1) ? ~mask : 0;
    return high | low;
}

uintmax_t ConstantInteger::getZeroExtended() const noexcept {
    const auto bits = getType()->as<IntegerType>()->getBitwidth();
    const auto mask = (static_cast<uintmax_t>(1) << bits) - 1;
    return static_cast<uintmax_t>(mValue) & mask;
}

ConstantInteger* ConstantInteger::getTrue() noexcept {
    static ConstantInteger trueValue{ IntegerType::getBoolean(), 1 };
    return &trueValue;
}
ConstantInteger* ConstantInteger::getFalse() noexcept {
    static ConstantInteger falseValue{ IntegerType::getBoolean(), 0 };
    return &falseValue;
}
ConstantInteger::ConstantInteger(const Type* type, intmax_t value) : ConstantValue{ type }, mValue{ value } {
    assert(type->isInteger());
}
ConstantInteger* ConstantInteger::get(const Type* type, intmax_t value) {
    if(type->isBoolean())
        return (value & 1) ? getTrue() : getFalse();
    return make<ConstantInteger>(type, value, ExplicitConstruct{});
}

double ConstantFloatingPoint::getValue() const noexcept {
    if(getType()->as<FloatingPointType>()->getFixedSize() == 4)
        return static_cast<double>(static_cast<float>(mValue));
    return mValue;
}
bool ConstantFloatingPoint::isEqual(double val) const noexcept {
    if(getType()->as<FloatingPointType>()->getFixedSize() == 4)
        return static_cast<float>(mValue) == static_cast<float>(val);
    return mValue == val;
}

String ConstantOffset::getName() const {
    return mBase->fields()[mIndex].fieldName;
}

void ConstantOffset::dump(std::ostream&) const {
    reportUnreachable();
}

void ConstantArray::dump(std::ostream& out) const {
    out << '[';
    bool isFirst = true;
    for(auto val : mValues) {
        if(!isFirst)
            out << ", "sv;
        else
            isFirst = false;
        val->dump(out);
    }
    out << ']';
}

size_t ConstantInteger::hash() const {
    return std::hash<intmax_t>{}(getSignExtended());
}
bool ConstantInteger::isEqual(ConstantValue* rhs) const {
    return isEqualImpl<ConstantInteger>(rhs,
                                        [&](ConstantInteger* rhs) { return this->getSignExtended() == rhs->getSignExtended(); });
}

size_t ConstantFloatingPoint::hash() const {
    return std::hash<double>{}(getValue());
}
bool ConstantFloatingPoint::isEqual(ConstantValue* rhs) const {
    return isEqualImpl<ConstantFloatingPoint>(rhs, [&](ConstantFloatingPoint* rhs) { return getValue() == rhs->getValue(); });
}

size_t ConstantOffset::hash() const {
    return std::hash<uint32_t>{}(mIndex) ^ std::hash<const StructType*>{}(mBase);
}
bool ConstantOffset::isEqual(ConstantValue* rhs) const {
    return isEqualImpl<ConstantOffset>(rhs, [&](ConstantOffset* rhs) { return mBase == rhs->mBase && mIndex == rhs->mIndex; });
}

size_t ConstantArray::hash() const {
    return std::hash<const ConstantArray*>{}(this);
}
bool ConstantArray::isEqual(ConstantValue* rhs) const {
    return isEqualImpl<ConstantArray>(rhs, [](ConstantArray*) { return false; });
}

size_t UndefinedValue::hash() const {
    return 0;
}
bool UndefinedValue::isEqual(ConstantValue* rhs) const {
    return isEqualImpl<UndefinedValue>(rhs, [](UndefinedValue*) { return true; });
}

CMMC_NAMESPACE_END

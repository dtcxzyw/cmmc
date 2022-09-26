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
#include <cstdint>

CMMC_NAMESPACE_BEGIN

void ConstantInteger::dump(std::ostream& out) const {
    if(getType()->isBoolean())
        out << (mValue ? "true" : "false");
    else
        out << mValue;
}

void ConstantFloatingPoint::dump(std::ostream& out) const {
    out << mValue;
}

void UndefinedValue::dump(std::ostream& out) const {
    out << "undef";
}

intmax_t ConstantInteger::getSignExtended() const noexcept {
    const auto bits = 8 * getType()->getFixedSize();
    const auto mask = (static_cast<uintmax_t>(1) << bits) - 1;
    const auto low = mValue & mask;
    const auto high = ((mValue >> (bits - 1)) & 1) ? ~mask : 0;
    return high | low;
}

uintmax_t ConstantInteger::getZeroExtended() const noexcept {
    const auto bits = 8 * getType()->getFixedSize();
    const auto mask = (static_cast<uintmax_t>(1) << bits) - 1;
    return mValue & mask;
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

CMMC_NAMESPACE_END

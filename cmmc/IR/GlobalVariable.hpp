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
#include <cmmc/IR/Attribute.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>

CMMC_NAMESPACE_BEGIN

enum class GlobalVariableAttribute { ReadOnly = 1 << 0, ZeroInitialized = 1 << 1, NotInitialized = 1 << 2 };

class GlobalVariable final : public GlobalValue {
    Value* mStaticInitializedValue;
    Attribute<GlobalVariableAttribute> mAttr;

public:
    GlobalVariable(StringIR symbol, Type* type, Value* value) : GlobalValue{ symbol, type }, mStaticInitializedValue{ value } {
        assert(value->isConstant());
    }
    void dump(std::ostream& out) const override;
    auto& attr() noexcept {
        return mAttr;
    }
};

CMMC_NAMESPACE_END
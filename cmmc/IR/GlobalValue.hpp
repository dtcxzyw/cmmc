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
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Arena.hpp>

CMMC_NAMESPACE_BEGIN

enum class Linkage { Global, Internal };

class GlobalValue : public Value {
    String mSymbol;
    Linkage mLinkage{ Linkage::Global };

public:
    GlobalValue(String symbol, const Type* type) : Value{ type }, mSymbol{ symbol } {}
    [[nodiscard]] const String& getSymbol() const noexcept {
        return mSymbol;
    }
    void dumpAsOperand(std::ostream& out) const final;
    [[nodiscard]] bool isGlobal() const noexcept final {
        return true;
    }
    [[nodiscard]] virtual bool isFunction() const noexcept {
        return false;
    }
    [[nodiscard]] Linkage getLinkage() const noexcept {
        return mLinkage;
    }
    void setLinkage(Linkage linkage) noexcept {
        mLinkage = linkage;
    }
};

CMMC_NAMESPACE_END

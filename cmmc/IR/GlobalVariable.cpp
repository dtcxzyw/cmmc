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

#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Type.hpp>

CMMC_NAMESPACE_BEGIN

void GlobalVariable::dump(std::ostream& out, const HighlightSelector& selector) const {
    CMMC_UNUSED(selector);

    if(getLinkage() == Linkage::Internal)
        out << "internal "sv;
    getType()->as<PointerType>()->dump(out);
    out << " @"sv << getSymbol();
    if(!mAttr.empty()) {
        out << " { "sv;
        // NOLINTNEXTLINE
#define HANDLE_ATTR(NAME)                            \
    if(mAttr.hasAttr(GlobalVariableAttribute::NAME)) \
    out << #NAME " "sv

        HANDLE_ATTR(ReadOnly);

#undef HANDLE_ATTR
        out << '}';
    }

    if(mStaticInitializedValue) {
        out << " = "sv;
        mStaticInitializedValue->dump(out, Noop{});
    }

    out << ";\n"sv;
}

CMMC_NAMESPACE_END

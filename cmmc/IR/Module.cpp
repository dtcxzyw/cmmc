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

#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <ostream>

CMMC_NAMESPACE_BEGIN

Module::Module() : mArena{ Arena::Source::IR } {}

void Module::dump(std::ostream& out) const {
    // TODO: dump struct/opaque types

    for(auto value : mGlobals)
        value.second->dump(out);
}

bool Module::verify(std::ostream& out) const {
    for(auto value : mGlobals) {
        if(auto func = dynamic_cast<Function*>(value.second))
            if(!func->verify(out))
                return false;
    }
    return true;
}

void Module::add(GlobalValue* globalValue) {
    mGlobals.emplace(globalValue->getSymbol(), globalValue);
}

CMMC_NAMESPACE_END

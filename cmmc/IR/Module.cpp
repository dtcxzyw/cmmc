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
#include <cmmc/Support/Profiler.hpp>
#include <ostream>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

Module::Module() : mArena{ Arena::Source::IR } {}

void Module::dump(std::ostream& out) const {
    Stage stage{ "dump IR"sv };

    if(!mTypes.empty()) {
        for(auto type : mTypes)
            type->dump(out);

        out << '\n';
    }

    for(auto value : mGlobals)
        value->dump(out, Noop{});
}

bool Module::verify(std::ostream& out) const {
    std::unordered_set<Value*> values{ mGlobals.begin(), mGlobals.end() };

    for(auto value : mGlobals) {
        if(auto func = dynamic_cast<Function*>(value)) {
            if(!func->verify(out))
                return false;
            for(auto block : func->blocks()) {
                for(auto inst : block->instructions()) {
                    for(auto operand : inst->operands())
                        if(operand->isGlobal() && !values.count(operand)) {
                            out << "dangling reference to global "sv;
                            operand->dumpAsOperand(out);
                            return false;
                        }
                }
            }
        }
    }
    return true;
}

void Module::add(GlobalValue* globalValue) {
    mGlobals.push_back(globalValue);
}

void Module::add(Type* type) {
    assert(type->isStruct());
    mTypes.push_back(type);
}

CMMC_NAMESPACE_END

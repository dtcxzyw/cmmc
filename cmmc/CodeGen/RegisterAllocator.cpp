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

#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>

CMMC_NAMESPACE_BEGIN

StringOpt regAllocMethod;

CMMC_INIT_OPTIONS_BEGIN
regAllocMethod.withDefault("simple").setName("register-alloc", 'r').setDesc("method for register allocation");
CMMC_INIT_OPTIONS_END

void RegisterAllocatorRegistry::addMethod(std::string_view name, RegisterAllocFunc func) {
    mMethods.emplace(name, func);
}

RegisterAllocFunc RegisterAllocatorRegistry::selectMethod() const {
    const auto value = regAllocMethod.get();
    if(auto iter = mMethods.find(value); iter != mMethods.cend())
        return iter->second;
    DiagnosticsContext::get().attach<UnrecognizedInput>("register allocation method", value).reportFatal();
}

RegisterAllocatorRegistry& RegisterAllocatorRegistry::get() {
    static RegisterAllocatorRegistry instance;
    return instance;
}

void assignRegisters(GMIRFunction& mfunc, Function& func, const Target& target) {
    RegisterAllocatorRegistry::get().selectMethod()(mfunc, func, target);
}

CMMC_NAMESPACE_END

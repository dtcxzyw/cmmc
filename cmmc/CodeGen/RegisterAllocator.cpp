/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2023 CMMC Authors
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

#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cstdint>

CMMC_MIR_NAMESPACE_BEGIN

StringOpt regAllocMethod;  // NOLINT

CMMC_INIT_OPTIONS_BEGIN
regAllocMethod.withDefault("fast").setName("register-alloc", 'r').setDesc("method for register allocation");
CMMC_INIT_OPTIONS_END

void RegisterAllocatorRegistry::addMethod(std::string_view name, RegisterAllocFunc func) {
    mMethods.emplace(name, func);
}

RegisterAllocFunc RegisterAllocatorRegistry::selectMethod() const {
    const auto& value = regAllocMethod.get();
    if(auto iter = mMethods.find(value); iter != mMethods.cend())
        return iter->second;
    DiagnosticsContext::get().attach<UnrecognizedInput>("register allocation method", value).reportFatal();
}

RegisterAllocatorRegistry& RegisterAllocatorRegistry::get() {
    static RegisterAllocatorRegistry instance;
    return instance;
}

void assignRegisters(MIRFunction& mfunc, CodeGenContext& ctx, IPRAUsageCache& cache) {
    RegisterAllocatorRegistry::get().selectMethod()(mfunc, ctx, cache);
    if constexpr(Config::debug) {
        for(auto& block : mfunc.blocks()) {
            for(auto& inst : block->instructions()) {
                auto& info = ctx.instInfo.getInstInfo(inst.opcode());
                for(uint32_t idx = 0; idx < info.getOperandNum(); ++idx)
                    if(isOperandVReg(inst.getOperand(idx))) {
                        DiagnosticsContext::get().attach<Reason>("Bad RA").reportFatal();
                    }
            }
        }
    }
}

void IPRAUsageCache::add(const CodeGenContext& ctx, MIRRelocable* symbol, MIRFunction& func) {
    IPRAInfo info;
    for(auto& block : func.blocks()) {
        forEachDefOperands(*block, ctx, [&](MIROperand& operand) {
            if(!isOperandISAReg(operand))
                return;
            if(ctx.frameInfo.isCallerSaved(operand)) {
                info.emplace(operand);
            }
        });
    }
    mCache.emplace(symbol, std::move(info));
}
void IPRAUsageCache::add(MIRRelocable* symbol, IPRAInfo info) {
    mCache.emplace(symbol, std::move(info));
}
const IPRAInfo* IPRAUsageCache::query(MIRRelocable* calleeFunc) const {
    if(auto iter = mCache.find(calleeFunc); iter != mCache.cend())
        return &iter->second;
    return nullptr;
}

CMMC_MIR_NAMESPACE_END

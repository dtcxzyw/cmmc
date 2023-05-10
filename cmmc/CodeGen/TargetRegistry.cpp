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

#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>

CMMC_MIR_NAMESPACE_BEGIN

TargetRegistry& TargetRegistry::get() {
    static TargetRegistry instance;
    return instance;
}

void TargetRegistry::addTarget(const TargetBuilder& targetBuilder) {
    mTargets.emplace_back(targetBuilder);
}

StringOpt targetName;     // NOLINT
StringOpt targetMachine;  // NOLINT

CMMC_INIT_OPTIONS_BEGIN
targetName.withDefault("mips").setName("target", 't').setDesc("target ISA");
targetMachine.withDefault("emulator").setName("machine", 'm').setDesc("target machine");
CMMC_INIT_OPTIONS_END

std::unique_ptr<Target> TargetRegistry::selectTarget() const {
    const auto& target = targetName.get();
    for(auto& builder : mTargets) {
        if(builder.first == target) {
            return builder.second();
        }
    }

    auto& info = reportInfo();
    info << "Supported targets:";
    for(auto& builder : mTargets)
        info << ' ' << builder.first;
    info << std::endl;
    DiagnosticsContext::get().attach<UnrecognizedInput>("target", target).reportFatal();
}

CMMC_MIR_NAMESPACE_END

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

#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>

CMMC_NAMESPACE_BEGIN

TargetRegistry& TargetRegistry::get() {
    static TargetRegistry instance;
    return instance;
}

void TargetRegistry::addTarget(const TargetBuilder& targetBuilder) {
    mTargets.emplace_back(targetBuilder);
}

static StringOpt target;

CMMC_INIT_OPTIONS_BEGIN
target.setName("target", 't').setDesc("target ISA");
CMMC_INIT_OPTIONS_END

std::unique_ptr<Target> TargetRegistry::selectTarget() const {
    const auto& targetName = target.get();
    for(auto& builder : mTargets)
        if(builder.first == targetName) {
            return builder.second();
        }

    reportFatal("Unrecognized target");
}

CMMC_NAMESPACE_END

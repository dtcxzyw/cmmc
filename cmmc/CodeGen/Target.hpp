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
#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/SubTarget.hpp>
#include <cmmc/CodeGen/TargetFrameInfo.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <functional>
#include <memory>
#include <string_view>

CMMC_NAMESPACE_BEGIN

class Target {
public:
    virtual ~Target() = default;

    virtual const DataLayout& getDataLayout() const noexcept = 0;
    virtual const LoweringInfo& getTargetLoweringInfo() const noexcept = 0;
    virtual const TargetFrameInfo& getTargetFrameInfo() const noexcept = 0;
    virtual const SubTarget& getSubTarget() const noexcept = 0;
    virtual std::unique_ptr<TargetRegisterUsage> newRegisterUsage() const {
        reportNotImplemented();
    }
    virtual void legalizeModuleBeforeCodeGen(Module& module, AnalysisPassManager& analysis) const = 0;
    virtual void legalizeFunc(GMIRFunction& func) const = 0;
    virtual void emitAssembly(GMIRModule& module, std::ostream& out) const = 0;
};

using TargetBuilder = std::pair<std::string_view, std::function<std::unique_ptr<Target>()>>;

class TargetRegistry final {
    std::vector<TargetBuilder> mTargets;

public:
    void addTarget(const TargetBuilder& targetBuilder);
    std::unique_ptr<Target> selectTarget() const;

    static TargetRegistry& get();
};

#define CMMC_TARGET(NAME, CLASS)                                                             \
    static int __target = [] {                                                               \
        TargetRegistry::get().addTarget({ NAME, [] { return std::make_unique<CLASS>(); } }); \
        return 0;                                                                            \
    }();

CMMC_NAMESPACE_END

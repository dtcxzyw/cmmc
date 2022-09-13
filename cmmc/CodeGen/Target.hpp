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
#include <cmmc/CodeGen/MachineModule.hpp>
#include <cmmc/CodeGen/Register.hpp>
#include <cmmc/CodeGen/SubTarget.hpp>
#include <cmmc/CodeGen/TargetFrameInfo.hpp>
#include <cmmc/IR/Module.hpp>
#include <functional>
#include <memory>
#include <string_view>

CMMC_NAMESPACE_BEGIN

class Target {
public:
    virtual ~Target();

    virtual const DataLayout& getDataLayout() const noexcept = 0;
    virtual const TargetRegisterInfo& getTargetRegisterInfo() const noexcept = 0;
    virtual const TargetFrameInfo& getTargetFrameInfo() const noexcept = 0;
    virtual const SubTarget& getSubTarget() const noexcept = 0;
    virtual std::unique_ptr<MachineModule> translateIR(Module& module) const = 0;
};

using TargetBuilder = std::pair<std::string_view, std::function<std::unique_ptr<Target>()>>;

class TargetRegistry final {
    std::vector<TargetBuilder> mTargets;

public:
    void addTarget(const TargetBuilder& targetBuilder);
    std::unique_ptr<Target> selectTarget() const;

    static TargetRegistry& get();
};

CMMC_NAMESPACE_END

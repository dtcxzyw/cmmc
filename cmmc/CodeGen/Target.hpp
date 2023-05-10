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

#pragma once
#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/ScheduleModel.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <functional>
#include <memory>
#include <string_view>

CMMC_MIR_NAMESPACE_BEGIN

class MIRFunction;
struct MIRModule;
class IPRAUsageCache;
struct MIRRelocable;

class Target {
public:
    virtual ~Target() = default;

    [[nodiscard]] virtual const DataLayout& getDataLayout() const noexcept = 0;
    [[nodiscard]] virtual const TargetScheduleModel& getScheduleModel() const noexcept;
    virtual bool builtinRA(MIRFunction& mfunc) const;
    virtual bool builtinSA(MIRFunction& mfunc) const;
    virtual void legalizeModuleBeforeCodeGen(Module& module, AnalysisPassManager& analysis) const;
    virtual void legalizeModuleBeforeOpt(Module& module, AnalysisPassManager& analysis) const;
    [[nodiscard]] virtual bool isNativeSupported(InstructionID inst) const noexcept;
    virtual void legalizeFunc(MIRFunction& func) const;
    virtual void postLegalizeFunc(MIRFunction& func) const;
    virtual void emitAssembly(const MIRModule& module, std::ostream& out) const;

    // TODO: move to frame info
    /*
    [[nodiscard]] virtual MIROperand getStackPointer() const noexcept = 0;
    [[nodiscard]] virtual MIROperand getReturnAddress() const noexcept = 0;
    [[nodiscard]] virtual bool isCallerSaved(const MIROperand& op) const noexcept = 0;
    [[nodiscard]] virtual bool isCalleeSaved(const MIROperand&) const noexcept = 0;
    [[nodiscard]] virtual uint32_t getRegisterBitWidth(uint32_t addressSpace) const noexcept = 0;
    [[nodiscard]] virtual size_t getStackPointerAlignment() const noexcept = 0;
    virtual void addExternalFuncIPRAInfo(MIRRelocable* symbol, IPRAUsageCache& infoIPRA) const {
        CMMC_UNUSED(symbol);
        CMMC_UNUSED(infoIPRA);
    }
    */
};

struct CodeGenContext final {
    const Target& target;
    const TargetScheduleModel& scheduleModel;
    const DataLayout& dataLayout;
};

using TargetBuilder = std::pair<std::string_view, std::function<std::unique_ptr<Target>()>>;

class TargetRegistry final {
    std::vector<TargetBuilder> mTargets;

public:
    void addTarget(const TargetBuilder& targetBuilder);
    [[nodiscard]] std::unique_ptr<Target> selectTarget() const;

    static TargetRegistry& get();
};

// NOLINTNEXTLINE
#define CMMC_TARGET(NAME, CLASS)                                                             \
    static const int __target = [] {                                                         \
        TargetRegistry::get().addTarget({ NAME, [] { return std::make_unique<CLASS>(); } }); \
        return 0;                                                                            \
    }();

CMMC_MIR_NAMESPACE_END

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
#include "cmmc/CodeGen/MIR.hpp"
#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
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
class MIRModule;
class IPRAUsageCache;
class MIRRelocable;

class Target {
public:
    virtual ~Target() = default;

    [[nodiscard]] virtual const DataLayout& getDataLayout() const noexcept = 0;
    [[nodiscard]] virtual const TargetScheduleModel& getScheduleModel() const noexcept {
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] virtual const TargetInstInfo& getInstInfo() const noexcept {
        reportUnreachable(CMMC_LOCATION());
    }
    virtual bool builtinRA(MIRFunction& mfunc) const {
        CMMC_UNUSED(mfunc);
        return false;
    }
    virtual bool builtinSA(MIRFunction& mfunc) const {
        CMMC_UNUSED(mfunc);
        return false;
    }
    virtual void emitPrologue(LoweringContext& ctx, MIRFunction& mfunc) const {
        CMMC_UNUSED(ctx);
        CMMC_UNUSED(mfunc);
        reportUnreachable(CMMC_LOCATION());
    }
    virtual void transformModuleBeforeCodeGen(Module& module, AnalysisPassManager& analysis) const {
        CMMC_UNUSED(module);
        CMMC_UNUSED(analysis);
    }
    virtual void transformModuleBeforeOpt(Module& module, AnalysisPassManager& analysis) const {
        CMMC_UNUSED(module);
        CMMC_UNUSED(analysis);
    }
    [[nodiscard]] virtual bool isNativeSupported(InstructionID inst) const noexcept {
        CMMC_UNUSED(inst);
        return true;
    }
    virtual void emitAssembly(const MIRModule& module, std::ostream& out) const {
        CMMC_UNUSED(module);
        CMMC_UNUSED(out);
        reportUnreachable(CMMC_LOCATION());
    }

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
    const TargetInstInfo& instInfo;
    bool requireOneTerminator;
    uint32_t vregIdx = virtualRegBegin;
    uint32_t blockIdx = 0;
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

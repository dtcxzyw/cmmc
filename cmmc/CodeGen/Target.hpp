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
#include <cmmc/CodeGen/FrameInfo.hpp>
#include <cmmc/CodeGen/ISelInfo.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/RegisterInfo.hpp>
#include <cmmc/CodeGen/ScheduleModel.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>
#include <functional>
#include <memory>
#include <string_view>

CMMC_MIR_NAMESPACE_BEGIN

class MIRFunction;
class MIRModule;
class IPRAUsageCache;
class MIRRelocable;

enum class RuntimeType { None, SplRuntime };

struct TargetOptHeuristic final {
    // loop unrolling
    intmax_t unrollBlockSize = 4U;
    uint32_t maxUnrollSize = 8U;  // static loop unrolling only
    uint32_t maxUnrollBodySize = 32U;
    // tail duplication
    uint32_t duplicationThreshold = 10U;
    uint32_t duplicationIterations = 10U;
    // multiplication by constant
    uint32_t mulByConstThreshold = 5U;
};

class Target {
public:
    virtual ~Target() = default;

    [[nodiscard]] virtual const TargetOptHeuristic& getOptHeuristic() const noexcept;
    [[nodiscard]] virtual const DataLayout& getDataLayout() const noexcept = 0;
    [[nodiscard]] virtual const TargetScheduleModel& getScheduleModel() const noexcept {
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] virtual const TargetInstInfo& getInstInfo() const noexcept {
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] virtual const TargetISelInfo& getISelInfo() const noexcept {
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] virtual const TargetFrameInfo& getFrameInfo() const noexcept {
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] virtual const TargetRegisterInfo* getRegisterInfo() const noexcept {
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
    virtual void postLegalizeFunc(MIRFunction& func, CodeGenContext& ctx) const {
        CMMC_UNUSED(func);
        CMMC_UNUSED(ctx);
    }
    virtual void emitAssembly(const MIRModule& module, std::ostream& out, RuntimeType runtime) const {
        CMMC_UNUSED(module);
        CMMC_UNUSED(out);
        CMMC_UNUSED(runtime);
        reportUnreachable(CMMC_LOCATION());
    }
    virtual void addExternalFuncIPRAInfo(MIRRelocable* symbol, IPRAUsageCache& infoIPRA) const {
        CMMC_UNUSED(symbol);
        CMMC_UNUSED(infoIPRA);
    }
};

struct MIRFlags final {
    bool endsWithTerminator = true;
    bool inSSAForm = true;
    bool preRA = true;
    bool postSA = false;
};

struct CodeGenContext final {
    const Target& target;
    const TargetScheduleModel& scheduleModel;
    const DataLayout& dataLayout;
    const TargetInstInfo& instInfo;
    const TargetISelInfo& iselInfo;
    const TargetFrameInfo& frameInfo;
    const TargetRegisterInfo* registerInfo;  // optional
    MIRFlags flags;
    uint32_t idx = 0;
    uint32_t nextId() {
        return ++idx;
    }
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

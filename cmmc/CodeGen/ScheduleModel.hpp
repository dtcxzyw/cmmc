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
#include <cmmc/CodeGen/MIR.hpp>
#include <cstdint>
#include <string_view>
#include <unordered_map>

CMMC_MIR_NAMESPACE_BEGIN

class ScheduleClass {
public:
    virtual ~ScheduleClass() = default;
    virtual bool schedule(class ScheduleState& state, const MIRInst& inst, const class InstInfo& instInfo) const = 0;
};

struct MicroarchitectureInfo final {
    bool enablePostRAScheduling;
    // Front-end
    bool hasRegRenaming;
    bool hasMacroFusion;
    uint32_t issueWidth;
    // Back-end
    bool outOfOrder;
    // Memory system
    bool hardwarePrefetch;
    uint32_t maxDataStreams;
    uint32_t maxStrideByBytes;
};

class TargetScheduleModel {
public:
    virtual ~TargetScheduleModel() = default;
    [[nodiscard]] virtual const ScheduleClass& getInstScheClass(uint32_t opcode) const = 0;
    [[nodiscard]] virtual const MicroarchitectureInfo& getInfo() const = 0;
    virtual bool peepholeOpt(MIRFunction& func, const CodeGenContext& ctx) const {
        CMMC_UNUSED(func);
        CMMC_UNUSED(ctx);
        return false;
    }
    [[nodiscard]] virtual bool isExpensiveInst(const MIRInst& inst, const CodeGenContext& ctx) const = 0;
};

class ScheduleState final {
    uint32_t mCycleCount;
    std::unordered_map<uint32_t, uint32_t> mNextPipelineAvailable;
    std::unordered_map<uint32_t, uint32_t> mRegisterAvailableTime;
    const std::unordered_map<const MIRInst*, std::unordered_map<uint32_t, uint32_t>>& mRegRenameMap;  // idx -> register
    uint32_t mIssuedFlag;

public:
    ScheduleState(const std::unordered_map<const MIRInst*, std::unordered_map<uint32_t, uint32_t>>& regRenameMap);
    // query
    uint32_t queryRegisterLatency(const MIRInst& inst, uint32_t idx) const;
    [[nodiscard]] bool isPipelineReady(uint32_t pipelineId) const;
    [[nodiscard]] bool isAvailable(uint32_t mask) const;
    // issue
    void setIssued(uint32_t mask);
    void resetPipeline(uint32_t pipelineId, uint32_t duration);
    void makeRegisterReady(const MIRInst& inst, uint32_t idx, uint32_t latency);

    uint32_t nextCycle();
};

CMMC_MIR_NAMESPACE_END

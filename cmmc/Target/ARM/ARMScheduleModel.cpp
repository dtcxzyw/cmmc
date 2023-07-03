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

#include <ARM/InstInfoDecl.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/Target/ARM/ARM.hpp>
#include <iostream>
#include <iterator>

CMMC_TARGET_NAMESPACE_BEGIN

enum ARMPipeline : uint32_t {
    ARMMultiCyclePipeline,
    ARMFP0Pipeline,
    ARMFP1Pipeline,
    ARMLoadPipeline,
    ARMStorePipeline,
};

enum ARMIssueMask : uint32_t {
    ARMPipelineBranch = 1 << 0,
    ARMPipelineInteger0 = 1 << 1,
    ARMPipelineInteger1 = 1 << 2,
    ARMPipelineMultiCycle = 1 << 3,
    ARMPipelineFP0 = 1 << 4,
    ARMPipelineFP1 = 1 << 5,
    ARMPipelineLoad = 1 << 6,
    ARMPipelineStore = 1 << 7,
    ARMPipelineNop = 1 << 8,
};

constexpr uint32_t ARMPipelineInteger = ARMPipelineInteger0 | ARMPipelineInteger1;
constexpr uint32_t ARMPipelineFP = ARMPipelineFP0 | ARMPipelineFP1;

static bool issueToAny(ScheduleState& state, uint32_t available) {
    for(uint32_t i = available; i; i = i & (i - 1)) {
        uint32_t pipeline = i & -i;
        if(state.isAvailable(pipeline)) {
            state.setIssued(pipeline);
            return true;
        }
    }
    return false;
}

template <uint32_t ValidPipeline, uint32_t OccupyPipeline, uint32_t Latency>
class ARMScheduleClassSimpleGeneric final : public ScheduleClass {
    static_assert(ValidPipeline != 0);

public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(!state.isAvailable(ValidPipeline))
            return false;
        if constexpr(OccupyPipeline != 0)
            if(!state.isPipelineReady(OccupyPipeline))
                return false;

        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                if(state.queryRegisterLatency(inst, idx) > 0)
                    return false;
            }
        }

        if(!issueToAny(state, ValidPipeline))
            return false;

        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
            if(instInfo.getOperandFlag(idx) & OperandFlagDef)
                state.makeRegisterReady(inst, idx, Latency);
        if constexpr(OccupyPipeline != 0)
            state.resetPipeline(OccupyPipeline, 1);
        return true;
    }
};

using ARMScheduleClassIntegerArithmetic = ARMScheduleClassSimpleGeneric<ARMPipelineInteger, 0, 1>;
using ARMScheduleClassIntegerArithmeticConditional = ARMScheduleClassSimpleGeneric<ARMPipelineInteger, 0, 2>;
using ARMScheduleClassIntegerArithmeticFused = ARMScheduleClassSimpleGeneric<ARMPipelineMultiCycle, ARMMultiCyclePipeline, 2>;
using ARMScheduleClassSaturate = ARMScheduleClassSimpleGeneric<ARMPipelineMultiCycle, ARMMultiCyclePipeline, 2>;
using ARMScheduleClassMultiply = ARMScheduleClassSimpleGeneric<ARMPipelineMultiCycle, ARMMultiCyclePipeline, 3>;
using ARMScheduleClassBranch = ARMScheduleClassSimpleGeneric<ARMPipelineBranch, 0, 1>;
using ARMScheduleClassLoad = ARMScheduleClassSimpleGeneric<ARMPipelineLoad, ARMLoadPipeline, 4>;
using ARMScheduleClassLoadScaledLSL2 = ARMScheduleClassSimpleGeneric<ARMPipelineLoad, ARMLoadPipeline, 4>;
using ARMScheduleClassLoadScaledOther = ARMScheduleClassSimpleGeneric<ARMPipelineLoad, ARMLoadPipeline, 5>;
using ARMScheduleClassStore = ARMScheduleClassSimpleGeneric<ARMPipelineStore, ARMStorePipeline, 1>;
using ARMScheduleClassFPArithmetic = ARMScheduleClassSimpleGeneric<ARMPipelineFP, 0, 4>;  // TODO: FP0
using ARMScheduleClassFPUnaryArithmetic = ARMScheduleClassSimpleGeneric<ARMPipelineFP, 0, 3>;
using ARMScheduleClassFPCompare = ARMScheduleClassSimpleGeneric<ARMPipelineFP1, 0, 3>;
using ARMScheduleClassFPConvert = ARMScheduleClassSimpleGeneric<ARMPipelineFP0, ARMFP0Pipeline, 3>;
using ARMScheduleClassFPMoveWithCore = ARMScheduleClassSimpleGeneric<ARMPipelineLoad, ARMLoadPipeline, 5>;
using ARMScheduleClassMisc = ARMScheduleClassSimpleGeneric<ARMPipelineNop, 0, 0>;

class ARMScheduleClassBranchLink final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(!state.isAvailable(ARMPipelineBranch) || !state.isAvailable(ARMPipelineInteger))
            return false;

        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                if(state.queryRegisterLatency(inst, idx) > 0)
                    return false;
            }
        }

        state.setIssued(ARMPipelineBranch);
        [[maybe_unused]] bool result = issueToAny(state, ARMPipelineInteger);
        assert(result);

        return true;
    }
};

template <uint32_t MainPipeline, uint32_t BaseLatency, uint32_t FixedRegistersNumber>
class ARMScheduleClassPushPopGeneric final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(!state.isAvailable(MainPipeline) || !state.isAvailable(ARMPipelineInteger))
            return false;

        int registersNumber = 0;
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            registersNumber++;
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                if(state.queryRegisterLatency(inst, idx) > 0)
                    return false;
            }
        }
        if constexpr(FixedRegistersNumber != 0)
            registersNumber = FixedRegistersNumber;

        state.setIssued(MainPipeline);
        [[maybe_unused]] bool result = issueToAny(state, ARMPipelineInteger);
        assert(result);

        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
            if(instInfo.getOperandFlag(idx) & OperandFlagDef)
                state.makeRegisterReady(inst, idx, BaseLatency + registersNumber);
        state.resetPipeline(ARMPipelineInteger, registersNumber);
        state.resetPipeline(MainPipeline, registersNumber);

        return true;
    }
};

using ARMScheduleClassFPLoad = ARMScheduleClassPushPopGeneric<ARMPipelineLoad, 4, 1>;
using ARMScheduleClassFPLoadPop = ARMScheduleClassPushPopGeneric<ARMPipelineLoad, 4, 0>;
using ARMScheduleClassPush = ARMScheduleClassPushPopGeneric<ARMPipelineStore, 1, 0>;
using ARMScheduleClassPop = ARMScheduleClassPushPopGeneric<ARMPipelineLoad, 3, 0>;

class ARMScheduleClassMultiplyAccumulate final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        CMMC_UNUSED(instInfo);

        if(!state.isAvailable(ARMPipelineMultiCycle))
            return false;

        if(state.queryRegisterLatency(inst, 1) > 0 || state.queryRegisterLatency(inst, 2) > 0)
            return false;
        if(state.queryRegisterLatency(inst, 3) > 3)
            return false;

        state.setIssued(ARMPipelineMultiCycle);
        state.makeRegisterReady(inst, 0, 4);
        return true;
    }
};

class ARMScheduleClassDivide final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(!state.isAvailable(ARMPipelineMultiCycle))
            return false;
        if(!state.isPipelineReady(ARMMultiCyclePipeline))
            return false;

        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                if(state.queryRegisterLatency(inst, idx) > 0)
                    return false;
            }
        }

        state.resetPipeline(ARMMultiCyclePipeline, 12);
        state.makeRegisterReady(inst, 0, 12);
        state.setIssued(ARMPipelineMultiCycle);
        return true;
    }
};

class ARMScheduleClassFPDivide final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(!state.isAvailable(ARMPipelineFP0))
            return false;
        if(!state.isPipelineReady(ARMFP0Pipeline))
            return false;

        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                if(state.queryRegisterLatency(inst, idx) > 0)
                    return false;
            }
        }

        state.resetPipeline(ARMFP0Pipeline, 5);
        state.makeRegisterReady(inst, 0, 11);
        state.setIssued(ARMPipelineFP0);
        return true;
    }
};

class ARMScheduleClassGeneralMove final : public ScheduleClass {
    ARMScheduleClassIntegerArithmetic mIntegerArithmetic;
    ARMScheduleClassFPArithmetic mFPArithmetic;

public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        auto& dst = inst.getOperand(0);
        auto& src = inst.getOperand(1);
        if(isOperandIReg(dst) && isOperandIReg(src)) {
            return mIntegerArithmetic.schedule(state, inst, instInfo);
        } else if(isOperandFPR(dst) && isOperandFPR(src)) {
            return mFPArithmetic.schedule(state, inst, instInfo);
        } else {
            reportUnreachable(CMMC_LOCATION());
        }
    }
};

class ARMScheduleClassGeneralLoad final : public ScheduleClass {
    ARMScheduleClassLoad mLoad;
    ARMScheduleClassFPLoad mFPLoad;

public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(isOperandGPR(inst.getOperand(0))) {
            return mLoad.schedule(state, inst, instInfo);
        } else {
            return mFPLoad.schedule(state, inst, instInfo);
        }
    }
};

CMMC_TARGET_NAMESPACE_END

#include <ARM/ScheduleModelImpl.hpp>
CMMC_TARGET_NAMESPACE_BEGIN

[[maybe_unused]] static bool optimizeConditionalCopyOfComputationalInst(MIRBasicBlock& block) {
    bool modified = false;
    auto& insts = block.instructions();

    for(auto iter = insts.begin(); iter != insts.end(); ++iter) {
        if(iter == insts.begin())
            continue;
        auto& curInst = *iter;
        if(curInst.opcode() != MOV_Cond)
            continue;
        auto dst = curInst.getOperand(1);
        auto src = curInst.getOperand(2);
        auto cc = curInst.getOperand(3);

        auto prev = std::prev(iter);
        switch(prev->opcode()) {
            case ADD:
            case SUB:
            case AND:
            case ORR:
            case EOR:
            case ORN:
            case BIC:
            case RSB: {
                auto& prevInst = *prev;
                auto dstPrev = prevInst.getOperand(0);
                auto lhs = prevInst.getOperand(1);
                auto rhs = prevInst.getOperand(2);
                if(dstPrev != src || dstPrev == lhs || dstPrev == rhs || dstPrev == dst)
                    continue;
                curInst = MIRInst{ prev->opcode() - ADD + ADD_Cond }
                              .setOperand<2>(lhs)
                              .setOperand<3>(rhs)
                              .setOperand<4>(cc)
                              .setOperand<5>(dst);
                break;
            }
            default:
                break;
        }
    }

    return modified;
}

static bool optimizeFusedCompareWithZero(MIRBasicBlock& block) {
    bool modified = false;
    auto& insts = block.instructions();

    for(auto iter = insts.begin(); iter != insts.end();) {
        auto next = std::next(iter);
        if(iter == insts.begin()) {
            iter = next;
            continue;
        }
        auto& curInst = *iter;
        if(curInst.opcode() != CMP || !isZero(curInst.getOperand(1))) {
            iter = next;
            continue;
        }
        auto src = curInst.getOperand(0);
        auto cc = curInst.getOperand(2);

        auto prev = std::prev(iter);
        switch(prev->opcode()) {
            case ADD:
            case SUB:
            case AND:
            case ORR:
            case EOR:
            case ORN:
            case BIC:
            case RSB: {
                auto& prevInst = *prev;
                auto& dst = prevInst.getOperand(0);
                if(dst == src) {
                    prevInst.setOpcode(prevInst.opcode() - ADD + ADDS);
                    prevInst.setOperand<3>(cc);
                    insts.erase(iter);
                    modified = true;
                }
                break;
            }
            default:
                break;
        }

        iter = next;
    }

    return modified;
}

bool ARMScheduleModel_cortex_a72::peepholeOpt(MIRFunction& func, const CodeGenContext& ctx) const {
    // CMMC_UNUSED(func);
    CMMC_UNUSED(ctx);
    bool modified = false;
    for(auto& block : func.blocks()) {
        // if(ctx.flags.preRA)
        //     modified |= optimizeConditionalCopyOfComputationalInst(*block);
        modified |= optimizeFusedCompareWithZero(*block);
    }
    return modified;
    return false;
}

const MicroarchitectureInfo& ARMScheduleModel_cortex_a72::getInfo() const {
    static MicroarchitectureInfo info{
        .enablePostRAScheduling = true,
        .hasRegRenaming = true,
        .hasMacroFusion = true,
        .issueWidth = 3,
        .outOfOrder = false,
        .hardwarePrefetch = true,
        .maxDataStreams = 2,
        .maxStrideByBytes = 32,
    };
    return info;
}

CMMC_TARGET_NAMESPACE_END

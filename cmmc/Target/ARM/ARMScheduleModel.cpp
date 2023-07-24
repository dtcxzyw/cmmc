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
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Target/ARM/ARM.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>

CMMC_TARGET_NAMESPACE_BEGIN

enum ARMPipeline : uint32_t {
    ARMPipelineBranch = 1,
    ARMPipelineInt0,
    ARMPipelineInt1,
    ARMPipelineMultiCycle,
    ARMPipelineFP0,
    ARMPipelineFP1,
    ARMPipelineLoad,
    ARMPipelineStore,
    ARMPipelineNop,
};

static bool checkRegisterDependency(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) {
    for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
        if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
            if(state.queryRegisterLatency(inst, idx) > 0)
                return false;
        }
    }
    return true;
}

template <uint32_t ValidPipeline1, uint32_t ValidPipeline2, uint32_t Latency, uint32_t Duration>
class ARMScheduleClassSimpleGeneric final : public ScheduleClass {
    static_assert(ValidPipeline1 != 0);

public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(!state.isPipelineReady(ValidPipeline1) && (ValidPipeline2 == 0 || !state.isPipelineReady(ValidPipeline2)))
            return false;
        if(!checkRegisterDependency(state, inst, instInfo))
            return false;

        state.resetPipeline(state.isPipelineReady(ValidPipeline1) ? ValidPipeline1 : ValidPipeline2, Duration);
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
            if(instInfo.getOperandFlag(idx) & OperandFlagDef)
                state.makeRegisterReady(inst, idx, Latency);

        return true;
    }
};

using ARMScheduleClassIntegerArithmetic = ARMScheduleClassSimpleGeneric<ARMPipelineInt0, ARMPipelineInt1, 1, 1>;
using ARMScheduleClassIntegerArithmeticConditional = ARMScheduleClassSimpleGeneric<ARMPipelineInt0, ARMPipelineInt1, 2, 2>;
using ARMScheduleClassIntegerArithmeticFused = ARMScheduleClassSimpleGeneric<ARMPipelineMultiCycle, 0, 2, 1>;
using ARMScheduleClassSaturate = ARMScheduleClassSimpleGeneric<ARMPipelineMultiCycle, 0, 2, 1>;
using ARMScheduleClassMultiply = ARMScheduleClassSimpleGeneric<ARMPipelineMultiCycle, 0, 3, 1>;
using ARMScheduleClassDivide = ARMScheduleClassSimpleGeneric<ARMPipelineMultiCycle, 0, 12, 12>;
using ARMScheduleClassBranch = ARMScheduleClassSimpleGeneric<ARMPipelineBranch, 0, 1, 1>;
using ARMScheduleClassLoad = ARMScheduleClassSimpleGeneric<ARMPipelineLoad, 0, 4, 1>;
using ARMScheduleClassLoadScaledLSL2 = ARMScheduleClassSimpleGeneric<ARMPipelineLoad, 0, 4, 1>;
using ARMScheduleClassLoadScaledOther = ARMScheduleClassSimpleGeneric<ARMPipelineLoad, 0, 5, 1>;
using ARMScheduleClassFPLoad = ARMScheduleClassSimpleGeneric<ARMPipelineLoad, 0, 4, 1>;
using ARMScheduleClassStore = ARMScheduleClassSimpleGeneric<ARMPipelineStore, 0, 1, 1>;
using ARMScheduleClassFPArithmetic = ARMScheduleClassSimpleGeneric<ARMPipelineFP0, ARMPipelineFP1, 4, 1>;
using ARMScheduleClassFPUnaryArithmetic = ARMScheduleClassSimpleGeneric<ARMPipelineFP0, ARMPipelineFP1, 3, 1>;
using ARMScheduleClassFPDivide = ARMScheduleClassSimpleGeneric<ARMPipelineFP0, 0, 11, 5>;  // inv(2/9) ≈ 5
using ARMScheduleClassFPCompare = ARMScheduleClassSimpleGeneric<ARMPipelineFP1, 0, 3, 1>;
using ARMScheduleClassFPConvert = ARMScheduleClassSimpleGeneric<ARMPipelineFP0, 0, 3, 1>;
using ARMScheduleClassFPMoveWithCore = ARMScheduleClassSimpleGeneric<ARMPipelineLoad, 0, 5, 1>;
using ARMScheduleClassMisc = ARMScheduleClassSimpleGeneric<ARMPipelineNop, 0, 0, 0>;

class ARMScheduleClassBranchLink final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(!state.isPipelineReady(ARMPipelineBranch))
            return false;
        if(!state.isPipelineReady(ARMPipelineInt0) && !state.isPipelineReady(ARMPipelineInt1))
            return false;

        if(!checkRegisterDependency(state, inst, instInfo))
            return false;

        state.resetPipeline(ARMPipelineBranch, 1);
        state.resetPipeline(state.isPipelineReady(ARMPipelineInt0) ? ARMPipelineInt0 : ARMPipelineInt1, 1);

        return true;
    }
};

class ARMScheduleClassMultiplyAccumulate final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        CMMC_UNUSED(instInfo);

        if(!state.isPipelineReady(ARMPipelineMultiCycle))
            return false;

        if(state.queryRegisterLatency(inst, 1) > 0 || state.queryRegisterLatency(inst, 2) > 0)
            return false;
        if(state.queryRegisterLatency(inst, 3) > 3)
            return false;

        state.makeRegisterReady(inst, 0, 4);
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
        }
        if(isOperandFPR(dst) && isOperandFPR(src)) {
            return mFPArithmetic.schedule(state, inst, instInfo);
        }
        reportUnreachable(CMMC_LOCATION());
    }
};

class ARMScheduleClassGeneralLoad final : public ScheduleClass {
    ARMScheduleClassLoad mLoad;
    ARMScheduleClassFPLoad mFPLoad;

public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(isOperandGPR(inst.getOperand(0)))
            return mLoad.schedule(state, inst, instInfo);
        return mFPLoad.schedule(state, inst, instInfo);
    }
};

class ARMScheduleClassInOrder final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        CMMC_UNUSED(state);
        CMMC_UNUSED(inst);
        CMMC_UNUSED(instInfo);
        return true;
    }
};

using ARMScheduleClassFPLoadPop = ARMScheduleClassInOrder;
using ARMScheduleClassPush = ARMScheduleClassInOrder;
using ARMScheduleClassPop = ARMScheduleClassInOrder;

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

static bool optimizeFusedCompareWithZero(MIRBasicBlock& block, const CodeGenContext& ctx) {
    bool modified = false;
    auto& insts = block.instructions();
    std::unordered_map<uint32_t, MIRInst*> lastDef;
    std::unordered_set<uint32_t> ccCmpWithZero;

    for(auto iter = insts.begin(); iter != insts.end();) {
        auto next = std::next(iter);

        auto defCC = [](uint32_t opcode) {
            switch(opcode) {
                case ADDS:
                case SUBS:
                case ANDS:
                case ORRS:
                case EORS:
                case ORNS:
                case BICS:
                case RSBS:
                case MOVS:
                case MVNS:
                case CMP:
                case CMN:
                case TRANSFER_FPSCR_FLAG:
                    return true;
                default:
                    return false;
            }
        };

        auto& curInst = *iter;
        if(curInst.opcode() == CMP && isZero(curInst.getOperand(1))) {
            auto src = curInst.getOperand(0);
            auto cc = curInst.getOperand(2);

            bool changed = false;
            if(ccCmpWithZero.count(src.reg()))
                changed = true;
            else {
                auto prev = lastDef.find(src.reg());
                if(prev != lastDef.end()) {
                    auto& prevInst = *prev->second;
                    if(defCC(prevInst.opcode())) {
                        changed = true;
                    } else {
                        switch(prevInst.opcode()) {
                            case ADD:
                            case SUB:
                            case AND:
                            case ORR:
                            case EOR:
                            case ORN:
                            case BIC:
                            case RSB: {
                                assert(prevInst.getOperand(0) == src);
                                prevInst.setOpcode(prevInst.opcode() - ADD + ADDS);
                                prevInst.setOperand<3>(cc);
                                changed = true;
                                break;
                            }
                            case MOV:
                            case MVN: {
                                assert(prevInst.getOperand(0) == src);
                                prevInst.setOpcode(prevInst.opcode() - MOV + MOVS);
                                prevInst.setOperand<2>(cc);
                                changed = true;
                                break;
                            }
                            case MoveGPR: {
                                prevInst.setOpcode(MOVS);
                                prevInst.setOperand<2>(cc);
                                changed = true;
                                break;
                            }
                            default:
                                break;
                        }
                    }
                }
            }

            if(changed) {
                insts.erase(iter);
                lastDef.clear();
                modified = true;
                iter = next;
                continue;
            }
        }

        auto& instInfo = ctx.instInfo.getInstInfo(curInst);
        if(defCC(curInst.opcode()))
            lastDef.clear();
        if(requireFlag(instInfo.getInstFlag(), InstFlagCall)) {
            lastDef.clear();
            ccCmpWithZero.clear();
        }

        if(!lastDef.empty()) {
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                    auto& op = curInst.getOperand(idx);
                    if(isOperandCC(op)) {
                        lastDef.clear();
                        break;
                    }
                }
            }
        }
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                auto& op = curInst.getOperand(idx);
                if(isOperandGPR(op)) {
                    lastDef[op.reg()] = &curInst;
                    ccCmpWithZero.erase(op.reg());
                }
            }
        }
        switch(curInst.opcode()) {
            case ADDS:
            case SUBS:
            case ANDS:
            case ORRS:
            case EORS:
            case ORNS:
            case BICS:
            case RSBS:
            case MOVS:
            case MVNS:
                ccCmpWithZero = { curInst.getOperand(0).reg() };
                break;
            case CMP:
                if(isZero(curInst.getOperand(1))) {
                    ccCmpWithZero = { curInst.getOperand(0).reg() };
                } else {
                    ccCmpWithZero.clear();
                }
                break;
            case CMN:
            case TRANSFER_FPSCR_FLAG:
                ccCmpWithZero.clear();
                break;
            default:
                break;
        }

        if(curInst.opcode() == MoveGPR) {
            lastDef[curInst.getOperand(1).reg()] = &curInst;
        }

        iter = next;
    }

    return modified;
}

static bool removeUnusedDefCC(MIRBasicBlock& block, const CodeGenContext& ctx) {
    bool modified = false;

    auto& insts = block.instructions();
    auto lastDef = insts.end();

    auto useCC = [&] { lastDef = insts.end(); };
    auto resetCC = [&] {
        if(lastDef == insts.end())
            return;

        switch(lastDef->opcode()) {
            case CMP:
            case CMN:
            case TRANSFER_FPSCR_FLAG: {
                insts.erase(lastDef);
                lastDef = insts.end();
                break;
            }
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    };

    for(auto iter = insts.begin(); iter != insts.end(); ++iter) {
        auto& instInfo = ctx.instInfo.getInstInfo(*iter);
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(isOperandCC(iter->getOperand(idx))) {
                if(instInfo.getOperandFlag(idx) & OperandFlagUse)
                    useCC();
                else {
                    resetCC();
                    lastDef = iter;
                }
            }
        }
        if(requireFlag(instInfo.getInstFlag(), InstFlagCall))
            resetCC();
    }

    return modified;
}

bool removeDeadBranch(MIRBasicBlock& block, const CodeGenContext& ctx) {
    bool modified = false;

    auto& insts = block.instructions();
    std::unordered_set<intmax_t> condFields;

    for(auto iter = insts.begin(); iter != insts.end();) {
        auto next = std::next(iter);
        if(iter->opcode() == B_Cond) {
            const auto cf = iter->getOperand(0).imm();
            if(!condFields.insert(cf).second) {
                insts.erase(iter);
                modified = true;
            }
        } else {
            auto& instInfo = ctx.instInfo.getInstInfo(*iter);
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                if(isOperandCC(iter->getOperand(idx)) && (instInfo.getOperandFlag(idx) & OperandFlagDef)) {
                    condFields.clear();
                }
            }
        }
        iter = next;
    }

    return modified;
}

bool ARMScheduleModel_cortex_a72::peepholeOpt(MIRFunction& func, const CodeGenContext& ctx) const {
    // CMMC_UNUSED(func);
    bool modified = false;
    for(auto& block : func.blocks()) {
        // if(ctx.flags.preRA)
        //     modified |= optimizeConditionalCopyOfComputationalInst(*block);
        modified |= optimizeFusedCompareWithZero(*block, ctx);
        modified |= removeUnusedDefCC(*block, ctx);
        if(!ctx.flags.endsWithTerminator)
            modified |= removeDeadBranch(*block, ctx);
    }
    if(ctx.flags.dontForward)
        modified |= createIndirectCopy(func, ctx);
    return modified;
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
bool ARMScheduleModel_cortex_a72::isExpensiveInst(const MIRInst& inst, const CodeGenContext& ctx) const {
    CMMC_UNUSED(ctx);
    switch(inst.opcode()) {
        default:
            return true;
    }
}

CMMC_TARGET_NAMESPACE_END

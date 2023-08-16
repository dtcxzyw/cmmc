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

#include <RISCV/InstInfoDecl.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/MultiplyByConstant.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Tune.hpp>
#include <cmmc/Target/RISCV/RISCV.hpp>
#include <cstdint>
#include <deque>
#include <iostream>
#include <iterator>
#include <queue>
#include <unordered_map>
#include <vector>

CMMC_TARGET_NAMESPACE_BEGIN

enum RISCVPipeline : uint32_t { RISCVIDivPipeline, RISCVFPDivPipeline };
enum RISCVIssueMask : uint32_t {
    RISCVPipelineA = 1 << 0,
    RISCVPipelineB = 1 << 1,
    RISCVPipelineAB = RISCVPipelineA | RISCVPipelineB
};

template <uint32_t ValidPipeline, bool Early, bool Late>
class RISCVScheduleClassIntegerArithmeticGeneric final : public ScheduleClass {
    static_assert(ValidPipeline != 0 && (Early || Late));

public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(!state.isAvailable(ValidPipeline))
            return false;
        bool availableInAG = true;
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                if(auto latency = state.queryRegisterLatency(inst, idx); latency <= 2) {
                    availableInAG &= (latency == 0);
                } else
                    return false;
            }
        }

        if constexpr(Early) {
            if(availableInAG) {
                if constexpr(ValidPipeline == RISCVPipelineAB) {
                    state.setIssued(state.isAvailable(RISCVPipelineA) ? RISCVPipelineA : RISCVPipelineB);
                } else {
                    state.setIssued(ValidPipeline);
                }
                state.makeRegisterReady(inst, 0, 1);
                return true;
            }
        }

        if constexpr(Late) {
            if constexpr(ValidPipeline == RISCVPipelineAB) {
                state.setIssued(state.isAvailable(RISCVPipelineA) ? RISCVPipelineA : RISCVPipelineB);
            } else {
                state.setIssued(ValidPipeline);
            }
            state.makeRegisterReady(inst, 0, 3);
            return true;
        }

        return false;
    }
};

using RISCVScheduleClassIntegerArithmetic = RISCVScheduleClassIntegerArithmeticGeneric<RISCVPipelineAB, true, true>;
using RISCVScheduleClassIntegerArithmeticLateB = RISCVScheduleClassIntegerArithmeticGeneric<RISCVPipelineB, false, true>;
using RISCVScheduleClassIntegerArithmeticEarlyB = RISCVScheduleClassIntegerArithmeticGeneric<RISCVPipelineB, true, false>;
using RISCVScheduleClassIntegerArithmeticLateAB = RISCVScheduleClassIntegerArithmeticGeneric<RISCVPipelineAB, false, true>;
using RISCVScheduleClassIntegerArithmeticEarlyLateB = RISCVScheduleClassIntegerArithmeticGeneric<RISCVPipelineB, true, true>;

class RISCVScheduleClassSlowLoadImm final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo&) const override {
        auto& imm = inst.getOperand(1);
        if(isOperandImm12(imm)) {
            state.makeRegisterReady(inst, 0, 1);
        } else {
            // LUI + ADDI
            state.makeRegisterReady(inst, 0, 3);
        }
        return true;
    }
};
class RISCVScheduleClassBranch final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(!state.isAvailable(RISCVPipelineB))
            return false;
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                if(state.queryRegisterLatency(inst, idx) > 2)
                    return false;
            }
        }

        state.setIssued(RISCVPipelineB);
        return true;
    }
};
class RISCVScheduleClassLoadStore final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(!state.isAvailable(RISCVPipelineA))
            return false;
        // require effective addresses to be ready in the AG stage
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                if(state.queryRegisterLatency(inst, idx) > 0)
                    return false;
            }
        }

        if(instInfo.getOperandFlag(0) & OperandFlagDef) {
            state.makeRegisterReady(inst, 0, 3);
        }

        state.setIssued(RISCVPipelineA);
        return true;
    }
};
class RISCVScheduleClassMulti final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(!state.isAvailable(RISCVPipelineB))
            return false;
        // consumes operands in the AG stage
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                if(state.queryRegisterLatency(inst, idx) > 0)
                    return false;
            }
        }

        state.makeRegisterReady(inst, 0, 3);
        state.setIssued(RISCVPipelineB);
        return true;
    }
};
class RISCVScheduleClassDivRem final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(!state.isAvailable(RISCVPipelineB))
            return false;
        if(!state.isPipelineReady(RISCVIDivPipeline))
            return false;

        // consumes operands in the AG stage
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                if(state.queryRegisterLatency(inst, idx) > 0)
                    return false;
            }
        }

        state.resetPipeline(RISCVIDivPipeline, 65);
        state.makeRegisterReady(inst, 0, 68);
        state.setIssued(RISCVPipelineB);
        return true;
    }
};
class RISCVScheduleClassSDivRemW final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo&) const override {
        if(!state.isAvailable(RISCVPipelineB))
            return false;
        if(!state.isPipelineReady(RISCVIDivPipeline))
            return false;

        // consumes operands in the AG stage
        if(state.queryRegisterLatency(inst, 1) > 0)
            return false;
        if(state.queryRegisterLatency(inst, 2) > 0)
            return false;
        const auto logDividend = inst.getOperand(3);
        const auto logDivisor = inst.getOperand(4);
        const auto hint = inst.getOperand(5);
        const auto latency = estimateDivRemLatency(logDividend, logDivisor, hint);

        state.resetPipeline(RISCVIDivPipeline, latency - 3);
        state.makeRegisterReady(inst, 0, latency);
        state.setIssued(RISCVPipelineB);
        return true;
    }
};
template <uint32_t Latency>
class RISCVScheduleClassFP final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(!state.isAvailable(RISCVPipelineB))
            return false;

        // consumes operands in the AG stage
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                if(state.queryRegisterLatency(inst, idx) > 0)
                    return false;
            }
        }

        state.makeRegisterReady(inst, 0, Latency);
        state.setIssued(RISCVPipelineB);
        return true;
    }
};

using RISCVScheduleClassFPCycle1 = RISCVScheduleClassFP<1>;
using RISCVScheduleClassFPCycle2 = RISCVScheduleClassFP<2>;
using RISCVScheduleClassFPCycle4 = RISCVScheduleClassFP<4>;
using RISCVScheduleClassFPCycle5 = RISCVScheduleClassFP<5>;

class RISCVScheduleClassFPDiv final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(!state.isAvailable(RISCVPipelineB))
            return false;
        if(!state.isPipelineReady(RISCVFPDivPipeline))
            return false;

        // consumes operands in the AG stage
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                if(state.queryRegisterLatency(inst, idx) > 0)
                    return false;
            }
        }

        state.resetPipeline(RISCVFPDivPipeline, 33);
        state.makeRegisterReady(inst, 0, 36);
        state.setIssued(RISCVPipelineB);
        return true;
    }
};
class RISCVScheduleClassFPLoadStore final : public ScheduleClass {
public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(!state.isAvailable(RISCVPipelineA))
            return false;
        // require effective addresses to be ready in the AG stage
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                if(state.queryRegisterLatency(inst, idx) > 0)
                    return false;
            }
        }

        if(instInfo.getOperandFlag(0) & OperandFlagDef) {
            // 2 cycles to use for FLW
            state.makeRegisterReady(inst, 0, 2);
        }

        state.setIssued(RISCVPipelineA);
        return true;
    }
};

class RISCVScheduleClassGeneralLoad final : public ScheduleClass {
    RISCVScheduleClassLoadStore mLoad;
    RISCVScheduleClassFPLoadStore mFPLoad;

public:
    bool schedule(ScheduleState& state, const MIRInst& inst, const InstInfo& instInfo) const override {
        if(isOperandGPR(inst.getOperand(0)))
            return mLoad.schedule(state, inst, instInfo);
        return mFPLoad.schedule(state, inst, instInfo);
    }
};

CMMC_TARGET_NAMESPACE_END

#include <RISCV/ScheduleModelImpl.hpp>
CMMC_TARGET_NAMESPACE_BEGIN

static bool branch2jump(MIRFunction& func, const CodeGenContext& ctx) {
    // bxx zero, zero -> j
    bool modified = false;
    for(auto iter = func.blocks().begin(); iter != func.blocks().end();) {
        auto next = std::next(iter);

        for(auto& inst : iter->get()->instructions()) {
            auto isZero = [](const MIROperand& op) { return op.isReg() && op.reg() == RISCV::X0; };
            if(!(isZero(inst.getOperand(0)) && isZero(inst.getOperand(1))))
                continue;
            uint32_t status = 0;
            switch(inst.opcode()) {
                case RISCV::BEQ:
                case RISCV::BLE:
                case RISCV::BGE:
                case RISCV::BLEU:
                case RISCV::BGEU:
                    status = 1;
                    break;
                case RISCV::BNE:
                case RISCV::BLT:
                case RISCV::BGT:
                case RISCV::BLTU:
                case RISCV::BGTU:
                    status = 2;
                    break;
                default:
                    break;
            }
            if(status) {
                const auto b1 = inst.getOperand(2);
                if(status == 1) {
                    inst = MIRInst{ RISCV::J }.setOperand<0>(b1);
                } else {
                    // fallthrough
                    if(ctx.flags.endsWithTerminator) {
                        assert(next != func.blocks().end());
                        const auto b2 = MIROperand::asReloc(next->get());
                        inst = MIRInst{ RISCV::J }.setOperand<0>(b2);
                    } else {
                        inst.setOpcode(InstCopy).setOperand<2>(MIROperand{});
                    }
                }

                modified = true;
            }
        }

        iter = next;
    }
    return modified;
}

static bool removeDeadBranch(MIRFunction& func, const CodeGenContext& ctx) {
    if(ctx.flags.endsWithTerminator)
        return false;
    bool modified = false;
    for(auto& block : func.blocks()) {
        std::list<MIRInst*> branches;

        auto invalidateBranches = [&](const MIRInst& inst) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            if(requireOneFlag(instInfo.getInstFlag(), InstFlagCall))
                branches.clear();
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                    auto& op = inst.getOperand(idx);
                    branches.remove_if(
                        [&](const MIRInst* branch) { return branch->getOperand(0) == op || branch->getOperand(1) == op; });
                }
            }
        };

        for(auto iter = block->instructions().begin(); iter != block->instructions().end();) {
            auto& inst = *iter;
            auto next = std::next(iter);

            invalidateBranches(inst);

            auto isBranch = [](uint32_t opcode) {
                switch(opcode) {
                    case BEQ:
                    case BNE:
                    case BLT:
                    case BLE:
                    case BGT:
                    case BGE:
                    case BLTU:
                    case BLEU:
                    case BGTU:
                    case BGEU:
                        return true;
                    default:
                        return false;
                }
            };

            auto isSameBranch = [](MIRInst& lhs, MIRInst& rhs) {
                if(lhs.opcode() != rhs.opcode())
                    return false;
                for(uint32_t idx = 0; idx < 2; ++idx)
                    if(lhs.getOperand(idx) != rhs.getOperand(idx))
                        return false;
                return true;
            };

            if(isBranch(inst.opcode())) {
                bool remove = false;
                for(auto rhs : branches)
                    if(isSameBranch(inst, *rhs))
                        remove = true;
                if(remove) {
                    block->instructions().erase(iter);
                    modified = true;
                } else {
                    branches.push_back(&inst);
                }
            }

            iter = next;
        }
    }
    return modified;
}

static bool largeImmMaterialize(MIRBasicBlock& block) {
    constexpr uint32_t windowSize = 4;
    std::deque<std::pair<intmax_t, MIROperand>> immQueue;
    const auto addImm = [&](intmax_t val, const MIROperand& imm) {
        if(isOperandVReg(imm)) {
            immQueue.emplace_back(val, imm);
            while(immQueue.size() > windowSize)
                immQueue.pop_front();
        }
    };
    const auto reuseImm = [&](const intmax_t val, MIRInst& inst) {
        for(auto iter = immQueue.rbegin(); iter != immQueue.rend(); ++iter) {
            auto& [rhs, rhsOp] = *iter;
            // eq
            if(val == rhs) {
                inst.setOpcode(InstCopy).setOperand<1>(rhsOp);
                return true;
            }
            // shift
            {
                const int32_t maxK = 8;
                for(auto k = 1; k <= maxK; ++k) {
                    if((rhs << k) == val) {
                        inst.setOpcode(SLLI).setOperand<1>(rhsOp).setOperand<2>(MIROperand::asImm(k, OperandType::Int32));
                        return true;
                    }
                }
                for(auto k = 1; k <= maxK; ++k) {
                    if((rhs >> k) == val) {
                        inst.setOpcode(SRLI).setOperand<1>(rhsOp).setOperand<2>(MIROperand::asImm(k, OperandType::Int32));
                        return true;
                    }
                }
            }
            // bias
            {
                const auto offset = val - rhs;
                if(isSignedImm<12>(offset)) {
                    inst.setOpcode(ADDI).setOperand<1>(rhsOp).setOperand<2>(MIROperand::asImm(offset, OperandType::Int32));
                    return true;
                }
            }
            // neg
            if(-rhs == val) {
                inst.setOpcode(SUB).setOperand<1>(MIROperand::asISAReg(X0, rhsOp.type())).setOperand<2>(rhsOp);
                return true;
            }
            // xor
            if(~rhs == val) {
                inst.setOpcode(XORI).setOperand<1>(rhsOp).setOperand<2>(MIROperand::asImm(-1, OperandType::Int64));
                return true;
            }
            // * 3 -> sh1add
            if(rhs * 3 == val) {
                inst.setOpcode(SH1ADD).setOperand<1>(rhsOp).setOperand<2>(rhsOp);
                return true;
            }
            // * 5 -> sh2add
            if(rhs * 5 == val) {
                inst.setOpcode(SH2ADD).setOperand<1>(rhsOp).setOperand<2>(rhsOp);
                return true;
            }
            // * 9 -> sh3add
            if(rhs * 9 == val) {
                inst.setOpcode(SH3ADD).setOperand<1>(rhsOp).setOperand<2>(rhsOp);
                return true;
            }
        }

        return false;
    };
    bool modified = false;
    for(auto& inst : block.instructions()) {
        if(inst.opcode() == LoadImm12) {
            addImm(inst.getOperand(1).imm(), inst.getOperand(0));
        } else if(inst.opcode() == LoadImm32 || inst.opcode() == LoadImm64) {
            const auto val = inst.getOperand(1).imm();
            if(reuseImm(val, inst))
                modified = true;
            addImm(val, inst.getOperand(0));
        }
    }
    return modified;
}

static bool foldStoreZero(MIRFunction& func, MIRBasicBlock& block, const CodeGenContext& ctx) {
    bool modified = false;
    auto prevStore = block.instructions().end();
    for(auto iter = block.instructions().begin(); iter != block.instructions().end(); ++iter) {
        auto isStoreZero = [&](const MIRInst& inst, int32_t offset) {
            assert(inst.opcode() == SW);
            if(inst.getOperand(0).reg() != X0)
                return false;
            const auto& base = inst.getOperand(2);
            if(isOperandStackObject(base)) {
                const auto off = inst.getOperand(1).imm();
                const auto baseOff = func.stackObjects().at(base).offset;
                return (baseOff + off) % static_cast<int32_t>(sizeof(uint64_t)) == offset;
            }
            const auto alignment = inst.getOperand(3).imm();
            return offset == 0 ? alignment >= 8 : alignment == 4;
        };

        auto& inst = *iter;
        if(inst.opcode() != SW) {
            auto& info = ctx.instInfo.getInstInfo(inst);
            if(requireOneFlag(info.getInstFlag(), InstFlagSideEffect))
                prevStore = block.instructions().end();
            continue;
        }

        if(prevStore == block.instructions().end()) {
            prevStore = iter;
            continue;
        }

        auto prevIter = prevStore;
        auto& prevInst = *prevStore;
        prevStore = iter;

        if(isStoreZero(prevInst, 0) && isStoreZero(inst, 4)) {
            const auto prevBase = prevInst.getOperand(2);
            const auto base = inst.getOperand(2);
            if(!isOperandStackObject(prevBase) || !isOperandStackObject(base)) {
                if(prevBase != base)
                    continue;
                const auto prevOffset = prevInst.getOperand(1).imm();
                const auto offset = inst.getOperand(1).imm();
                if(prevOffset + 4 != offset)
                    continue;
            }
            inst.setOpcode(SD);
            inst.setOperand<1>(prevInst.getOperand(1));
            inst.setOperand<3>(prevInst.getOperand(3));
            block.instructions().erase(prevIter);
            prevStore = block.instructions().end();
            modified = true;
        }
    }
    return modified;
}

static bool earlyFoldStore(MIRBasicBlock& block, CodeGenContext& ctx) {
    bool modified = false;
    auto prevStore = block.instructions().end();
    std::unordered_map<MIROperand, MIROperand, MIROperandHasher> addressMap;
    for(auto iter = block.instructions().begin(); iter != block.instructions().end(); ++iter) {
        auto isStoreWord = [&](const MIRInst& inst, uint32_t alignmentReq) {
            assert(inst.opcode() == SW);
            const auto alignment = inst.getOperand(3).imm();
            return alignment >= alignmentReq;
        };

        auto& inst = *iter;
        if(inst.opcode() != SW) {
            if(inst.opcode() == ADDI && inst.getOperand(2).isReloc())
                addressMap.emplace(inst.getOperand(0), MIROperand::asReloc(inst.getOperand(2).reloc()));
            auto& info = ctx.instInfo.getInstInfo(inst);
            if(requireOneFlag(info.getInstFlag(), InstFlagSideEffect))
                prevStore = block.instructions().end();
            continue;
        }

        if(prevStore == block.instructions().end()) {
            prevStore = iter;
            continue;
        }

        auto prevIter = prevStore;
        auto& prevInst = *prevStore;
        prevStore = iter;

        if(isStoreWord(prevInst, 8) && isStoreWord(inst, 4)) {
            auto prevBase = prevInst.getOperand(2);
            intmax_t prevOffset;
            if(prevInst.getOperand(1).isImm()) {
                prevOffset = prevInst.getOperand(1).imm();
            } else {
                prevBase = MIROperand::asReloc(prevInst.getOperand(1).reloc());
                prevOffset = 0;
            }

            auto base = inst.getOperand(2);
            if(prevBase != base) {
                if(auto it = addressMap.find(base); it != addressMap.end())
                    base = it->second;
                if(prevBase != base)
                    continue;
            }
            if(!inst.getOperand(1).isImm())
                continue;
            const auto offset = inst.getOperand(1).imm();
            if(prevOffset + 4 != offset)
                continue;

            const auto shift = MIROperand::asVReg(ctx.nextId(), OperandType::Int64);
            const auto val = MIROperand::asVReg(ctx.nextId(), OperandType::Int64);
            block.instructions().insert(iter,
                                        MIRInst{ SLLI }
                                            .setOperand<0>(shift)
                                            .setOperand<1>(inst.getOperand(0))
                                            .setOperand<2>(MIROperand::asImm(32, OperandType::Int64)));
            block.instructions().insert(
                iter, MIRInst{ ADD_UW }.setOperand<0>(val).setOperand<1>(prevInst.getOperand(0)).setOperand<2>(shift));
            inst.setOpcode(SD);
            inst.setOperand<0>(val);
            inst.setOperand<1>(prevInst.getOperand(1));
            inst.setOperand<2>(prevInst.getOperand(2));
            inst.setOperand<3>(prevInst.getOperand(3));
            block.instructions().erase(prevIter);
            prevStore = block.instructions().end();
            modified = true;
        }
    }
    return modified;
}

static bool earlyFoldDualWordCopy(MIRFunction& func, CodeGenContext& ctx) {
    std::unordered_map<MIROperand, uint32_t, MIROperandHasher> useCount;
    std::unordered_map<MIROperand, MIRInst*, MIROperandHasher> addressDef;
    for(auto& block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            if(inst.opcode() == InstLoad && inst.getOperand(0).type() == OperandType::Int32) {
                useCount[inst.getOperand(0)] = 0;
                addressDef[inst.getOperand(1)] = nullptr;
            }
            if(inst.opcode() == InstStore && inst.getOperand(1).type() == OperandType::Int32) {
                addressDef[inst.getOperand(0)] = nullptr;
            }
        }
    }
    if(useCount.empty())
        return false;
    for(auto& block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            const auto& instInfo = ctx.instInfo.getInstInfo(inst);
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                if(instInfo.getOperandFlag(idx) & OperandFlagUse)
                    if(auto iter = useCount.find(inst.getOperand(idx)); iter != useCount.end())
                        ++iter->second;
            if(inst.opcode() == InstAdd) {
                if(auto iter = addressDef.find(inst.getOperand(0)); iter != addressDef.end())
                    iter->second = &inst;
            }
        }
    }
    bool modified = false;
    for(auto& block : func.blocks()) {
        std::list<MIRInstList::iterator> window;
        auto& instrucitions = block->instructions();

        auto getDef = [&](const MIROperand& addr) -> MIRInst* {
            if(auto iter = addressDef.find(addr); iter != addressDef.end())
                return iter->second;
            return nullptr;
        };
        auto matchAdjAddr = [&](const MIROperand& base, const MIROperand& nextWord, const MIROperand& baseAlignment,
                                const MIROperand& nextAlignment) {
            if(baseAlignment.imm() != 8 || nextAlignment.imm() != 4)
                return false;

            const auto nextWordAddrInst = getDef(nextWord);
            if(!nextWordAddrInst)
                return false;
            if(nextWordAddrInst->getOperand(1) == base) {
                auto offset = nextWordAddrInst->getOperand(2);
                if(offset.isImm() && offset.imm() == 4)
                    return true;
            }

            const auto baseAddrInst = getDef(base);
            if(!baseAddrInst)
                return false;
            if(baseAddrInst->getOperand(1) == nextWordAddrInst->getOperand(1)) {
                const auto offset1 = baseAddrInst->getOperand(2);
                const auto offset2 = nextWordAddrInst->getOperand(2);
                if(offset1.isImm() && offset2.isImm() && offset1.imm() + 4 == offset2.imm())
                    return true;
            }

            return false;
        };

        auto tryFold = [&] {
            assert(window.size() == 4);
            auto it = window.begin();
            auto& load1 = **it++;
            auto& store1 = **it++;
            const auto load2Iter = *it;
            auto& load2 = **it++;
            const auto store2Iter = *it;
            auto& store2 = **it++;
            if(!(load1.opcode() == InstLoad && load2.opcode() == InstLoad && store1.opcode() == InstStore &&
                 store2.opcode() == InstStore))
                return;
            if(load1.getOperand(0) == store1.getOperand(1) && load2.getOperand(0) == store2.getOperand(1) &&
               matchAdjAddr(load1.getOperand(1), load2.getOperand(1), load1.getOperand(2), load2.getOperand(2)) &&
               matchAdjAddr(store1.getOperand(0), store2.getOperand(0), store1.getOperand(2), store2.getOperand(2))) {
                const auto val = MIROperand::asVReg(ctx.nextId(), OperandType::Int64);
                load1.setOperand<0>(val);
                store1.setOperand<1>(val);
                instrucitions.erase(load2Iter);
                instrucitions.erase(store2Iter);

                window.clear();
                modified = true;
            }
        };

        for(MIRInstList::iterator it = instrucitions.begin(), next; it != instrucitions.end(); it = next) {
            next = std::next(it);
            auto& inst = *it;
            const auto& instInfo = ctx.instInfo.getInstInfo(inst);
            if(requireFlag(instInfo.getInstFlag(), InstFlagCall)) {
                window.clear();
                continue;
            }
            if(requireFlag(instInfo.getInstFlag(), InstFlagLoad)) {
                if(inst.opcode() == InstLoad && inst.getOperand(0).type() == OperandType::Int32) {
                    if(auto iter = useCount.find(inst.getOperand(0)); iter != useCount.end() && iter->second == 1) {
                        window.push_back(it);
                        while(window.size() > 4)
                            window.pop_front();
                    }
                    continue;
                }
                window.clear();
                continue;
            }
            if(requireFlag(instInfo.getInstFlag(), InstFlagStore)) {
                if(inst.opcode() == InstStore && inst.getOperand(1).type() == OperandType::Int32) {
                    window.push_back(it);
                    while(window.size() > 4)
                        window.pop_front();
                    if(window.size() == 4) {
                        tryFold();
                    }
                    continue;
                }
                window.clear();
                continue;
            }
        }
    }
    return modified;
}

static bool simplifyOpWithZero(MIRFunction& func, const CodeGenContext&) {
    bool modified = false;
    for(auto& block : func.blocks())
        for(auto& inst : block->instructions()) {
            auto isZero = [&](uint32_t idx) {
                auto& op = inst.getOperand(idx);
                return op.isReg() && op.reg() == X0;
            };
            auto getZero = [](const MIROperand& op) { return MIROperand::asISAReg(X0, op.type()); };
            auto resetToZero = [&] {
                inst = MIRInst{ MoveGPR }.setOperand<0>(inst.getOperand(0)).setOperand<1>(getZero(inst.getOperand(0)));
                modified = true;
            };
            auto resetToCopy = [&](uint32_t idx) {
                inst = MIRInst{ MoveGPR }.setOperand<0>(inst.getOperand(0)).setOperand<1>(inst.getOperand(idx));
                modified = true;
            };
            auto resetToSignExtend = [&](uint32_t idx) {
                inst = MIRInst{ SEXT_W }.setOperand<0>(inst.getOperand(0)).setOperand<1>(inst.getOperand(idx));
                modified = true;
            };
            auto resetToLoadImm = [&](uint32_t idx) {
                inst = MIRInst{ LoadImm12 }.setOperand<0>(inst.getOperand(0)).setOperand<1>(inst.getOperand(idx));
                modified = true;
            };
            auto resetToImm = [&](intmax_t imm) {
                assert(imm);
                inst = MIRInst{ LoadImm12 }
                           .setOperand<0>(inst.getOperand(0))
                           .setOperand<1>(MIROperand::asImm(imm, inst.getOperand(0).type()));
                modified = true;
            };

            switch(inst.opcode()) {
                case MUL:
                case MULW: {
                    if(isZero(1) || isZero(2))
                        resetToZero();
                    break;
                }
                case ADDI:
                case ADDIW: {
                    if(isZero(1))
                        resetToLoadImm(2);
                    break;
                }
                case SUBW: {
                    if(isZero(2))
                        resetToSignExtend(1);
                    break;
                }
                case REMW: {
                    if(isZero(1))
                        resetToZero();
                    break;
                }
                case SLLI:
                case SLLIW:
                case SRLI:
                case SRLIW:
                case SRAI:
                case SRAIW: {
                    if(isZero(1))
                        resetToZero();
                    break;
                }
                case SH1ADD:
                case SH2ADD:
                case SH3ADD: {
                    if(isZero(1)) {
                        resetToCopy(2);
                    }
                    // TODO: fold into SLLI when isZero(2)
                    break;
                }
                case ADD: {
                    if(isZero(1))
                        resetToCopy(2);
                    else if(isZero(2))
                        resetToCopy(1);

                    break;
                }
                case ADDW: {
                    if(isZero(1))
                        resetToSignExtend(2);
                    else if(isZero(2))
                        resetToSignExtend(1);
                    break;
                }
                case ANDI: {
                    if(isZero(1))
                        resetToZero();
                    break;
                }
                case SLTI: {
                    if(isZero(1)) {
                        if(0 < inst.getOperand(2).imm())
                            resetToImm(1);
                        else
                            resetToZero();
                    }
                    break;
                }
                case OR: {
                    if(isZero(1)) {
                        resetToCopy(2);
                    } else if(isZero(2)) {
                        resetToCopy(1);
                    }
                    break;
                }
                case SEXT_W: {
                    if(isZero(1)) {
                        resetToZero();
                    }
                    break;
                }
                case ADD_UW: {
                    if(isZero(1) && isZero(2))
                        resetToZero();
                    else if(isZero(1))
                        resetToCopy(2);
                    else if(isZero(2)) {
                        inst = MIRInst{ ZEXT_W }.setOperand<0>(inst.getOperand(0)).setOperand<1>(inst.getOperand(1));
                        modified = true;
                    }
                    break;
                }
                default:
                    break;
            }
        }
    return modified;
}
static bool isWProvider(uint32_t opcode) {
    switch(opcode) {
        case ADDIW:
        case ADDW:
        case SUBW:
        case MULW:
        case DIVW:
        case DIVUW:
        case REMW:
        case REMUW:
        case SEXT_W:
        case SLLIW:
        case SRAIW:
        case SRLIW:
        case SLLW:
        case SRAW:
        case SRLW:
        case LW:
        case LH:
        case LB:
        case LoadImm12:
            return true;
        default:
            return false;
    }
}
static bool relaxWInst(MIRFunction& func, const CodeGenContext& ctx) {
    if(!ctx.flags.inSSAForm)
        return false;
    std::unordered_map<MIRInst*, std::vector<MIRInst*>> users;
    auto isWUser = [](uint32_t opcode) {
        switch(opcode) {
            case ADDIW:
            case ADD_UW:
            case ADDW:
            case SUBW:
            case MULW:
            case DIVW:
            case DIVUW:
            case REMW:
            case REMUW:
            case SEXT_W:
            case SLLIW:
            case SRAIW:
            case SRLIW:
            case SLLW:
            case SRAW:
            case SRLW:
            case SW:
            case SH:
            case SB:
            case FCVT_S_W:
                return true;
            default:
                return false;
        }
    };

    auto isInterestWInst = [](uint32_t opcode) {
        switch(opcode) {
            case ADDIW:
            case SEXT_W:
            case SLLIW:
            case SRAIW:
            case SRLIW:
                return true;
            default:
                return false;
        }
    };
    auto needWProvider = [](uint32_t opcode) {
        switch(opcode) {
            case ADDIW:
            case ADDW:
            case SUBW:
            case SLLIW:
            case SRAIW:
            case SRLIW:
            case SLLW:
            case SRAW:
            case SRLW:
                return true;
            default:
                return false;
        }
    };

    for(auto& block : func.blocks()) {
        std::unordered_map<MIROperand, MIRInst*, MIROperandHasher> defs;
        for(auto& inst : block->instructions()) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                    const auto def = defs.find(inst.getOperand(idx));
                    if(def != defs.cend()) {
                        const auto userIter = users.find(def->second);
                        if(userIter != users.end())
                            userIter->second.push_back(&inst);
                    }
                }
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                    defs[inst.getOperand(idx)] = &inst;
                    break;
                }
            if(isInterestWInst(inst.opcode())) {
                bool allWOperand = true;
                if(needWProvider(inst.opcode())) {
                    for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                        if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                            const auto def = defs.find(inst.getOperand(idx));
                            if(def != defs.cend()) {
                                if(isWProvider(def->second->opcode()))
                                    continue;
                            }
                            allWOperand = false;
                            break;
                        }
                }
                if(allWOperand)
                    users[&inst];  // touch
            }
        }
    }

    bool modified = false;
    std::unordered_set<MIRInst*> noRelax;
    for(auto& [u, userList] : users) {
        if(noRelax.count(u))
            continue;

        bool allWUser = true;
        for(auto user : userList) {
            if(!isWUser(user->opcode())) {
                allWUser = false;
                break;
            }
        }

        // TODO: relax sext.w if its input is a signed 32-bit integer.
        if(allWUser) {
            RISCVInst relaxed;
            switch(u->opcode()) {
                case ADDIW:
                    relaxed = ADDI;
                    break;
                case ADDW:
                    relaxed = ADD;
                    break;
                case SUBW:
                    relaxed = SUB;
                    break;
                case MULW:
                    relaxed = MUL;
                    break;
                case SEXT_W:
                    relaxed = MoveGPR;
                    break;
                case SLLIW:
                    relaxed = SLLI;
                    break;
                case SRAIW:
                    relaxed = SRAI;
                    break;
                case SRLIW:
                    relaxed = SRLI;
                    break;
                case SLLW:
                    relaxed = SLL;
                    break;
                case SRAW:
                    relaxed = SRA;
                    break;
                case SRLW:
                    relaxed = SRL;
                    break;
                default:
                    reportUnreachable(CMMC_LOCATION());
            }
            u->setOpcode(relaxed);
            modified = true;
            if(u->opcode() != SRA && u->opcode() != SRAI)
                for(auto user : userList)
                    noRelax.insert(user);
        }
    }
    return modified;
}

static bool removeSExtW(MIRFunction& func, const CodeGenContext& ctx) {
    bool modified = false;
    for(auto& block : func.blocks()) {
        std::unordered_map<MIROperand, MIRInst*, MIROperandHasher> defs;
        for(auto& inst : block->instructions()) {
            if(inst.opcode() == SEXT_W) {
                const auto& src = inst.getOperand(1);
                if(auto iter = defs.find(src); iter != defs.cend()) {
                    if(isWProvider(iter->second->opcode())) {
                        inst.setOpcode(MoveGPR);
                        modified = true;
                    }
                }
                defs[inst.getOperand(0)] = &inst;
            } else {
                auto& instInfo = ctx.instInfo.getInstInfo(inst);
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                    if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                        defs[inst.getOperand(idx)] = &inst;
                        break;
                    }
                // TODO: use IPRAInfo
                if(requireFlag(instInfo.getInstFlag(), InstFlagCall))
                    defs.clear();
            }
        }
    }

    return modified;
}

bool RISCVScheduleModel_sifive_u74::peepholeOpt(MIRFunction& func, CodeGenContext& ctx) const {
    bool modified = false;
    if(ctx.flags.preRA) {
        for(auto& block : func.blocks()) {
            if(!ctx.flags.inSSAForm)
                modified |= largeImmMaterialize(*block);
            modified |= earlyFoldStore(*block, ctx);
        }
    }
    if(ctx.flags.postSA) {
        for(auto& block : func.blocks()) {
            modified |= foldStoreZero(func, *block, ctx);
        }
    }
    modified |= branch2jump(func, ctx);
    modified |= removeDeadBranch(func, ctx);
    modified |= simplifyOpWithZero(func, ctx);
    modified |= relaxWInst(func, ctx);
    modified |= removeSExtW(func, ctx);
    modified |= expandMulWithConstant(func, ctx, static_cast<uint32_t>(queryTuneOpt("max_mul_constant_cost", 2)));
    if(ctx.flags.inSSAForm)
        modified |= earlyFoldDualWordCopy(func, ctx);
    return modified;
}

const MicroarchitectureInfo& RISCVScheduleModel_sifive_u74::getInfo() const {
    static MicroarchitectureInfo info{
        .enablePostRAScheduling = true,
        .hasRegRenaming = false,
        .hasMacroFusion = false,
        .issueWidth = 2,
        .outOfOrder = false,
        .hardwarePrefetch = true,
        .maxDataStreams = 8,
        .maxStrideByBytes = 256,
    };
    return info;
}
bool RISCVScheduleModel_sifive_u74::isExpensiveInst(const MIRInst& inst, const CodeGenContext& ctx) const {
    CMMC_UNUSED(ctx);
    switch(inst.opcode()) {
        default:
            return true;
    }
}

CMMC_TARGET_NAMESPACE_END

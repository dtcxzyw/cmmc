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

#include "cmmc/IR/Block.hpp"
#include "cmmc/IR/Function.hpp"
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/MIRCFGAnalysis.hpp>
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/CodeGen/RegisterInfo.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cstdint>
#include <functional>
#include <iostream>
#include <memory>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <variant>
#include <vector>

// Reimplementation of LLVM's Greedy RA
// References:
// https://www.youtube.com/watch?v=IK8TMJf3G6U
// https://www.youtube.com/watch?v=hf8kD-eAaxg

CMMC_MIR_NAMESPACE_BEGIN

using RegNum = uint32_t;
using InstNum = uint64_t;
constexpr uint64_t defaultIncrement = 1ULL << 32;

// i in [beg, end]: this register should be available just before issuing instruction $i$.
struct LiveSegment final {
    uint32_t beg, end;
};

struct LiveInterval final {
    std::deque<LiveSegment> segments;  // ordered

    void insertSegment(const LiveSegment& segment) {
        CMMC_UNUSED(segment);
    }
};

struct LiveVariablesBlockInfo final {
    std::unordered_map<RegNum, InstNum> liveIns;   // first uses
    std::unordered_map<RegNum, InstNum> liveOuts;  // last defs
};

struct RAInfo final {
    std::unordered_map<MIRInst*, InstNum> instNum;
    std::unordered_map<MIRBasicBlock*, LiveVariablesBlockInfo> blockInfo;
};

static void assignInstNum(MIRFunction& mfunc, RAInfo& info) {
    auto& num = info.instNum;
    InstNum current = 0;
    for(auto& block : mfunc.blocks()) {
        for(auto& inst : block->instructions()) {
            num[&inst] = current;
            current += defaultIncrement;
        }
    }
}

static void calcLiveIntervals(MIRFunction& mfunc, CodeGenContext& ctx, RAInfo& info) {
    CMMC_UNUSED(info);
    // Stage 1: local use/def chain
    for(auto& block : mfunc.blocks()) {
        for(auto& inst : block->instructions()) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                auto flag = instInfo.getOperandFlag(idx);
                auto& operand = inst.getOperand(idx);
                CMMC_UNUSED(operand);
                if(flag & OperandFlagDef) {

                } else if(flag & OperandFlagUse) {
                }
            }
        }
    }
    // Segag 2: cross-block propagation
}

static void greedyAllocate(MIRFunction& mfunc, CodeGenContext& ctx, IPRAUsageCache& infoIPRA) {
    CMMC_UNUSED(mfunc);
    CMMC_UNUSED(ctx);
    CMMC_UNUSED(infoIPRA);
    RAInfo info;
    assignInstNum(mfunc, info);
    calcLiveIntervals(mfunc, ctx, info);
}

CMMC_REGISTER_ALLOCATOR("greedy", greedyAllocate);

CMMC_MIR_NAMESPACE_END

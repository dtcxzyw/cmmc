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

#include <algorithm>
#include <cmmc/CodeGen/LiveInterval.hpp>
#include <cmmc/CodeGen/MIRCFGAnalysis.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <iostream>
#include <iterator>
#include <unordered_set>

CMMC_MIR_NAMESPACE_BEGIN

static void assignInstNum(MIRFunction& mfunc, LiveVariablesInfo& info) {
    auto& num = info.instNum;
    InstNum current = 0;
    for(auto& block : mfunc.blocks()) {
        for(auto& inst : block->instructions()) {
            num[&inst] = current;
            current += defaultIncrement;
        }
    }
}

LiveVariablesInfo calcLiveIntervals(MIRFunction& mfunc, CodeGenContext& ctx) {
    LiveVariablesInfo info;
    const auto cfg = calcCFG(mfunc, ctx);
    // Stage 1: collect use/def
    for(auto& block : mfunc.blocks()) {
        auto& blockInfo = info.blockInfo[block.get()];
        for(auto& inst : block->instructions()) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                const auto flag = instInfo.getOperandFlag(idx);
                auto& operand = inst.getOperand(idx);
                if(!isOperandVRegOrISAReg(operand))
                    continue;
                const auto id = regNum(operand);
                if(flag & OperandFlagDef) {
                    blockInfo.defs.insert(id);
                } else if(flag & OperandFlagUse) {
                    if(!blockInfo.defs.count(id))
                        blockInfo.uses.insert(id);
                } else
                    reportUnreachable(CMMC_LOCATION());
            }
        }
    }
    // Stage 2: calculate ins and outs for each block
    while(true) {
        bool modified = false;
        /*
        for(auto& block : mfunc.blocks()) {
            auto& blockInfo = info.blockInfo[block.get()];
            block->dump(std::cerr, ctx);
            std::cerr << "uses: ";
            for(auto use : blockInfo.uses)
                std::cerr << use << ' ';
            std::cerr << '\n';
            std::cerr << "defs: ";
            for(auto def : blockInfo.defs)
                std::cerr << def << ' ';
            std::cerr << '\n';
            std::cerr << "ins: ";
            for(auto in : blockInfo.ins)
                std::cerr << in << ' ';
            std::cerr << '\n';
            std::cerr << "outs: ";
            for(auto out : blockInfo.outs)
                std::cerr << out << ' ';
            std::cerr << '\n';
        }
        */
        for(auto& block : mfunc.blocks()) {
            auto b = block.get();
            auto& blockInfo = info.blockInfo[b];
            std::unordered_set<RegNum> outs;
            for(auto [succ, prob] : cfg.successors(b)) {
                for(auto in : info.blockInfo[succ].ins) {
                    outs.insert(in);
                }
            }
            std::swap(blockInfo.outs, outs);
            auto ins = blockInfo.uses;
            for(auto out : blockInfo.outs)
                if(!blockInfo.defs.count(out)) {
                    ins.insert(out);
                }
            if(ins != blockInfo.ins) {
                std::swap(blockInfo.ins, ins);
                modified = true;
            }
        }
        if(!modified)
            break;
    }

    // Stage 3: calculate live intervals
    assignInstNum(mfunc, info);
    for(auto& block : mfunc.blocks()) {
        auto& blockInfo = info.blockInfo[block.get()];
        std::unordered_map<RegNum, LiveSegment> currentSegment;
        InstNum firstInstNum = 0;
        InstNum lastInstNum = 0;
        for(auto& inst : block->instructions()) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            const auto instNum = info.instNum.at(&inst);
            if(&inst == &block->instructions().front())
                firstInstNum = instNum;
            lastInstNum = instNum;
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                const auto flag = instInfo.getOperandFlag(idx);
                auto& operand = inst.getOperand(idx);
                if(!isOperandVRegOrISAReg(operand))
                    continue;
                const auto id = regNum(operand);
                if(flag & OperandFlagUse) {
                    if(auto iter = currentSegment.find(id); iter != currentSegment.end()) {
                        iter->second.end = instNum + 1;
                    } else {
                        currentSegment[id] = { firstInstNum, instNum + 1 };
                    }
                }
            }
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                const auto flag = instInfo.getOperandFlag(idx);
                auto& operand = inst.getOperand(idx);
                if(!isOperandVRegOrISAReg(operand))
                    continue;
                const auto id = regNum(operand);
                if(flag & OperandFlagDef) {
                    if(currentSegment.count(id)) {
                        auto& segment = currentSegment[id];
                        if(segment.end == instNum + 1) {
                            segment.end = instNum + 2;
                        } else {
                            info.interval[id].appendSegment(segment);
                            segment = { instNum + 1, instNum + 2 };
                        }
                    } else {
                        currentSegment[id] = { instNum + 1, instNum + 2 };
                    }
                }
            }
        }
        for(auto& [id, segment] : currentSegment) {
            if(blockInfo.outs.count(id)) {
                segment.end = lastInstNum + 2;
            }
            info.interval[id].appendSegment(segment);
        }
        for(auto id : blockInfo.outs)
            if(blockInfo.ins.count(id) && !currentSegment.count(id))
                info.interval[id].appendSegment({ firstInstNum, lastInstNum + 2 });
    }

    for(auto& [k, v] : info.interval) {
        v.optimize();
        assert(v.verify());
    }

    return info;
}

void LiveInterval::appendSegment(const LiveSegment& segment) {
    segments.push_back(segment);
}
void LiveInterval::insertSegment(const LiveSegment& segment) {
    CMMC_UNUSED(segment);
    reportNotImplemented(CMMC_LOCATION());
}
void LiveInterval::optimize() {
    assert(verify());
    auto cur = segments.begin();
    for(auto iter = segments.begin(); iter != segments.end(); ++iter) {
        if(iter == cur)
            continue;
        if(cur->end < iter->beg) {
            ++cur;
            *cur = *iter;
        } else {
            cur->end = std::max(cur->end, iter->end);
        }
    }
    segments.erase(std::next(cur), segments.end());
}
[[nodiscard]] bool LiveInterval::verify() const {
    InstNum val = 0;
    for(auto segment : segments) {
        if(segment.beg >= segment.end)
            return false;
        if(val >= segment.end)
            return false;
        val = segment.end;
    }
    return true;
}
InstNum LiveInterval::nextUse(InstNum beg) const {
    auto iter = std::upper_bound(segments.cbegin(), segments.cend(), LiveSegment{ 0, beg + 1 },
                                 [](const LiveSegment& lhs, const LiveSegment& rhs) { return lhs.end < rhs.end; });
    if(iter == segments.cend())
        return std::numeric_limits<InstNum>::max();
    assert(iter->beg > beg);
    return iter->beg;
}

CMMC_MIR_NAMESPACE_END

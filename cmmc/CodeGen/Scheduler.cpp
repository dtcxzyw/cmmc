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

#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/ScheduleModel.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <queue>
#include <unordered_map>
#include <unordered_set>

CMMC_MIR_NAMESPACE_BEGIN

static void topDownScheduling(MIRBasicBlock& block, std::unordered_map<MIRInst*, uint32_t>& degrees,
                              std::unordered_map<MIRInst*, std::unordered_set<MIRInst*>>& antiDeps,
                              const std::unordered_map<const MIRInst*, std::unordered_map<uint32_t, uint32_t>>& renameMap,
                              std::unordered_map<MIRInst*, int32_t>& rank, const CodeGenContext& ctx, int32_t waitPenalty) {
    auto& model = ctx.scheduleModel;
    auto& info = model.getInfo();
    // top-down scheduling
    constexpr bool debugSched = false;
    [[maybe_unused]] auto dumpIssue = [&](const MIRInst& inst) {
        auto& instInfo = ctx.instInfo.getInstInfo(inst);
        instInfo.print(std::cerr << "issue ", inst, true);
        std::cerr << std::endl;
    };
    [[maybe_unused]] auto dumpReady = [&](const MIRInst& inst) {
        auto& instInfo = ctx.instInfo.getInstInfo(inst);
        instInfo.print(std::cerr << "ready ", inst, true);
        std::cerr << std::endl;
    };

    ScheduleState state{ renameMap };
    MIRInstList newList;
    std::list<MIRInst*> schedulePlane;
    if constexpr(debugSched) {
        block.dump(std::cerr, ctx);
        std::cerr << "Cycle 0" << std::endl;
    }
    for(auto& inst : block.instructions())
        if(degrees[&inst] == 0) {
            if constexpr(debugSched)
                dumpReady(inst);
            schedulePlane.push_back(&inst);
        }

    constexpr uint32_t maxBusyCycles = 200;
    uint32_t busyCycle = 0, cycle = 0;
    std::unordered_map<MIRInst*, uint32_t> readyTime;
    while(newList.size() != block.instructions().size()) {
        std::vector<MIRInst*> newReadyInsts;
        for(uint32_t idx = 0; idx < info.issueWidth; ++idx) {
            uint32_t cnt = 0;
            bool success = false;
            auto evalRank = [&](MIRInst* inst) {
                return rank[inst] + static_cast<int32_t>(cycle - readyTime[inst]) * waitPenalty;
            };
            schedulePlane.sort([&](MIRInst* lhs, MIRInst* rhs) { return evalRank(lhs) > evalRank(rhs); });
            while(cnt < schedulePlane.size()) {
                auto& inst = *schedulePlane.front();
                auto& scheduleClass = model.getInstScheClass(inst.opcode());
                schedulePlane.pop_front();
                if(scheduleClass.schedule(state, inst, ctx.instInfo.getInstInfo(inst))) {
                    if constexpr(debugSched)
                        dumpIssue(inst);
                    newList.push_back(inst);

                    busyCycle = 0;
                    for(auto v : antiDeps[&inst]) {
                        if(--degrees[v] == 0) {
                            // Don't push to schedulePlane here, because there are data/control harzards.
                            // It should be scheduled in next cycle.
                            newReadyInsts.push_back(v);
                        }
                    }
                    success = true;
                    break;
                }
                ++cnt;
                schedulePlane.push_back(&inst);
            }
            if(!success)
                break;
        }
        cycle = state.nextCycle();
        if constexpr(debugSched) {
            std::cerr << "Cycle " << cycle << std::endl;
        }
        ++busyCycle;
        if(busyCycle > maxBusyCycles) {
            std::cerr << "Failed to schedule instructions" << std::endl;
            reportUnreachable(CMMC_LOCATION());
        }

        for(auto inst : newReadyInsts) {
            if constexpr(debugSched)
                dumpReady(*inst);
            readyTime[inst] = cycle;
            schedulePlane.push_back(inst);
        }
    }

    block.instructions().swap(newList);
}

static void preRAScheduleBlock(MIRBasicBlock& block, const CodeGenContext& ctx) {
    std::unordered_map<MIRInst*, std::unordered_set<MIRInst*>> antiDeps;
    std::unordered_map<const MIRInst*, std::unordered_map<uint32_t, uint32_t>> renameMap;
    std::unordered_map<MIRInst*, uint32_t> degrees;
    std::unordered_map<uint32_t, std::vector<MIRInst*>> lastTouch;
    std::unordered_map<uint32_t, MIRInst*> lastDef;
    auto addDep = [&](MIRInst* u, MIRInst* v) {
        if(u == v)
            return;
        if(antiDeps[v].insert(u).second) {
            ++degrees[u];

            // auto& instInfoU = ctx.instInfo.getInstInfo(*u);
            // auto& instInfoV = ctx.instInfo.getInstInfo(*v);
            // instInfoU.print(std::cerr, *u, true);
            // std::cerr << " -> ";
            // instInfoV.print(std::cerr, *v, true);
            // std::cerr << std::endl;
        }
    };

    MIRInst* lastSideEffect = nullptr;
    MIRInst* lastInOrder = nullptr;
    for(auto& inst : block.instructions()) {
        auto& instInfo = ctx.instInfo.getInstInfo(inst);

        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            auto flag = instInfo.getOperandFlag(idx);
            auto op = inst.getOperand(idx);
            if(op.isReg()) {
                if(isOperandStackObject(op)) {
                    op = ctx.registerInfo->getStackPointerRegister();
                    flag = OperandFlagUse;
                }

                const auto reg = op.reg();
                // TODO: regRenaming
                renameMap[&inst][idx] = reg;

                if(flag & OperandFlagUse) {
                    if(auto it = lastDef.find(reg); it != lastDef.end())
                        addDep(&inst, it->second);

                    lastTouch[reg].push_back(&inst);
                }
            }
        }
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            auto flag = instInfo.getOperandFlag(idx);
            auto op = inst.getOperand(idx);
            if(op.isReg()) {
                if(isOperandStackObject(op))
                    op = ctx.registerInfo->getStackPointerRegister();
                const auto reg = op.reg();
                if(flag & OperandFlagDef) {
                    for(auto use : lastTouch[reg])
                        addDep(&inst, use);

                    lastTouch[reg] = { &inst };
                    lastDef[reg] = &inst;
                }
            }
        }

        if(lastInOrder) {
            addDep(&inst, lastInOrder);
        }
        if(requireOneFlag(instInfo.getInstFlag(), InstFlagSideEffect)) {
            if(lastSideEffect) {
                addDep(&inst, lastSideEffect);
            }
            lastSideEffect = &inst;
            if(requireOneFlag(instInfo.getInstFlag(), InstFlagInOrder | InstFlagCall | InstFlagTerminator)) {
                for(auto& prevInst : block.instructions()) {
                    if(&prevInst == &inst)
                        break;
                    addDep(&inst, &prevInst);
                }
                lastInOrder = &inst;
            }
        }
    }

    std::unordered_map<MIRInst*, int32_t> rank;
    {
        int32_t idx = 0;
        for(auto& inst : block.instructions())
            rank[&inst] = --idx;
        // auto deg = degrees;
        // std::queue<MIRInst*> q;
        // for(auto& inst : block.instructions()) {
        //     if(deg[&inst] == 0) {
        //         rank.emplace(&inst, 0);
        //         q.push(&inst);
        //     }
        // }
        // while(!q.empty()) {
        //     auto u = q.front();
        //     q.pop();
        //     const auto ru = rank[u];
        //     for(auto v : antiDeps[u]) {
        //         auto& rv = rank[v];
        //         rv = std::max(rv, ru + 1);
        //         if(--deg[v] == 0) {
        //             q.push(v);
        //         }
        //     }
        // }
    }

    topDownScheduling(block, degrees, antiDeps, renameMap, rank, ctx, 2);
}

void preRASchedule(MIRFunction& func, const CodeGenContext& ctx) {
    return;
    // func.dump(std::cerr, ctx);
    for(auto& block : func.blocks()) {
        preRAScheduleBlock(*block, ctx);
    }
    // func.dump(std::cerr, ctx);
}

static void postRAScheduleBlock(MIRBasicBlock& block, const CodeGenContext& ctx) {
    // build DAG & rename map
    std::unordered_map<const MIRInst*, std::unordered_map<uint32_t, uint32_t>> renameMap;
    std::unordered_map<MIRInst*, std::unordered_set<MIRInst*>> antiDeps;
    std::unordered_map<uint32_t, std::vector<MIRInst*>> lastTouch;
    std::unordered_map<uint32_t, MIRInst*> lastDef;
    std::unordered_map<MIRInst*, uint32_t> degrees;

    auto addDep = [&](MIRInst* u, MIRInst* v) {
        if(u == v)
            return;
        if(antiDeps[v].insert(u).second) {
            ++degrees[u];

            // auto& instInfoU = ctx.instInfo.getInstInfo(*u);
            // auto& instInfoV = ctx.instInfo.getInstInfo(*v);
            // instInfoU.print(std::cerr, *u, true);
            // std::cerr << " -> ";
            // instInfoV.print(std::cerr, *v, true);
            // std::cerr << std::endl;
        }
    };

    MIRInst* lastSideEffect = nullptr;
    MIRInst* lastInOrder = nullptr;
    for(auto& inst : block.instructions()) {
        auto& instInfo = ctx.instInfo.getInstInfo(inst);

        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            auto flag = instInfo.getOperandFlag(idx);
            auto op = inst.getOperand(idx);
            if(op.isReg()) {
                if(isOperandStackObject(op)) {
                    op = ctx.registerInfo->getStackPointerRegister();
                    flag = OperandFlagUse;
                }

                const auto reg = op.reg();
                // TODO: regRenaming
                renameMap[&inst][idx] = reg;

                if(flag & OperandFlagUse) {
                    if(auto it = lastDef.find(reg); it != lastDef.end())
                        addDep(&inst, it->second);

                    lastTouch[reg].push_back(&inst);
                }
            }
        }
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            auto flag = instInfo.getOperandFlag(idx);
            auto op = inst.getOperand(idx);
            if(op.isReg()) {
                if(isOperandStackObject(op))
                    op = ctx.registerInfo->getStackPointerRegister();
                const auto reg = op.reg();
                if(flag & OperandFlagDef) {
                    for(auto use : lastTouch[reg])
                        addDep(&inst, use);

                    lastTouch[reg] = { &inst };
                    lastDef[reg] = &inst;
                }
            }
        }

        if(lastInOrder) {
            addDep(&inst, lastInOrder);
        }
        if(requireOneFlag(instInfo.getInstFlag(), InstFlagSideEffect)) {
            if(lastSideEffect) {
                addDep(&inst, lastSideEffect);
            }
            lastSideEffect = &inst;
            if(requireOneFlag(instInfo.getInstFlag(), InstFlagInOrder | InstFlagCall | InstFlagTerminator)) {
                for(auto& prevInst : block.instructions()) {
                    if(&prevInst == &inst)
                        break;
                    addDep(&inst, &prevInst);
                }
                lastInOrder = &inst;
            }
        }
    }

    std::unordered_map<MIRInst*, int32_t> rank;
    {
        std::unordered_map<MIRInst*, std::unordered_set<MIRInst*>> deps;
        std::unordered_map<MIRInst*, uint32_t> deg;
        for(auto& inst : block.instructions())
            for(auto prev : antiDeps[&inst]) {
                deps[prev].insert(&inst);
                ++deg[prev];
            }

        std::queue<MIRInst*> q;
        for(auto& inst : block.instructions())
            if(deg[&inst] == 0) {
                rank.emplace(&inst, 0);
                q.push(&inst);
            }

        while(!q.empty()) {
            auto u = q.front();
            q.pop();
            const auto ru = rank[u];
            for(auto v : deps[u]) {
                auto& rv = rank[v];
                rv = std::max(rv, ru + 1);
                if(--deg[v] == 0) {
                    q.push(v);
                }
            }
        }
    }

    topDownScheduling(block, degrees, antiDeps, renameMap, rank, ctx, 0);
}

void postRASchedule(MIRFunction& func, const CodeGenContext& ctx) {
    auto& info = ctx.scheduleModel.getInfo();
    if(!info.enablePostRAScheduling)
        return;

    for(auto& block : func.blocks()) {
        postRAScheduleBlock(*block, ctx);
    }
}

ScheduleState::ScheduleState(const std::unordered_map<const MIRInst*, std::unordered_map<uint32_t, uint32_t>>& regRenameMap)
    : mCycleCount{ 0U }, mRegRenameMap{ regRenameMap }, mIssuedFlag{ 0U } {}

uint32_t ScheduleState::queryRegisterLatency(const MIRInst& inst, uint32_t idx) const {
    if(!inst.getOperand(idx).isReg())
        return 0;
    auto reg = mRegRenameMap.at(&inst).at(idx);
    if(auto iter = mRegisterAvailableTime.find(reg); iter != mRegisterAvailableTime.end())
        if(iter->second > mCycleCount)
            return iter->second - mCycleCount;
    return 0;
}
bool ScheduleState::isPipelineReady(uint32_t pipelineId) const {
    if(auto iter = mNextPipelineAvailable.find(pipelineId); iter != mNextPipelineAvailable.end())
        return mCycleCount >= iter->second;
    return true;
}
bool ScheduleState::isAvailable(uint32_t mask) const {
    return (mIssuedFlag & mask) != mask;
}

void ScheduleState::setIssued(uint32_t mask) {
    mIssuedFlag |= mask;
}
void ScheduleState::resetPipeline(uint32_t pipelineId, uint32_t duration) {
    mNextPipelineAvailable[pipelineId] = mCycleCount + duration;
}
void ScheduleState::makeRegisterReady(const MIRInst& inst, uint32_t idx, uint32_t latency) {
    auto reg = mRegRenameMap.at(&inst).at(idx);
    mRegisterAvailableTime[reg] = mCycleCount + latency;
}

uint32_t ScheduleState::nextCycle() {
    ++mCycleCount;
    mIssuedFlag = 0;
    return mCycleCount;
}
CMMC_MIR_NAMESPACE_END

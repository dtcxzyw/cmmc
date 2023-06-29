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
#include <cmmc/CodeGen/ScheduleModel.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <queue>
#include <unordered_map>
#include <unordered_set>

CMMC_MIR_NAMESPACE_BEGIN

static void preRAScheduleBlock(MIRBasicBlock& block, const CodeGenContext& ctx) {
    std::unordered_map<MIRInst*, std::unordered_set<MIRInst*>> antiDeps;
    std::unordered_map<MIRInst*, uint32_t> degrees;
    std::unordered_map<MIROperand, MIRInst*, MIROperandHasher> lastDef;
    std::unordered_map<MIROperand, std::vector<MIRInst*>, MIROperandHasher> lastRef;
    MIRInst *lastSideEffect = nullptr, *lastRename = nullptr, *lastInst = nullptr;
    auto addDep = [&](MIRInst* u, MIRInst* v) {
        if(u == v)
            return;
        if(antiDeps[v].insert(u).second)
            ++degrees[u];
    };
    auto isAllocatableType = [&](OperandType type) { return type <= OperandType::Float32; };
    struct InstScore final {
        int32_t offset = 0;
        int32_t weight = 1;
        int32_t maxSuccWeight = 0;
        int32_t maxPredWeight = 0;

        [[nodiscard]] int32_t getScore() const {
            return offset - maxSuccWeight + maxPredWeight;
        }
    };
    std::unordered_map<MIRInst*, InstScore> instScore;
    for(auto& inst : block.instructions()) {
        if(&inst == &block.instructions().back()) {
            break;
        }
        auto& instInfo = ctx.instInfo.getInstInfo(inst);

        auto isRenameInst = [&] {
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                    auto& op = inst.getOperand(idx);
                    if(isOperandISAReg(op) && (!ctx.registerInfo || !ctx.registerInfo->isZeroRegister(op.reg())) &&
                       isAllocatableType(op.type())) {
                        return true;
                    }
                }
            }
            return false;
        };
        auto isLockInst = [&] {
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                    auto& op = inst.getOperand(idx);
                    if(isOperandISAReg(op) && (!ctx.registerInfo || !ctx.registerInfo->isZeroRegister(op.reg())) &&
                       isAllocatableType(op.type())) {
                        return true;
                    }
                }
            }
            return false;
        };

        if(lastRename)
            addDep(&inst, lastRename);
        const auto isRename = isRenameInst();
        if(isRename) {
            lastRename = &inst;
            if(lastSideEffect)
                addDep(&inst, lastSideEffect);
        }
        const auto isLock = isLockInst();
        if(isLock && lastInst) {
            addDep(&inst, lastInst);
        }

        // TODO: reorder load/store/call?
        if(requireOneFlag(instInfo.getInstFlag(), InstFlagSideEffect) || isLock) {
            if(lastSideEffect)
                addDep(&inst, lastSideEffect);
            lastSideEffect = &inst;
        }
        auto& score = instScore[&inst];
        if(isRename)
            score.offset += 10000000;
        if(isLock)
            score.offset -= 10000000;
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                auto& op = inst.getOperand(idx);
                if(isOperandVRegOrISAReg(op)) {
                    if(auto it = lastDef.find(op); it != lastDef.end()) {
                        addDep(&inst, it->second);
                    }
                    lastRef[op].push_back(&inst);
                }
            }
        }
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                auto& op = inst.getOperand(idx);
                if(isOperandVRegOrISAReg(op)) {
                    if(auto it = lastRef.find(op); it != lastRef.end()) {
                        for(auto ref : it->second)
                            addDep(&inst, ref);
                    }
                    lastDef[op] = &inst;
                    lastRef[op] = { &inst };
                }
            }
        }
        lastInst = &inst;
    }

    // calc weight
    {
        auto deg = degrees;
        std::queue<MIRInst*> q;
        for(auto& inst : block.instructions()) {
            if(&inst == &block.instructions().back()) {
                break;
            }
            if(deg[&inst] == 0)
                q.push(&inst);
        }
        while(!q.empty()) {
            auto u = q.front();
            q.pop();
            const auto w = instScore[u].weight;

            for(auto v : antiDeps[u]) {
                auto& score = instScore[v];
                score.weight += w;
                if(--deg[v] == 0)
                    q.push(v);
            }
        }

        for(auto& inst : block.instructions()) {
            if(&inst == &block.instructions().back()) {
                break;
            }
            auto& score = instScore[&inst];
            // auto& instInfo = ctx.instInfo.getInstInfo(inst);
            // instInfo.print(std::cerr, inst, true);
            // std::cerr << " -> " << score.weight << '\n';
            for(auto v : antiDeps[&inst]) {
                auto& sv = instScore[v];
                score.maxSuccWeight = std::max(score.maxSuccWeight, sv.weight);
                sv.maxPredWeight = std::max(sv.maxPredWeight, score.weight);
            }
        }
    }

    std::priority_queue<std::pair<int32_t, MIRInst*>> q;

    auto dumpEnqueue = [&](MIRInst& inst) {
        auto& instInfo = ctx.instInfo.getInstInfo(inst);
        instInfo.print(std::cerr << "enqueue ", inst, true);
        std::cerr << " with " << instScore.at(&inst).getScore() << std::endl;
    };
    auto dumpDequeue = [&](MIRInst& inst, int32_t score) {
        auto& instInfo = ctx.instInfo.getInstInfo(inst);
        instInfo.print(std::cerr << "dequeue ", inst, true);
        std::cerr << " with " << score << std::endl;
    };
    CMMC_UNUSED(dumpEnqueue);
    CMMC_UNUSED(dumpDequeue);

    for(auto& inst : block.instructions()) {
        if(&inst == &block.instructions().back()) {
            break;
        }
        if(degrees[&inst] == 0) {
            // dumpEnqueue(inst);
            q.emplace(instScore.at(&inst).getScore(), &inst);
        }
    }

    std::list<MIRInst> newInsts;
    while(!q.empty()) {
        auto top = q.top().second;
        // dumpDequeue(*top, q.top().first);
        q.pop();

        newInsts.push_back(*top);

        for(auto succ : antiDeps[top]) {
            if(--degrees[succ] == 0) {
                // dumpEnqueue(*succ);
                q.emplace(instScore[succ].getScore(), succ);
            }
        }
    }

    newInsts.push_back(block.instructions().back());

    assert(newInsts.size() == block.instructions().size());
    newInsts.swap(block.instructions());
}

void preRASchedule(MIRFunction& func, const CodeGenContext& ctx) {
    // FIXME
    return;
    // func.dump(std::cerr, ctx);
    for(auto& block : func.blocks()) {
        preRAScheduleBlock(*block, ctx);
    }
    // func.dump(std::cerr, ctx);
}

void postRASchedule(MIRFunction& func, const CodeGenContext& ctx) {
    CMMC_UNUSED(func);
    CMMC_UNUSED(ctx);
    return;
}
CMMC_MIR_NAMESPACE_END

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

#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/LiveInterval.hpp>
#include <cmmc/CodeGen/MIR.hpp>
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

// Local RA, without live range analysis

CMMC_MIR_NAMESPACE_BEGIN

static void fastAllocate(MIRFunction& mfunc, CodeGenContext& ctx, IPRAUsageCache& infoIPRA) {
    // mfunc.dump(std::cerr, ctx);

    auto liveInterval = calcLiveIntervals(mfunc, ctx);
    struct VirtualRegUseInfo final {
        std::unordered_set<MIRBasicBlock*> uses;
        std::unordered_set<MIRBasicBlock*> defs;
    };
    std::unordered_map<MIROperand, VirtualRegUseInfo, MIROperandHasher> useDefInfo;
    std::unordered_map<MIROperand, MIROperand, MIROperandHasher> isaRegHint;

    for(auto& block : mfunc.blocks()) {
        for(auto& inst : block->instructions()) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);

            if(inst.opcode() == InstCopyFromReg) {
                isaRegHint[inst.getOperand(0)] = inst.getOperand(1);
            }
            if(inst.opcode() == InstCopyToReg) {
                isaRegHint[inst.getOperand(1)] = inst.getOperand(0);
            }

            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                auto& op = inst.getOperand(idx);
                if(!isOperandVReg(op)) {
                    continue;
                }
                if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                    useDefInfo[op].uses.insert(block.get());
                }
                if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                    useDefInfo[op].defs.insert(block.get());
                }
            }
        }
    }

    // find all cross-block vregs and allocate stack slots for them
    std::unordered_map<MIROperand, MIROperand, MIROperandHasher> stackMap;
    std::unordered_map<MIROperand, MIROperand, MIROperandHasher> isaRegStackMap;

    {
        for(auto& [reg, info] : useDefInfo) {
            if(info.uses.empty() || info.defs.empty()) {
                continue;  // invalid
            }
            if(info.uses.size() == 1 && info.defs.size() == 1 && *info.uses.cbegin() == *info.defs.cbegin()) {
                continue;  // local
            }

            const auto size = getOperandSize(ctx.registerInfo->getCanonicalizedRegisterType(reg.type()));
            const auto storage = mfunc.addStackObject(ctx, size, size, 0, StackObjectUsage::RegSpill);
            stackMap[reg] = storage;
        }
    }

    for(auto& block : mfunc.blocks()) {
        std::unordered_map<MIROperand, MIROperand, MIROperandHasher> localStackMap;
        std::unordered_map<MIROperand, std::vector<MIROperand>, MIROperandHasher> currentMap;
        std::unordered_map<MIROperand, MIROperand, MIROperandHasher> physMap;
        std::unordered_map<uint32_t, std::queue<MIROperand>> allocationQueue;
        std::unordered_set<MIROperand, MIROperandHasher> protectedLockedISAReg;  // retvals/callee arguments
        std::unordered_set<MIROperand, MIROperandHasher> underRenamedISAReg;     // callee retvals/arguments

        MultiClassRegisterSelector selector{ *ctx.registerInfo };

        const auto getStackStorage = [&](const MIROperand& op) {
            if(const auto iter = localStackMap.find(op); iter != localStackMap.cend()) {
                return iter->second;
            }
            auto& ref = localStackMap[op];
            if(const auto iter = stackMap.find(op); iter != stackMap.cend()) {
                return ref = iter->second;
            }
            const auto size = getOperandSize(ctx.registerInfo->getCanonicalizedRegisterType(op.type()));
            const auto storage = mfunc.addStackObject(ctx, size, size, 0, StackObjectUsage::RegSpill);
            return ref = storage;
        };
        const auto getDataMap = [&](const MIROperand& op) -> std::vector<MIROperand>& {
            auto& map = currentMap[op];
            if(map.empty())
                map.push_back(getStackStorage(op));
            return map;
        };

        auto& instructions = block->instructions();

        std::unordered_set<MIROperand, MIROperandHasher> dirtyVRegs;
        auto& liveIntervalInfo = liveInterval.blockInfo[block.get()];

        const auto isAllocatableType = [](OperandType type) { return type <= OperandType::Float32; };
        const auto collectUnderRenamedISARegs = [&](std::list<MIRInst>::iterator it) {
            while(it != instructions.end()) {
                const auto& inst = *it;
                auto& instInfo = ctx.instInfo.getInstInfo(inst);
                bool hasReg = false;
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                    const auto& op = inst.getOperand(idx);
                    if(isOperandISAReg(op) && isAllocatableType(op.type()) && (instInfo.getOperandFlag(idx) & OperandFlagUse)) {
                        underRenamedISAReg.insert(op);
                        hasReg = true;
                    }
                }
                if(hasReg)
                    ++it;
                else
                    break;
            }
        };

        collectUnderRenamedISARegs(instructions.begin());

        for(auto iter = instructions.begin(); iter != instructions.end();) {
            const auto next = std::next(iter);

            const auto evictVReg = [&](MIROperand operand) {
                assert(isOperandVReg(operand));
                auto& map = getDataMap(operand);
                MIROperand isaReg;
                bool alreadyInStack = false;
                for(auto& reg : map) {
                    if(isStackObject(reg.reg())) {
                        alreadyInStack = true;
                    }
                    if(isISAReg(reg.reg()))
                        isaReg = reg;
                }
                if(isaReg.isUnused())
                    return;
                physMap.erase(isaReg);
                const auto stackStorage = getStackStorage(operand);
                if(!alreadyInStack) {
                    // spill to stack
                    instructions.insert(iter, MIRInst{ InstStoreRegToStack }.setOperand<0>(isaReg).setOperand<1>(stackStorage));
                }
                map = { stackStorage };
            };

            std::unordered_set<MIROperand, MIROperandHasher> protect;
            const auto isProtected = [&](const MIROperand& isaReg) {
                assert(isOperandISAReg(isaReg));
                return protect.count(isaReg) || protectedLockedISAReg.count(isaReg) || underRenamedISAReg.count(isaReg);
            };
            const auto getFreeReg = [&](const MIROperand& operand) -> MIROperand {
                const auto regClass = ctx.registerInfo->getAllocationClass(operand.type());
                auto& q = allocationQueue[regClass];
                MIROperand isaReg;

                const auto getFreeRegister = [&] {
                    std::vector<MIROperand> temp;
                    do {
                        auto reg = selector.getFreeRegister(operand.type());
                        if(reg.isUnused()) {
                            for(auto op : temp)
                                selector.markAsDiscarded(op);
                            return MIROperand{};
                        }
                        if(isProtected(reg)) {
                            temp.push_back(reg);
                            selector.markAsUsed(reg);
                        } else {
                            for(auto op : temp)
                                selector.markAsDiscarded(op);
                            return reg;
                        }
                    } while(true);
                };

                if(auto hintIter = isaRegHint.find(operand);
                   hintIter != isaRegHint.end() && selector.isFree(hintIter->second) && !isProtected(hintIter->second)) {
                    isaReg = hintIter->second;
                } else if(auto reg = getFreeRegister(); !reg.isUnused()) {
                    isaReg = reg;
                } else {
                    // evict
                    assert(!q.empty());
                    isaReg = q.front();
                    while(isProtected(isaReg)) {
                        assert(q.size() != 1);
                        q.pop();
                        q.push(isaReg);
                        isaReg = q.front();
                    }
                    q.pop();
                    selector.markAsDiscarded(isaReg);
                }
                if(auto it = physMap.find(isaReg); it != physMap.cend())
                    evictVReg(it->second);
                assert(!isProtected(isaReg));

                // std::cerr << (operand.reg() - virtualRegBegin) << " -> " << isaReg.reg() << std::endl;

                q.push(isaReg);
                physMap[isaReg] = operand;
                selector.markAsUsed(isaReg);
                return isaReg;
            };

            std::unordered_set<MIROperand, MIROperandHasher> releaseVRegs;

            const auto use = [&](MIROperand& op) {
                if(!isOperandVReg(op)) {
                    if(isOperandISAReg(op) && isAllocatableType(op.type())) {
                        underRenamedISAReg.erase(op);
                    }
                    return;
                }
                if(op.regFlag() & RegisterFlagDead)
                    releaseVRegs.insert(op);

                auto& map = getDataMap(op);
                MIROperand stackStorage;
                for(auto& reg : map) {
                    if(!isStackObject(reg.reg())) {
                        // loaded
                        op = reg;
                        protect.insert(reg);
                        return;
                    }
                    stackStorage = reg;
                }
                // load from stack
                assert(!stackStorage.isUnused());
                const auto reg = getFreeReg(op);
                instructions.insert(iter, MIRInst{ InstLoadRegFromStack }.setOperand<0>(reg).setOperand<1>(stackStorage));
                map.push_back(reg);
                op = reg;
                protect.insert(reg);
            };

            const auto def = [&](MIROperand& op) {
                if(!isOperandVReg(op)) {
                    if(isOperandISAReg(op) && isAllocatableType(op.type())) {
                        protectedLockedISAReg.insert(op);
                        if(auto it = physMap.find(op); it != physMap.cend())
                            evictVReg(it->second);
                    }
                    return;
                }

                if(stackMap.count(op))
                    dirtyVRegs.insert(op);

                auto& map = getDataMap(op);
                MIROperand stackStorage;
                for(auto& reg : map) {
                    if(!isStackObject(reg.reg())) {
                        op = reg;
                        map = { reg };  // mark other storage dirty
                        return;
                    }
                    stackStorage = reg;
                }
                const auto reg = getFreeReg(op);
                map = { reg };
                op = reg;
            };

            const auto beforeBranch = [&]() {
                // write back all out dirty vregs into stack slots before branch
                for(auto dirty : dirtyVRegs) {
                    if(liveIntervalInfo.outs.count(dirty.reg()))
                        evictVReg(dirty);
                }
            };

            auto& inst = *iter;
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            // instInfo.print(std::cerr, inst, true);
            // std::cerr << '\n';
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                if(auto flag = instInfo.getOperandFlag(idx); (flag & OperandFlagUse) || (flag & OperandFlagDef)) {
                    auto& op = inst.getOperand(idx);
                    if(!isOperandVReg(op)) {
                        if(isOperandISAReg(op))
                            protect.insert(op);
                    }
                }
            }
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                if(instInfo.getOperandFlag(idx) & OperandFlagUse)
                    use(inst.getOperand(idx));
            }
            if(requireFlag(instInfo.getInstFlag(), InstFlagCall)) {
                std::vector<MIROperand> savedVRegs;
                const IPRAInfo* calleeUsage = nullptr;
                if(auto symbol = inst.getOperand(0).reloc()) {
                    calleeUsage = infoIPRA.query(symbol);
                }
                for(auto& [p, v] : physMap) {
                    if(ctx.frameInfo.isCallerSaved(p)) {
                        if(calleeUsage && !calleeUsage->count(p))
                            continue;
                        savedVRegs.push_back(v);
                    }
                }
                for(auto v : savedVRegs)
                    evictVReg(v);
                protectedLockedISAReg.clear();
                collectUnderRenamedISARegs(next);
            }
            protect.clear();
            for(auto operand : releaseVRegs) {
                // release dead vregs
                auto& map = getDataMap(operand);
                for(auto& reg : map) {
                    if(isISAReg(reg.reg())) {
                        physMap.erase(reg);
                        selector.markAsDiscarded(reg);
                    }
                }
                map.clear();
            }

            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                if(instInfo.getOperandFlag(idx) & OperandFlagDef)
                    def(inst.getOperand(idx));
            }
            if(requireFlag(instInfo.getInstFlag(), InstFlagBranch)) {
                beforeBranch();
            }

            iter = next;
        }

        assert(block->verify(std::cerr, ctx));
    }

    // mfunc.dump(std::cerr, ctx);
}

CMMC_REGISTER_ALLOCATOR("fast", fastAllocate);

CMMC_MIR_NAMESPACE_END

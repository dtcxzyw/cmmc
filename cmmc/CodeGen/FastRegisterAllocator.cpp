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

// Local RA, without live range analysis

CMMC_MIR_NAMESPACE_BEGIN

// TODO: use argument/retval regs
static void fastAllocate(MIRFunction& mfunc, CodeGenContext& ctx, IPRAUsageCache& infoIPRA) {
    struct VirtualRegUseInfo final {
        std::unordered_set<MIRBasicBlock*> uses;
        std::unordered_set<MIRBasicBlock*> defs;
    };
    std::unordered_map<MIROperand, VirtualRegUseInfo, MIROperandHasher> useDefInfo;
    std::unordered_map<MIROperand, MIROperand, MIROperandHasher> isaRegHint;

    for(auto& block : mfunc.blocks()) {
        for(auto& inst : block->instructions()) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());

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
    std::unordered_set<MIROperand, MIROperandHasher> crossBlockSpilledStackObjects;

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
            crossBlockSpilledStackObjects.insert(storage);
        }
    }

    for(auto& block : mfunc.blocks()) {
        std::unordered_map<MIROperand, MIROperand, MIROperandHasher> localStackMap;
        std::unordered_map<MIROperand, std::vector<MIROperand>, MIROperandHasher> currentMap;
        std::unordered_map<MIROperand, MIROperand, MIROperandHasher> physMap;
        std::unordered_map<uint32_t, std::queue<MIROperand>> allocationQueue;

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

            const auto getFreeReg = [&](const MIROperand& operand) -> MIROperand {
                const auto regClass = ctx.registerInfo->getAllocationClass(operand.type());
                auto& q = allocationQueue[regClass];  // TODO: move to spill strategy?
                MIROperand isaReg;
                if(auto hintIter = isaRegHint.find(operand); hintIter != isaRegHint.end() && selector.isFree(hintIter->second)) {
                    isaReg = hintIter->second;
                } else if(auto reg = selector.getFreeRegister(operand.type()); !reg.isUnused()) {
                    isaReg = reg;
                } else {
                    // evict
                    isaReg = q.front();
                    q.pop();
                    selector.markAsDiscarded(isaReg);
                    if(auto it = physMap.find(isaReg); it != physMap.cend())
                        evictVReg(it->second);
                }

                q.push(isaReg);
                physMap[isaReg] = operand;
                selector.markAsUsed(isaReg);
                return isaReg;
            };

            const auto use = [&](MIROperand& op) {
                if(!isOperandVReg(op))
                    return;

                auto& map = getDataMap(op);
                MIROperand stackStorage;
                for(auto& reg : map) {
                    if(!isStackObject(reg.reg())) {
                        // loaded
                        op = reg;
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
            };

            const auto def = [&](MIROperand& op) {
                if(!isOperandVReg(op))
                    return;

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
                // write back all dirty vregs into stack slots before branch
                for(auto dirty : dirtyVRegs) {
                    evictVReg(dirty);
                }
            };

            auto& inst = *iter;
            auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
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

    // TODO: move PEI
    // callee saved
    std::unordered_map<MIROperand, MIROperand, MIROperandHasher> overwrited;
    for(auto& block : mfunc.blocks())
        forEachDefOperands(*block, ctx, [&](const MIROperand& op) {
            if(op.isUnused())
                return;
            if(op.isReg() && isISAReg(op.reg()) && ctx.frameInfo.isCalleeSaved(op)) {
                if(!overwrited.count(op)) {
                    const auto size = getOperandSize(ctx.registerInfo->getCanonicalizedRegisterType(op.type()));
                    const auto alignment = size;
                    const auto storage = mfunc.addStackObject(ctx, size, alignment, 0, StackObjectUsage::CalleeSaved);
                    overwrited.emplace(op, storage);
                }
            }
        });

    for(auto& block : mfunc.blocks()) {
        auto& instructions = block->instructions();
        if(&block == &mfunc.blocks().front()) {
            // backup
            for(auto [p, s] : overwrited)
                instructions.push_front(MIRInst{ InstStoreRegToStack }.setOperand<0>(p).setOperand<1>(s));
        } else {
            // restore
            auto& terminator = instructions.back();
            auto& instInfo = ctx.instInfo.getInstInfo(terminator.opcode());
            if(requireFlag(instInfo.getInstFlag(), InstFlagReturn)) {
                const auto pos = std::prev(instructions.end());
                for(auto [p, s] : overwrited) {
                    instructions.insert(pos, MIRInst{ InstLoadRegFromStack }.setOperand<0>(p).setOperand<1>(s));
                }
            }
        }
    }
}

CMMC_REGISTER_ALLOCATOR("fast", fastAllocate);

CMMC_MIR_NAMESPACE_END

/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2022 Yingwei Zheng and Bingzhen Wang
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
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/GMIRCFGAnalysis.hpp>
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cstdint>
#include <memory>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <variant>
#include <vector>

// Local RA, without live range analysis

CMMC_NAMESPACE_BEGIN

static void fastAllocate(GMIRFunction& mfunc, const Target& target, IPRAUsageCache& infoIPRA) {
    auto& dataLayout = target.getDataLayout();

    struct VirtualRegUseInfo final {
        std::unordered_set<GMIRBasicBlock*> uses;
        std::unordered_set<GMIRBasicBlock*> defs;
    };
    std::unordered_map<Operand, VirtualRegUseInfo, OperandHasher> useDefInfo;

    for(auto& block : mfunc.blocks()) {
        forEachUseOperands(*block, [&](GMIRInst&, Operand& op) {
            if(op.addressSpace == AddressSpace::VirtualReg)
                useDefInfo[op].uses.insert(block.get());
        });
        forEachDefOperands(*block, [&](Operand& op) {
            if(op.addressSpace == AddressSpace::VirtualReg)
                useDefInfo[op].defs.insert(block.get());
        });
    }

    // find all cross-block vregs and allocate stack slots for them
    std::unordered_map<Operand, Operand, OperandHasher> stackMap;

    auto& vreg = mfunc.pools().pools[AddressSpace::VirtualReg];
    auto& stack = mfunc.pools().pools[AddressSpace::Stack];
    {
        for(auto& [reg, info] : useDefInfo) {
            if(info.uses.empty() || info.defs.empty()) {
                continue;  // invalid
            }
            if(info.uses.size() == 1 && info.defs.size() == 1 && *info.uses.cbegin() == *info.defs.cbegin()) {
                continue;  // local
            }

            stackMap[reg] = stack.allocate(vreg.getType(reg));
        }
    }

    for(auto& block : mfunc.blocks()) {
        auto& usedStackObjects = block->usedStackObjects();
        for(auto [v, s] : stackMap) {
            CMMC_UNUSED(v);
            assert(s.addressSpace == AddressSpace::Stack);
            usedStackObjects.insert(s);
        }

        std::unordered_map<Operand, Operand, OperandHasher> localStackMap;
        std::unordered_map<Operand, std::vector<Operand>, OperandHasher> currentMap;
        std::unordered_map<Operand, Operand, OperandHasher> physMap;
        std::unordered_map<uint32_t, std::queue<uint32_t>> allocationQueue;

        const auto usage = target.newRegisterUsage();

        const auto getStackStorage = [&](const Operand& op) {
            if(const auto iter = localStackMap.find(op); iter != localStackMap.cend()) {
                return iter->second;
            }
            auto& ref = localStackMap[op];
            if(const auto iter = stackMap.find(op); iter != stackMap.cend()) {
                return ref = iter->second;
            }
            const auto storage = stack.allocate(vreg.getType(op));
            assert(storage.addressSpace == AddressSpace::Stack);
            usedStackObjects.insert(storage);
            return ref = storage;
        };
        const auto getDataMap = [&](const Operand& op) -> std::vector<Operand>& {
            auto& map = currentMap[op];
            if(map.empty())
                map.push_back(getStackStorage(op));
            return map;
        };

        auto& instructions = block->instructions();

        std::unordered_set<Operand, OperandHasher> dirtyVRegs;

        for(auto iter = instructions.begin(); iter != instructions.end();) {
            const auto next = std::next(iter);

            const auto evictVReg = [&](const Operand& operand) {
                assert(operand.addressSpace == AddressSpace::VirtualReg);
                auto& map = getDataMap(operand);
                Operand physReg = unusedOperand;
                bool alreadyInStack = false;
                for(auto& reg : map) {
                    if(reg.addressSpace == AddressSpace::Stack) {
                        alreadyInStack = true;
                    }
                    if(reg.addressSpace >= AddressSpace::Custom)
                        physReg = reg;
                }
                assert(physReg != unusedOperand);
                physMap.erase(physReg);
                const auto stackStorage = getStackStorage(operand);
                if(!alreadyInStack) {
                    const auto size = vreg.getType(operand)->getSize(dataLayout);
                    instructions.insert(
                        iter, CopyMInst{ physReg, false, 0U, stackStorage, true, 0U, static_cast<uint32_t>(size), false });
                }
                map = { stackStorage };
            };
            /*
            const auto evictPhysReg = [&](const Operand& operand) {
                assert(operand.addressSpace >= AddressSpace::Custom);
                if(const auto iter = physMap.find(operand); iter != physMap.cend())
                    evictVReg(iter->second);
            };*/

            const auto getFreeReg = [&](const Operand& operand) -> Operand {
                const auto type = vreg.getType(operand);
                const auto regClass = usage->getRegisterClass(type);
                auto& q = allocationQueue[regClass];
                Operand physReg;
                if(auto reg = usage->getFreeRegister(regClass); reg != unusedOperand) {
                    physReg = reg;
                } else {
                    // evict
                    physReg = Operand{ regClass, q.front() };
                    q.pop();
                    usage->markAsDiscarded(physReg);
                    if(auto it = physMap.find(physReg); it != physMap.cend())
                        evictVReg(it->second);
                }

                q.push(physReg.id);
                physMap[physReg] = operand;
                usage->markAsUsed(physReg);
                return physReg;
            };

            const auto use = [&](Operand& op) {
                if(op.addressSpace != AddressSpace::VirtualReg)
                    return;

                auto& map = getDataMap(op);
                Operand stackStorage = unusedOperand;
                for(auto& reg : map) {
                    if(reg.addressSpace != AddressSpace::Stack) {
                        // loaded
                        op = reg;
                        return;
                    }
                    stackStorage = reg;
                }
                // load from stack
                assert(stackStorage != unusedOperand);
                const auto reg = getFreeReg(op);
                const auto size = vreg.getType(op)->getSize(dataLayout);
                instructions.insert(iter,
                                    CopyMInst{ stackStorage, true, 0U, reg, false, 0U, static_cast<uint32_t>(size), false });
                map.push_back(reg);
                op = reg;
            };

            const auto def = [&](Operand& op) {
                if(op.addressSpace != AddressSpace::VirtualReg)
                    return;

                if(stackMap.count(op))
                    dirtyVRegs.insert(op);

                auto& map = getDataMap(op);
                Operand stackStorage = unusedOperand;
                for(auto& reg : map) {
                    if(reg.addressSpace != AddressSpace::Stack) {
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
                // write back into stack slots before branch
                for(auto dirty : dirtyVRegs) {
                    evictVReg(dirty);
                }
            };

            std::visit(Overload{ [&](CopyMInst& inst) {
                                    use(inst.src);
                                    if(inst.indirectDst)
                                        use(inst.dst);
                                    else
                                        def(inst.dst);
                                },
                                 [&](ConstantMInst& inst) { def(inst.dst); }, [&](GlobalAddressMInst& inst) { def(inst.dst); },
                                 [&](UnaryArithmeticMInst& inst) {
                                     use(inst.src);
                                     def(inst.dst);
                                 },
                                 [&](BinaryArithmeticMInst& inst) {
                                     use(inst.lhs);
                                     use(inst.rhs);
                                     def(inst.dst);
                                 },
                                 [&](ArithmeticIntrinsicMInst& inst) {
                                     for(auto& op : inst.src)
                                         use(op);
                                     def(inst.dst);
                                 },
                                 [&](CompareMInst& inst) {
                                     use(inst.lhs);
                                     use(inst.rhs);
                                     def(inst.dst);
                                 },
                                 [&](BranchCompareMInst& inst) {
                                     use(inst.lhs);
                                     use(inst.rhs);
                                     beforeBranch();
                                 },
                                 [&](BranchMInst&) { beforeBranch(); },
                                 [&](CallMInst& inst) {
                                     // TODO: move to PEI pass
                                     // caller saved
                                     std::vector<Operand> savedVRegs;
                                     const IPRAInfo* calleeUsage = nullptr;
                                     if(auto symbol = std::get_if<GMIRSymbol*>(&inst.callee)) {
                                         calleeUsage = infoIPRA.query(*symbol);
                                     }
                                     for(auto& [p, v] : physMap) {
                                         if(target.isCallerSaved(p)) {
                                             if(calleeUsage && !calleeUsage->count(p))
                                                 continue;
                                             savedVRegs.push_back(v);
                                         }
                                     }
                                     for(auto v : savedVRegs)
                                         evictVReg(v);

                                     def(inst.dst);
                                 },
                                 [&](RetMInst& inst) { use(inst.retVal); },
                                 [&](ControlFlowIntrinsicMInst& inst) {
                                     use(inst.src);
                                     def(inst.dst);
                                 },
                                 [](auto&) {} },
                       *iter);

            iter = next;
        }
    }

    // callee saved
    std::unordered_map<Operand, Operand, OperandHasher> overwrited;
    for(auto& block : mfunc.blocks())
        forEachDefOperands(*block, [&](const Operand& op) {
            if(op == unusedOperand)
                return;
            if(op.addressSpace >= AddressSpace::Custom && target.isCalleeSaved(op)) {
                if(!overwrited.count(op)) {
                    const auto storage = stack.allocate(IntegerType::get(target.getRegisterBitWidth(op.addressSpace)));
                    overwrited.emplace(op, storage);
                }
            }
        });

    for(auto& block : mfunc.blocks()) {
        auto& instructions = block->instructions();
        for(auto [p, s] : overwrited) {
            CMMC_UNUSED(p);
            assert(s.addressSpace == AddressSpace::Stack);
            block->usedStackObjects().insert(s);
        }

        if(&block == &mfunc.blocks().front()) {
            // backup
            for(auto [p, s] : overwrited) {
                const auto size = target.getRegisterBitWidth(p.addressSpace) / 8U;
                instructions.push_front(CopyMInst{ p, false, 0, s, true, 0, static_cast<uint32_t>(size), false });
            }
        } else {
            // restore
            auto& terminator = instructions.back();
            if(std::holds_alternative<RetMInst>(terminator)) {
                const auto pos = std::prev(instructions.end());
                for(auto [p, s] : overwrited) {
                    const auto size = target.getRegisterBitWidth(p.addressSpace) / 8U;
                    instructions.insert(pos, CopyMInst{ s, true, 0, p, false, 0, static_cast<uint32_t>(size), false });
                }
            }
        }
    }
}

CMMC_REGISTER_ALLOCATOR("fast", fastAllocate);

CMMC_NAMESPACE_END

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
#include <memory>
#include <unordered_map>
#include <unordered_set>
#include <variant>

// Local RA, without live range analysis

CMMC_NAMESPACE_BEGIN

static void fastAllocate(GMIRFunction& mfunc, const Target& target) {
    CMMC_UNUSED(target);

    struct VirtualRegUseInfo final {
        std::unordered_set<GMIRBasicBlock*> uses;
        std::unordered_set<GMIRBasicBlock*> defs;
    };
    std::unordered_map<Operand, VirtualRegUseInfo, OperandHasher> useDefInfo;

    for(auto& block : mfunc.blocks()) {
        forEachUseOperands(*block, [&](Operand& op) {
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
        std::unordered_map<Operand, Operand, OperandHasher> localStackMap;
        std::unordered_map<Operand, std::vector<Operand>, OperandHasher> currentMap;
        std::unordered_map<Operand, Operand, OperandHasher> currentAlloc;

        const auto getStackStorage = [&](const Operand& op) {
            if(const auto iter = localStackMap.find(op); iter != localStackMap.cend()) {
                return iter->second;
            }
            auto& ref = localStackMap[op];
            if(const auto iter = stackMap.find(op); iter != stackMap.cend()) {
                return ref = iter->second;
            }
            return ref = stack.allocate(vreg.getType(op));
        };
        const auto getDataMap = [&](Operand& op) -> std::vector<Operand>& {
            auto& map = currentMap[op];
            if(map.empty())
                map.push_back(getStackStorage(op));
            return map;
        };
        const auto getFreeReg = []() -> Operand { reportNotImplemented(); };

        auto& instructions = block->instructions();
        for(auto iter = instructions.begin(); iter != instructions.end();) {
            const auto next = std::next(iter);

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
                    } else
                        stackStorage = reg;
                }
                // load from stack
                assert(stackStorage != unusedOperand);
                const auto reg = getFreeReg();
                instructions.insert(next, CopyMInst{ stackStorage, true, 0U, reg, false, 0U });
                map.push_back(reg);
                currentAlloc[reg] = op;
                op = reg;
            };

            std::unordered_set<Operand, OperandHasher> dirtyVRegs;

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
                    } else
                        stackStorage = reg;
                }
                const auto reg = getFreeReg();
                map = { reg };
                currentAlloc[reg] = op;
                op = reg;
            };

            const auto beforeBranch = [&]() {
                // write back into stack slots before branch
                for(auto dirty : dirtyVRegs) {
                    const auto& map = getDataMap(dirty);
                    bool hasWriteBack = false;
                    Operand physReg = unusedOperand;
                    for(auto& reg : map) {
                        if(reg.addressSpace == AddressSpace::Stack) {
                            hasWriteBack = true;
                            break;
                        } else
                            physReg = reg;
                    }
                    if(!hasWriteBack) {
                        const auto stackStorage = getStackStorage(dirty);
                        instructions.insert(iter, CopyMInst{ physReg, false, 0U, stackStorage, true, 0U });
                    }
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
                                 [&](BranchMInst&) { beforeBranch(); }, [&](CallMInst& inst) { def(inst.dst); },
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
}

CMMC_REGISTER_ALLOCATOR("fast", fastAllocate);

CMMC_NAMESPACE_END

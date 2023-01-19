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

#include "cmmc/CodeGen/DataLayout.hpp"
#include "cmmc/Transforms/TransformPass.hpp"
#include <algorithm>
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Type.hpp>
#include <cstdint>
#include <iostream>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <variant>

// TODO: stack coloring

CMMC_NAMESPACE_BEGIN

struct StackObjectInterval final {
    uint32_t begin;
    uint32_t end;
};

using Intervals = std::unordered_map<Operand, StackObjectInterval, OperandHasher>;
struct Slot final {
    uint32_t color;
    uint32_t end;

    bool operator<(const Slot& rhs) const noexcept {
        return end > rhs.end;
    }
};

static std::pair<uint32_t, std::unordered_map<Operand, uint32_t, OperandHasher>>
calcIntervalPartition(std::vector<std::pair<Operand, StackObjectInterval>>& intervals) {
    uint32_t colorCount = 0;
    std::unordered_map<Operand, uint32_t, OperandHasher> color;

    std::sort(intervals.begin(), intervals.end(),
              [](const auto& lhs, const auto& rhs) { return lhs.second.begin < rhs.second.begin; });

    std::priority_queue<Slot> slots;

    for(auto& [operand, interval] : intervals) {
        if(slots.empty() || slots.top().end > interval.begin) {
            // create new slot
            const auto col = colorCount++;
            slots.push({ col, interval.end });
            color.emplace(operand, col);
        } else {
            auto top = slots.top();
            color.emplace(operand, top.color);
            top.end = interval.end;
            slots.pop();
            slots.push(top);
        }
    }

    /*
    std::cerr << "begin" << std::endl;

    for(auto& [operand, interval] : intervals) {
        std::cerr << 'm' << operand.id << ' ' << interval.begin << '-' << interval.end << ' ' << color.at(operand) << std::endl;
    }

    std::cerr << "end" << std::endl;
    */

    return { colorCount, std::move(color) };
}

static std::unordered_map<Operand, uint32_t, OperandHasher>
renameStackObjects(GMIRFunction& func, const VirtualRegPool& stack, const DataLayout& dataLayout, OptimizationLevel optLevel) {
    std::unordered_map<Operand, uint32_t, OperandHasher> mapping;  // same size & alignment

    if(optLevel >= OptimizationLevel::O1) {
        // local reuse for spilled regs

        std::unordered_set<Operand, OperandHasher> uniqueStackObjects;
        {
            std::unordered_map<Operand, GMIRBasicBlock*, OperandHasher> ownerOfStackObjectsForSpilledRegs;
            for(auto& block : func.blocks()) {
                for(auto& stackObject : block->usedStackObjects()) {
                    assert(stackObject.addressSpace == AddressSpace::Stack);
                    const auto type = stack.getType(stackObject);
                    if(!type->isStackStorage() && !stack.getMetadata(stackObject)) {
                        if(auto iter = ownerOfStackObjectsForSpilledRegs.find(stackObject);
                           iter != ownerOfStackObjectsForSpilledRegs.cend())
                            iter->second = nullptr;
                        else {
                            ownerOfStackObjectsForSpilledRegs.emplace(stackObject, block.get());
                        }
                    }
                }
            }
            for(auto& [obj, owner] : ownerOfStackObjectsForSpilledRegs) {
                if(owner) {
                    uniqueStackObjects.insert(obj);
                    // std::cerr << 'm' << obj.id << std::endl;
                }
            }
        }

        uint32_t idx = 0;
        for(auto& block : func.blocks()) {

            auto& instructions = block->instructions();
            const StackObjectInterval initialInterval{ static_cast<uint32_t>(instructions.size()), 0 };

            Intervals intervals;

            for(auto& stackObject : block->usedStackObjects()) {
                if(mapping.count(stackObject))
                    continue;
                assert(stackObject.addressSpace == AddressSpace::Stack);
                const auto type = stack.getType(stackObject);
                if(!type->isStackStorage()) {
                    if(!uniqueStackObjects.count(stackObject)) {
                        mapping.emplace(stackObject, idx++);
                    } else {
                        intervals.emplace(stackObject, initialInterval);
                    }
                }
            }

            uint32_t id = 0;
            auto updateInterval = [&](const Operand& obj) {
                if(obj.addressSpace != AddressSpace::Stack)
                    return;
                if(auto iter = intervals.find(obj); iter != intervals.cend()) {
                    auto& interval = iter->second;
                    interval.begin = std::min(interval.begin, id);
                    interval.end = std::max(interval.end, id + 1);
                }
            };

            // save/restore
            for(auto& inst : instructions) {
                if(std::holds_alternative<CopyMInst>(inst)) {
                    const auto& copy = std::get<CopyMInst>(inst);
                    updateInterval(copy.src);
                    updateInterval(copy.dst);
                }
                ++id;
            }

            // group by size & alignments
            std::unordered_map<uint32_t, std::vector<std::pair<Operand, StackObjectInterval>>> groups;
            for(auto& [obj, interval] : intervals) {
                const auto type = stack.getType(obj);
                const auto size = type->getSize(dataLayout);
                const auto alignment = type->getAlignment(dataLayout);
                const auto key = static_cast<uint32_t>(size) * 1024 + static_cast<uint32_t>(alignment);
                groups[key].emplace_back(obj, interval);
            }

            for(auto& [key, groupedIntervals] : groups) {
                CMMC_UNUSED(key);
                auto [colorCount, color] = calcIntervalPartition(groupedIntervals);

                for(auto& [obj, col] : color)
                    mapping.emplace(obj, idx + col);

                idx += colorCount;
            }
        }

        if(optLevel >= OptimizationLevel::O2) {
            // global reuse
        }
    } else {
        // unique
        uint32_t idx = 0;
        for(auto& block : func.blocks()) {
            for(auto& stackObject : block->usedStackObjects()) {
                if(mapping.count(stackObject))
                    continue;
                assert(stackObject.addressSpace == AddressSpace::Stack);
                const auto type = stack.getType(stackObject);
                if(!type->isStackStorage()) {
                    mapping.emplace(stackObject, idx++);
                }
            }
        }
    }

    return mapping;
}

void allocateStackObjects(GMIRFunction& func, const Target& target, bool hasFuncCall, OptimizationLevel optLevel) {
    // func.dump(std::cerr, target);

    std::unordered_map<Operand, size_t, OperandHasher> usedStackObjects;
    size_t allocationBase = 0;

    const auto alignTo = [&](size_t alignment) { allocationBase = (allocationBase + alignment - 1) / alignment * alignment; };

    auto& dataLayout = target.getDataLayout();
    auto& stack = func.pools().pools[AddressSpace::Stack];

    // args & saved regs
    for(auto& block : func.blocks()) {
        for(auto& stackObject : block->usedStackObjects()) {
            assert(stackObject.addressSpace == AddressSpace::Stack);
            const auto type = stack.getType(stackObject);
            if(type->isStackStorage()) {
                const auto size = type->getSize(dataLayout);
                allocationBase = std::max(allocationBase, size);
                usedStackObjects.emplace(stackObject, 0U);
            }
        }
    }

    alignTo(target.getStackPointerAlignment());
    // ra
    const auto raOffset = allocationBase;
    if(hasFuncCall) {
        allocationBase += dataLayout.getPointerSize();
        alignTo(target.getStackPointerAlignment());
    }

    // locals
    {
        const auto mapping = renameStackObjects(func, stack, dataLayout, optLevel);
        std::unordered_map<uint32_t, size_t> slots;

        for(auto& [stackObject, color] : mapping) {
            if(auto iter = slots.find(color); iter != slots.cend()) {
                usedStackObjects.emplace(stackObject, iter->second);
            } else {
                const auto type = stack.getType(stackObject);
                const auto size = type->getSize(dataLayout);
                alignTo(type->getAlignment(dataLayout));
                slots.emplace(color, allocationBase);
                usedStackObjects.emplace(stackObject, allocationBase);
                allocationBase += size;
            }
        }
    }

    const auto sp = target.getStackPointer();
    const auto replaceStack = [&](Operand& op, int32_t& offset) {
        if(op == sp) {
            // params
            offset += static_cast<int32_t>(allocationBase);
        } else {
            offset += static_cast<int32_t>(usedStackObjects.at(op));
            op = sp;
        }
    };

    for(auto& block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            if(std::holds_alternative<CopyMInst>(inst)) {
                auto& copy = std::get<CopyMInst>(inst);

                if(copy.src.addressSpace == AddressSpace::Stack) {
                    replaceStack(copy.src, copy.srcOffset);
                } else if(copy.dst.addressSpace == AddressSpace::Stack) {
                    replaceStack(copy.dst, copy.dstOffset);
                }
            }
        }
    }

    // prolog & epilog
    alignTo(target.getStackPointerAlignment());

    auto& constantPool = func.pools().pools[AddressSpace::Constant];
    const auto sizeType = IntegerType::get(static_cast<uint32_t>(dataLayout.getPointerSize()) * 8U);
    const auto offset = constantPool.allocate(sizeType);
    constantPool.getMetadata(offset) = ConstantInteger::get(sizeType, static_cast<intmax_t>(allocationBase));
    const auto revOffset = constantPool.allocate(sizeType);
    constantPool.getMetadata(revOffset) = ConstantInteger::get(sizeType, -static_cast<intmax_t>(allocationBase));

    const auto ra = target.getReturnAddress();
    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        if(&block == &func.blocks().front()) {
            // sp -= allocationBase
            instructions.push_front(BinaryArithmeticMInst{ GMIRInstID::Add, sp, revOffset, sp });
            if(hasFuncCall) {
                // store $ra
                instructions.insert(std::next(instructions.cbegin()),
                                    CopyMInst{ ra, false, 0, sp, true, static_cast<int32_t>(raOffset),
                                               static_cast<uint32_t>(dataLayout.getPointerSize()), false });
            }
        }
        const auto& terminator = block->instructions().back();
        if(std::holds_alternative<RetMInst>(terminator)) {
            if(hasFuncCall) {
                // restore $ra
                instructions.insert(std::prev(instructions.end()),
                                    CopyMInst{ sp, true, static_cast<int32_t>(raOffset), ra, false, 0,
                                               static_cast<uint32_t>(dataLayout.getPointerSize()), false });
            }
            // sp += allocationBase
            instructions.insert(std::prev(instructions.end()), BinaryArithmeticMInst{ GMIRInstID::Add, sp, offset, sp });
        }
    }

    // convert copy[reg] dst, sp+k to addi dst, sp, k
    for(auto& block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            if(std::holds_alternative<CopyMInst>(inst)) {
                auto& copy = std::get<CopyMInst>(inst);
                if(!copy.indirectDst && !copy.indirectSrc && copy.srcOffset != 0 && copy.src == sp) {
                    const auto spOffset = constantPool.allocate(sizeType);
                    constantPool.getMetadata(spOffset) = ConstantInteger::get(sizeType, static_cast<intmax_t>(copy.srcOffset));
                    inst = BinaryArithmeticMInst{ GMIRInstID::Add, sp, spOffset, copy.dst };
                }
            }
        }
    }

    eliminateStackLoads(func, sp);
}

CMMC_NAMESPACE_END

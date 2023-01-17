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
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Type.hpp>
#include <cstdint>
#include <unordered_map>
#include <variant>

// TODO: stack coloring

CMMC_NAMESPACE_BEGIN

void allocateStackObjects(GMIRFunction& func, const Target& target, bool hasFuncCall) {
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
    for(auto& block : func.blocks()) {
        for(auto& stackObject : block->usedStackObjects()) {
            if(!usedStackObjects.count(stackObject)) {
                const auto type = stack.getType(stackObject);
                const auto size = type->getSize(dataLayout);
                alignTo(type->getAlignment(dataLayout));
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

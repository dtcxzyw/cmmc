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

#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

LoweringContext::LoweringContext(MachineModule& module, std::unordered_map<Block*, MachineBasicBlock*>& blockMap,
                                 std::unordered_map<BlockArgument*, Register>& blockArgs,
                                 std::unordered_map<Value*, Register>& valueMap, std::unordered_map<Value*, Address>& addressMap,
                                 uint32_t& allocateBase)
    : mModule{ module }, mBlockMap{ blockMap }, mBlockArgs{ blockArgs }, mValueMap{ valueMap }, mAddressMap{ addressMap },
      mAllocateBase{ allocateBase }, mCurrentBasicBlock{ nullptr } {}
Register LoweringContext::newReg() noexcept {
    return makeVirtualRegister(++mAllocateBase);
}
MachineModule& LoweringContext::getModule() const noexcept {
    return mModule;
}
MachineBasicBlock* LoweringContext::mapBlock(Block* block) const {
    return mBlockMap.find(block)->second;
}
Register LoweringContext::mapBlockArg(BlockArgument* arg) const {
    return mBlockArgs.find(arg)->second;
}
Register LoweringContext::mapOperand(Value* operand) const {
    return mValueMap.find(operand)->second;
}
Address LoweringContext::mapAddress(Value* address) const {
    return mAddressMap.find(address)->second;
}
void LoweringContext::setCurrentBasicBlock(MachineBasicBlock* block) noexcept {
    mCurrentBasicBlock = block;
}
MachineBasicBlock* LoweringContext::addBlockAfter() {
    auto& blocks = mCurrentBasicBlock->func->basicblocks;
    auto iter = std::find(blocks.cbegin(), blocks.cend(), mCurrentBasicBlock);
    auto newBlock = make<MachineBasicBlock>(mCurrentBasicBlock->func);
    blocks.insert(std::next(iter), newBlock);
    return newBlock;
}
void LoweringContext::addAddress(Value* value, Address address) {
    mAddressMap.emplace(value, address);
}
void LoweringContext::addOperand(Value* value, Register reg) {
    mValueMap.emplace(value, reg);
}
MachineSymbol* LoweringContext::mapGlobal(GlobalValue* global) const {
    for(auto symbol : mModule.symbols()) {
        if(std::string_view{ symbol->getSymbol() } == global->getSymbol()) {
            return symbol;
        }
    }
    reportUnreachable();
}

static void lowerToMachineFunction(MachineFunction* mfunc, Function* func, MachineModule& machineModule) {
    std::unordered_map<Block*, MachineBasicBlock*> blockMap;
    std::unordered_map<BlockArgument*, Register> blockArgMap;
    std::unordered_map<Value*, Register> valueMap;
    std::unordered_map<Value*, Address> addressMap;

    auto allocateBase = makeVirtualRegister(0);

    for(auto block : func->blocks()) {
        auto mblock = make<MachineBasicBlock>(mfunc);
        blockMap.emplace(block, mblock);
        for(auto arg : block->args())
            blockArgMap[arg] = allocateBase++;
    }

    auto& target = machineModule.getTarget();
    auto& instInfo = target.getTargetInstInfo();
    auto& dataLayout = target.getDataLayout();

    LoweringContext ctx{ machineModule, blockMap, blockArgMap, valueMap, addressMap, allocateBase };

    for(auto block : func->blocks()) {
        auto mblock = blockMap[block];
        for(auto inst : block->instructions()) {
            if(inst->getInstID() == InstructionID::Alloc) {
                const auto type = inst->getType()->as<PointerType>()->getPointee();
                const auto size = type->getSize(dataLayout);
                const auto alignment = type->getAlignment(dataLayout);
                auto alloc = make<StackAllocation>(size, alignment);
                mblock->stackAllocations.push_back(alloc);
                ctx.addAddress(inst, { StackFrame{ alloc }, 0 });
            }
        }
    }

    for(auto block : func->blocks()) {
        auto mblock = blockMap[block];
        ctx.setCurrentBasicBlock(mblock);

        for(auto inst : block->instructions()) {
            if(inst->getInstID() != InstructionID::Alloc) {
                if(instInfo.isSupportedInstruction(inst->getInstID())) {
                    instInfo.emit(inst, ctx);
                } else {
                    // fallback to supported instructions
                    reportNotImplemented();
                }
            }
        }
    }
}

static void lowerToMachineModule(MachineModule& machineModule, const Module& module) {
    auto& symbols = machineModule.symbols();

    std::vector<std::pair<MachineFunction*, Function*>> funcTask;

    for(auto global : module.globals()) {
        if(global.second->isFunction()) {
            auto func = global.second->as<Function>();
            auto mfunc = make<MachineFunction>(String<Arena::Source::MC>{ func->getSymbol() });
            symbols.push_back(mfunc);
            funcTask.emplace_back(mfunc, func);
        } else {
            reportNotImplemented();
        }
    }

    for(auto [mfunc, func] : funcTask)
        lowerToMachineFunction(mfunc, func, machineModule);
}

std::unique_ptr<MachineModule> lowerToMachineModule(Module& module) {
    // Stage1: instruction selection
    auto machineModule = std::make_unique<MachineModule>(module.getTarget());
    lowerToMachineModule(*machineModule, module);

    // Stage2: basic block level DAG scheduling

    // Stage3: register allocation

    // Stage4: stack location

    // Stage5: post peephole optimizations

    return machineModule;
}

CMMC_NAMESPACE_END

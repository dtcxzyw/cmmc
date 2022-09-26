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
#include <cmmc/CodeGen/MachineInst.hpp>
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <iostream>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

LoweringContext::LoweringContext(MachineModule& module, std::unordered_map<Block*, MachineBasicBlock*>& blockMap,
                                 std::unordered_map<BlockArgument*, Register>& blockArgs,
                                 std::unordered_map<Value*, Register>& valueMap, std::unordered_map<Value*, Address>& addressMap,
                                 uint32_t& allocateBase)
    : mModule{ module }, mTargetInstInfo{ module.getTarget().getTargetInstInfo() }, mBlockMap{ blockMap },
      mBlockArgs{ blockArgs }, mValueMap{ valueMap }, mAddressMap{ addressMap }, mAllocateBase{ allocateBase },
      mCurrentBasicBlock{ nullptr } {}
Register LoweringContext::newReg() noexcept {
    return makeVirtualRegister(++mAllocateBase);
}
MachineModule& LoweringContext::getModule() const noexcept {
    return mModule;
}
MachineBasicBlock* LoweringContext::mapBlock(Block* block) const {
    assert(mBlockMap.count(block));
    return mBlockMap.find(block)->second;
}
Register LoweringContext::mapBlockArg(BlockArgument* arg) const {
    return mBlockArgs.find(arg)->second;
}
Register LoweringContext::mapOperand(Value* operand) {
    const auto iter = mValueMap.find(operand);
    if(iter != mValueMap.cend())
        return iter->second;
    if(!operand->isConstant()) {
        operand->dump(reportError() << "undefined operand ");
        reportUnreachable();
    }
    const auto reg = mTargetInstInfo.emitConstant(operand->as<ConstantValue>(), *this);
    mValueMap.emplace(operand, reg);
    return reg;
}
Address LoweringContext::mapAddress(Value* address) {
    return mAddressMap.find(address)->second;
}
void LoweringContext::setCurrentBasicBlock(MachineBasicBlock* block) noexcept {
    mCurrentBasicBlock = block;
}
MachineBasicBlock* LoweringContext::addBlockAfter() {
    auto& blocks = mCurrentBasicBlock->func->basicblocks;
    auto iter = std::find(blocks.cbegin(), blocks.cend(), mCurrentBasicBlock);
    assert(iter != blocks.cend());
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
void LoweringContext::addLink(MachineBasicBlock* successor) {
    mCurrentBasicBlock->successors.push_back(successor);
    successor->predecessors.push_back(mCurrentBasicBlock);
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
        mfunc->basicblocks.emplace_back(mblock);
        blockMap.emplace(block, mblock);

        for(auto arg : block->args()) {
            const auto reg = allocateBase++;
            blockArgMap[arg] = reg;
            valueMap[arg] = reg;
            if(arg->getType()->isPointer()) {
                addressMap[arg] = { RegBase{ reg }, 0 };
            }
        }
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
            if(instInfo.isSupportedInstruction(inst->getInstID())) {
                instInfo.emit(inst, ctx);
            } else {
                // fallback to supported instructions
                reportNotImplemented();
            }
        }
    }
}

static auto lowerToMachineModule(MachineModule& machineModule, const Module& module) {
    auto& symbols = machineModule.symbols();

    std::unordered_map<MachineFunction*, Function*> funcTask;

    for(auto global : module.globals()) {
        if(global.second->isFunction()) {
            auto func = global.second->as<Function>();
            if(func->blocks().empty()) {
                // TODO: external func
            } else {
                auto mfunc = make<MachineFunction>(StringMC{ func->getSymbol() });
                symbols.push_back(mfunc);
                funcTask.emplace(mfunc, func);
            }
        } else {
            reportNotImplemented();
        }
    }

    for(auto [mfunc, func] : funcTask)
        lowerToMachineFunction(mfunc, func, machineModule);
    return funcTask;
}

void optimizeBlockLayout(MachineFunction& func, const Target& target);
void schedule(MachineFunction& func, const Target& target);
void allocateStackObjects(MachineFunction& func, const Target& target);

std::unique_ptr<MachineModule> lowerToMachineModule(Module& module) {
    auto& target = module.getTarget();
    // Stage1: instruction selection
    auto machineModule = std::make_unique<MachineModule>(target);
    auto funcMap = lowerToMachineModule(*machineModule, module);
    // Stage2: peephole optimizations
    auto& subTarget = target.getSubTarget();
    subTarget.peepholeOpt(*machineModule);
    for(auto symbol : machineModule->symbols()) {
        if(auto func = dynamic_cast<MachineFunction*>(symbol)) {
            // Stage3: block layout optimization
            optimizeBlockLayout(*func, target);
            // Stage4: basic block level DAG scheduling
            schedule(*func, target);
            // Stage5: register allocation
            assignRegisters(*func, *funcMap[func], target);
            // Stage6: stack location
            allocateStackObjects(*func, target);
        }
    }
    // Stage7: post peephole optimizations
    subTarget.postPeepholeOpt(*machineModule);
    assert(machineModule->verify());
    return machineModule;
}

CMMC_NAMESPACE_END

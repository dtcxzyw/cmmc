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

#pragma once
#include <cmmc/CodeGen/MachineInst.hpp>
#include <cmmc/CodeGen/MachineModule.hpp>
#include <cmmc/CodeGen/Register.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <variant>

CMMC_NAMESPACE_BEGIN

class LoweringContext final {
    MachineModule& mModule;
    const TargetInstInfo& mTargetInstInfo;
    std::unordered_map<Block*, MachineBasicBlock*>& mBlockMap;
    std::unordered_map<BlockArgument*, Register>& mBlockArgs;
    std::unordered_map<Value*, Register>& mValueMap;
    std::unordered_map<Value*, Address>& mAddressMap;
    uint32_t& mAllocateBase;
    MachineBasicBlock* mCurrentBasicBlock;

public:
    LoweringContext(MachineModule& module, std::unordered_map<Block*, MachineBasicBlock*>& blockMap,
                    std::unordered_map<BlockArgument*, Register>& blockArgs, std::unordered_map<Value*, Register>& valueMap,
                    std::unordered_map<Value*, Address>& addressMap, uint32_t& allocateBase);
    Register newReg() noexcept;
    MachineModule& getModule() const noexcept;
    MachineBasicBlock* mapBlock(Block* block) const;
    Register mapBlockArg(BlockArgument* arg) const;
    Register mapOperand(Value* operand);
    Address mapAddress(Value* address);
    MachineSymbol* mapGlobal(GlobalValue* global) const;
    void setCurrentBasicBlock(MachineBasicBlock* block) noexcept;
    MachineBasicBlock* addBlockAfter();

    template <typename Inst>
    MachineInst& emitInst(Inst instID) {
        return mCurrentBasicBlock->instructions.emplace_back(instID);
    }
    void addAddress(Value* value, Address address);
    void addOperand(Value* value, Register reg);
    void addLink(MachineBasicBlock* successor);
};

class Module;
std::unique_ptr<MachineModule> lowerToMachineModule(Module& module);

CMMC_NAMESPACE_END

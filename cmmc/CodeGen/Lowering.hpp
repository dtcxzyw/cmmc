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
#include <cmmc/CodeGen/MachineModule.hpp>
#include <cmmc/IR/Block.hpp>
#include <variant>

CMMC_NAMESPACE_BEGIN

struct StackFrame final {};
struct Global final {
    MachineSymbol* symbol;
};
struct Zero final {};

struct Address final {
    std::variant<StackFrame, Global, Zero> base;
    int32_t offset;
};

class LoweringContext final {
    MachineModule& mModule;
    std::unordered_map<Block*, MachineBasicBlock*>& mBlockMap;
    std::unordered_map<BlockArgument*, Register>& mBlockArgs;
    std::unordered_map<Value*, Register>& mValueMap;
    std::unordered_map<Value*, Address>& mAddressMap;
    uint32_t& mAllocateBase;
    MachineBasicBlock* mCurrentBasicBlock;

public:
    LoweringContext(MachineModule& module, std::unordered_map<Block*, MachineBasicBlock*>& blockMap,
                    std::unordered_map<BlockArgument*, Register>& blockArgs, std::unordered_map<Value*, Register>& valueMap,
                    std::unordered_map<Value*, Address>& addressMap, uint32_t& allocateBase)
        : mModule{ module }, mBlockMap{ blockMap }, mBlockArgs{ blockArgs }, mValueMap{ valueMap }, mAddressMap{ addressMap },
          mAllocateBase{ allocateBase }, mCurrentBasicBlock{ nullptr } {}
    Register newReg() noexcept {
        return makeVirtualRegister(++mAllocateBase);
    }
    MachineModule& getModule() const noexcept {
        return mModule;
    }
    MachineBasicBlock* mapBlock(Block* block) const {
        return mBlockMap.find(block)->second;
    }
    Register mapBlockArg(BlockArgument* arg) const {
        return mBlockArgs.find(arg)->second;
    }
    Register mapOperand(Value* operand) const {
        return mValueMap.find(operand)->second;
    }
    Address mapAddress(Value* address) const {
        return mAddressMap.find(address)->second;
    }

    void setCurrentBasicBlock(MachineBasicBlock* block) noexcept {
        mCurrentBasicBlock = block;
    }
    template <typename Inst>
    MachineInst& addInst(Inst instID) {
        return mCurrentBasicBlock->instructions.emplace_back(instID);
    }
};

class Module;
std::unique_ptr<MachineModule> lowerToMachineModule(Module& module);

CMMC_NAMESPACE_END

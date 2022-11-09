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
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/TargetFrameInfo.hpp>
#include <cmmc/CodeGen/TargetInstInfo.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <variant>

CMMC_NAMESPACE_BEGIN

class LoweringContext final {
    GMIRModule& mModule;
    const TargetInstInfo& mTargetInstInfo;
    std::unordered_map<Block*, GMIRBasicBlock*>& mBlockMap;
    std::unordered_map<BlockArgument*, Operand>& mBlockArgs;
    std::unordered_map<Value*, Operand>& mValueMap;
    GMIRBasicBlock* mCurrentBasicBlock;

public:
    LoweringContext(GMIRModule& module, std::unordered_map<Block*, GMIRBasicBlock*>& blockMap,
                    std::unordered_map<BlockArgument*, Operand>& blockArgs, std::unordered_map<Value*, Operand>& valueMap);
    Operand newReg(uint32_t addressSpace) noexcept;
    GMIRModule& getModule() const noexcept;
    GMIRBasicBlock* mapBlock(Block* block) const;
    Operand mapBlockArg(BlockArgument* arg) const;
    Operand mapOperand(Value* operand);
    GMIRSymbol* mapGlobal(GlobalValue* global) const;
    void setCurrentBasicBlock(GMIRBasicBlock* block) noexcept;
    GMIRBasicBlock* addBlockAfter();

    template <typename Inst>
    GMIRInst& emitInst(Inst instID) {
        return mCurrentBasicBlock->instructions().emplace_back(instID);
    }
    void addOperand(Value* value, Operand reg);
    void addLink(GMIRBasicBlock* successor);
};

class LoweringVisitor {
public:
    void lowerInst(Instruction* inst, LoweringContext& ctx) const;
    virtual void lower(BinaryInst* inst, LoweringContext& ctx) const;
    virtual void lower(CompareInst* inst, LoweringContext& ctx) const;
    virtual void lower(UnaryInst* inst, LoweringContext& ctx) const;
    virtual void lower(CastInst* inst, LoweringContext& ctx) const;
    virtual void lower(LoadInst* inst, LoweringContext& ctx) const;
    virtual void lower(StoreInst* inst, LoweringContext& ctx) const;
    virtual void lower(ConditionalBranchInst* inst, LoweringContext& ctx) const;
    virtual void lower(ReturnInst* inst, LoweringContext& ctx) const;
    virtual void lower(UnreachableInst* inst, LoweringContext& ctx) const;
    virtual void lower(FunctionCallInst* inst, LoweringContext& ctx) const;
    virtual void lower(SelectInst* inst, LoweringContext& ctx) const;
    virtual void lower(StackAllocInst* inst, LoweringContext& ctx) const;
    virtual void lower(FMAInst* inst, LoweringContext& ctx) const;
    virtual void lower(GetElementPtrInst* inst, LoweringContext& ctx) const;
    virtual void lower(PtrCastInst* inst, LoweringContext& ctx) const;
    virtual void lower(PtrToIntInst* inst, LoweringContext& ctx) const;
    virtual void lower(IntToPtrInst* inst, LoweringContext& ctx) const;
};

class Module;
std::unique_ptr<GMIRModule> lowerToMachineModule(Module& module, AnalysisPassManager& analysis);

CMMC_NAMESPACE_END

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
#include <cmmc/Analysis/BlockArgumentAnalysis.hpp>
#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/StringFlyWeight.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cstdint>
#include <string_view>
#include <unordered_map>
#include <variant>
#include <vector>

CMMC_NAMESPACE_BEGIN

class LoweringContext final {
    GMIRModule& mModule;
    const DataLayout& mDataLayout;
    std::unordered_map<Block*, GMIRBasicBlock*>& mBlockMap;
    std::unordered_map<GlobalValue*, GMIRSymbol*>& mGlobalMap;
    std::unordered_map<BlockArgument*, Operand>& mBlockArgs;
    std::unordered_map<Value*, Operand>& mValueMap;

    TemporaryPools& mPools;
    GMIRBasicBlock* mCurrentBasicBlock;
    std::unordered_map<const Type*, Operand> mZeros;
    const BlockArgumentAnalysisResult& mBlockArgMap;

public:
    LoweringContext(GMIRModule& module, std::unordered_map<Block*, GMIRBasicBlock*>& blockMap,
                    std::unordered_map<GlobalValue*, GMIRSymbol*>& globalMap,
                    std::unordered_map<BlockArgument*, Operand>& blockArgs, std::unordered_map<Value*, Operand>& valueMap,
                    TemporaryPools& pools, const BlockArgumentAnalysisResult& blockArgMap);
    const DataLayout& getDataLayout() const noexcept {
        return mDataLayout;
    }
    VirtualRegPool& getAllocationPool(uint32_t addressSpace) noexcept;
    GMIRModule& getModule() const noexcept;
    GMIRBasicBlock* mapBlock(Block* block) const;
    Operand mapBlockArg(BlockArgument* arg) const;
    Operand mapOperand(Value* operand);
    GMIRSymbol* mapGlobal(GlobalValue* global) const;
    void setCurrentBasicBlock(GMIRBasicBlock* block) noexcept;
    GMIRBasicBlock* getCurrentBasicBlock() const noexcept {
        return mCurrentBasicBlock;
    }
    GMIRBasicBlock* addBlockAfter();

    template <typename Inst, typename... Args>
    void emitInst(Args&&... args) {
        mCurrentBasicBlock->instructions().emplace_back(Inst{ std::forward<Args>(args)... });
    }
    void addOperand(Value* value, Operand reg);
    Operand getZero(const Type* type);
    Value* queryRoot(Value* val) const;
};

class LoweringInfo {
public:
    virtual ~LoweringInfo() = default;
    virtual void emitPrologue(LoweringContext& ctx, Function* func) const = 0;
    virtual Operand getZeroImpl(LoweringContext& ctx, const Type* type) const = 0;
    virtual std::string_view getIntrinsicName(uint32_t intrinsicID) const = 0;
    virtual String getOperand(const Operand& operand) const = 0;
    virtual void lower(ReturnInst* inst, LoweringContext& ctx) const = 0;
    virtual void lower(FunctionCallInst* inst, LoweringContext& ctx) const = 0;
    virtual void lower(FMAInst* inst, LoweringContext& ctx) const = 0;

    void lowerInst(Instruction* inst, LoweringContext& ctx) const;
    virtual void lower(BinaryInst* inst, LoweringContext& ctx) const;
    virtual void lower(CompareInst* inst, LoweringContext& ctx) const;
    virtual void lower(UnaryInst* inst, LoweringContext& ctx) const;
    virtual void lower(CastInst* inst, LoweringContext& ctx) const;
    virtual void lower(LoadInst* inst, LoweringContext& ctx) const;
    virtual void lower(StoreInst* inst, LoweringContext& ctx) const;
    virtual void lower(ConditionalBranchInst* inst, LoweringContext& ctx) const;
    virtual void lower(UnreachableInst* inst, LoweringContext& ctx) const;
    virtual void lower(SelectInst* inst, LoweringContext& ctx) const;
    virtual void lower(GetElementPtrInst* inst, LoweringContext& ctx) const;
    virtual void lower(PtrCastInst* inst, LoweringContext& ctx) const;
    virtual void lower(PtrToIntInst* inst, LoweringContext& ctx) const;
    virtual void lower(IntToPtrInst* inst, LoweringContext& ctx) const;
};

class Module;
std::unique_ptr<GMIRModule> lowerToMachineModule(Module& module, AnalysisPassManager& analysis, OptimizationLevel optLevel);

CMMC_NAMESPACE_END

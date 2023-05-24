/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2023 CMMC Authors
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
#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/StringFlyWeight.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cstdint>
#include <memory>
#include <string_view>
#include <unordered_map>
#include <variant>
#include <vector>

CMMC_NAMESPACE_BEGIN

class Module;

CMMC_NAMESPACE_END

CMMC_MIR_NAMESPACE_BEGIN

class FloatingPointConstantPool final {
    MIRDataStorage* mFloatingPointConstantPool = nullptr;
    std::unordered_map<uint32_t, uint32_t> mFloatingPointConstant;  // represention -> index
public:
    MIROperand getFPConstant(class LoweringContext& ctx, const ConstantFloatingPoint* val);
};

class LoweringContext final {
    MIRModule& mModule;
    const DataLayout& mDataLayout;
    CodeGenContext& mCodeGenCtx;
    std::unordered_map<Block*, MIRBasicBlock*>& mBlockMap;
    std::unordered_map<GlobalValue*, MIRGlobal*>& mGlobalMap;
    FloatingPointConstantPool& mFPConstantPool;
    std::unordered_map<Value*, MIROperand>& mValueMap;

    MIRBasicBlock* mCurrentBasicBlock = nullptr;
    OperandType mPtrType;

public:
    LoweringContext(MIRModule& module, CodeGenContext& codeGenCtx, std::unordered_map<Block*, MIRBasicBlock*>& blockMap,
                    std::unordered_map<GlobalValue*, MIRGlobal*>& globalMap, FloatingPointConstantPool& fpConstantPool,
                    std::unordered_map<Value*, MIROperand>& valueMap);
    [[nodiscard]] const DataLayout& getDataLayout() const noexcept {
        return mDataLayout;
    }
    [[nodiscard]] CodeGenContext& getCodeGenContext() const noexcept {
        return mCodeGenCtx;
    }
    [[nodiscard]] OperandType getPtrType() const noexcept {
        return mPtrType;
    }
    [[nodiscard]] MIRModule& getModule() const noexcept;
    MIRBasicBlock* mapBlock(Block* block) const;
    MIROperand mapOperand(Value* operand);
    MIROperand newVReg(const Type* type);
    MIROperand newVReg(OperandType type);
    void emitCopy(const MIROperand& dst, const MIROperand& src);
    MIRGlobal* mapGlobal(GlobalValue* global) const;
    void setCurrentBasicBlock(MIRBasicBlock* block) noexcept;
    [[nodiscard]] MIRBasicBlock* getCurrentBasicBlock() const noexcept {
        return mCurrentBasicBlock;
    }
    MIRBasicBlock* addBlockAfter(double blockTripCount);

    void emitInst(const MIRInst& inst);
    void addOperand(Value* value, MIROperand reg);
};

std::unique_ptr<MIRModule> lowerToMachineModule(Module& module, AnalysisPassManager& analysis, OptimizationLevel optLevel);

CMMC_MIR_NAMESPACE_END

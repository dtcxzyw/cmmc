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
#include <cmmc/CodeGen/MIR.hpp>
#include <cstdint>
#include <list>
#include <unordered_map>
#include <unordered_set>

CMMC_MIR_NAMESPACE_BEGIN

class ISelContext final {
    CodeGenContext& mCodeGenCtx;
    std::unordered_map<MIROperand, MIRInst*, MIROperandHasher> mInstMapping, mConstantMapping;
    MIRBasicBlock* mCurrentBlock;
    std::list<MIRInst>::iterator mInsertPoint;
    std::unordered_map<MIROperand, MIROperand, MIROperandHasher> mReplaceList;
    std::unordered_set<MIRInst*> mRemoveWorkList, mReplaceBlockList;

public:
    explicit ISelContext(CodeGenContext& codeGenCtx);
    void runISel(MIRFunction& func);
    MIRInst* lookupDef(const MIROperand& operand) const;
    MIRInst& newInst(uint32_t opcode);
    MIROperand& getInstDef(MIRInst& inst) const;
    std::list<MIRInst>& getInstructions() const;
    std::list<MIRInst>::iterator getCurrentInstIter() const;
    void removeInst(MIRInst& inst);
    void replaceOperand(const MIROperand& src, const MIROperand& dst);
    void blockReplace(MIRInst& inst);
    CodeGenContext& getCodeGenCtx() const {
        return mCodeGenCtx;
    }
    MIRBasicBlock* getCurrentBlock() const {
        return mCurrentBlock;
    }
};

class TargetISelInfo {
public:
    virtual ~TargetISelInfo() = default;
    [[nodiscard]] virtual bool isLegalGenericInst(uint32_t opcode) const = 0;
    static bool expandCmp(MIRInst& inst, ISelContext& ctx);
    virtual bool matchAndSelect(MIRInst& inst, ISelContext& ctx, bool allowComplexPattern) const = 0;
    virtual void postLegalizeInst(MIRInst& inst, CodeGenContext& ctx) const = 0;
    virtual void preRALegalizeInst(MIRInst& inst, std::list<MIRInst>& instructions, std::list<MIRInst>::iterator& iter,
                                   CodeGenContext& ctx) const = 0;
    virtual void legalizeInstWithStackOperand(MIRInst& inst, const CodeGenContext& ctx, MIROperand& op,
                                              const StackObject& obj) const = 0;
};

uint32_t selectCopyOpcode(const MIROperand& dst, const MIROperand& src);

CMMC_MIR_NAMESPACE_END

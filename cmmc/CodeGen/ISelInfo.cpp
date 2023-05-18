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

#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/ISelInfo.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <iostream>
#include <iterator>
CMMC_MIR_NAMESPACE_BEGIN

ISelContext::ISelContext(CodeGenContext& codeGenCtx) : mCodeGenCtx{ codeGenCtx } {}
void ISelContext::runISel(MIRFunction& func) {
    auto& iselInfo = mCodeGenCtx.iselInfo;

    while(true) {
        removeUnusedInsts(func, mCodeGenCtx);
        // TODO: apply CSE
        bool modified = false;
        bool hasIllegal = false;
        std::unordered_map<MIRInst*, MIRInst*> replaceDef;
        mRemoveWorkList.clear();
        for(auto& block : func.blocks()) {
            mInstMapping.clear();
            for(auto& inst : block->instructions()) {
                auto& instInfo = mCodeGenCtx.instInfo.getInstInfo(inst.opcode());
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                    if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                        auto& operand = inst.getOperand(idx);
                        if(operand.isReg() && isVirtualReg(operand.reg())) {
                            assert(!mInstMapping.count(operand));
                            mInstMapping.emplace(operand, &inst);
                        }
                    }
            }
            mCurrentBlock = block.get();

            auto& instructions = block->instructions();
            auto it = instructions.end();
            while(it != instructions.begin()) {
                mInsertPoint = it;
                auto prev = std::prev(it);
                auto& inst = *prev;
                if(!mRemoveWorkList.count(&inst)) {
                    if(auto opcode = inst.opcode(); opcode < ISASpecificBegin && !iselInfo.isLegalGenericInst(opcode)) {
                        hasIllegal = true;
                        if(auto* newInst = iselInfo.matchAndSelect(inst, *this)) {
                            replaceDef.emplace(&inst, newInst);
                            modified = true;
                        }
                    }
                }
                it = prev;
            }
        }

        auto getDef = [&](const MIRInst& inst) {
            auto& instInfo = mCodeGenCtx.instInfo.getInstInfo(inst.opcode());
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                if(instInfo.getOperandFlag(idx) & OperandFlagDef)
                    return inst.getOperand(idx);
            return MIROperand{};
        };
        std::unordered_map<MIROperand, MIROperand, MIROperandHasher> replaceOperand;
        for(auto& [oldInst, newInst] : replaceDef) {
            auto oldDef = getDef(*oldInst);
            auto newDef = getDef(*newInst);
            if(oldDef.isReg() && newDef.isReg())
                replaceOperand.emplace(oldDef, newDef);
        }

        for(auto& block : func.blocks()) {
            // remove old insts
            block->instructions().remove_if([&](auto& inst) { return replaceDef.count(&inst) || mRemoveWorkList.count(&inst); });
            // replace defs
            for(auto& inst : block->instructions()) {
                auto& instInfo = mCodeGenCtx.instInfo.getInstInfo(inst.opcode());
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                    auto& operand = inst.getOperand(idx);
                    if(!operand.isReg())
                        continue;
                    if(auto iter = replaceOperand.find(operand); iter != replaceOperand.cend())
                        operand = iter->second;
                }
            }
        }

        if(modified)
            continue;
        if(hasIllegal) {
            func.dump(std::cerr, mCodeGenCtx);
            DiagnosticsContext::get().attach<Reason>("Failed to select instruction").reportFatal();
        }
        return;
    }
}

MIRInst& ISelContext::lookupDef(const MIROperand& operand) const {
    return *mInstMapping.at(operand);
}

MIRInst& ISelContext::newInst(uint32_t opcode) {
    return *mCurrentBlock->instructions().emplace(mInsertPoint, opcode);
}

MIROperand& ISelContext::getInstDef(MIRInst& inst) const {
    auto& instInfo = mCodeGenCtx.instInfo.getInstInfo(inst.opcode());
    for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
        if(instInfo.getOperandFlag(idx) & OperandFlagDef)
            return inst.getOperand(idx);
    reportUnreachable(CMMC_LOCATION());
}

std::list<MIRInst>& ISelContext::getInstructions() const {
    return mCurrentBlock->instructions();
}
std::list<MIRInst>::iterator ISelContext::getCurrentInstIter() const {
    return std::prev(mInsertPoint);
}
void ISelContext::removeInst(MIRInst& inst) {
    mRemoveWorkList.insert(&inst);
}

CMMC_MIR_NAMESPACE_END

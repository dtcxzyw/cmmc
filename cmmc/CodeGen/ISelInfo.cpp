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
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <iostream>
#include <iterator>
#include <memory>
CMMC_MIR_NAMESPACE_BEGIN

ISelContext::ISelContext(CodeGenContext& codeGenCtx) : mCodeGenCtx{ codeGenCtx } {}
void ISelContext::runISel(MIRFunction& func) {
    auto& iselInfo = mCodeGenCtx.iselInfo;
    bool allowComplexPattern = false;  // create new blocks

    while(true) {
        removeUnusedInsts(func, mCodeGenCtx);
        // func.dump(std::cerr, mCodeGenCtx);
        // TODO: apply CSE
        bool modified = false;
        bool hasIllegal = false;
        mRemoveWorkList.clear();
        mReplaceBlockList.clear();
        mReplaceList.clear();
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
                        if(iselInfo.matchAndSelect(inst, *this, allowComplexPattern)) {
                            modified = true;
                            if(allowComplexPattern) {
                                break;
                            }
                        }
                    }
                }
                it = prev;
            }
        }

        for(auto& block : func.blocks()) {
            // remove old insts
            block->instructions().remove_if([&](auto& inst) { return mRemoveWorkList.count(&inst); });
            // replace defs
            for(auto& inst : block->instructions()) {
                if(mReplaceBlockList.count(&inst))
                    continue;
                auto& instInfo = mCodeGenCtx.instInfo.getInstInfo(inst.opcode());
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                    auto& operand = inst.getOperand(idx);
                    if(!operand.isReg())
                        continue;
                    if(auto iter = mReplaceList.find(operand); iter != mReplaceList.cend())
                        operand = iter->second;
                }
            }
        }

        if(modified) {
            allowComplexPattern = false;
            continue;
        }
        if(hasIllegal) {
            if(allowComplexPattern) {
                func.dump(std::cerr, mCodeGenCtx);
                DiagnosticsContext::get().attach<Reason>("Failed to select instruction").reportFatal();
            } else {
                allowComplexPattern = true;
                continue;
            }
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
void ISelContext::blockReplace(MIRInst& inst) {
    mReplaceBlockList.insert(&inst);
}
void ISelContext::replaceOperand(const MIROperand& src, const MIROperand& dst) {
    assert(src.isReg());
    mReplaceList.emplace(src, dst);
}

void postLegalizeFunc(MIRFunction& func, CodeGenContext& ctx) {
    for(auto& block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            if(inst.opcode() < ISASpecificBegin) {
                ctx.iselInfo.postLegalizeInst(inst, ctx);
            }
        }
    }
}

bool TargetISelInfo::expandCmp(MIRInst& inst, ISelContext& ctx) {
    assert(inst.opcode() == InstSCmp || inst.opcode() == InstUCmp || inst.opcode() == InstFCmp);
    auto iter = ctx.getCurrentInstIter();
    auto& instrcutions = ctx.getInstructions();
    auto& codeGenCtx = ctx.getCodeGenCtx();
    auto type = inst.getOperand(0).type();
    auto val = MIROperand::asVReg(codeGenCtx.nextId(), type);
    auto init = instrcutions.insert(iter, MIRInst{ InstLoadImm });
    init->setOperand<0>(val).setOperand<1>(MIROperand::asImm(1, type));
    auto branch = instrcutions.insert(std::next(iter), MIRInst{ InstBranch });

    constexpr auto prob = defaultSelectProb;
    auto block = ctx.getCurrentBlock();
    auto func = block->getFunction();
    auto falseBlock = std::make_unique<MIRBasicBlock>(block->symbol().withID(static_cast<int32_t>(codeGenCtx.nextId())), func,
                                                      block->getTripCount() * (1.0 - prob));
    auto postBlock = std::make_unique<MIRBasicBlock>(block->symbol().withID(static_cast<int32_t>(codeGenCtx.nextId())), func,
                                                     block->getTripCount());
    branch->setOperand<0>(inst.getOperand(0))
        .setOperand<1>(MIROperand::asReloc(postBlock.get()))
        .setOperand<2>(MIROperand::asProb(prob));
    auto& onFalseInstructions = falseBlock->instructions();
    onFalseInstructions.push_back(MIRInst{ InstLoadImm }.setOperand<0>(val).setOperand<1>(MIROperand::asImm(0, type)));
    onFalseInstructions.push_back(MIRInst{ InstJump }.setOperand<0>(MIROperand::asReloc(postBlock.get())));
    auto& postInstructions = postBlock->instructions();
    postInstructions.splice(postInstructions.end(), instrcutions, std::next(branch), instrcutions.end());

    auto nextBlockIter =
        std::next(std::find_if(func->blocks().begin(), func->blocks().end(), [&](auto& b) { return b.get() == block; }));
    func->blocks().insert(nextBlockIter, std::move(falseBlock));
    func->blocks().insert(nextBlockIter, std::move(postBlock));
    ctx.blockReplace(*branch);
    ctx.blockReplace(inst);
    ctx.replaceOperand(inst.getOperand(0), val);
    return true;
}

CMMC_MIR_NAMESPACE_END

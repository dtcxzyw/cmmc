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
#include <cmmc/Config.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cstddef>
#include <iostream>
#include <iterator>
#include <memory>
#include <vector>
CMMC_MIR_NAMESPACE_BEGIN

ISelContext::ISelContext(CodeGenContext& codeGenCtx) : mCodeGenCtx{ codeGenCtx } {}
void ISelContext::runISel(MIRFunction& func) {
    auto& iselInfo = mCodeGenCtx.iselInfo;
    bool allowComplexPattern = false;  // create new blocks
    bool optLegal = false;

    while(true) {
        MIRInst* firstIllegalInst = nullptr;
        // TODO: apply CSE

        // func.dump(std::cerr, mCodeGenCtx);
        assert(func.verify(std::cerr, mCodeGenCtx));
        while(genericPeepholeOpt(func, mCodeGenCtx))
            ;
        // func.dump(std::cerr, mCodeGenCtx);
        assert(func.verify(std::cerr, mCodeGenCtx));
        bool modified = false;
        bool hasIllegal = false;
        mRemoveWorkList.clear();
        mReplaceBlockList.clear();
        mReplaceList.clear();

        // TODO: cross block isel?
        mConstantMapping.clear();
        {
            std::vector<MIROperand> removeList;
            for(auto& block : func.blocks()) {
                for(auto& inst : block->instructions()) {
                    auto& instInfo = mCodeGenCtx.instInfo.getInstInfo(inst.opcode());
                    if(requireFlag(instInfo.getInstFlag(), InstFlagLoadConstant)) {
                        auto& def = getInstDef(inst);
                        if(mConstantMapping.count(def)) {
                            removeList.push_back(def);
                        } else
                            mConstantMapping.emplace(def, &inst);
                    }
                }
            }
            for(auto& op : removeList)
                mConstantMapping.erase(op);
        }

        for(auto& block : func.blocks()) {
            mInstMapping.clear();
            for(auto& inst : block->instructions()) {
                auto& instInfo = mCodeGenCtx.instInfo.getInstInfo(inst.opcode());
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                    if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                        auto& operand = inst.getOperand(idx);
                        if(operand.isReg() && isVirtualReg(operand.reg())) {
                            assert(!mInstMapping.count(operand));  // SSA Form
                            mInstMapping.emplace(operand, &inst);
                        }
                    }
            }
            mCurrentBlock = block.get();

            auto& instructions = block->instructions();
            auto it = instructions.end();
            while(it != instructions.begin()) {
                auto prev = std::prev(it);
                mInsertPoint = prev;
                auto& inst = *prev;
                if(!mRemoveWorkList.count(&inst)) {
                    const auto opcode = inst.opcode();
                    const auto isIllegal = opcode < ISASpecificBegin && !iselInfo.isLegalGenericInst(opcode);
                    if(isIllegal && !firstIllegalInst) {
                        firstIllegalInst = &inst;
                    }
                    hasIllegal |= isIllegal;
                    if((optLegal || isIllegal) && iselInfo.matchAndSelect(inst, *this, allowComplexPattern)) {
                        modified = true;
                        if(allowComplexPattern) {
                            break;
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
            if(optLegal) {
                func.dump(std::cerr, mCodeGenCtx);
                DiagnosticsContext::get()
                    .attach<Reason>("Introducing new illegal instructions is not allowed after legalization")
                    .reportFatal();
            }
            if(allowComplexPattern) {
                func.dump(std::cerr, mCodeGenCtx);
                std::cerr << "First illegal inst:\n";
                assert(firstIllegalInst);
                mCodeGenCtx.instInfo.getInstInfo(firstIllegalInst->opcode()).print(std::cerr, *firstIllegalInst, true);
                std::cerr << '\n';
                DiagnosticsContext::get().attach<Reason>("Failed to select instruction").reportFatal();
            } else {
                allowComplexPattern = true;
                continue;
            }
        }
        if(!optLegal) {
            optLegal = true;
            continue;
        }
        return;
    }
}

MIRInst* ISelContext::lookupDef(const MIROperand& operand) const {
    auto iter = mInstMapping.find(operand);
    if(iter == mInstMapping.cend()) {
        iter = mConstantMapping.find(operand);
        if(iter == mConstantMapping.cend())
            return nullptr;
    }
    return iter->second;
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
    return mInsertPoint;
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
        auto& instructions = block->instructions();
        for(auto iter = instructions.begin(); iter != instructions.end(); ++iter) {
            auto& inst = *iter;
            if(inst.opcode() < ISASpecificBegin) {
                ctx.iselInfo.postLegalizeInst(InstLegalizeContext{ inst, instructions, iter, ctx });
            }
        }
    }

    if constexpr(Config::debug) {
        for(auto& block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                if(inst.opcode() < ISASpecificBegin) {
                    reportLegalizationFailure(inst, ctx, CMMC_LOCATION());
                }
            }
        }
    }
}

void preRALegalizeFunc(MIRFunction& func, CodeGenContext& ctx) {
    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        for(auto iter = instructions.begin(); iter != instructions.end(); ++iter) {
            auto& inst = *iter;
            auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
            if(requireFlag(instInfo.getInstFlag(), InstFlagLegalizePreRA)) {
                ctx.iselInfo.preRALegalizeInst(InstLegalizeContext{ inst, instructions, iter, ctx });
            }
        }
    }

    if constexpr(Config::debug) {
        for(auto& block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
                if(requireFlag(instInfo.getInstFlag(), InstFlagLegalizePreRA)) {
                    reportLegalizationFailure(inst, ctx, CMMC_LOCATION());
                }
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

uint32_t selectCopyOpcode(const MIROperand& dst, const MIROperand& src) {
    if(dst.isReg() && isISAReg(dst.reg())) {
        if(src.isImm()) {
            return InstLoadImmToReg;
        }
        assert(isOperandVReg(src));
        return InstCopyToReg;
    }
    if(src.isImm())
        return InstLoadImm;
    if(src.isReg() && isISAReg(src.reg()))
        return InstCopyFromReg;
    assert(isOperandVReg(src) && isOperandVReg(dst));
    return InstCopy;
}

CMMC_MIR_NAMESPACE_END

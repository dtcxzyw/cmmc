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
#include <cmmc/Support/Bits.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cstddef>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <limits>
#include <memory>
#include <optional>
#include <vector>
CMMC_MIR_NAMESPACE_BEGIN
extern Flag debugISel;

ISelContext::ISelContext(CodeGenContext& codeGenCtx) : mCodeGenCtx{ codeGenCtx } {}
void ISelContext::runISel(MIRFunction& func) {
    auto& iselInfo = mCodeGenCtx.iselInfo;
    bool allowComplexPattern = false;  // create new blocks
    bool optLegal = false;

    while(true) {
        MIRInst* firstIllegalInst = nullptr;

        // func.dump(std::cerr, mCodeGenCtx);
        assert(func.verify(std::cerr, mCodeGenCtx));
        if(debugISel.get()) {
            while(removeUnusedInsts(func, mCodeGenCtx))
                ;
        } else {
            while(genericPeepholeOpt(func, mCodeGenCtx))
                ;
        }
        // func.dump(std::cerr, mCodeGenCtx);
        assert(func.verify(std::cerr, mCodeGenCtx));
        bool modified = false;
        bool hasIllegal = false;
        mRemoveWorkList.clear();
        mReplaceBlockList.clear();
        mReplaceList.clear();

        // TODO: cross block isel?
        mConstantMapping.clear();
        mUseCount.clear();
        {
            std::vector<MIROperand> removeList;
            for(auto& block : func.blocks()) {
                for(auto& inst : block->instructions()) {
                    auto& instInfo = mCodeGenCtx.instInfo.getInstInfo(inst);
                    if(requireFlag(instInfo.getInstFlag(), InstFlagLoadConstant)) {
                        auto& def = getInstDef(inst);
                        if(mConstantMapping.count(def)) {
                            removeList.push_back(def);
                        } else
                            mConstantMapping.emplace(def, &inst);
                    }

                    for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                        if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                            auto& operand = inst.getOperand(idx);
                            if(isOperandVReg(operand)) {
                                ++mUseCount[operand];
                            }
                        }
                    }
                }
            }
            for(auto& op : removeList)
                mConstantMapping.erase(op);
        }

        for(auto& block : func.blocks()) {
            mInstMapping.clear();
            for(auto& inst : block->instructions()) {
                auto& instInfo = mCodeGenCtx.instInfo.getInstInfo(inst);
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                    if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                        auto& operand = inst.getOperand(idx);
                        if(operand.isReg() && isVirtualReg(operand.reg())) {
                            if(mInstMapping.count(operand)) {
                                std::cerr << "Invalid SSA form during ISel!!!" << std::endl;
                                instInfo.print(std::cerr, inst, true);
                                reportUnreachable(CMMC_LOCATION());
                            }
                            mInstMapping.emplace(operand, &inst);
                        }
                    }
            }
            mCurrentBlock = block.get();

            auto& instructions = block->instructions();
            if(instructions.empty())
                continue;

            auto it = std::prev(instructions.end());
            while(true) {
                mInsertPoint = it;
                auto& inst = *it;
                std::optional<std::list<MIRInst>::iterator> prev = std::nullopt;
                if(it != instructions.begin())
                    prev = std::prev(it);

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
                if(prev)
                    it = *prev;
                else
                    break;
            }
        }

        for(auto& block : func.blocks()) {
            // remove old insts
            block->instructions().remove_if([&](auto& inst) { return mRemoveWorkList.count(&inst); });
            // replace defs
            for(auto& inst : block->instructions()) {
                if(mReplaceBlockList.count(&inst))
                    continue;
                auto& instInfo = mCodeGenCtx.instInfo.getInstInfo(inst);
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
                auto& info = mCodeGenCtx.instInfo.getInstInfo(*firstIllegalInst);
                info.print(std::cerr, *firstIllegalInst, true);
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
    auto& instInfo = mCodeGenCtx.instInfo.getInstInfo(inst);
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
    if(src != dst)
        mReplaceList.emplace(src, dst);
}
bool ISelContext::hasOneUse(const MIROperand& operand) const {
    if(auto iter = mUseCount.find(operand); iter != mUseCount.cend())
        return iter->second == 1;
    return true;
}
bool ISelContext::isDefinedAfter(const MIROperand& operand, const MIRInst& inst,
                                 std::optional<std::list<MIRInst>::iterator>* iterPtr) const {
    auto iter = mInsertPoint;
    auto getIter = [&] {
        if(iterPtr) {
            while(&(*iter) != &inst) {
                if(iter == mCurrentBlock->instructions().begin()) {
                    *iterPtr = std::nullopt;
                    return true;
                }
                iter = std::prev(iter);
            }
            *iterPtr = iter;
        }
        return true;
    };
    while(true) {
        if(iter == mCurrentBlock->instructions().begin())
            return false;
        iter = std::prev(iter);
        if(&(*iter) == &inst)
            return false;
        auto& instInfo = mCodeGenCtx.instInfo.getInstInfo(iter->opcode());
        if(requireFlag(instInfo.getInstFlag(), InstFlag::InstFlagCall))
            return getIter();
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
            if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                if(operand == iter->getOperand(idx))
                    return getIter();
            }
    }
}

std::optional<MIROperand> ISelContext::getRegRef(const MIROperand& reg, const MIRInst& inst) {
    assert(isOperandVRegOrISAReg(reg));
    if(isOperandVReg(reg))
        return reg;
    std::optional<std::list<MIRInst>::iterator> iter;
    if(!isDefinedAfter(reg, inst, &iter)) {
        // auto& instInfo = mCodeGenCtx.instInfo.getInstInfo(inst.opcode());
        // instInfo.print(std::cerr, inst, true);
        return reg;
    }
    if(!iter)
        return std::nullopt;
    auto copy = MIROperand::asVReg(mCodeGenCtx.nextId(), reg.type());
    mCurrentBlock->instructions().emplace(*iter, MIRInst{ InstCopyFromReg }.setOperand<0>(copy).setOperand<1>(reg));
    return copy;
}

bool ISelContext::isSafeToUse(const MIROperand& val, const MIROperand& def) const {
    if(!isOperandISAReg(val))
        return true;
    return !isDefinedAfter(val, *lookupDef(def), nullptr);
}

void postLegalizeFunc(MIRFunction& func, CodeGenContext& ctx) {
    if(ctx.flags.postSA) {
        for(auto& block : func.blocks()) {
            auto& instructions = block->instructions();
            for(auto iter = instructions.begin(); iter != instructions.end();) {
                auto nextIter = std::next(iter);
                auto& inst = *iter;
                auto& instInfo = ctx.instInfo.getInstInfo(inst);
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                    if(auto& op = inst.getOperand(idx); isOperandStackObject(op)) {
                        ctx.iselInfo.legalizeInstWithStackOperand(InstLegalizeContext{ inst, instructions, iter, ctx }, op,
                                                                  func.stackObjects().at(op));
                    }
                }
                iter = nextIter;
            }
        }
    }

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

    assert(func.verify(std::cerr, ctx));

    for(auto& block : func.blocks())
        ctx.iselInfo.postLegalizeInstSeq(ctx, block->instructions());
    ctx.target.postLegalizeFunc(func, ctx);
}

void preRALegalizeFunc(MIRFunction& func, CodeGenContext& ctx) {
    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        for(auto iter = instructions.begin(); iter != instructions.end(); ++iter) {
            auto& inst = *iter;
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            if(requireFlag(instInfo.getInstFlag(), InstFlagLegalizePreRA)) {
                ctx.iselInfo.preRALegalizeInst(InstLegalizeContext{ inst, instructions, iter, ctx });
            }
        }
    }

    if constexpr(Config::debug) {
        for(auto& block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                auto& instInfo = ctx.instInfo.getInstInfo(inst);
                if(requireFlag(instInfo.getInstFlag(), InstFlagLegalizePreRA)) {
                    reportLegalizationFailure(inst, ctx, CMMC_LOCATION());
                }
            }
        }
    }
}

bool TargetISelInfo::expandSelect(MIRInst& inst, ISelContext& ctx) {
    const auto dst = inst.getOperand(0);
    const auto cond = inst.getOperand(1);
    const auto trueV = inst.getOperand(2);
    const auto falseV = inst.getOperand(3);

    auto iter = ctx.getCurrentInstIter();
    auto& instrcutions = ctx.getInstructions();
    auto& codeGenCtx = ctx.getCodeGenCtx();
    *iter = MIRInst{ selectCopyOpcode(dst, trueV) }.setOperand<0>(dst).setOperand<1>(trueV);
    auto branch = instrcutions.insert(std::next(iter), MIRInst{ InstBranch });

    constexpr auto prob = defaultSelectProb;
    auto block = ctx.getCurrentBlock();
    auto func = block->getFunction();
    auto falseBlock = std::make_unique<MIRBasicBlock>(block->symbol().withID(static_cast<int32_t>(codeGenCtx.nextId())), func,
                                                      block->getTripCount() * (1.0 - prob));
    auto postBlock = std::make_unique<MIRBasicBlock>(block->symbol().withID(static_cast<int32_t>(codeGenCtx.nextId())), func,
                                                     block->getTripCount());
    branch->setOperand<0>(cond).setOperand<1>(MIROperand::asReloc(postBlock.get())).setOperand<2>(MIROperand::asProb(prob));
    auto& onFalseInstructions = falseBlock->instructions();
    onFalseInstructions.push_back(MIRInst{ selectCopyOpcode(dst, falseV) }.setOperand<0>(dst).setOperand<1>(falseV));
    onFalseInstructions.push_back(MIRInst{ InstJump }.setOperand<0>(MIROperand::asReloc(postBlock.get())));
    auto& postInstructions = postBlock->instructions();
    postInstructions.splice(postInstructions.end(), instrcutions, std::next(branch), instrcutions.end());

    // FIXME: ctx.getCurrentBlock
    auto nextBlockIter =
        std::next(std::find_if(func->blocks().begin(), func->blocks().end(), [&](auto& b) { return b.get() == block; }));
    func->blocks().insert(nextBlockIter, std::move(falseBlock));
    func->blocks().insert(nextBlockIter, std::move(postBlock));
    return true;
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

    // FIXME: ctx.getCurrentBlock
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
        return InstCopyToReg;
    }
    if(src.isImm())
        return InstLoadImm;
    if(src.isReg() && isISAReg(src.reg()))
        return InstCopyFromReg;
    assert(isOperandVReg(src) && isOperandVReg(dst));
    return InstCopy;
}

MIROperand getZExtMask(OperandType dstType, OperandType srcType) {
    intmax_t imm;
    switch(srcType) {
        case OperandType::Bool:
            imm = 1;
            break;
        case OperandType::Int8:
            imm = 0xff;
            break;
        case OperandType::Int16:
            imm = 0xffff;
            break;
        case OperandType::Int32:
            imm = 0xffffffff;
            break;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
    return MIROperand::asImm(imm, dstType);
}
MIROperand getTruncMask(OperandType dstType, OperandType srcType) {
    return getZExtMask(srcType, dstType);  // NOLINT
}
intmax_t getMaxSignedValue(OperandType type) {
    switch(type) {
        case OperandType::Int32:
            return std::numeric_limits<int32_t>::max();
        case OperandType::Int64:
            return std::numeric_limits<int64_t>::max();
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}
uintmax_t getMaxUnsignedValue(OperandType type) {
    switch(type) {
        case OperandType::Int32:
            return std::numeric_limits<uint32_t>::max();
        case OperandType::Int64:
            return std::numeric_limits<uint64_t>::max();
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}
intmax_t getMinSignedValue(OperandType type) {
    switch(type) {
        case OperandType::Int32:
            return std::numeric_limits<int32_t>::min();
        case OperandType::Int64:
            return std::numeric_limits<int64_t>::min();
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}
uintmax_t getUnsignedImm(const MIROperand& imm) {
    assert(imm.isImm());
    switch(imm.type()) {
        case OperandType::Int32:
            return static_cast<uint32_t>(imm.imm());
        case OperandType::Int64:
            return static_cast<uint64_t>(imm.imm());
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

MIROperand getTruncShift(const OperandType type) {
    switch(type) {
        case OperandType::Int8:
            return MIROperand::asImm(32 - 8, OperandType::Int32);
        case OperandType::Int16:
            return MIROperand::asImm(32 - 16, OperandType::Int32);
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

// Please refer to Hacker's Delight 2nd Edition, Cheaper 10, Integer Division By Constants, Figure 10-1
bool isOperandSDiv32ByConstantDivisor(const MIROperand& rhs) {
    return isOperandImm(rhs) && rhs.type() == OperandType::Int32 && isSignedImm<32>(rhs.imm()) &&
        !(-1 <= rhs.imm() && rhs.imm() <= 1);
}
bool selectSDiv32ByConstant(const MIROperand& rhs, MIROperand& magic, MIROperand& shift, MIROperand& factor) {
    // only available for [-2^31, -2) U [2, 2^31)
    if(!isOperandSDiv32ByConstantDivisor(rhs))
        return false;
    const auto d = static_cast<int32_t>(rhs.imm());
    constexpr uint32_t two31 = 0x80000000;

    const auto ad = static_cast<uint32_t>(std::abs(d));
    const auto t = two31 + (static_cast<uint32_t>(d) >> 31);
    const auto anc = t - 1 - t % ad;
    int32_t p = 31;
    auto q1 = two31 / anc;
    auto r1 = two31 - q1 * anc;
    auto q2 = two31 / ad;
    auto r2 = two31 - q2 * ad;
    uint32_t delta;

    do {
        ++p;
        q1 *= 2;
        r1 *= 2;
        if(r1 >= anc) {
            ++q1;
            r1 -= anc;
        }

        q2 *= 2;
        r2 *= 2;
        if(r2 >= ad) {
            q2 += 1;
            r2 -= ad;
        }
        delta = ad - r2;
    } while(q1 < delta || (q1 == delta && r1 == 0));

    const auto mUnsigned = q2 + 1;
    auto m = static_cast<intmax_t>(static_cast<int32_t>(mUnsigned));
    int32_t factorVal = 0;
    if(d < 0) {
        m = -m;
        if(m > 0)
            factorVal = -1;
    } else if(d > 0 && m < 0)
        factorVal = 1;
    magic = MIROperand::asImm(m, OperandType::Int32);
    shift = MIROperand::asImm(p - 32, OperandType::Int32);
    factor = MIROperand::asImm(factorVal, OperandType::Int32);
    return true;
}

bool isPowerOf2Divisor(const MIROperand& rhs) {
    return rhs.isImm() && rhs.type() == OperandType::Int32 && isSignedImm<32>(rhs.imm()) && rhs.imm() > 1 &&
        isPowerOf2(static_cast<size_t>(rhs.imm()));
}
bool selectSDiv32ByPowerOf2(const MIROperand& rhs, MIROperand& shift) {
    if(!isPowerOf2Divisor(rhs))
        return false;
    shift = MIROperand::asImm(ilog2(static_cast<size_t>(rhs.imm())), OperandType::Int32);
    return true;
}

CMMC_MIR_NAMESPACE_END

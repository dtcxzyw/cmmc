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

#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Target/TAC/TACTarget.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <variant>

CMMC_NAMESPACE_BEGIN

Operand TACLoweringInfo::getZeroImpl(LoweringContext& ctx, const Type* type) const {
    auto& pool = ctx.getAllocationPool(AddressSpace::Constant);
    auto zero = pool.allocate(type);
    if(type->isInteger())
        pool.getMetadata(zero) = ConstantInteger::get(type, 0);
    else
        reportUnreachable();
    return zero;
}
TACLoweringInfo::TACLoweringInfo()
    : mUnused{ String::get("unused") }, mGPR{ String::get("v") }, mConstant{ String::get("c") }, mStack{ String::get("m") },
      mVReg{ String::get("vr") } {}
String TACLoweringInfo::getOperand(const Operand& operand) const {
    if(operand == unusedOperand)
        return mUnused;
    switch(operand.addressSpace) {
        case TACAddressSpace::Constant:
            return mConstant.withID(static_cast<int32_t>(operand.id));
        case TACAddressSpace::Stack:
            return mStack.withID(static_cast<int32_t>(operand.id));
        case TACAddressSpace::VirtualReg:
            return mVReg.withID(static_cast<int32_t>(operand.id));
        case TACAddressSpace::GPR:
            return mGPR.withID(static_cast<int32_t>(operand.id));
        default:
            reportUnreachable();
    }
}
std::string_view TACLoweringInfo::getIntrinsicName(uint32_t intrinsicID) const {
    switch(static_cast<TACIntrinsic>(intrinsicID)) {
        case TACIntrinsic::Read:
            return "read";
        case TACIntrinsic::Write:
            return "write";
        case TACIntrinsic::PushArg:
            return "arg";
        default:
            reportUnreachable();
    }
}
void TACLoweringInfo::lower(ReturnInst* inst, LoweringContext& ctx) const {
    ctx.emitInst<RetMInst>(inst->operands().empty() ? ctx.getZero(IntegerType::get(32)) : ctx.mapOperand(inst->getOperand(0)));
}
void TACLoweringInfo::lower(FunctionCallInst* inst, LoweringContext& ctx) const {
    auto callee = inst->operands().back();
    if(auto func = dynamic_cast<Function*>(callee)) {
        if(func->blocks().empty()) {
            if(func->getSymbol().prefix() == "read") {
                assert(inst->operands().size() == 1 && inst->getType()->isSame(IntegerType::get(32)));
                const auto reg = ctx.getAllocationPool(TACAddressSpace::VirtualReg).allocate(inst->getType());
                ctx.emitInst<ControlFlowIntrinsicMInst>(static_cast<uint32_t>(TACIntrinsic::Read), unusedOperand, reg);
                ctx.addOperand(inst, reg);
            } else if(func->getSymbol().prefix() == "write") {
                assert(inst->operands().size() == 2 && inst->getOperand(0)->getType()->isSame(IntegerType::get(32)));
                ctx.emitInst<ControlFlowIntrinsicMInst>(static_cast<uint32_t>(TACIntrinsic::Write),
                                                        ctx.mapOperand(inst->getOperand(0)), unusedOperand);
            }
        } else {
            const auto global = ctx.mapGlobal(func);
            // NOTICE: push args in reversed order
            for(auto idx = static_cast<int32_t>(inst->operands().size() - 2); idx >= 0; --idx) {
                const auto arg = inst->getOperand(static_cast<uint32_t>(idx));
                ctx.emitInst<ControlFlowIntrinsicMInst>(static_cast<uint32_t>(TACIntrinsic::PushArg), ctx.mapOperand(arg),
                                                        unusedOperand);
            }
            const auto reg = ctx.getAllocationPool(TACAddressSpace::VirtualReg).allocate(inst->getType());
            ctx.emitInst<CallMInst>(global, reg);
            ctx.addOperand(inst, reg);
        }
    } else
        DiagnosticsContext::get().attach<Reason>("dynamic call is not supported").reportFatal();
}
void TACLoweringInfo::lower(CastInst* inst, LoweringContext& ctx) const {
    const auto src = ctx.mapOperand(inst->getOperand(0));
    const auto dst = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());

    switch(inst->getInstID()) {
        case InstructionID::ZExt:
            [[fallthrough]];
        case InstructionID::SExt:
            [[fallthrough]];
        case InstructionID::Bitcast: {
            ctx.emitInst<CopyMInst>(src, false, 0, dst, false, 0, static_cast<uint32_t>(inst->getType()->getFixedSize()), false);
            break;
        }
        case InstructionID::Trunc:
            reportNotImplemented();
        default:
            reportUnreachable();
    }
    ctx.addOperand(inst, dst);
}
void TACLoweringInfo::lower(FMAInst*, LoweringContext&) const {
    DiagnosticsContext::get().attach<Reason>("FMA is not supported by TAC").reportFatal();
}
void TACLoweringInfo::lower(CompareInst* inst, LoweringContext& ctx) const {
    bool onlyUsedByCondition = true, start = false;
    for(auto rhs : inst->getBlock()->instructions()) {
        if(start && rhs->hasOperand(inst)) {
            if(rhs->getInstID() == InstructionID::ConditionalBranch) {
                if(rhs->getOperand(0) == inst) {
                    bool valid = true;
                    for(uint32_t idx = 1; idx < rhs->operands().size(); ++idx)
                        if(rhs->getOperand(idx) == inst) {
                            valid = false;
                            break;
                        }
                    if(valid)
                        continue;
                }
            }

            onlyUsedByCondition = false;
            break;
        }
        if(rhs == inst)
            start = true;
    }

    if(onlyUsedByCondition) {
        LoweringInfo::lower(inst, ctx);
        return;
    }

    if(inst->getInstID() != InstructionID::SCmp)
        reportUnreachable();

    const auto ret = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    const auto srcBlock = ctx.getCurrentBasicBlock();
    const auto trueBlock = ctx.addBlockAfter(srcBlock->getTripCount() * defaultSelectProb);
    ctx.setCurrentBasicBlock(trueBlock);
    const auto falseBlock = ctx.addBlockAfter(srcBlock->getTripCount() * (1.0 - defaultSelectProb));
    ctx.setCurrentBasicBlock(falseBlock);
    const auto nextBlock = ctx.addBlockAfter(srcBlock->getTripCount());
    ctx.setCurrentBasicBlock(srcBlock);
    ctx.emitInst<BranchCompareMInst>(GMIRInstID::SCmp, ctx.mapOperand(inst->getOperand(0)), ctx.mapOperand(inst->getOperand(1)),
                                     getInvertedOp(inst->getOp()), defaultSelectProb, falseBlock);
    ctx.setCurrentBasicBlock(trueBlock);
    ctx.emitInst<ConstantMInst>(ret, static_cast<intmax_t>(1));
    ctx.emitInst<BranchMInst>(nextBlock);
    ctx.setCurrentBasicBlock(falseBlock);
    ctx.emitInst<ConstantMInst>(ret, static_cast<intmax_t>(0));
    ctx.emitInst<BranchMInst>(nextBlock);

    ctx.addOperand(inst, ret);
    ctx.setCurrentBasicBlock(nextBlock);
}

CMMC_NAMESPACE_END

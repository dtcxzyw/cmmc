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

#include "cmmc/CodeGen/GMIR.hpp"
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Target/TAC/TACTarget.hpp>

CMMC_NAMESPACE_BEGIN

Operand TACLoweringVisitor::getZero() const {
    reportNotImplemented();
}
TACLoweringVisitor::TACLoweringVisitor()
    : mUnused{ String::get("unused") }, mGPR{ String::get("v") }, mConstant{ String::get("c") }, mStack{ String::get("m") },
      mVReg{ String::get("vr") } {}
String TACLoweringVisitor::getOperand(const Operand& operand) const {
    if(operand == unusedOperand)
        return mUnused;
    switch(operand.addressSpace) {
        case TACAddressSpace::Constant:
            return mConstant.withID(operand.id);
        case TACAddressSpace::Stack:
            return mStack.withID(operand.id);
        case TACAddressSpace::VirtualReg:
            return mVReg.withID(operand.id);
        case TACAddressSpace::GPR:
            return mGPR.withID(operand.id);
        default:
            reportUnreachable();
    }
}
std::string_view TACLoweringVisitor::getIntrinsicName(uint32_t intrinsicID) const {
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
void TACLoweringVisitor::lower(ReturnInst* inst, LoweringContext& ctx) const {
    ctx.emitInst<RetMInst>(inst->operands().empty() ? getZero() : ctx.mapOperand(inst->getOperand(0)));
}
void TACLoweringVisitor::lower(FunctionCallInst* inst, LoweringContext& ctx) const {
    auto callee = inst->operands().back();
    if(auto func = dynamic_cast<Function*>(callee)) {
        if(func->blocks().empty()) {
            if(func->getSymbol().prefix() == "read") {
                assert(inst->operands().size() == 1 && inst->getType()->isSame(IntegerType::get(32)));
                const auto reg = ctx.newReg(TACAddressSpace::VirtualReg);
                ctx.emitInst<ControlFlowIntrinsicMInst>(static_cast<uint32_t>(TACIntrinsic::Read), unusedOperand, reg);
                ctx.addOperand(inst, reg);
            } else if(func->getSymbol().prefix() == "write") {
                assert(inst->operands().size() == 2 && inst->getOperand(0)->getType()->isSame(IntegerType::get(32)));
                ctx.emitInst<ControlFlowIntrinsicMInst>(static_cast<uint32_t>(TACIntrinsic::Read),
                                                        ctx.mapOperand(inst->getOperand(0)), unusedOperand);
            }
        } else {
            const auto global = ctx.mapGlobal(func);
            for(uint32_t idx = 0; idx + 1 < inst->operands().size(); ++idx) {
                const auto arg = inst->getOperand(idx);
                ctx.emitInst<ControlFlowIntrinsicMInst>(static_cast<uint32_t>(TACIntrinsic::PushArg), ctx.mapOperand(arg),
                                                        unusedOperand);
            }
            const auto reg = ctx.newReg(TACAddressSpace::VirtualReg);
            ctx.emitInst<CallMInst>(global, reg);
            ctx.addOperand(inst, reg);
        }
    } else
        DiagnosticsContext::get().attach<Reason>("dynamic call is not supported").reportFatal();
}
void TACLoweringVisitor::lower(FMAInst*, LoweringContext&) const {
    DiagnosticsContext::get().attach<Reason>("FMA is not supported by TAC").reportFatal();
}

CMMC_NAMESPACE_END

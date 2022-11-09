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

#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Target/TAC/TACTarget.hpp>
#include <cstdint>
#include <limits>
#include <memory>
#include <ostream>
#include <string>
#include <unordered_map>
#include <variant>

CMMC_NAMESPACE_BEGIN

/*
void TACInstInfo::emitBinaryOp(TACInst instID, Instruction* inst, LoweringContext& ctx) const {
    const auto ret = ctx.newReg();
    const auto lhs = ctx.mapOperand(inst->getOperand(0));
    const auto rhs = ctx.mapOperand(inst->getOperand(1));
    ctx.emitInst(instID).setReg(0, lhs).setReg(1, rhs).setWriteReg(ret);
    ctx.addOperand(inst, ret);
}

void TACInstInfo::emitBranch(const BranchTarget& target, LoweringContext& ctx) const {
    const auto dstBlock = target.getTarget();
    auto& dst = dstBlock->args();
    auto& src = target.getArgs();
    for(size_t idx = 0; idx < dst.size(); ++idx) {
        const auto arg = ctx.mapOperand(src[idx]);
        ctx.emitInst(TACInst::Assign).setWriteReg(ctx.mapBlockArg(dst[idx])).setReg(0, arg);
    }
    const auto dstMachineBlock = ctx.mapBlock(dstBlock);
    ctx.emitInst(TACInst::Branch).setImm(0, reinterpret_cast<uint64_t>(dstMachineBlock));
    ctx.addLink(dstMachineBlock);
}

Register TACInstInfo::emitConstant(ConstantValue* value, LoweringContext& ctx) const {
    if(value->getType()->isInteger()) {
        const auto reg = ctx.newReg();
        ctx.emitInst(TACInst::Assign)
            .setWriteReg(reg)
            .setImm(0, static_cast<int64_t>(value->as<ConstantInteger>()->getSignExtended()))
            .addAttr(TACInstAttr::WithImm0);
        return reg;
    }
    reportUnreachable();
}

void TACInstInfo::emit(Instruction* inst, LoweringContext& ctx) const {
    switch(inst->getInstID()) {
        case InstructionID::Add: {
            emitBinaryOp(TACInst::Add, inst, ctx);
            break;
        }
        case InstructionID::Sub: {
            emitBinaryOp(TACInst::Sub, inst, ctx);
            break;
        }
        case InstructionID::Mul: {
            emitBinaryOp(TACInst::Mul, inst, ctx);
            break;
        }
        case InstructionID::SDiv: {
            emitBinaryOp(TACInst::Div, inst, ctx);
            break;
        }
        case InstructionID::Ret: {
            const auto val = !inst->operands().empty() ? ctx.mapOperand(inst->getOperand(0)) : invalidReg;
            auto& minst = ctx.emitInst(TACInst::Return);
            if(val != invalidReg)
                minst.setReg(0, val);
            break;
        }
        case InstructionID::Call: {
            auto& operands = inst->operands();
            auto callee = operands.back();
            if(!callee->isGlobal())
                DiagnosticsContext::get().attach<Reason>("dynamic callee is not supported by TAC target").reportFatal();
            const auto calleeFunc = callee->as<Function>();

            const auto funcName = calleeFunc->getSymbol();
            if(funcName == "read") {
                const auto reg = ctx.newReg();
                ctx.emitInst(TACInst::Read).setWriteReg(reg);
                ctx.addOperand(inst, reg);
            } else if(funcName == "write") {
                const auto arg = ctx.mapOperand(inst->getOperand(0));
                ctx.emitInst(TACInst::Write).setReg(0, arg);
            } else {
                for(auto& operand : inst->operands()) {
                    if(&operand != &inst->operands().back()) {
                        const auto arg = ctx.mapOperand(operand);
                        ctx.emitInst(TACInst::PushArg).setReg(0, arg);
                    } else {
                        auto& minst = ctx.emitInst(TACInst::Call).setAddr({ Global{ ctx.mapGlobal(calleeFunc) }, 0 });
                        const auto ret = callee->getType()->as<FunctionType>()->getRetType();
                        if(!ret->isVoid()) {
                            const auto reg = ctx.newReg();
                            minst.setWriteReg(reg);
                            ctx.addOperand(inst, reg);
                        }
                    }
                }
            }
            break;
        }
        case InstructionID::Branch: {
            const auto branchInst = inst->as<ConditionalBranchInst>();
            emitBranch(branchInst->getTrueTarget(), ctx);
            break;
        }
        case InstructionID::ConditionalBranch: {
            const auto branchInst = inst->as<ConditionalBranchInst>();
            const auto falsePrepareblock = ctx.addBlockAfter();

            const auto flag = inst->getOperand(0);
            if(!flag->is<CompareInst>())
                reportUnreachable();
            const auto cmpInst = flag->as<CompareInst>();
            const auto lhs = ctx.mapOperand(cmpInst->getOperand(0));
            const auto rhs = ctx.mapOperand(cmpInst->getOperand(1));
            auto& minst = ctx.emitInst(TACInst::BranchCompare).setReg(0, lhs).setReg(1, rhs);

            const auto op = cmpInst->getOp();
            switch(op) {
                case CompareOp::Equal:
                    minst.addAttr(TACInstAttr::CmpEqual);
                    break;
                case CompareOp::NotEqual:
                    minst.addAttr(TACInstAttr::CmpNotEqual);
                    break;
                case CompareOp::LessThan:
                    minst.addAttr(TACInstAttr::CmpLessThan);
                    break;
                case CompareOp::LessEqual:
                    minst.addAttr(TACInstAttr::CmpLessEqual);
                    break;
                case CompareOp::GreaterThan:
                    minst.addAttr(TACInstAttr::CmpGreaterThan);
                    break;
                case CompareOp::GreaterEqual:
                    minst.addAttr(TACInstAttr::CmpGreaterEqual);
                    break;
                default:
                    reportUnreachable();
            }
            // bnez %cond, false_label
            minst.setImm(2, reinterpret_cast<uint64_t>(falsePrepareblock));
            ctx.addLink(falsePrepareblock);
            emitBranch(branchInst->getTrueTarget(), ctx);

            ctx.setCurrentBasicBlock(falsePrepareblock);
            emitBranch(branchInst->getFalseTarget(), ctx);
            break;
        }
        case InstructionID::Load: {
            const auto reg = ctx.newReg();
            const auto addr = ctx.mapAddress(inst->getOperand(0));
            ctx.emitInst(TACInst::Fetch).setAddr(addr).setWriteReg(reg);
            ctx.addOperand(inst, reg);
            break;
        }
        case InstructionID::Store: {
            const auto addr = ctx.mapAddress(inst->getOperand(0));
            const auto val = ctx.mapOperand(inst->getOperand(1));
            ctx.emitInst(TACInst::Deref).setAddr(addr).setReg(1, val);
            break;
        }
        case InstructionID::SCmp:  // Fused with branchCompare
            break;
        case InstructionID::Alloc:  // Handled before lowering
            break;
        case InstructionID::Neg: {
            const auto reg = ctx.newReg();
            const auto val = ctx.mapOperand(inst->getOperand(0));
            ctx.emitInst(TACInst::Sub).setImm(0, 0).setReg(1, val).addAttr(TACInstAttr::WithImm0).setWriteReg(reg);
            ctx.addOperand(inst, reg);
            break;
        }
        default: {
            inst->dump(reportError() << "unsupported inst ");
            reportNotImplemented();
        }
    }
}*/

CMMC_NAMESPACE_END

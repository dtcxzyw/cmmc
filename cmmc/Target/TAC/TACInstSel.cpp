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
#include <cmmc/CodeGen/MachineInst.hpp>
#include <cmmc/CodeGen/MachineModule.hpp>
#include <cmmc/CodeGen/Register.hpp>
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

bool TACInstInfo::isSupportedInstruction(InstructionID inst) const noexcept {
    return true;
}

void TACInstInfo::emitBinaryOp(TACInst instID, Instruction* inst, LoweringContext& ctx) const {
    const auto ret = ctx.newReg();
    const auto lhs = ctx.mapOperand(inst->getOperand(0));
    const auto rhs = ctx.mapOperand(inst->getOperand(1));
    auto& minst = ctx.emitInst(instID).setReg(0, lhs).setReg(1, rhs);
    if(inst->isFloatingPointOp())
        minst.addAttr(TACInstAttr::FloatingPointOp);
    ctx.addOperand(inst, ret);
}

void TACInstInfo::emitBranch(const BranchTarget& target, LoweringContext& ctx) const {
    const auto dstBlock = target.getTarget();
    auto& dst = dstBlock->args();
    auto& src = target.getArgs();
    for(size_t idx = 0; idx < dst.size(); ++idx) {
        const auto arg = ctx.mapOperand(src[idx]);
        ctx.emitInst(TACInst::Copy).setWriteReg(ctx.mapBlockArg(dst[idx])).setReg(0, arg);
    }
    const auto dstMachineBlock = ctx.mapBlock(dstBlock);
    ctx.emitInst(TACInst::Branch).setImm(0, reinterpret_cast<uint64_t>(dstMachineBlock));
    ctx.addLink(dstMachineBlock);
}

Register TACInstInfo::emitConstant(ConstantValue* value, LoweringContext& ctx) const {
    const auto reg = ctx.newReg();
    if(value->getType()->isInteger()) {
        ctx.emitInst(TACInst::Copy)
            .setWriteReg(reg)
            .setImm(0, static_cast<int64_t>(value->as<ConstantInteger>()->getSignExtended()))
            .addAttr(TACInstAttr::WithImm0);
        return reg;
    }
    if(value->getType()->isFloatingPoint()) {
        const auto fpValue = value->as<ConstantFloatingPoint>()->getValue();
        const auto ptr = static_cast<const void*>(&fpValue);
        ctx.emitInst(TACInst::Copy).setWriteReg(reg).setImm(0, *static_cast<const int64_t*>(ptr)).addAttr(TACInstAttr::WithImm0);
        return reg;
    }
    reportNotImplemented();
}

void TACInstInfo::emit(Instruction* inst, LoweringContext& ctx) const {
    switch(inst->getInstID()) {
        case InstructionID::Add:
            [[fallthrough]];
        case InstructionID::FAdd: {
            emitBinaryOp(TACInst::Add, inst, ctx);
            break;
        }
        case InstructionID::Sub:
            [[fallthrough]];
        case InstructionID::FSub: {
            emitBinaryOp(TACInst::Sub, inst, ctx);
            break;
        }
        case InstructionID::Mul:
            [[fallthrough]];
        case InstructionID::FMul: {
            emitBinaryOp(TACInst::Mul, inst, ctx);
            break;
        }
        case InstructionID::SDiv:
            [[fallthrough]];
        case InstructionID::FDiv: {
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
                reportFatal("");
            const auto calleeFunc = callee->as<Function>();

            const std::string funcName{ calleeFunc->getSymbol() };
            if(funcName == "read") {
                const auto reg = ctx.newReg();
                ctx.emitInst(TACInst::Read).setWriteReg(reg);
                ctx.addOperand(inst, reg);
            } else if(funcName == "write") {
                const auto arg = ctx.mapOperand(inst->getOperand(0));
                ctx.emitInst(TACInst::Write).setReg(0, arg);
            } else {
                for(auto operand : inst->operands()) {
                    if(operand != callee) {
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

            // bnez %cond, false_label
            const auto flag = ctx.mapOperand(inst->getOperand(0));
            ctx.emitInst(TACInst::BranchCompare)
                .setReg(0, flag)
                .setImm(1, 0)
                .addAttr(TACInstAttr::WithImm1)
                .addAttr(TACInstAttr::CmpNotEqual)
                .setImm(2, reinterpret_cast<uint64_t>(falsePrepareblock));
            ctx.addLink(falsePrepareblock);
            emitBranch(branchInst->getTrueTarget(), ctx);

            ctx.setCurrentBasicBlock(falsePrepareblock);
            emitBranch(branchInst->getFalseTarget(), ctx);
            break;
        }
        case InstructionID::Load: {
            const auto reg = ctx.newReg();
            const auto addr = ctx.mapAddress(inst->getOperand(0));
            ctx.emitInst(TACInst::Load).setAddr(addr).setWriteReg(reg);
            ctx.addOperand(inst, reg);
            break;
        }
        case InstructionID::Store: {
            const auto addr = ctx.mapAddress(inst->getOperand(0));
            const auto val = ctx.mapOperand(inst->getOperand(1));
            ctx.emitInst(TACInst::Store).setAddr(addr).setReg(1, val);
            break;
        }
        case InstructionID::SCmp:
        case InstructionID::UCmp:
        case InstructionID::FCmp: {
            const auto reg = ctx.newReg();
            const auto lhs = ctx.mapOperand(inst->getOperand(0));
            const auto rhs = ctx.mapOperand(inst->getOperand(1));
            auto& minst = ctx.emitInst(TACInst::Compare).setReg(0, lhs).setReg(1, rhs).setWriteReg(reg);

            const auto op = inst->as<CompareInst>()->getOp();

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

            if(inst->getInstID() == InstructionID::FCmp)
                minst.addAttr(TACInstAttr::FloatingPointOp);

            ctx.addOperand(inst, reg);
            break;
        }
        case InstructionID::Alloc: {
            const auto reg = ctx.newReg();
            const auto addr = ctx.mapAddress(inst);
            ctx.emitInst(TACInst::LoadAddress).setAddr(addr).setWriteReg(reg);
            ctx.addOperand(inst, reg);
            break;
        }
        case InstructionID::Neg:
        case InstructionID::FNeg: {
            const auto reg = ctx.newReg();
            const auto val = ctx.mapOperand(inst->getOperand(0));
            auto& minst = ctx.emitInst(TACInst::Sub).setImm(0, 0).setReg(1, val).addAttr(TACInstAttr::WithImm0).setWriteReg(reg);
            if(inst->getInstID() == InstructionID::FNeg)
                minst.addAttr(TACInstAttr::FloatingPointOp);
            ctx.addOperand(inst, reg);
            break;
        }
        default: {
            inst->dump(reportError() << "unsupported inst ");
            reportNotImplemented();
        }
    }
}

CMMC_NAMESPACE_END

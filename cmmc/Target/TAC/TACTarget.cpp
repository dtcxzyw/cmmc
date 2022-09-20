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
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Support/Options.hpp>
#include <cstdint>
#include <limits>
#include <memory>
#include <ostream>
#include <string>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

enum class TACInstAttr : uint32_t {
    FuseLoadStore1 = 1 << 0,
    FuseLoadStore2 = 1 << 1,
    FuseLoadStore3 = 1 << 2,

    WithImm1 = 1 << 3,
    WithImm2 = 1 << 4,
    WithImm3 = 1 << 5,

    CompareEqual = 1 << 6,
    CompareLess = 1 << 7,
    CompareReverse = 1 << 8,

    CmpEqual = CompareEqual,
    CmpNotEqual = CompareEqual | CompareReverse,
    CmpLessThan = CompareLess,
    CmpLessEqual = CompareLess | CompareEqual,
    CmpGreaterThan = CmpLessEqual | CompareReverse,
    CmpGreaterEqual = CmpLessThan | CompareReverse,
    CmpMask = CompareEqual | CompareLess | CompareReverse,

    FloatingPointOp = 1 << 9,
};

enum class TACInst : uint32_t {
    Load,
    Store,
    Read,
    Write,
    Return,
    Add,
    Sub,
    Mul,
    Div,
    PushArg,
    Call,
    Compare,
    Branch,
    BranchCompare,
    Imm,
    Copy,
};

extern StringOpt targetMachine;

class TACDataLayout final : public DataLayout {
public:
    Endian getEndian() const noexcept override {
        return Endian::Little;
    }
    size_t getBuiltinAlignment(const Type* type) const noexcept override {
        assert(type->isPrimitive());
        if(type->isPointer())
            return getPointerSize();
        return type->getFixedSize();
    }
    size_t getPointerSize() const noexcept override {
        return 4;
    }
};

class TACGPRClass final : public TargetRegisterClass {
public:
    uint32_t count() const noexcept override {
        return 1024;
    }
};

class TACInstInfo final : public TargetInstInfo {
    TACGPRClass mGPR;

public:
    const TargetRegisterClass& getRegisterClass(uint32_t idx) const noexcept override {
        return mGPR;
    }

    const TargetInstClass& getInstClass(uint32_t instID) const override {
        reportNotImplemented();
    }

    bool isSupportedInstruction(InstructionID inst) const noexcept override {
        return true;
    }

    void emitBinaryOp(TACInst instID, Instruction* inst, LoweringContext& ctx) const {
        const auto ret = ctx.newReg();
        auto& minst =
            ctx.emitInst(instID).setReg(0, ctx.mapOperand(inst->getOperand(0))).setReg(1, ctx.mapOperand(inst->getOperand(1)));
        if(inst->getOperand(0)->getType()->isFloatingPoint())
            minst.addAttr(TACInstAttr::FloatingPointOp);
        ctx.addOperand(inst, ret);
    }

    void emitBranch(const BranchTarget& target, LoweringContext& ctx) const {
        const auto dstBlock = target.getTarget();
        auto& dst = dstBlock->args();
        auto& src = target.getArgs();
        for(size_t idx = 0; idx < dst.size(); ++idx)
            ctx.emitInst(TACInst::Copy).setWriteReg(ctx.mapBlockArg(dst[idx])).setReg(0, ctx.mapOperand(src[idx]));
        ctx.emitInst(TACInst::Branch).setImm(0, reinterpret_cast<uint64_t>(ctx.mapBlock(dstBlock)));
    }

    Register emitConstant(ConstantValue* value, LoweringContext& ctx) const override {
        const auto reg = ctx.newReg();
        if(value->getType()->isInteger()) {
            ctx.emitInst(TACInst::Imm).setWriteReg(reg).setImm(0, static_cast<int64_t>(value->as<ConstantInteger>()->getValue()));
            return reg;
        }
        if(value->getType()->isFloatingPoint()) {
            const auto fpValue = value->as<ConstantFloatingPoint>()->getValue();
            const auto ptr = static_cast<const void*>(&fpValue);
            ctx.emitInst(TACInst::Imm).setWriteReg(reg).setImm(0, *static_cast<const int64_t*>(ptr));
            return reg;
        }
        reportNotImplemented();
    }

    void emit(Instruction* inst, LoweringContext& ctx) const override {
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
                auto& minst = ctx.emitInst(TACInst::Return);
                if(!inst->operands().empty())
                    minst.setReg(0, ctx.mapOperand(inst->getOperand(0)));
                break;
            }
            case InstructionID::Call: {
                auto& operands = inst->operands();
                auto callee = operands.back();
                if(!callee->isGlobal())
                    reportFatal("");
                const auto calleeFunc = callee->as<Function>();

                using namespace std::string_literals;
                static const std::unordered_set<std::string> readIntrinsics = {
                    "spl.read.char", "spl.read.int", "spl.read.float"  //
                };
                static const std::unordered_set<std::string> writeIntrinsics = {
                    "spl.write.char", "spl.write.int", "spl.write.float"  //
                };

                const std::string funcName{ calleeFunc->getSymbol() };
                if(readIntrinsics.count(funcName)) {
                    const auto reg = ctx.newReg();
                    ctx.emitInst(TACInst::Read).setWriteReg(reg);
                    ctx.addOperand(inst, reg);
                } else if(writeIntrinsics.count(funcName)) {
                    ctx.emitInst(TACInst::Write).setReg(0, ctx.mapOperand(inst->getOperand(0)));
                } else {
                    for(auto operand : inst->operands()) {
                        if(operand != callee) {
                            ctx.emitInst(TACInst::PushArg).setReg(0, ctx.mapOperand(operand));
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
                ctx.emitInst(TACInst::BranchCompare)
                    .setReg(0, ctx.mapOperand(inst->getOperand(0)))
                    .setImm(1, 0)
                    .addAttr(TACInstAttr::WithImm1)
                    .addAttr(TACInstAttr::CmpNotEqual)
                    .setImm(2, reinterpret_cast<uint64_t>(falsePrepareblock));
                emitBranch(branchInst->getTrueTarget(), ctx);

                ctx.setCurrentBasicBlock(falsePrepareblock);
                emitBranch(branchInst->getFalseTarget(), ctx);
                break;
            }
            case InstructionID::Load: {
                const auto reg = ctx.newReg();
                ctx.emitInst(TACInst::Load).setAddr(ctx.mapAddress(inst->getOperand(0))).setWriteReg(reg);
                ctx.addOperand(inst, reg);
                break;
            }
            case InstructionID::Store: {
                ctx.emitInst(TACInst::Store)
                    .setAddr(ctx.mapAddress(inst->getOperand(0)))
                    .setReg(1, ctx.mapOperand(inst->getOperand(1)));
                break;
            }
            case InstructionID::SCmp:
            case InstructionID::UCmp:
            case InstructionID::FCmp: {
                const auto reg = ctx.newReg();
                auto& minst = ctx.emitInst(TACInst::Compare)
                                  .setReg(0, ctx.mapOperand(inst->getOperand(0)))
                                  .setReg(1, ctx.mapOperand(inst->getOperand(1)))
                                  .setWriteReg(reg);

                const auto op = (inst->getInstID() != InstructionID::FCmp ? inst->as<IntegerCompareInst>()->getOp() :
                                                                            inst->as<FloatingPointCompareInst>()->getOp());

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
            default: {
                inst->dump(reportError() << "unsupported inst ");
                reportNotImplemented();
            }
        }
    }
};

// TAC Virtual Target
class TACTarget final : public Target {
    std::unique_ptr<SubTarget> mSubTarget;
    TACDataLayout mDataLayout;
    TACInstInfo mInstInfo;

public:
    explicit TACTarget() {
        if(targetMachine.get() == "emulator")
            mSubTarget = std::make_unique<SimpleSubTarget>();
        else
            reportFatal("Unsupported target machine");
    }
    const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    const TargetInstInfo& getTargetInstInfo() const noexcept override {
        return mInstInfo;
    }
    const TargetFrameInfo& getTargetFrameInfo() const noexcept override {
        reportUnreachable();
    }
    const SubTarget& getSubTarget() const noexcept override {
        return *mSubTarget;
    }

    void emitAssembly(MachineModule& module, std::ostream& out) const override;
};

CMMC_TARGET("tac", TACTarget);

static void printConstant(std::ostream& out, uint64_t metadata, bool isFloatingPoint) {
    out << '#';
    if(isFloatingPoint) {
        const auto ptr = static_cast<void*>(&metadata);
        out << *static_cast<double*>(ptr);
    } else
        out << static_cast<int64_t>(metadata);
}

static void printOperand(std::ostream& out, const MachineInst& inst, uint32_t idx) {
    if(idx == 0 && inst.hasAttr(TACInstAttr::WithImm1)) {
        printConstant(out, inst.getImm(0), inst.hasAttr(TACInstAttr::FloatingPointOp));
        return;
    }

    if(idx == 1 && inst.hasAttr(TACInstAttr::WithImm2)) {
        printConstant(out, inst.getImm(1), inst.hasAttr(TACInstAttr::FloatingPointOp));
        return;
    }

    if(inst.hasAttr(static_cast<TACInstAttr>(static_cast<uint32_t>(TACInstAttr::FuseLoadStore1) << idx)))
        out << '*';
    auto reg = inst.getReg(idx);
    out << 'v' << reg;
}

static void printResult(std::ostream& out, const MachineInst& inst, uint32_t fusedIdx) {
    auto reg = inst.getWriteReg();
    if(reg)
        out << 'v' << reg;
    else
        printOperand(out, inst, fusedIdx);
}

static void emitBinary(std::ostream& out, const MachineInst& inst, std::string_view op) {
    printResult(out, inst, 2);
    out << " := ";
    printOperand(out, inst, 0);
    out << ' ' << op << ' ';
    printOperand(out, inst, 1);
    out << std::endl;
}

static std::string_view getCompareOp(const MachineInst& inst) {
    switch(static_cast<TACInstAttr>(inst.getAttr() & static_cast<uint32_t>(TACInstAttr::CmpMask))) {
        case TACInstAttr::CmpEqual:
            return "==";
        case TACInstAttr::CmpNotEqual:
            return "!=";
        case TACInstAttr::CmpLessThan:
            return "<";
        case TACInstAttr::CmpLessEqual:
            return "<=";
        case TACInstAttr::CmpGreaterThan:
            return ">";
        case TACInstAttr::CmpGreaterEqual:
            return ">=";
        default:
            reportUnreachable();
    }
}

void TACTarget::emitAssembly(MachineModule& module, std::ostream& out) const {
    LabelAllocator allocator;
    using namespace std::string_literals;
    constexpr uint32_t invalidIdx = std::numeric_limits<uint32_t>::max();

    for(auto symbol : module.symbols()) {
        if(auto func = dynamic_cast<MachineFunction*>(symbol)) {
            out << "FUNCTION " << func->getSymbol() << " :" << std::endl;
            std::unordered_map<MachineBasicBlock*, std::string> labelMap;

            for(auto block : func->basicblocks) {
                const auto label = allocator.allocate("label"s);
                labelMap[block] = label;
            }

            for(auto block : func->basicblocks) {
                const auto& label = labelMap[block];
                out << "LABEL " << label << " :" << std::endl;

                for(auto& inst : block->instructions) {
                    switch(inst.getInstID<TACInst>()) {
                        case TACInst::Add: {
                            emitBinary(out, inst, "+");
                            break;
                        }
                        case TACInst::Sub: {
                            emitBinary(out, inst, "-");
                            break;
                        }
                        case TACInst::Mul: {
                            emitBinary(out, inst, "*");
                            break;
                        }
                        case TACInst::Div: {
                            emitBinary(out, inst, "/");
                            break;
                        }
                        case TACInst::Branch: {
                            out << "GOTO ";
                            auto target = reinterpret_cast<MachineBasicBlock*>(inst.getImm(0));
                            out << labelMap.find(target)->second << std::endl;
                            break;
                        }
                        case TACInst::BranchCompare: {
                            out << "IF ";
                            printOperand(out, inst, 0);
                            out << ' ' << getCompareOp(inst) << ' ';
                            printOperand(out, inst, 1);
                            out << " GOTO ";
                            auto target = reinterpret_cast<MachineBasicBlock*>(inst.getImm(2));
                            out << labelMap.find(target)->second << std::endl;
                            break;
                        }
                        case TACInst::Return: {
                            out << "RETURN ";
                            printOperand(out, inst, 0);
                            out << std::endl;
                            break;
                        }
                        case TACInst::Write: {
                            out << "WRITE ";
                            printOperand(out, inst, 0);
                            out << std::endl;
                            break;
                        }
                        case TACInst::Read: {
                            out << "READ ";
                            printResult(out, inst, invalidIdx);  // cannot be fused
                            out << std::endl;
                            break;
                        }
                        case TACInst::PushArg: {
                            out << "ARG ";
                            printOperand(out, inst, 0);
                            out << std::endl;
                            break;
                        }
                        case TACInst::Call: {
                            printResult(out, inst, 0);
                            out << " := CALL " << std::get<Global>(inst.getAddr().base).symbol->getSymbol() << std::endl;
                            break;
                        }
                        case TACInst::Compare: {
                            emitBinary(out, inst, getCompareOp(inst));
                            break;
                        }
                        case TACInst::Imm:
                            [[fallthrough]];
                        case TACInst::Copy: {
                            printResult(out, inst, 1);
                            out << " := ";
                            printOperand(out, inst, 0);
                            out << std::endl;
                            break;
                        }
                        default:
                            reportUnreachable();
                    }
                }
            }

            out << std::endl;
        } else
            reportNotImplemented();
    }
}

CMMC_NAMESPACE_END

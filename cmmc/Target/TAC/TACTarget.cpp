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
#include <memory>
#include <string>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

enum class TACInstAttr : uint32_t {
    FuseLoad1 = 1 << 0,
    FuseLoad2 = 1 << 1,
    FuseWrite = 1 << 2,

    CompareEqual = 1 << 3,
    CompareLess = 1 << 4,
    CompareReverse = 1 << 5,

    CmpEqual = CompareEqual,
    CmpNotEqual = CompareEqual | CompareReverse,
    CmpLessThan = CompareLess,
    CmpLessEqual = CompareLess | CompareEqual,
    CmpGreaterThan = CmpLessEqual | CompareReverse,
    CmpGreaterEqual = CmpLessThan | CompareReverse
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
    BranchCompare
};

extern StringOpt targetMachine;

class TACDataLayout final : public DataLayout {
public:
    Endian getEndian() const noexcept override {
        return Endian::Little;
    }
    size_t getBuiltinAlignment(const Type* type) const noexcept override {
        assert(type->isBuiltin());
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

    Register emitBinaryOp(TACInst instID, Instruction* inst, LoweringContext& ctx) const {
        const auto ret = ctx.newReg();
        ctx.emitInst(instID).setReg(0, ctx.mapOperand(inst->getOperand(0))).setReg(1, ctx.mapOperand(inst->getOperand(1)));
        return ret;
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
                    ctx.emitInst(TACInst::Read).setWriteReg(ctx.newReg());
                } else if(writeIntrinsics.count(funcName)) {
                    ctx.emitInst(TACInst::Write).setReg(0, ctx.mapOperand(inst->getOperand(0)));
                } else {
                    for(auto operand : inst->operands()) {
                        if(operand != callee) {
                            ctx.emitInst(TACInst::PushArg).setReg(0, ctx.mapOperand(operand));
                        } else {
                            ctx.emitInst(TACInst::Call).setAddr({ Global{ ctx.mapGlobal(calleeFunc) }, 0 });
                        }
                    }
                }
                break;
            }
            case InstructionID::Branch: {
                reportNotImplemented();
                break;
            }
            case InstructionID::ConditionalBranch: {
                reportNotImplemented();
                break;
            }

            default:
                reportUnreachable();
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

static void emitBinary(std::ostream& out, MachineInst inst, std::string_view op) {}

void TACTarget::emitAssembly(MachineModule& module, std::ostream& out) const {
    LabelAllocator allocator;
    using namespace std::string_literals;

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
                out << "LABEL " << label << ':' << std::endl;

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

                            break;
                        }
                        case TACInst::BranchCompare: {

                            break;
                        }
                        case TACInst::Return: {

                            break;
                        }
                        case TACInst::Write: {

                            break;
                        }
                        case TACInst::Read: {

                            break;
                        }
                        case TACInst::PushArg: {

                            break;
                        }
                        case TACInst::Call: {

                            break;
                        }
                        case TACInst::Compare: {

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

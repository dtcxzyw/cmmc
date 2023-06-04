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

// RV64GC lp64d medlow

#include <RISCV/ISelInfoDecl.hpp>
#include <RISCV/InstInfoDecl.hpp>
#include <RISCV/ScheduleModelDecl.hpp>
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Target/RISCV/RISCV.hpp>
#include <cstdint>
#include <memory>

CMMC_MIR_NAMESPACE_BEGIN

static constexpr auto rarsRuntimeData = R"(_prompt: .asciz "Enter an integer:"
_ret: .asciz "\n"
)";
static constexpr auto rarsRuntimeText = R"(_entry:
    call main
    li a7, 93
    ecall
read:
    li a7, 4
    la a0, _prompt
    ecall
    li a7, 5
    ecall
    ret
write:
    li a7, 1
    ecall
    li a7, 4
    la a0, _ret
    ecall
    mv a0, x0
    ret
)";

constexpr int32_t passingByRegisterThreshold = 64;

class RISCVDataLayout final : public DataLayout {
public:
    [[nodiscard]] Endian getEndian() const noexcept override {
        return Endian::Little;
    }
    size_t getBuiltinAlignment(const Type* type) const noexcept override {
        assert(type->isPrimitive());
        if(type->isPointer())
            return getPointerSize();
        return type->getFixedSize();
    }
    [[nodiscard]] size_t getPointerSize() const noexcept override {
        return 8;
    }
    [[nodiscard]] size_t getCodeAlignment() const noexcept override {
        return 4;
    }
};

class RISCVFrameInfo final : public TargetFrameInfo {
public:
    void emitCall(FunctionCallInst* inst, LoweringContext& ctx) const override;
    void emitPrologue(MIRFunction& func, LoweringContext& ctx) const override;
    void emitReturn(ReturnInst* inst, LoweringContext& ctx) const override;
    [[nodiscard]] bool isCallerSaved(const MIROperand& op) const noexcept override {
        const auto reg = op.reg();
        // $ra $t0-$t6 $a0-$a7 $ft0-$ft11 $fa0-$fa7
        return reg == RISCV::X1 || (RISCV::X5 <= reg && reg <= RISCV::X7) || (RISCV::X10 <= reg && reg <= RISCV::X17) ||
            (RISCV::X28 <= reg && reg <= RISCV::X31) || (RISCV::F0 <= reg && reg <= RISCV::F7) ||
            (RISCV::F10 <= reg && reg <= RISCV::F17) || (RISCV::F28 <= reg && reg <= RISCV::F31);
    }
    [[nodiscard]] bool isCalleeSaved(const MIROperand& op) const noexcept override {
        const auto reg = op.reg();
        // $sp $s0-$s7 $f20-$f30
        return reg == RISCV::X2 || (RISCV::X8 <= reg && reg <= RISCV::X9) || (RISCV::X18 <= reg && reg <= RISCV::X27) ||
            (RISCV::F8 <= reg && reg <= RISCV::F9) || (RISCV::F18 <= reg && reg <= RISCV::F27);
    }
    [[nodiscard]] size_t getStackPointerAlignment() const noexcept override {
        return 8U;  // 8-byte aligned
    }
    void emitPostSAPrologue(MIRBasicBlock& entryBlock, const CodeGenContext& ctx, int32_t stackSize,
                            std::optional<int32_t> raOffset) const override;
    void emitPostSAEpilogue(MIRBasicBlock& exitBlock, const CodeGenContext& ctx, int32_t stackSize,
                            std::optional<int32_t> raOffset) const override;
};

class RISCVRegisterInfo final : public TargetRegisterInfo {
public:
    [[nodiscard]] uint32_t getAllocationClassCount() const noexcept override {
        return 2;  // GPR/FPR
    }
    [[nodiscard]] uint32_t getAllocationClass(OperandType type) const override {
        switch(type) {
            case OperandType::Bool:
                [[fallthrough]];
            case OperandType::Int8:
                [[fallthrough]];
            case OperandType::Int16:
                [[fallthrough]];
            case OperandType::Int32:
                [[fallthrough]];
            case OperandType::Int64:
                return 0;
            case OperandType::Float32:
                return 1;
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }
    [[nodiscard]] OperandType getCanonicalizedRegisterType(OperandType type) const override {
        switch(type) {
            case OperandType::Bool:
                [[fallthrough]];
            case OperandType::Int8:
                [[fallthrough]];
            case OperandType::Int16:
                [[fallthrough]];
            case OperandType::Int32:
                [[fallthrough]];
            case OperandType::Int64:
                return OperandType::Int64;
            case OperandType::Float32:
                return OperandType::Float32;
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }
    [[nodiscard]] bool isLegalISARegOperand(const MIROperand& operand, OperandFlag flag) const override {
        if(flag & OperandFlagMetadata)
            return false;
        if(RISCV::isOperandGPR(operand)) {
            if(operand.reg() == RISCV::X0 && (flag & OperandFlagDef))
                return false;
            return isIntegerType(operand.type());
        }
        if(RISCV::isOperandFPR(operand))
            return isFPType(operand.type());
        return false;
    }
    [[nodiscard]] const std::vector<uint32_t>& getAllocationList(uint32_t classId) const override {
        if(classId == 0) {
            // prefer caller-saved registers
            static std::vector<uint32_t> list{
                // $a0-$a5 for RVC
                // RISCV::X10, RISCV::X11, RISCV::X12, RISCV::X13, RISCV::X14, RISCV::X15,  //
                // $t1-$t6 $a6-$a7
                RISCV::X6, RISCV::X7, RISCV::X28, RISCV::X29, RISCV::X30, RISCV::X31,  // RISCV::X16, RISCV::X17,  //
                // $s0-$s1 for RVC
                RISCV::X8, RISCV::X9,
                // $s2-$s11
                RISCV::X18, RISCV::X19,                          //
                RISCV::X20, RISCV::X21, RISCV::X22, RISCV::X23,  //
                RISCV::X24, RISCV::X25, RISCV::X26, RISCV::X27,  //
            };
            return list;
        }
        if(classId == 1) {
            static std::vector<uint32_t> list{
                // $fa0-$fa5 for RVC
                // RISCV::F10, RISCV::F11, RISCV::F12, RISCV::F13, RISCV::F14, RISCV::F15,  //
                // $ft0-$ft11 $fa6-$fa7
                RISCV::F0, RISCV::F1, RISCV::F2, RISCV::F3,      //
                RISCV::F4, RISCV::F5, RISCV::F6, RISCV::F7,      //
                RISCV::F28, RISCV::F29, RISCV::F30, RISCV::F31,  //
                // RISCV::F16, RISCV::F17,                       //
                // $fs0-$fs1 for RVC
                // RISCV::F8, RISCV::F9,
                // $fs2-$fs11
                RISCV::F18, RISCV::F19, RISCV::F20, RISCV::F21,  //
                RISCV::F22, RISCV::F23, RISCV::F24, RISCV::F25,  //
                RISCV::F26, RISCV::F27,                          //
            };
            return list;
        }
        reportUnreachable(CMMC_LOCATION());
    }
};

class RISCVTarget final : public Target {
    RISCVDataLayout mDataLayout;
    RISCVFrameInfo mFrameInfo;
    RISCVRegisterInfo mRegisterInfo;

public:
    [[nodiscard]] const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    [[nodiscard]] const TargetInstInfo& getInstInfo() const noexcept override {
        return RISCV::getRISCVInstInfo();
    }
    [[nodiscard]] const TargetFrameInfo& getFrameInfo() const noexcept override {
        return mFrameInfo;
    }
    [[nodiscard]] const TargetISelInfo& getISelInfo() const noexcept override {
        return RISCV::getRISCVISelInfo();
    }
    [[nodiscard]] const TargetRegisterInfo* getRegisterInfo() const noexcept override {
        return &mRegisterInfo;
    }
    [[nodiscard]] const TargetScheduleModel& getScheduleModel() const noexcept override {
        return RISCV::getRISCVScheduleModel();
    }
    void emitAssembly(const MIRModule& module, std::ostream& out, RuntimeType runtime) const override {
        auto& target = *this;
        CodeGenContext ctx{ target,
                            target.getScheduleModel(),
                            target.getDataLayout(),
                            target.getInstInfo(),
                            target.getISelInfo(),
                            target.getFrameInfo(),
                            target.getRegisterInfo(),
                            MIRFlags{ false, false } };

        cmmc::mir::dumpAssembly(
            out, ctx, module,
            [&] {
                if(runtime == RuntimeType::SplRuntime) {
                    out << rarsRuntimeData;
                }
            },
            [&] {
                if(runtime == RuntimeType::SplRuntime) {
                    out << rarsRuntimeText;
                }
            });
    }
    void addExternalFuncIPRAInfo(MIRRelocable* symbol, IPRAUsageCache& infoIPRA) const override {
        const auto symbolName = symbol->symbol();
        // spl runtime
        if(symbolName == "read" || symbolName == "write") {
            // $a0 $a7
            IPRAInfo usage;
            usage.insert(MIROperand::asISAReg(RISCV::X10, OperandType::Int64));
            usage.insert(MIROperand::asISAReg(RISCV::X17, OperandType::Int64));
            infoIPRA.add(symbol, usage);
        }
    }
};

CMMC_TARGET("riscv", RISCVTarget);

void RISCVFrameInfo::emitPrologue(MIRFunction& mfunc, LoweringContext& ctx) const {
    const auto& args = mfunc.args();
    int32_t curOffset = 0U;
    std::vector<int32_t> offsets;
    offsets.reserve(args.size());

    for(auto& arg : args) {
        auto size = static_cast<int32_t>(getOperandSize(arg.type()));
        auto alignment = size;

        constexpr int32_t minimumSize = sizeof(uint64_t);
        size = std::max(size, minimumSize);
        alignment = std::max(alignment, minimumSize);

        curOffset = (curOffset + alignment - 1) / alignment * alignment;
        offsets.push_back(curOffset);
        curOffset += size;
    }

    for(uint32_t idx = 0; idx < args.size(); ++idx) {
        const auto offset = offsets[idx];
        const auto& arg = args[idx];
        const auto size = getOperandSize(arg.type());
        const auto alignment = size;

        if(offset < passingByRegisterThreshold) {
            // $a0-$a7 $fa0-$fa7
            MIROperand src;
            if(isFPType(arg.type())) {
                src = MIROperand::asISAReg(RISCV::F10 + static_cast<uint32_t>(offset) / 8U, OperandType::Float32);
            } else {
                src = MIROperand::asISAReg(RISCV::X10 + static_cast<uint32_t>(offset) / 8U, OperandType::Int64);
            }
            ctx.emitCopy(arg, src);
        } else {
            auto obj = mfunc.addStackObject(ctx.getCodeGenContext(), size, alignment, offset, StackObjectUsage::Argument);
            ctx.emitInst(MIRInst{ InstLoadRegFromStack }.setOperand<0>(arg).setOperand<1>(obj));
        }
    }
}

void RISCVFrameInfo::emitCall(FunctionCallInst* inst, LoweringContext& ctx) const {
    auto callee = inst->lastOperand();
    auto func = dynamic_cast<Function*>(callee);
    if(!func)
        DiagnosticsContext::get().attach<Reason>("dynamic call is not supported").reportFatal();
    if(func->getCallingConvention() != CallingConvention::C)
        reportNotImplemented(CMMC_LOCATION());

    const auto global = ctx.mapGlobal(func);
    const auto& dataLayout = ctx.getDataLayout();

    int32_t curOffset = 0U;
    std::vector<int32_t> offsets;
    offsets.reserve(inst->operands().size() - 1);

    for(auto arg : inst->arguments()) {
        auto size = static_cast<int32_t>(arg->getType()->getSize(dataLayout));
        auto alignment = static_cast<int32_t>(arg->getType()->getAlignment(dataLayout));

        constexpr int32_t minimumSize = sizeof(uint64_t);
        size = std::max(size, minimumSize);
        alignment = std::max(alignment, minimumSize);

        curOffset = (curOffset + alignment - 1) / alignment * alignment;
        offsets.push_back(curOffset);
        curOffset += size;
    }

    auto mfunc = ctx.getCurrentBasicBlock()->getFunction();
    for(uint32_t idx = 0; idx + 1 < inst->operands().size(); ++idx) {
        const auto offset = offsets[idx];
        const auto arg = inst->getOperand(idx);
        auto val = ctx.mapOperand(arg);
        const auto size = static_cast<uint32_t>(arg->getType()->getSize(dataLayout));
        const auto alignment = size;

        if(offset < passingByRegisterThreshold) {
            // TODO: fp
            MIROperand dst;
            if(isFPType(val.type())) {
                dst = MIROperand::asISAReg(RISCV::F10 + static_cast<uint32_t>(offset) / 8U, OperandType::Float32);
            } else {
                dst = MIROperand::asISAReg(RISCV::X10 + static_cast<uint32_t>(offset) / 8U, OperandType::Int64);
            }
            ctx.emitCopy(dst, val);
        } else {
            const auto obj =
                mfunc->addStackObject(ctx.getCodeGenContext(), size, alignment, offset, StackObjectUsage::CalleeArgument);
            if(!isOperandVRegOrISAReg(val)) {
                const auto reg = ctx.newVReg(val.type());
                ctx.emitCopy(reg, val);
                val = reg;
            }
            ctx.emitInst(MIRInst{ InstStoreRegToStack }.setOperand<0>(val).setOperand<1>(obj));
        }
    }

    ctx.emitInst(MIRInst{ RISCV::JAL }.setOperand<0>(MIROperand::asReloc(global->reloc.get())));
    const auto ret = inst->getType();
    if(ret->isVoid()) {
        return;
    }
    const auto retReg = ctx.newVReg(ret);
    MIROperand val;
    if(ret->isFloatingPoint()) {
        // $fa0
        val = MIROperand::asISAReg(RISCV::F10, OperandType::Float32);
    } else {
        // $a0
        val = MIROperand::asISAReg(RISCV::X10, OperandType::Int64);
    }

    ctx.emitCopy(retReg, val);
    ctx.addOperand(inst, retReg);
}
void RISCVFrameInfo::emitReturn(ReturnInst* inst, LoweringContext& ctx) const {
    if(!inst->operands().empty()) {
        const auto val = inst->operands().front();
        const auto& dataLayout = ctx.getDataLayout();
        const auto size = val->getType()->getSize(dataLayout);
        if(size <= 4) {
            if(val->getType()->isFloatingPoint()) {
                // return by $fa0
                ctx.emitCopy(MIROperand::asISAReg(RISCV::F10, OperandType::Float32), ctx.mapOperand(val));
            } else {
                // return by $a0
                ctx.emitCopy(MIROperand::asISAReg(RISCV::X10, OperandType::Int64), ctx.mapOperand(val));
            }
        } else
            reportNotImplemented(CMMC_LOCATION());
    }
    ctx.emitInst(MIRInst{ RISCV::JR }.setOperand<0>(RISCV::ra));
}

void RISCVFrameInfo::emitPostSAPrologue(MIRBasicBlock& entryBlock, const CodeGenContext& ctx, int32_t stackSize,
                                        std::optional<int32_t> raOffset) const {
    CMMC_UNUSED(ctx);
    auto& instructions = entryBlock.instructions();
    if(raOffset) {
        int64_t offset = *raOffset;
        MIROperand base = RISCV::sp;
        const auto iter = instructions.begin();
        RISCV::legalizeAddrBaseOffsetPostRA(instructions, iter, base, offset);
        instructions.insert(iter,
                            MIRInst{ RISCV::SD }.setOperand<0>(RISCV::ra).setOperand<2>(base).setOperand<1>(
                                MIROperand::asImm(offset, OperandType::Int64)));
    }
    RISCV::adjustReg(instructions, instructions.begin(), RISCV::sp, RISCV::sp, -stackSize);
}
void RISCVFrameInfo::emitPostSAEpilogue(MIRBasicBlock& exitBlock, const CodeGenContext& ctx, int32_t stackSize,
                                        std::optional<int32_t> raOffset) const {
    auto& instructions = exitBlock.instructions();
    auto iter = std::prev(instructions.end());
    CMMC_UNUSED(ctx);
    if(raOffset) {
        int64_t offset = *raOffset;
        MIROperand base = RISCV::sp;
        RISCV::legalizeAddrBaseOffsetPostRA(instructions, iter, base, offset);
        instructions.insert(iter,
                            MIRInst{ RISCV::LD }.setOperand<0>(RISCV::ra).setOperand<2>(base).setOperand<1>(
                                MIROperand::asImm(offset, OperandType::Int64)));
    }
    RISCV::adjustReg(instructions, iter, RISCV::sp, RISCV::sp, stackSize);
}

CMMC_MIR_NAMESPACE_END

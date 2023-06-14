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

// arm eabi

#include <ARM/ISelInfoDecl.hpp>
#include <ARM/InstInfoDecl.hpp>
#include <ARM/ScheduleModelDecl.hpp>
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/RegisterInfo.hpp>
#include <cmmc/CodeGen/ScheduleModel.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Target/ARM/ARM.hpp>
#include <cstdint>
#include <memory>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

constexpr int32_t passingByRegisterThreshold = 16;

class ARMDataLayout final : public DataLayout {
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
        return 4;
    }
    [[nodiscard]] size_t getCodeAlignment() const noexcept override {
        return 4;
    }
};

class ARMFrameInfo final : public TargetFrameInfo {
public:
    void emitCall(FunctionCallInst* inst, LoweringContext& ctx) const override;
    void emitPrologue(MIRFunction& func, LoweringContext& ctx) const override;
    void emitReturn(ReturnInst* inst, LoweringContext& ctx) const override;
    [[nodiscard]] bool isCallerSaved(const MIROperand& op) const noexcept override {
        const auto reg = op.reg();
        // $r0-$r3 $r12 $s0-$s15
        return (ARM::R0 <= reg && reg <= ARM::R3) || (reg == ARM::R12) || (ARM::S0 <= reg && reg <= ARM::S15);
    }
    [[nodiscard]] bool isCalleeSaved(const MIROperand& op) const noexcept override {
        const auto reg = op.reg();
        // $r4-$r11 $r13-$r15 $s16-$s31
        return (ARM::R4 <= reg && reg <= ARM::R11) || (ARM::R13 <= reg && reg <= ARM::R15) ||
            (ARM::S16 <= reg && reg <= ARM::S31);
    }
    [[nodiscard]] size_t getStackPointerAlignment() const noexcept override {
        return 8U;  // 8-byte aligned
    }
    void emitPostSAPrologue(MIRBasicBlock& entryBlock, const CodeGenContext& ctx, int32_t stackSize,
                            std::optional<int32_t> raOffset) const override;
    void emitPostSAEpilogue(MIRBasicBlock& exitBlock, const CodeGenContext& ctx, int32_t stackSize,
                            std::optional<int32_t> raOffset) const override;
};

class ARMRegisterInfo final : public TargetRegisterInfo {
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
                return OperandType::Int32;
            case OperandType::Float32:
                return OperandType::Float32;
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }
    [[nodiscard]] bool isLegalISARegOperand(const MIROperand& operand, OperandFlag flag) const override {
        if(flag & OperandFlagMetadata)
            return false;
        if(ARM::isOperandGPR(operand))
            return isIntegerType(operand.type());
        if(ARM::isOperandFPR(operand))
            return isFPType(operand.type());
        return false;
    }
    [[nodiscard]] const std::vector<uint32_t>& getAllocationList(uint32_t classId) const override {
        if(classId == 0) {
            // prefer caller-saved registers
            static std::vector<uint32_t> list{
                // $r4-$r11
                ARM::R4, ARM::R5,  ARM::R6,  ARM::R7, ARM::R8,  //
                ARM::R9, ARM::R10, ARM::R11,                    //
            };
            return list;
        }
        if(classId == 1) {
            // o32 nooddspreg
            // $f0, $f2 for return value
            // $f12, $f14 for arguments
            static std::vector<uint32_t> list{
                // $s16-$s31
                ARM::S16, ARM::S17, ARM::S18, ARM::S19, ARM::S20, ARM::S21, ARM::S22, ARM::S23,
                ARM::S24, ARM::S25, ARM::S26, ARM::S27, ARM::S28, ARM::S29, ARM::S30, ARM::S31,
            };
            return list;
        }
        reportUnreachable(CMMC_LOCATION());
    }
};

class ARMTarget final : public Target {
    ARMDataLayout mDataLayout;
    ARMFrameInfo mFrameInfo;
    ARMRegisterInfo mRegisterInfo;

public:
    [[nodiscard]] bool isNativeSupported(InstructionID inst) const noexcept override {
        return inst != InstructionID::SRem && inst != InstructionID::URem;
    }
    [[nodiscard]] const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    [[nodiscard]] const TargetInstInfo& getInstInfo() const noexcept override {
        return ARM::getARMInstInfo();
    }
    [[nodiscard]] const TargetFrameInfo& getFrameInfo() const noexcept override {
        return mFrameInfo;
    }
    [[nodiscard]] const TargetISelInfo& getISelInfo() const noexcept override {
        return ARM::getARMISelInfo();
    }
    [[nodiscard]] const TargetRegisterInfo* getRegisterInfo() const noexcept override {
        return &mRegisterInfo;
    }
    [[nodiscard]] const TargetScheduleModel& getScheduleModel() const noexcept override {
        return ARM::getARMScheduleModel();
    }
    void emitAssembly(const MIRModule& module, std::ostream& out, RuntimeType runtime) const override {
        CMMC_UNUSED(runtime);
        auto& target = *this;
        CodeGenContext ctx{ target,
                            target.getScheduleModel(),
                            target.getDataLayout(),
                            target.getInstInfo(),
                            target.getISelInfo(),
                            target.getFrameInfo(),
                            target.getRegisterInfo(),
                            MIRFlags{ false, false } };

        out << ".arch armv7-a" << std::endl;

        cmmc::mir::dumpAssembly(
            out, ctx, module, [&] {},
            [&] {
                out << ".syntax unified" << std::endl;
                out << ".arm" << std::endl;
                out << ".fpu neon" << std::endl;
            });
    }
    void addExternalFuncIPRAInfo(MIRRelocable* symbol, IPRAUsageCache& infoIPRA) const override {
        CMMC_UNUSED(symbol);
        CMMC_UNUSED(infoIPRA);
    }
};

CMMC_TARGET("arm", ARMTarget);

void ARMFrameInfo::emitPrologue(MIRFunction& mfunc, LoweringContext& ctx) const {
    const auto& args = mfunc.args();
    int32_t curOffset = 0U;
    std::vector<int32_t> offsets;
    offsets.reserve(args.size());

    for(auto& arg : args) {
        auto size = static_cast<int32_t>(getOperandSize(arg.type()));
        auto alignment = size;

        constexpr int32_t minimumSize = sizeof(uint32_t);
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
            // $a0-$a3, $f12/$f14
            MIROperand src;
            if(offset < 8 && isFPType(arg.type())) {  // pass by FPR
                src = MIROperand::asISAReg(ARM::S0 + static_cast<uint32_t>(offset) / 2,
                                           OperandType::Float32);  // 0 -> 12, 4 -> 14
            } else {
                src = MIROperand::asISAReg(ARM::R0 + static_cast<uint32_t>(offset) / 4, OperandType::Int32);
            }

            ctx.emitCopy(arg, src);
        } else {
            auto obj = mfunc.addStackObject(ctx.getCodeGenContext(), size, alignment, offset, StackObjectUsage::Argument);
            ctx.emitInst(MIRInst{ InstLoadRegFromStack }.setOperand<0>(arg).setOperand<1>(obj));
        }
    }
}

void ARMFrameInfo::emitCall(FunctionCallInst* inst, LoweringContext& ctx) const {
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

        constexpr int32_t minimumSize = sizeof(uint32_t);
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
            // $a0-$a3, $f12/$f14
            MIROperand dst;
            if(offset < 8 && arg->getType()->isFloatingPoint()) {  // pass by FPR
                dst = MIROperand::asISAReg(ARM::S0 + static_cast<uint32_t>(offset) / 2U, OperandType::Float32);
            } else {
                dst = MIROperand::asISAReg(ARM::R0 + static_cast<uint32_t>(offset) / 4U, OperandType::Int32);
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

    ctx.emitInst(MIRInst{ ARM::BL }.setOperand<0>(MIROperand::asReloc(global->reloc.get())));
    const auto ret = inst->getType();
    if(ret->isVoid()) {
        return;
    }
    const auto retReg = ctx.newVReg(ret);
    MIROperand val;
    if(ret->isFloatingPoint()) {
        // $f0
        val = MIROperand::asISAReg(ARM::S0, OperandType::Float32);
    } else {
        // $v0
        val = MIROperand::asISAReg(ARM::R0, OperandType::Int32);
    }

    ctx.emitCopy(retReg, val);
    ctx.addOperand(inst, retReg);
}

void ARMFrameInfo::emitReturn(ReturnInst* inst, LoweringContext& ctx) const {
    if(!inst->operands().empty()) {
        const auto val = inst->operands().front();
        const auto& dataLayout = ctx.getDataLayout();
        const auto size = val->getType()->getSize(dataLayout);
        if(size <= 4) {
            if(val->getType()->isFloatingPoint()) {
                // return by $f0
                ctx.emitCopy(MIROperand::asISAReg(ARM::S0, OperandType::Float32), ctx.mapOperand(val));
            } else {
                // return by $v0
                ctx.emitCopy(MIROperand::asISAReg(ARM::R0, OperandType::Int32), ctx.mapOperand(val));
            }
        } else  // return by $v0, $v1
            reportNotImplemented(CMMC_LOCATION());
    }
    ctx.emitInst(MIRInst{ ARM::BX }.setOperand<0>(ARM::ra));
}

void ARMFrameInfo::emitPostSAPrologue(MIRBasicBlock& entryBlock, const CodeGenContext& ctx, int32_t stackSize,
                                      std::optional<int32_t> raOffset) const {
    CMMC_UNUSED(ctx);
    CMMC_UNUSED(stackSize);
    auto& instructions = entryBlock.instructions();
    if(raOffset) {
        int64_t offset = *raOffset;
        MIROperand base = ARM::sp;
        const auto iter = instructions.begin();
        ARM::legalizeAddrBaseOffsetPostRA(instructions, iter, base, offset);
        // instructions.insert(iter,
        //                     MIRInst{ ARM::SW }.setOperand<0>(ARM::ra).setOperand<2>(base).setOperand<1>(
        //                         MIROperand::asImm(offset, OperandType::Int32)));
    }
}

void ARMFrameInfo::emitPostSAEpilogue(MIRBasicBlock& exitBlock, const CodeGenContext& ctx, int32_t stackSize,
                                      std::optional<int32_t> raOffset) const {
    CMMC_UNUSED(stackSize);
    CMMC_UNUSED(ctx);
    auto& instructions = exitBlock.instructions();
    auto iter = std::prev(instructions.end());
    if(raOffset) {
        int64_t offset = *raOffset;
        MIROperand base = ARM::sp;
        ARM::legalizeAddrBaseOffsetPostRA(instructions, iter, base, offset);
        // instructions.insert(iter,
        //                     MIRInst{ ARM::LW }.setOperand<0>(ARM::ra).setOperand<2>(base).setOperand<1>(
        //                         MIROperand::asImm(offset, OperandType::Int32)));
    }
}

CMMC_MIR_NAMESPACE_END

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

// mips o32 abi, delay slot is not supported

#include <MIPS/ISelInfoDecl.hpp>
#include <MIPS/InstInfoDecl.hpp>
#include <MIPS/ScheduleModelDecl.hpp>
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/ScheduleModel.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Target/MIPS/MIPS.hpp>
#include <cstdint>
#include <memory>

CMMC_MIR_NAMESPACE_BEGIN
constexpr size_t passingByRegisterThreshold = 16;
extern StringOpt targetMachine;  // NOLINT

class MIPSDataLayout final : public DataLayout {
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

class MIPSFrameInfo final : public TargetFrameInfo {
public:
    void emitCall(FunctionCallInst* inst, LoweringContext& ctx) const override;
    void emitPrologue(MIRFunction& func, LoweringContext& ctx) const override;
    void emitReturn(ReturnInst* inst, LoweringContext& ctx) const override;
};

class MIPSTarget final : public Target {
    MIPSDataLayout mDataLayout;
    MIPSFrameInfo mFrameInfo;

public:
    [[nodiscard]] const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    [[nodiscard]] const TargetInstInfo& getInstInfo() const noexcept override {
        return MIPS::getMIPSInstInfo();
    }
    [[nodiscard]] const TargetFrameInfo& getFrameInfo() const noexcept override {
        return mFrameInfo;
    }
    [[nodiscard]] const TargetISelInfo& getISelInfo() const noexcept override {
        return MIPS::getMIPSISelInfo();
    }
    [[nodiscard]] const TargetScheduleModel& getScheduleModel() const noexcept override {
        return MIPS::getMIPSScheduleModel();
    }
    void emitAssembly(const MIRModule& module, std::ostream& out) const override {
        CMMC_UNUSED(module);
        CMMC_UNUSED(out);
        reportNotImplemented(CMMC_LOCATION());
    }
};

CMMC_TARGET("mips", MIPSTarget);

void MIPSFrameInfo::emitPrologue(MIRFunction& mfunc, LoweringContext& ctx) const {
    const auto& args = mfunc.args();
    size_t curOffset = 0U;
    std::vector<size_t> offsets;
    offsets.reserve(args.size());

    for(auto& arg : args) {
        size_t size = getOperandSize(arg.type());
        auto alignment = size;

        constexpr size_t minimumSize = sizeof(uint32_t);
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
            if(offset < 8U && isFPType(arg.type())) {                                                    // pass by FPR
                src = MIROperand::asISAReg(MIPS::F12 + static_cast<uint32_t>(offset / 2U), arg.type());  // 0 -> 12, 4 -> 14
            } else {
                src = MIROperand::asISAReg(MIPS::X4 + static_cast<uint32_t>(offset) / 4U, arg.type());
            }

            ctx.emitCopy(arg, src);
        } else {
            auto obj = mfunc.addStackObject(ctx.getCodeGenContext(), size, alignment, ctx.getPtrType(), offset);
            auto addr = ctx.newVReg(ctx.getPtrType());
            ctx.emitInst(InstLoadStackObjectAddr).setOperand<0>(addr).setOperand<1>(obj);
            ctx.emitInst(InstLoad).setOperand<0>(arg).setOperand<1>(addr);
        }
    }
}

void MIPSFrameInfo::emitCall(FunctionCallInst* inst, LoweringContext& ctx) const {
    auto callee = inst->operands().back();
    auto func = dynamic_cast<Function*>(callee);
    if(!func)
        DiagnosticsContext::get().attach<Reason>("dynamic call is not supported").reportFatal();
    if(func->getCallingConvention() != CallingConvention::C)
        reportNotImplemented(CMMC_LOCATION());

    const auto global = ctx.mapGlobal(func);
    const auto& dataLayout = ctx.getDataLayout();

    size_t curOffset = 0U;
    std::vector<size_t> offsets;
    offsets.reserve(inst->operands().size() - 1);

    for(auto& arg : inst->operands()) {
        if(&arg == &inst->operands().back())
            break;

        auto size = arg->getType()->getSize(dataLayout);
        auto alignment = arg->getType()->getAlignment(dataLayout);

        constexpr size_t minimumSize = sizeof(uint32_t);
        size = std::max(size, minimumSize);
        alignment = std::max(alignment, minimumSize);

        curOffset = (curOffset + alignment - 1) / alignment * alignment;
        offsets.push_back(curOffset);
        curOffset += size;
    }

    for(uint32_t idx = 0; idx + 1 < inst->operands().size(); ++idx) {
        const auto offset = offsets[idx];
        const auto arg = inst->getOperand(idx);
        const auto val = ctx.mapOperand(arg);
        const auto size = static_cast<uint32_t>(arg->getType()->getSize(dataLayout));
        const auto alignment = size;

        if(offset < passingByRegisterThreshold) {
            // $a0-$a3, $f12/$f14
            MIROperand dst;
            if(offset < 8U && arg->getType()->isFloatingPoint()) {  // pass by FPR
                dst = MIROperand::asISAReg(MIPS::F12 + static_cast<uint32_t>(offset) / 2U, OperandType::Float32);
            } else {
                dst = MIROperand::asISAReg(MIPS::X4 + static_cast<uint32_t>(offset) / 4U, OperandType::Int32);
            }

            ctx.emitCopy(dst, val);
        } else {
            const auto addr = ctx.newVReg(ctx.getPtrType());
            const auto obj = ctx.getCurrentBasicBlock()->getFunction()->addStackObject(
                ctx.getCodeGenContext(), size, alignment, ctx.getPtrType(), static_cast<int32_t>(offset));

            ctx.emitInst(InstLoadStackObjectAddr).setOperand<0>(addr).setOperand<1>(obj);
            ctx.emitInst(InstStore).setOperand<0>(val).setOperand<1>(addr);
        }
    }

    ctx.emitInst(MIPS::JAL).setOperand<0>(MIROperand::asReloc(global->reloc.get()));
    const auto ret = inst->getType();
    if(ret->isVoid()) {
        return;
    }
    const auto retReg = ctx.newVReg(ret);
    MIROperand val;
    if(ret->isFloatingPoint()) {
        // $f0
        val = MIROperand::asISAReg(MIPS::F0, OperandType::Float32);
    } else {
        assert(ret->getFixedSize() == sizeof(uint32_t));
        // $v0
        val = MIROperand::asISAReg(MIPS::X2, OperandType::Int32);
    }

    ctx.emitCopy(retReg, val);
    ctx.addOperand(inst, retReg);
}
void MIPSFrameInfo::emitReturn(ReturnInst* inst, LoweringContext& ctx) const {
    if(!inst->operands().empty()) {
        const auto val = inst->operands().front();
        const auto& dataLayout = ctx.getDataLayout();
        const auto size = val->getType()->getSize(dataLayout);
        if(size <= 4) {
            if(val->getType()->isFloatingPoint()) {
                // return by $f0
                ctx.emitCopy(MIROperand::asISAReg(MIPS::F0, OperandType::Float32), ctx.mapOperand(val));
            } else {
                // return by $v0
                ctx.emitCopy(MIROperand::asISAReg(MIPS::X2, OperandType::Int32), ctx.mapOperand(val));
            }
        } else  // return by $v0, $v1
            reportNotImplemented(CMMC_LOCATION());
    }
    ctx.emitInst(MIPS::JR).setOperand<0>(MIROperand::asISAReg(MIPS::X31, ctx.getPtrType()));
}

CMMC_MIR_NAMESPACE_END

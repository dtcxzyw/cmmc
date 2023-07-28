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

// arm gnueabihf

#include <ARM/ISelInfoDecl.hpp>
#include <ARM/InstInfoDecl.hpp>
#include <ARM/ScheduleModelDecl.hpp>
#include <algorithm>
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
#include <iostream>
#include <memory>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

constexpr int32_t passingByRegBase = 0x100000;

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
        return 16;
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
    [[nodiscard]] size_t getStackPointerAlignment(bool isNonLeafFunc) const noexcept override {
        return isNonLeafFunc ? 8U : 4U;
    }
    void emitPostSAPrologue(MIRBasicBlock& entryBlock, const CodeGenContext& ctx, int32_t stackSize) const override;
    void emitPostSAEpilogue(MIRBasicBlock& exitBlock, const CodeGenContext& ctx, int32_t stackSize) const override;
    int32_t insertPrologueEpilogue(MIRFunction& mfunc,
                                   const std::unordered_set<MIROperand, MIROperandHasher>& calleeSavedRegister,
                                   CodeGenContext& ctx, bool isNonLeafFunc, const MIROperand& ra) const override;
};

class ARMRegisterInfo final : public TargetRegisterInfo {
public:
    [[nodiscard]] uint32_t getAllocationClassCount() const noexcept override {
        return 2;  // GPR/FPR
    }
    [[nodiscard]] uint32_t getAllocationClass(OperandType type) const override {
        switch(type) {
            case OperandType::Bool:
            case OperandType::Int8:
            case OperandType::Int16:
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
            case OperandType::Int8:
            case OperandType::Int16:
            case OperandType::Int32:
                return OperandType::Int32;
            case OperandType::Float32:
                return OperandType::Float32;
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }
    [[nodiscard]] OperandType getCanonicalizedRegisterTypeForClass(uint32_t classId) const override {
        return classId == 0 ? OperandType::Int32 : OperandType::Float32;
    }
    [[nodiscard]] bool isLegalISARegOperand(const MIROperand& operand, OperandFlag flag) const override {
        if(flag & OperandFlagMetadata)
            return false;
        if(ARM::isOperandGPR(operand))
            return isIntegerType(operand.type());
        if(ARM::isOperandFPR(operand))
            return isFPType(operand.type());
        return ARM::isOperandCC(operand) || ARM::isOperandFCC(operand);
    }
    [[nodiscard]] const std::vector<uint32_t>& getAllocationList(uint32_t classId) const override {
        if(classId == 0) {
            // prefer caller-saved registers
            static std::vector<uint32_t> list{
                // $r0-$r3
                ARM::R0, ARM::R1, ARM::R2, ARM::R3,  //
                // $r4-$r11
                ARM::R4, ARM::R5, ARM::R6, ARM::R7, ARM::R8,  //
                ARM::R9, ARM::R10, ARM::R11,                  //
            };
            return list;
        }
        if(classId == 1) {
            static std::vector<uint32_t> list{
                // $s0-$s31
                ARM::S0,  ARM::S1,  ARM::S2,  ARM::S3,  ARM::S4,  ARM::S5,  ARM::S6,  ARM::S7,   //
                ARM::S8,  ARM::S9,  ARM::S10, ARM::S11, ARM::S12, ARM::S13, ARM::S14, ARM::S15,  //
                ARM::S16, ARM::S17, ARM::S18, ARM::S19, ARM::S20, ARM::S21, ARM::S22, ARM::S23,  //
                ARM::S24, ARM::S25, ARM::S26, ARM::S27, ARM::S28, ARM::S29, ARM::S30, ARM::S31,  //
            };
            return list;
        }
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] MIROperand getReturnAddressRegister() const noexcept override {
        return ARM::ra;
    }
    [[nodiscard]] MIROperand getStackPointerRegister() const noexcept override {
        return ARM::sp;
    }
};

class ARMTarget final : public Target {
    ARMDataLayout mDataLayout;
    ARMFrameInfo mFrameInfo;
    ARMRegisterInfo mRegisterInfo;

public:
    [[nodiscard]] const TargetOptHeuristic& getOptHeuristic() const noexcept override {
        static TargetOptHeuristic defaultHeuristic{
            .unrollBlockSize = 4U,
            .maxUnrollBodySize = 128U,
            .duplicationThreshold = 10U,
            .duplicationIterations = 10U,
            .branchLimit = 1000U,
            .disableSelectionOpt = true,
            .branchPredictionWarmupThreshold = 8U,
        };

        return defaultHeuristic;
    }

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

        out << ".arch armv7ve" << std::endl;

        cmmc::mir::dumpAssembly(
            out, ctx, module, [&] {},
            [&] {
                out << ".syntax unified" << std::endl;
                out << ".arm" << std::endl;
                // out << ".thumb" << std::endl;
                out << ".fpu vfpv4" << std::endl;
            });
    }
    void transformModuleBeforeCodeGen(Module& module, AnalysisPassManager& analysis) const override {
        PassManager<Module> modulePassManager;
        auto perFunc = std::make_shared<PassManager<Function>>();
        for(auto& pass : PassRegistry::get().collectFunctionPass({ "DuplicateGEP", "NoSideEffectEliminate" }))
            perFunc->addPass(pass);
        modulePassManager.addPass(createWrapper(std::move(perFunc)));
        modulePassManager.run(module, analysis);
        for(auto global : module.globals())
            if(!global->isFunction()) {
                // mark all global variables as exported to use relocation R_ARM_MOVW_ABS_NC
                global->setLinkage(Linkage::Global);
            }
    }
};

CMMC_TARGET("arm", ARMTarget);

void ARMFrameInfo::emitPrologue(MIRFunction& mfunc, LoweringContext& ctx) const {
    const auto& args = mfunc.args();
    int32_t curOffset = 0U;
    std::vector<int32_t> offsets;  // off >= passingByGPR: passing by reg[off - passingByRegBase]
    offsets.reserve(args.size());

    int32_t gprCount = 0, fprCount = 0;
    for(auto& arg : args) {
        if(isIntegerType(arg.type())) {
            if(gprCount < 4) {
                offsets.push_back(passingByRegBase + gprCount++);
                continue;
            }
        } else {
            if(fprCount < 16) {
                offsets.push_back(passingByRegBase + fprCount++);
                continue;
            }
        }

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

        if(offset >= passingByRegBase) {
            // $r0-$r3 $s0-$s3
            MIROperand src = MIROperand::asISAReg((ARM::isOperandFPR(arg) ? ARM::S0 : ARM::R0) +
                                                      static_cast<uint32_t>(offset - passingByRegBase),
                                                  ARM::isOperandFPR(arg) ? OperandType::Float32 : OperandType::Int32);
            ctx.emitCopy(arg, src);
        }
    }
    for(uint32_t idx = 0; idx < args.size(); ++idx) {
        const auto offset = offsets[idx];
        const auto& arg = args[idx];
        const auto size = getOperandSize(arg.type());
        const auto alignment = size;

        if(offset < passingByRegBase) {
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
    std::vector<int32_t> offsets;  // off >= passingByGPR: passing by reg[off - passingByRegBase]
    offsets.reserve(inst->operands().size() - 1);

    int32_t gprCount = 0, fprCount = 0;
    for(auto arg : inst->arguments()) {
        if(!arg->getType()->isFloatingPoint()) {
            if(gprCount < 4) {
                offsets.push_back(passingByRegBase + gprCount++);
                continue;
            }
        } else {
            if(fprCount < 16) {
                offsets.push_back(passingByRegBase + fprCount++);
                continue;
            }
        }

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

        if(offset < passingByRegBase) {
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
    for(uint32_t idx = 0; idx + 1 < inst->operands().size(); ++idx) {
        const auto offset = offsets[idx];
        const auto arg = inst->getOperand(idx);
        auto val = ctx.mapOperand(arg);

        if(offset >= passingByRegBase) {
            // $r0-$r3 $s0-$s3
            MIROperand dst = MIROperand::asISAReg((arg->getType()->isFloatingPoint() ? ARM::S0 : ARM::R0) +
                                                      static_cast<uint32_t>(offset - passingByRegBase),
                                                  arg->getType()->isFloatingPoint() ? OperandType::Float32 : OperandType::Int32);
            ctx.emitCopy(dst, val);
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
        val = MIROperand::asISAReg(ARM::S0, OperandType::Float32);
    } else {
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
            MIROperand retReg;
            if(val->getType()->isFloatingPoint()) {
                retReg = MIROperand::asISAReg(ARM::S0, OperandType::Float32);
            } else {
                retReg = MIROperand::asISAReg(ARM::R0, OperandType::Int32);
            }
            ctx.emitCopy(retReg, ctx.mapOperand(val));
        } else
            reportNotImplemented(CMMC_LOCATION());
    }
    ctx.emitInst(MIRInst{ ARM::BX }.setOperand<0>(ARM::ra));
}

void ARMFrameInfo::emitPostSAPrologue(MIRBasicBlock& entryBlock, const CodeGenContext& ctx, int32_t stackSize) const {
    CMMC_UNUSED(ctx);
    auto& instructions = entryBlock.instructions();
    auto iter = instructions.begin();
    while(iter->opcode() == ARM::PUSH || iter->opcode() == ARM::VPUSH)
        ++iter;
    ARM::adjustReg(instructions, iter, ARM::sp, ARM::sp, -stackSize);
}

void ARMFrameInfo::emitPostSAEpilogue(MIRBasicBlock& exitBlock, const CodeGenContext& ctx, int32_t stackSize) const {
    CMMC_UNUSED(ctx);
    auto& instructions = exitBlock.instructions();
    auto iter = std::prev(instructions.end());
    while(iter != instructions.begin()) {
        auto prev = std::prev(iter);
        if(prev->opcode() == ARM::POP || prev->opcode() == ARM::VPOP)
            iter = prev;
        else
            break;
    }
    ARM::adjustReg(instructions, iter, ARM::sp, ARM::sp, stackSize);
}
int32_t ARMFrameInfo::insertPrologueEpilogue(MIRFunction& mfunc,
                                             const std::unordered_set<MIROperand, MIROperandHasher>& calleeSavedRegister,
                                             CodeGenContext& ctx, bool isNonLeafFunc, const MIROperand&) const {
    if(calleeSavedRegister.empty() && !isNonLeafFunc)
        return 0;
    /*
    std::cerr << '[';
    for(auto op : calleeSavedRegister)
        std::cerr << op.reg() << ' ';
    std::cerr << "]\n";
    */
    uint64_t regListCode = 0;
    uint64_t regListVFPCode = 0;
    for(auto op : calleeSavedRegister)
        if(ARM::isOperandGPR(op))
            regListCode |= 1 << (op.reg() - ARM::GPRBegin);
        else
            regListVFPCode |= 1 << (op.reg() - ARM::FPRBegin);
    auto count = static_cast<int32_t>(calleeSavedRegister.size());
    if(isNonLeafFunc) {
        regListCode |= 1 << ARM::R14;
        ++count;
    }
    const auto listCode = MIROperand::asImm(regListCode, OperandType::RegList);
    const auto listCodeVFP = MIROperand::asImm(regListVFPCode, OperandType::RegListVFP);

    for(auto& block : mfunc.blocks()) {
        auto& instructions = block->instructions();
        if(&block == &mfunc.blocks().front()) {
            // backup
            if(regListVFPCode)
                instructions.push_front(MIRInst{ ARM::VPUSH }.setOperand<0>(listCodeVFP));
            if(regListCode)
                instructions.push_front(MIRInst{ ARM::PUSH }.setOperand<0>(listCode));
        }
        // restore
        auto& terminator = instructions.back();
        auto& instInfo = ctx.instInfo.getInstInfo(terminator);
        if(requireFlag(instInfo.getInstFlag(), InstFlagReturn)) {
            if(regListVFPCode) {
                const auto pos = std::prev(instructions.end());
                instructions.insert(pos, MIRInst{ ARM::VPOP }.setOperand<0>(listCodeVFP));
            }
            if(isNonLeafFunc) {
                const auto oldMask = 1 << ARM::R14;
                const auto newMask = 1 << ARM::R15;
                const auto newCode = regListCode ^ oldMask ^ newMask;
                instructions.back() = MIRInst{ ARM::POP_RET }.setOperand<0>(MIROperand::asImm(newCode, OperandType::RegList));
            } else if(regListCode) {
                const auto pos = std::prev(instructions.end());
                instructions.insert(pos, MIRInst{ ARM::POP }.setOperand<0>(listCode));
            }
        }
    }
    return count * 4;
}

CMMC_MIR_NAMESPACE_END

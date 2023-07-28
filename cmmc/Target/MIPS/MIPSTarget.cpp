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
// See also https://courses.cs.washington.edu/courses/cse410/09sp/examples/MIPSCallingConventionsSummary.pdf for the o32 calling
// convention

#include <MIPS/ISelInfoDecl.hpp>
#include <MIPS/InstInfoDecl.hpp>
#include <MIPS/ScheduleModelDecl.hpp>
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/RegisterInfo.hpp>
#include <cmmc/CodeGen/ScheduleModel.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Target/MIPS/MIPS.hpp>
#include <cstdint>
#include <memory>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

static constexpr auto spimRuntimeData = R"(_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
)";
static constexpr auto spimRuntimeText = R"(_entry:
    jal main
    nop
    move $a0, $v0
    li $v0, 17
    syscall
read:
    li $v0, 4
    la $a0, _prompt
    syscall
    li $v0, 5
    syscall
    jr $ra
    nop
write:
    li $v0, 1
    syscall
    li $v0, 4
    la $a0, _ret
    syscall
    move $v0, $0
    jr $ra
    nop
)";

constexpr int32_t passingByRegisterThreshold = 16;

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
    [[nodiscard]] bool isCallerSaved(const MIROperand& op) const noexcept override {
        const auto reg = op.reg();
        // $v0-$v1 $a0-$a3 $t0-$t9 $f0 $f2 $f4-$f18
        return (MIPS::X2 <= reg && reg <= MIPS::X15) || (reg == MIPS::X24 || reg == MIPS::X25) ||
            (MIPS::F0 <= reg && reg <= MIPS::F18);
    }
    [[nodiscard]] bool isCalleeSaved(const MIROperand& op) const noexcept override {
        const auto reg = op.reg();
        // $s0-$s7 $f20-$f30
        return (MIPS::X16 <= reg && reg <= MIPS::X23) || (MIPS::F20 <= reg && reg <= MIPS::F30);
    }
    [[nodiscard]] size_t getStackPointerAlignment(bool isNonLeafFunc) const noexcept override {
        return isNonLeafFunc ? 8U : 4U;
    }
    void emitPostSAPrologue(MIRBasicBlock& entryBlock, const CodeGenContext& ctx, int32_t stackSize) const override;
    void emitPostSAEpilogue(MIRBasicBlock& exitBlock, const CodeGenContext& ctx, int32_t stackSize) const override;
};

class MIPSRegisterInfo final : public TargetRegisterInfo {
public:
    [[nodiscard]] bool isZeroRegister(const uint32_t x) const noexcept override {
        return x == MIPS::X0;
    }
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
        if(MIPS::isOperandGPR(operand)) {
            if(operand.reg() == MIPS::X0 && (flag & OperandFlagDef))
                return false;
            return isIntegerType(operand.type());
        }
        if(MIPS::isOperandFPR(operand))
            return isFPType(operand.type());
        return MIPS::isOperandCC(operand) || MIPS::isOperandHILO(operand);
    }
    [[nodiscard]] const std::vector<uint32_t>& getAllocationList(uint32_t classId) const override {
        if(classId == 0) {
            // prefer caller-saved registers
            static std::vector<uint32_t> list{
                // $t0-$t9
                MIPS::X8, MIPS::X9, MIPS::X10, MIPS::X11, MIPS::X12,    //
                MIPS::X13, MIPS::X14, MIPS::X15, MIPS::X24, MIPS::X25,  //
                // $v0 $v1 $a0-$a3 //
                MIPS::X2, MIPS::X3, MIPS::X4, MIPS::X5, MIPS::X6, MIPS::X7,  //
                // $s0-$s7
                MIPS::X16, MIPS::X17, MIPS::X18, MIPS::X19,  //
                MIPS::X20, MIPS::X21, MIPS::X22, MIPS::X23,  //
            };
            return list;
        }
        if(classId == 1) {
            // o32 nooddspreg
            // $f0, $f2 for return value
            // $f12, $f14 for arguments
            static std::vector<uint32_t> list{
                MIPS::F4, MIPS::F6, MIPS::F8, MIPS::F10,     //
                MIPS::F16, MIPS::F18, MIPS::F20, MIPS::F22,  //
                // $f0 $f2 $f12 $f14 //
                MIPS::F0, MIPS::F2, MIPS::F12, MIPS::F14,    //
                MIPS::F24, MIPS::F26, MIPS::F28, MIPS::F30,  //
            };
            return list;
        }
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] MIROperand getReturnAddressRegister() const noexcept override {
        return MIPS::ra;
    }
    [[nodiscard]] MIROperand getStackPointerRegister() const noexcept override {
        return MIPS::sp;
    }
};

class MIPSTarget final : public Target {
    MIPSDataLayout mDataLayout;
    MIPSFrameInfo mFrameInfo;
    MIPSRegisterInfo mRegisterInfo;

public:
    [[nodiscard]] bool isNativeSupported(InstructionID inst) const noexcept override {
        return inst != InstructionID::SMin && inst != InstructionID::SMax;
    }
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
    [[nodiscard]] const TargetRegisterInfo* getRegisterInfo() const noexcept override {
        return &mRegisterInfo;
    }
    [[nodiscard]] const TargetScheduleModel& getScheduleModel() const noexcept override {
        return MIPS::getMIPSScheduleModel();
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
                    out << spimRuntimeData;
                }
            },
            [&] {
                if(runtime == RuntimeType::SplRuntime) {
                    out << spimRuntimeText;
                }
            },
            runtime != RuntimeType::SplRuntime);
    }
    void addExternalFuncIPRAInfo(MIRRelocable* symbol, IPRAUsageCache& infoIPRA) const override {
        const auto symbolName = symbol->symbol();
        // spl runtime
        if(symbolName == "read" || symbolName == "write") {
            IPRAInfo usage;
            // $v0 $a0
            usage.insert(MIROperand::asISAReg(MIPS::X2, OperandType::Int32));
            usage.insert(MIROperand::asISAReg(MIPS::X4, OperandType::Int32));
            infoIPRA.add(symbol, usage);
        }
    }
    void transformModuleBeforeCodeGen(Module& module, AnalysisPassManager& analysis) const override {
        PassManager<Module> modulePassManager;
        auto perFunc = std::make_shared<PassManager<Function>>();
        for(auto& pass : PassRegistry::get().collectFunctionPass({ "DuplicateGEP", "NoSideEffectEliminate" }))
            perFunc->addPass(pass);
        modulePassManager.addPass(createWrapper(std::move(perFunc)));
        modulePassManager.run(module, analysis);
    }
};

CMMC_TARGET("mips", MIPSTarget);

void MIPSFrameInfo::emitPrologue(MIRFunction& mfunc, LoweringContext& ctx) const {
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
                src = MIROperand::asISAReg(MIPS::F12 + static_cast<uint32_t>(offset) / 2,
                                           OperandType::Float32);  // 0 -> 12, 4 -> 14
            } else {
                src = MIROperand::asISAReg(MIPS::X4 + static_cast<uint32_t>(offset) / 4, OperandType::Int32);
            }

            if(src.type() == OperandType::Int32 && arg.type() == OperandType::Float32) {
                ctx.emitInst(MIRInst{ MIPS::MTC1 }.setOperand<1>(arg).setOperand<0>(src));
            } else
                ctx.emitCopy(arg, src);
        } else {
            auto obj = mfunc.addStackObject(ctx.getCodeGenContext(), size, alignment, offset, StackObjectUsage::Argument);
            ctx.emitInst(MIRInst{ InstLoadRegFromStack }.setOperand<0>(arg).setOperand<1>(obj));
        }
    }
}

void MIPSFrameInfo::emitCall(FunctionCallInst* inst, LoweringContext& ctx) const {
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

        if(offset >= passingByRegisterThreshold) {
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

        if(offset < passingByRegisterThreshold) {
            // $a0-$a3, $f12/$f14
            MIROperand dst;
            if(offset < 8 && arg->getType()->isFloatingPoint()) {  // pass by FPR
                dst = MIROperand::asISAReg(MIPS::F12 + static_cast<uint32_t>(offset) / 2U, OperandType::Float32);
            } else {
                dst = MIROperand::asISAReg(MIPS::X4 + static_cast<uint32_t>(offset) / 4U, OperandType::Int32);
            }

            if(val.type() == OperandType::Float32 && dst.type() == OperandType::Int32) {
                ctx.emitInst(MIRInst{ MIPS::MFC1 }.setOperand<0>(dst).setOperand<1>(val));
            } else
                ctx.emitCopy(dst, val);
        }
    }

    // padding for arg0-arg4
    if(curOffset < 16) {
        mfunc->addStackObject(ctx.getCodeGenContext(), 0, static_cast<uint32_t>(getStackPointerAlignment(true)), 16,
                              StackObjectUsage::CalleeArgument);
    }

    ctx.emitInst(MIRInst{ MIPS::JAL }.setOperand<0>(MIROperand::asReloc(global->reloc.get())));
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
    ctx.emitInst(MIRInst{ MIPS::JR }.setOperand<0>(MIPS::ra));
}

void MIPSFrameInfo::emitPostSAPrologue(MIRBasicBlock& entryBlock, const CodeGenContext& ctx, int32_t stackSize) const {
    CMMC_UNUSED(ctx);
    auto& instructions = entryBlock.instructions();
    MIPS::adjustReg(instructions, instructions.begin(), MIPS::sp, MIPS::sp, -stackSize);
}
void MIPSFrameInfo::emitPostSAEpilogue(MIRBasicBlock& exitBlock, const CodeGenContext& ctx, int32_t stackSize) const {
    auto& instructions = exitBlock.instructions();
    auto iter = std::prev(instructions.end());
    CMMC_UNUSED(ctx);
    MIPS::adjustReg(instructions, iter, MIPS::sp, MIPS::sp, stackSize);
}

CMMC_MIR_NAMESPACE_END

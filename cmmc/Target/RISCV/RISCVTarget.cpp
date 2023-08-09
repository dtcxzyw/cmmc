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

// RV64GC lp64d medany

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
#include <iostream>
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

constexpr int32_t passingByRegBase = 0x100000;
static const char* const builtinSysYRuntime =
#include <RISCV/SysYRuntime.hpp>
    ;

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
        // $sp $s0-$s7 $f20-$f30 $gp
        return reg == RISCV::X2 || (RISCV::X8 <= reg && reg <= RISCV::X9) || (RISCV::X18 <= reg && reg <= RISCV::X27) ||
            (RISCV::F8 <= reg && reg <= RISCV::F9) || (RISCV::F18 <= reg && reg <= RISCV::F27) || (reg == RISCV::X3);
    }
    [[nodiscard]] size_t getStackPointerAlignment(bool isNonLeafFunc) const noexcept override {
        CMMC_UNUSED(isNonLeafFunc);
        return 8U;
    }
    void emitPostSAPrologue(MIRBasicBlock& entryBlock, const CodeGenContext& ctx, int32_t stackSize) const override;
    void emitPostSAEpilogue(MIRBasicBlock& exitBlock, const CodeGenContext& ctx, int32_t stackSize) const override;
};

class RISCVRegisterInfo final : public TargetRegisterInfo {
public:
    [[nodiscard]] bool isZeroRegister(const uint32_t x) const noexcept override {
        return x == RISCV::X0;
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
            case OperandType::Int8:
            case OperandType::Int16:
            case OperandType::Int32:
            case OperandType::Int64:
                return OperandType::Int64;
            case OperandType::Float32:
                return OperandType::Float32;
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }
    [[nodiscard]] OperandType getCanonicalizedRegisterTypeForClass(uint32_t classId) const override {
        return classId == 0 ? OperandType::Int64 : OperandType::Float32;
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
                RISCV::X10, RISCV::X11, RISCV::X12, RISCV::X13, RISCV::X14, RISCV::X15,  //
                // $t0-$t6 $a6-$a7
                RISCV::X5, RISCV::X6, RISCV::X7, RISCV::X28, RISCV::X29, RISCV::X30, RISCV::X31, RISCV::X16, RISCV::X17,  //
                // $s0-$s1 for RVC
                RISCV::X8, RISCV::X9,
                // $s2-$s11
                RISCV::X18, RISCV::X19,                          //
                RISCV::X20, RISCV::X21, RISCV::X22, RISCV::X23,  //
                RISCV::X24, RISCV::X25, RISCV::X26, RISCV::X27,  //
                // $gp
                // RISCV::X3,  //
            };
            return list;
        }
        if(classId == 1) {
            static std::vector<uint32_t> list{
                // $fa0-$fa5 for RVC
                RISCV::F10, RISCV::F11, RISCV::F12, RISCV::F13, RISCV::F14, RISCV::F15,  //
                // $ft0-$ft11 $fa6-$fa7
                RISCV::F0, RISCV::F1, RISCV::F2, RISCV::F3,      //
                RISCV::F4, RISCV::F5, RISCV::F6, RISCV::F7,      //
                RISCV::F28, RISCV::F29, RISCV::F30, RISCV::F31,  //
                RISCV::F16, RISCV::F17,                          //
                // $fs0-$fs1 for RVC
                RISCV::F8, RISCV::F9,
                // $fs2-$fs11
                RISCV::F18, RISCV::F19, RISCV::F20, RISCV::F21,  //
                RISCV::F22, RISCV::F23, RISCV::F24, RISCV::F25,  //
                RISCV::F26, RISCV::F27,                          //
            };
            return list;
        }
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] MIROperand getReturnAddressRegister() const noexcept override {
        return RISCV::ra;
    }
    [[nodiscard]] MIROperand getStackPointerRegister() const noexcept override {
        return RISCV::sp;
    }
};

class RISCVTarget final : public Target {
    RISCVDataLayout mDataLayout;
    RISCVFrameInfo mFrameInfo;
    RISCVRegisterInfo mRegisterInfo;

public:
    [[nodiscard]] const TargetOptHeuristic& getOptHeuristic() const noexcept override {
        static TargetOptHeuristic defaultHeuristic{
            .registerLength = 64U,
            .unrollBlockSize = 4U,
            .maxUnrollBodySize = 128U,
            .duplicationThreshold = 10U,
            .duplicationIterations = 10U,
            .branchLimit = 400U,
            .disableSelectionOpt = true,
            .branchPredictionWarmupThreshold = 2U,
            .maxConstantHoistCount = 12U,
        };

        return defaultHeuristic;
    }

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
    void postLegalizeFunc(MIRFunction& func, CodeGenContext& ctx) const override;
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
        if(runtime != RuntimeType::SplRuntime) {
            // out << ".option arch rv64gc_zba_zbb\n";
            out << R"(.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0")" << '\n';
        }
        if(runtime == RuntimeType::SysYRuntime) {
            out << builtinSysYRuntime;
        }

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
            },
            '#', runtime != RuntimeType::SplRuntime);
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
    void transformModuleBeforeCodeGen(Module& module, AnalysisPassManager& analysis) const override {
        PassManager<Module> modulePassManager;
        auto perFunc = std::make_shared<PassManager<Function>>();
        for(auto& pass : PassRegistry::get().collectFunctionPass({ "CommonBaseOpt", "SCEVGEP2Phi", "DuplicateGEP", "DuplicateCmp",
                                                                   "SDivWithPowerOf2", "NoSideEffectEliminate", "InstReorder" }))
            perFunc->addPass(pass);
        modulePassManager.addPass(createWrapper(std::move(perFunc)));
        modulePassManager.run(module, analysis);
    }
    [[nodiscard]] bool isLibCallSupported(CMMCLibCall) const noexcept override {
        return true;
    }
};

CMMC_TARGET("riscv", RISCVTarget);

void RISCVFrameInfo::emitPrologue(MIRFunction& mfunc, LoweringContext& ctx) const {
    const auto& args = mfunc.args();
    int32_t curOffset = 0U;
    std::vector<int32_t> offsets;  // off >= passingByGPR: passing by reg[off - passingByRegBase]
    offsets.reserve(args.size());

    int32_t gprCount = 0, fprCount = 0;
    for(auto& arg : args) {
        if(isIntegerType(arg.type())) {
            if(gprCount < 8) {
                offsets.push_back(passingByRegBase + gprCount++);
                continue;
            }
        } else {
            if(fprCount < 8) {
                offsets.push_back(passingByRegBase + fprCount++);
                continue;
            }
        }

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

        if(offset >= passingByRegBase) {
            // $a0-$a7 $fa0-$fa7
            MIROperand src;
            if(isFPType(arg.type())) {
                src = MIROperand::asISAReg(RISCV::F10 + static_cast<uint32_t>(offset - passingByRegBase), OperandType::Float32);
            } else {
                src = MIROperand::asISAReg(RISCV::X10 + static_cast<uint32_t>(offset - passingByRegBase), OperandType::Int64);
            }
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
    std::vector<int32_t> offsets;  // off >= passingByGPR: passing by reg[off - passingByRegBase]
    offsets.reserve(inst->operands().size() - 1);

    int32_t gprCount = 0, fprCount = 0;
    for(auto arg : inst->arguments()) {
        if(!arg->getType()->isFloatingPoint()) {
            if(gprCount < 8) {
                offsets.push_back(passingByRegBase + gprCount++);
                continue;
            }
        } else {
            if(fprCount < 8) {
                offsets.push_back(passingByRegBase + fprCount++);
                continue;
            }
        }

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
            MIROperand dst;
            if(isFPType(val.type())) {
                dst = MIROperand::asISAReg(RISCV::F10 + static_cast<uint32_t>(offset - passingByRegBase), OperandType::Float32);
            } else {
                dst = MIROperand::asISAReg(RISCV::X10 + static_cast<uint32_t>(offset - passingByRegBase), OperandType::Int64);
            }
            ctx.emitCopy(dst, val);
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
    ctx.emitInst(MIRInst{ RISCV::RET });
}

void RISCVFrameInfo::emitPostSAPrologue(MIRBasicBlock& entryBlock, const CodeGenContext& ctx, int32_t stackSize) const {
    CMMC_UNUSED(ctx);
    auto& instructions = entryBlock.instructions();
    RISCV::adjustReg(instructions, instructions.begin(), RISCV::sp, RISCV::sp, -stackSize);
}
void RISCVFrameInfo::emitPostSAEpilogue(MIRBasicBlock& exitBlock, const CodeGenContext& ctx, int32_t stackSize) const {
    auto& instructions = exitBlock.instructions();
    auto iter = std::prev(instructions.end());
    CMMC_UNUSED(ctx);
    RISCV::adjustReg(instructions, iter, RISCV::sp, RISCV::sp, stackSize);
}
void RISCVTarget::postLegalizeFunc(MIRFunction& func, CodeGenContext& ctx) const {
    // func.dump(std::cerr, ctx);
    // insert auipc (maybe separated when expanding the select pseudo inst)
    for(auto& block : func.blocks()) {
        std::unordered_map<MIROperand, std::unordered_set<MIROperand, MIROperandHasher>, MIROperandHasher>
            auipcMap;  // global -> hi

        auto& instructions = block->instructions();
        for(auto iter = instructions.begin(); iter != instructions.end(); ++iter) {
            auto& inst = *iter;
            if(inst.opcode() == RISCV::AUIPC) {
                assert(inst.getOperand(1).type() == OperandType::HighBits);
                auipcMap[inst.getOperand(1)].insert(inst.getOperand(0));
            } else {
                auto& instInfo = ctx.instInfo.getInstInfo(inst);
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                    auto& operand = inst.getOperand(idx);
                    if(operand.isReloc()) {
                        auto getBase = [&] {
                            switch(inst.opcode()) {
                                case RISCV::ADDI:
                                    return inst.getOperand(1);
                                // load/store
                                default: {
                                    assert(requireOneFlag(instInfo.getInstFlag(), InstFlagLoad | InstFlagStore));
                                    return inst.getOperand(2);
                                }
                            }
                        };
                        if(operand.type() == OperandType::LowBits) {
                            const auto hiBits = MIROperand{ operand.getStorage(), OperandType::HighBits };
                            const auto& base = getBase();
                            if(auto it = auipcMap.find(hiBits); it != auipcMap.cend()) {
                                if(it->second.count(base))
                                    continue;
                            }

                            // insert immediately before the use
                            instructions.insert(iter, MIRInst{ RISCV::AUIPC }.setOperand<0>(base).setOperand<1>(hiBits));
                            auipcMap[hiBits].insert(base);
                        }
                    }
                }
            }
        }
    }

    // fix pcrel addressing
    for(auto iter = func.blocks().begin(); iter != func.blocks().end();) {
        auto next = std::next(iter);
        std::unordered_map<MIROperand, std::unordered_map<MIROperand, MIROperand, MIROperandHasher>, MIROperandHasher>
            auipcMap;  // global -> (hi -> auipc label)
        while(true) {
            auto& instructions = iter->get()->instructions();
            if(instructions.empty())
                break;
            bool newBlock = false;
            for(auto it = instructions.begin(); it != instructions.end(); ++it) {
                auto& inst = *it;
                if(inst.opcode() == RISCV::AUIPC) {
                    if(it == instructions.begin() && iter != func.blocks().begin()) {
                        assert(inst.getOperand(1).type() == OperandType::HighBits);
                        auipcMap[inst.getOperand(1)][inst.getOperand(0)] = getLowBits(MIROperand::asReloc(iter->get()));
                    } else {
                        auto block =
                            makeUnique<MIRBasicBlock>(String::get("pcrel").withID(static_cast<int32_t>(ctx.nextId())), &func);
                        auto& newInsts = block->instructions();
                        newInsts.splice(newInsts.begin(), instructions, it, instructions.end());
                        iter = func.blocks().insert(next, std::move(block));
                        newBlock = true;
                        break;
                    }
                } else {
                    auto& instInfo = ctx.instInfo.getInstInfo(inst);
                    for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                        auto& operand = inst.getOperand(idx);
                        if(operand.isReloc()) {
                            auto getBase = [&] {
                                switch(inst.opcode()) {
                                    case RISCV::ADDI:
                                        return inst.getOperand(1);
                                    // load/store
                                    default: {
                                        assert(requireOneFlag(instInfo.getInstFlag(), InstFlagLoad | InstFlagStore));
                                        return inst.getOperand(2);
                                    }
                                }
                            };
                            if(operand.type() == OperandType::LowBits) {
                                operand = auipcMap.at(MIROperand{ operand.getStorage(), OperandType::HighBits }).at(getBase());
                            }
                        }
                    }
                }
            }
            if(!newBlock)
                break;
        }
        iter = next;
    }
    // func.dump(std::cerr, ctx);
}
CMMC_MIR_NAMESPACE_END

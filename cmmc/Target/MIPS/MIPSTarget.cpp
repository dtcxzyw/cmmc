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

#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Target/MIPS/MIPSTarget.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <limits>
#include <memory>
#include <utility>
#include <variant>

// MIPS o32 abi, please refer to https://refspecs.linuxfoundation.org/elf/mipsabi.pdf

CMMC_NAMESPACE_BEGIN

constexpr Operand zero{ MIPSAddressSpace::GPR, 0U };
constexpr Operand immReg{ MIPSAddressSpace::GPR, 30U };  // use fp
constexpr Operand v0{ MIPSAddressSpace::GPR, 2U };
constexpr Operand f032{ MIPSAddressSpace::FPR_S, 0U };
constexpr Operand f064{ MIPSAddressSpace::FPR_D, 0U };
constexpr Operand sp{ MIPSAddressSpace::GPR, 29U };
constexpr Operand hi{ MIPSAddressSpace::HILO, 0U };
constexpr Operand lo{ MIPSAddressSpace::HILO, 1U };

constexpr size_t passingByRegisterThreshold = 16;

// TODO: peephole: beq 0 v0 -> beq v0 0 -> beqz

extern StringOpt targetMachine;  // NOLINT

class MIPSSimpleSubTarget final : public SimpleSubTarget {
public:
    [[nodiscard]] uint32_t getPhysicalRegisterCount(uint32_t addressSpace) const override {
        switch(addressSpace) {
            case MIPSAddressSpace::FPR_D:
                return 16;
            case MIPSAddressSpace::FPR_S:
                return 32;
            case MIPSAddressSpace::GPR:
                return 18;
            default:
                reportUnreachable();
        }
    }
    [[nodiscard]] bool inlineMemOp(size_t size) const override {
        return size <= 256;
    }
    void postPeepholeOpt(GMIRFunction& func) const override {
        // legalize int constants using $dst

        auto& constants = func.pools().pools[MIPSAddressSpace::Constant];

        for(auto& block : func.blocks()) {
            auto& instructions = block->instructions();
            for(auto iter = instructions.begin(); iter != instructions.end();) {
                const auto next = std::next(iter);

                auto resolve = [&](Operand& cv, const Operand& dst) {
                    if(cv.addressSpace != MIPSAddressSpace::Constant)
                        return;
                    const auto type = constants.getType(cv);
                    if(!type->isInteger())
                        return;
                    const auto val = static_cast<ConstantInteger*>(constants.getMetadata(cv));
                    const auto cval = val->getStorage();
                    constexpr auto bits = 16U;
                    constexpr auto mask = (static_cast<uintmax_t>(1) << bits) - 1;
                    const auto low = static_cast<uintmax_t>(cval) & mask;
                    const auto high = (static_cast<uintmax_t>(cval) & (1ULL << (bits - 1))) ? ~mask : 0;
                    const auto lowVal = static_cast<intmax_t>(low | high);
                    if(lowVal != val->getSignExtended()) {
                        // li $dst, cval
                        // use $dst
                        const auto tmp = dst;
                        instructions.insert(iter, ConstantMInst{ tmp, val->getSignExtended() });
                        cv = tmp;
                    }
                };

                auto& inst = *iter;
                // addiu
                if(std::holds_alternative<BinaryArithmeticMInst>(inst)) {
                    auto& binary = std::get<BinaryArithmeticMInst>(inst);
                    resolve(binary.rhs, binary.dst != binary.lhs ? binary.dst : immReg);
                }

                iter = next;
            }
        }

        useZeroRegister(func, zero, 4U);
    }
};

MIPSTarget::MIPSTarget() {
    if(targetMachine.get() == "emulator" || targetMachine.get() == "generic")
        mSubTarget = std::make_unique<MIPSSimpleSubTarget>();
    else
        DiagnosticsContext::get().attach<UnrecognizedInput>("target machine", targetMachine.get()).reportFatal();
}

void MIPSTarget::legalizeModuleBeforeCodeGen(Module&, AnalysisPassManager&) const {}
void MIPSTarget::legalizeFunc(GMIRFunction& func) const {
    // replace non-zero immediates with li
    auto& constant = func.pools().pools[AddressSpace::Constant];
    auto& vreg = func.pools().pools[AddressSpace::VirtualReg];

    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        for(auto iter = instructions.begin(); iter != instructions.end();) {
            const auto next = std::next(iter);
            const auto tryReplace = [&](Operand& op, bool checkZero) {
                if(op.addressSpace == AddressSpace::Constant) {
                    const auto val = static_cast<ConstantValue*>(constant.getMetadata(op));
                    if(checkZero && val == ConstantInteger::get(val->getType(), 0))
                        return;

                    // create li
                    op = vreg.allocate(constant.getType(op));
                    std::variant<intmax_t, double> cval;
                    if(val->is<ConstantInteger>())
                        cval = val->as<ConstantInteger>()->getSignExtended();
                    else
                        cval = val->as<ConstantFloatingPoint>()->getValue();

                    instructions.insert(iter, ConstantMInst{ op, cval });
                }
            };

            std::visit(Overload{ [&](BinaryArithmeticMInst& inst) {
                                    const auto commutative = inst.instID == GMIRInstID::Add || inst.instID == GMIRInstID::And ||
                                        inst.instID == GMIRInstID::Or || inst.instID == GMIRInstID::Xor;

                                    if(commutative && inst.lhs.addressSpace == AddressSpace::Constant) {
                                        std::swap(inst.lhs, inst.rhs);
                                    }

                                    tryReplace(inst.lhs, false);
                                    if(!commutative)
                                        tryReplace(inst.rhs, false);
                                },
                                 [&](UnaryArithmeticMInst& inst) { tryReplace(inst.src, false); },
                                 [&](BranchCompareMInst& inst) {
                                     if(inst.lhs.addressSpace == AddressSpace::Constant) {
                                         std::swap(inst.lhs, inst.rhs);
                                         inst.compareOp = getReversedOp(inst.compareOp);
                                     }
                                     tryReplace(inst.lhs, false);
                                     tryReplace(inst.rhs, true);  // reserve for bxxz
                                 },
                                 [&](CompareMInst& inst) {
                                     if(inst.lhs.addressSpace == AddressSpace::Constant) {
                                         std::swap(inst.lhs, inst.rhs);
                                         inst.compareOp = getReversedOp(inst.compareOp);
                                     }
                                     tryReplace(inst.lhs, false);
                                 },
                                 [](auto&) {} },
                       *iter);

            iter = next;
        }
    }

    // replace imul/div/rem
    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        for(auto iter = instructions.begin(); iter != instructions.end();) {
            const auto next = std::next(iter);

            if(std::holds_alternative<BinaryArithmeticMInst>(*iter)) {
                auto& binary = std::get<BinaryArithmeticMInst>(*iter);
                if(binary.instID == GMIRInstID::Mul || binary.instID == GMIRInstID::SDiv || binary.instID == GMIRInstID::UDiv ||
                   binary.instID == GMIRInstID::SRem || binary.instID == GMIRInstID::URem) {
                    const auto result = (binary.instID == GMIRInstID::SRem || binary.instID == GMIRInstID::URem) ? hi : lo;
                    instructions.insert(next, CopyMInst{ result, false, 0, binary.dst, false, 0, sizeof(uint32_t), false });
                    binary.dst = unusedOperand;
                }
            }

            iter = next;
        }
    }

    legalizeStoreWithConstants(func);

    // legalize fp constants
    // constant fp -> constant int + copy
    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        for(auto iter = instructions.begin(); iter != instructions.end();) {
            auto& inst = *iter;
            const auto next = std::next(iter);

            if(std::holds_alternative<ConstantMInst>(inst)) {
                auto& imm = std::get<ConstantMInst>(inst);
                if(imm.dst.addressSpace == MIPSAddressSpace::VirtualReg && std::holds_alternative<double>(imm.constant)) {
                    const auto type = vreg.getType(imm.dst)->as<FloatingPointType>();
                    const auto val = std::get<double>(imm.constant);
                    if(type->getFixedSize() == sizeof(float)) {
                        const auto fpVal = static_cast<float>(val);  // TODO: endians
                        const auto ptr = static_cast<const void*>(&fpVal);
                        const auto intVal = *static_cast<const int32_t*>(ptr);
                        const auto temp = vreg.allocate(IntegerType::get(sizeof(float) * 8));
                        instructions.insert(next, CopyMInst{ temp, false, 0, imm.dst, false, 0, sizeof(float), false });
                        imm = { temp, static_cast<intmax_t>(intVal) };
                    } else
                        reportUnreachable();
                }
            }

            iter = next;
        }
    }

    // legalize cvt
    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        for(auto iter = instructions.begin(); iter != instructions.end();) {
            auto& inst = *iter;
            const auto next = std::next(iter);

            if(std::holds_alternative<UnaryArithmeticMInst>(inst)) {
                auto& unary = std::get<UnaryArithmeticMInst>(inst);
                bool copySrc = false;
                bool copyDst = false;
                switch(unary.instID) {
                    case GMIRInstID::F2S:
                        [[fallthrough]];
                    case GMIRInstID::F2U:
                        copyDst = true;
                        break;
                    case GMIRInstID::U2F:
                        [[fallthrough]];
                    case GMIRInstID::S2F:
                        copySrc = true;
                        break;
                    default:
                        break;
                }

                if(copyDst) {
                    const auto srcType = unary.src.addressSpace == MIPSAddressSpace::VirtualReg ? vreg.getType(unary.src) :
                                                                                                  constant.getType(unary.src);
                    const auto intermediate = vreg.allocate(srcType);
                    const auto dst = std::exchange(unary.dst, intermediate);
                    instructions.insert(next,
                                        CopyMInst{ intermediate, false, 0, dst, false, 0,
                                                   static_cast<uint32_t>(srcType->getFixedSize()), false });
                } else if(copySrc) {
                    const auto dstType = vreg.getType(unary.dst);
                    const auto intermediate = vreg.allocate(dstType);
                    const auto src = std::exchange(unary.src, intermediate);
                    instructions.insert(iter,
                                        CopyMInst{ src, false, 0, intermediate, false, 0,
                                                   static_cast<uint32_t>(dstType->getFixedSize()), false });
                }
            }

            iter = next;
        }
    }
}

CMMC_TARGET("mips", MIPSTarget);

std::string_view getMIPSTextualName(uint32_t idx) noexcept;
MIPSLoweringInfo::MIPSLoweringInfo()
    : mUnused{ String::get("unused") }, mConstant{ String::get("c") }, mStack{ String::get("m") }, mVReg{ String::get("vr") },
      mHi{ String::get("hi") }, mLo{ String::get("lo") }, mFPR{ String::get("f") } {}
Operand MIPSLoweringInfo::getZeroImpl(LoweringContext& ctx, const Type* type) const {
    auto& pool = ctx.getAllocationPool(AddressSpace::Constant);
    auto zeroReg = pool.allocate(type);
    if(type->isInteger())
        pool.getMetadata(zeroReg) = ConstantInteger::get(type, 0);
    else
        reportUnreachable();
    return zeroReg;
}
String MIPSLoweringInfo::getOperand(const Operand& operand) const {
    switch(operand.addressSpace) {
        case MIPSAddressSpace::Constant:
            return mConstant.withID(static_cast<int32_t>(operand.id));
        case MIPSAddressSpace::Stack:
            return mStack.withID(static_cast<int32_t>(operand.id));
        case MIPSAddressSpace::VirtualReg:
            return mVReg.withID(static_cast<int32_t>(operand.id));
        case MIPSAddressSpace::GPR:
            return String::get(getMIPSTextualName(operand.id));
        case MIPSAddressSpace::FPR_S:
            return mFPR.withID(static_cast<int32_t>(operand.id));
        case MIPSAddressSpace::FPR_D:
            return mFPR.withID(static_cast<int32_t>(operand.id));
        case MIPSAddressSpace::HILO:
            return (operand.id == 0 ? mHi : mLo);
        default:
            return mUnused;
    }
}
std::string_view MIPSLoweringInfo::getIntrinsicName(uint32_t intrinsicID) const {
    switch(static_cast<MIPSIntrinsic>(intrinsicID)) {
        case MIPSIntrinsic::Fma:
            return "fma";
        default:
            reportUnreachable();
    }
}
void MIPSLoweringInfo::lower(ReturnInst* inst, LoweringContext& ctx) const {
    if(!inst->operands().empty()) {
        const auto val = inst->operands().front();
        const auto& dataLayout = ctx.getDataLayout();
        const auto size = val->getType()->getSize(dataLayout);
        if(size <= 4) {
            if(val->getType()->isFloatingPoint()) {
                // return by $f0
                ctx.emitInst<CopyMInst>(ctx.mapOperand(val), false, 0, f032, false, 0, static_cast<uint32_t>(size), false);
            } else {
                // return by $v0
                ctx.emitInst<CopyMInst>(ctx.mapOperand(val), false, 0, v0, false, 0, static_cast<uint32_t>(size), false);
            }
        } else  // return by $v0, $v1
            reportNotImplemented();
    }
    ctx.emitInst<RetMInst>(unusedOperand);
}
void MIPSLoweringInfo::lower(FunctionCallInst* inst, LoweringContext& ctx) const {
    auto callee = inst->operands().back();
    if(auto func = dynamic_cast<Function*>(callee)) {
        if(func->getCallingConvention() != CallingConvention::C)
            reportNotImplemented();

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

        const auto incomingArgumentsStackSize = std::max(curOffset, passingByRegisterThreshold);
        const auto stackStorage =
            ctx.getAllocationPool(AddressSpace::Stack)
                .allocate(make<StackStorageType>(incomingArgumentsStackSize, ctx.getModule().target.getStackPointerAlignment()));
        ctx.getCurrentBasicBlock()->usedStackObjects().insert(stackStorage);

        for(uint32_t idx = 0; idx + 1 < inst->operands().size(); ++idx) {
            const auto offset = offsets[idx];
            const auto arg = inst->getOperand(idx);
            const auto val = ctx.mapOperand(arg);
            const auto size = arg->getType()->getSize(dataLayout);

            if(offset < passingByRegisterThreshold) {
                // $a0-$a3, $f12/$f14
                Operand dst = unusedOperand;
                if(offset < 8U && arg->getType()->isFloatingPoint()) {  // pass by FPR
                    dst = { size == sizeof(float) ? MIPSAddressSpace::FPR_S : MIPSAddressSpace::FPR_D,
                            12U + static_cast<uint32_t>(offset) / 2U };  // 0 -> 12, 4 -> 14
                } else {
                    dst = { MIPSAddressSpace::GPR, 4U + static_cast<uint32_t>(offset) / 4U };
                }

                ctx.emitInst<CopyMInst>(val, false, 0, dst, false, 0, static_cast<uint32_t>(size), false);
            } else {
                ctx.emitInst<CopyMInst>(val, false, 0, stackStorage, true, static_cast<int32_t>(offset),
                                        static_cast<uint32_t>(size), false);
            }
        }

        ctx.emitInst<CallMInst>(global, unusedOperand);
        const auto ret = inst->getType();
        if(ret->isVoid()) {
            return;
        }
        const auto retReg = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(ret);
        Operand val = unusedOperand;
        if(ret->isFloatingPoint()) {
            // $f0
            val = ret->getFixedSize() == sizeof(float) ? f032 : f064;
        } else {
            assert(ret->getFixedSize() == sizeof(uint32_t));
            val = v0;
        }

        ctx.emitInst<CopyMInst>(val, false, 0, retReg, false, 0, static_cast<uint32_t>(ret->getSize(dataLayout)), false);
        ctx.addOperand(inst, retReg);

    } else
        DiagnosticsContext::get().attach<Reason>("dynamic call is not supported").reportFatal();
}
void MIPSLoweringInfo::lower(FMAInst*, LoweringContext&) const {
    reportNotImplemented();
}

MIPSRegisterUsage::MIPSRegisterUsage()
    : mGPR{ std::numeric_limits<uint32_t>::max() }, mFPR{ std::numeric_limits<uint32_t>::max() } {
    // $t0-$t9, $s0-$s7
    for(uint32_t idx = 8; idx < 26; ++idx)
        setDiscarded(mGPR, idx);
    // o32 nooddspreg
    for(uint32_t idx = 0; idx < 32; idx += 2)
        setDiscarded(mFPR, idx);
    // return value
    for(uint32_t idx = 0; idx < 4; ++idx)
        setUsed(mFPR, idx);
    // arguments
    for(uint32_t idx = 12; idx < 16; ++idx)
        setUsed(mFPR, idx);
}
void MIPSRegisterUsage::markAsUsed(const Operand& operand) {
    switch(operand.addressSpace) {
        case MIPSAddressSpace::GPR:
            setUsed(mGPR, operand.id);
            break;
        case MIPSAddressSpace::FPR_S:
            [[fallthrough]];
        case MIPSAddressSpace::FPR_D:
            setUsed(mFPR, operand.id);
            break;
        default:
            reportUnreachable();
    }
}
void MIPSRegisterUsage::markAsDiscarded(const Operand& operand) {
    switch(operand.addressSpace) {
        case MIPSAddressSpace::GPR:
            setDiscarded(mGPR, operand.id);
            break;
        case MIPSAddressSpace::FPR_S:
            [[fallthrough]];
        case MIPSAddressSpace::FPR_D:
            setDiscarded(mFPR, operand.id);
            break;
        default:
            reportUnreachable();
    }
}
Operand MIPSRegisterUsage::getFreeRegister(uint32_t src) {
    switch(src) {
        case MIPSAddressSpace::GPR: {
            const auto freeBits = ~mGPR;
            if(freeBits == 0)
                return unusedOperand;
            // prefer caller-saved registers
            // $t0-$t9
            for(uint32_t idx = 8; idx < 16; ++idx)
                if(freeBits & (1U << idx))
                    return { src, idx };
            for(uint32_t idx = 24; idx < 26; ++idx)
                if(freeBits & (1U << idx))
                    return { src, idx };
            return { src, static_cast<uint32_t>(__builtin_ctz(freeBits & (-freeBits))) };
        } break;
        case MIPSAddressSpace::FPR_S:
            [[fallthrough]];
        case MIPSAddressSpace::FPR_D: {
            const auto freeBits = ~mFPR;
            if(freeBits == 0)
                return unusedOperand;
            // prefer caller-saved registers
            // $f4-f18
            for(uint32_t idx = 4; idx <= 18; ++idx)
                if(freeBits & (1U << idx))
                    return { src, idx };
            return { src, static_cast<uint32_t>(__builtin_ctz(freeBits & (-freeBits))) };
        } break;
        default:
            reportUnreachable();
    }
}
uint32_t MIPSRegisterUsage::getRegisterClass(const Type* type) const {
    if(type->isFloatingPoint()) {
        return type->getFixedSize() == sizeof(float) ? MIPSAddressSpace::FPR_S : MIPSAddressSpace::FPR_D;
    }
    return MIPSAddressSpace::GPR;
}
bool MIPSTarget::isCallerSaved(const Operand& op) const noexcept {
    if(op.addressSpace == MIPSAddressSpace::GPR) {
        // $t0-$t9
        return (8 <= op.id && op.id <= 15) || (24 <= op.id && op.id <= 25);
    }
    if(op.addressSpace == MIPSAddressSpace::FPR_S || op.addressSpace == MIPSAddressSpace::FPR_D) {
        // $f4-$f18
        return 4 <= op.id && op.id <= 18;
    }
    reportNotImplemented();
}
bool MIPSTarget::isCalleeSaved(const Operand& op) const noexcept {
    if(op.addressSpace == MIPSAddressSpace::GPR) {
        // $s0-$s7
        return 16 <= op.id && op.id <= 23;
    }
    if(op.addressSpace == MIPSAddressSpace::FPR_S || op.addressSpace == MIPSAddressSpace::FPR_D) {
        // $f20-$f30
        return 20 <= op.id && op.id <= 30;
    }
    reportNotImplemented();
}

void MIPSLoweringInfo::emitPrologue(LoweringContext& ctx, Function* func) const {
    const auto& args = func->entryBlock()->args();
    size_t curOffset = 0U;
    std::vector<size_t> offsets;
    offsets.reserve(args.size());
    const auto& dataLayout = ctx.getDataLayout();

    for(auto arg : args) {
        auto size = arg->getType()->getSize(dataLayout);
        auto alignment = arg->getType()->getAlignment(dataLayout);

        constexpr size_t minimumSize = sizeof(uint32_t);
        size = std::max(size, minimumSize);
        alignment = std::max(alignment, minimumSize);

        curOffset = (curOffset + alignment - 1) / alignment * alignment;
        offsets.push_back(curOffset);
        curOffset += size;
    }

    for(uint32_t idx = 0; idx < args.size(); ++idx) {
        const auto offset = offsets[idx];
        const auto arg = args[idx];
        const auto val = ctx.mapOperand(arg);
        const auto size = arg->getType()->getSize(dataLayout);

        if(offset < passingByRegisterThreshold) {
            // $a0-$a3, $f12/$f14
            Operand dst = unusedOperand;
            if(offset < 8U && arg->getType()->isFloatingPoint()) {  // pass by FPR
                dst = { size == sizeof(float) ? MIPSAddressSpace::FPR_S : MIPSAddressSpace::FPR_D,
                        12U + static_cast<uint32_t>(offset) / 2U };  // 0 -> 12, 4 -> 14
            } else {
                dst = { MIPSAddressSpace::GPR, 4U + static_cast<uint32_t>(offset) / 4U };
            }

            ctx.emitInst<CopyMInst>(dst, false, 0, val, false, 0, static_cast<uint32_t>(size), false);
        } else {
            ctx.emitInst<CopyMInst>(sp, true, static_cast<int32_t>(offset), val, false, 0, static_cast<uint32_t>(size), false);
        }
    }
}

void MIPSTarget::addExternalFuncIPRAInfo(GMIRSymbol* symbol, IPRAUsageCache& infoIPRA) const {
    if(targetMachine.get() == "emulator") {
        const auto symbolName = symbol->symbol;
        // spl runtime
        if(symbolName == "read" || symbolName == "write") {
            IPRAInfo empty;
            infoIPRA.add(symbol, empty);
        }
    }
}

CMMC_NAMESPACE_END

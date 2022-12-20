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
#include <variant>

CMMC_NAMESPACE_BEGIN

constexpr Operand v0{ MIPSAddressSpace::GPR, 2U };
constexpr Operand sp{ MIPSAddressSpace::GPR, 29U };
constexpr Operand hi{ MIPSAddressSpace::HILO, 0U };
constexpr Operand lo{ MIPSAddressSpace::HILO, 1U };

// TODO: peephole: beq 0 v0 -> beq v0 0 -> beqz

extern StringOpt targetMachine;

class MIPSSimpleSubTarget final : public SimpleSubTarget {
public:
    uint32_t getPhysicalRegisterCount(uint32_t addressSpace) const override {
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
    bool inlineMemOp(size_t size) const override {
        return size <= 256;
    }
};

MIPSTarget::MIPSTarget() {
    if(targetMachine.get() == "emulator")
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
            const auto tryReplace = [&](Operand& op, bool allowZero) {
                if(op.addressSpace == AddressSpace::Constant) {
                    const auto val = static_cast<ConstantValue*>(constant.getMetadata(op));
                    MatchContext<Value> matchCtx{ val, nullptr };
                    if(!allowZero || !cint_(0)(matchCtx)) {
                        // create li
                        op = vreg.allocate(constant.getType(op));
                        std::variant<intmax_t, double> cval;
                        if(val->is<ConstantInteger>())
                            cval = val->as<ConstantInteger>()->getSignExtended();
                        else
                            cval = val->as<ConstantFloatingPoint>()->getValue();

                        instructions.insert(iter, ConstantMInst{ op, cval });
                    }
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
                                     tryReplace(inst.rhs, true);
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
}

CMMC_TARGET("mips", MIPSTarget);

std::string_view getMIPSTextualName(uint32_t idx) noexcept;
MIPSLoweringInfo::MIPSLoweringInfo()
    : mUnused{ String::get("unused") }, mConstant{ String::get("c") }, mStack{ String::get("m") }, mVReg{ String::get("vr") },
      mHi{ String::get("hi") }, mLo{ String::get("lo") }, mFPR{ String::get("f") } {}
Operand MIPSLoweringInfo::getZeroImpl(LoweringContext& ctx, const Type* type) const {
    auto& pool = ctx.getAllocationPool(AddressSpace::Constant);
    auto zero = pool.allocate(type);
    if(type->isInteger())
        pool.getMetadata(zero) = ConstantInteger::get(type, 0);
    else
        reportUnreachable();
    return zero;
}
String MIPSLoweringInfo::getOperand(const Operand& operand) const {
    switch(operand.addressSpace) {
        case MIPSAddressSpace::Constant:
            return mConstant.withID(operand.id);
        case MIPSAddressSpace::Stack:
            return mStack.withID(operand.id);
        case MIPSAddressSpace::VirtualReg:
            return mVReg.withID(operand.id);
        case MIPSAddressSpace::GPR:
            return String::get(getMIPSTextualName(operand.id));
        case MIPSAddressSpace::FPR_S:
            return mFPR.withID(operand.id);
        case MIPSAddressSpace::FPR_D:
            return mFPR.withID(operand.id * 2);
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
        case MIPSIntrinsic::ConditionalMove:
            return "cmov";
        default:
            reportUnreachable();
    }
}
void MIPSLoweringInfo::lower(ReturnInst* inst, LoweringContext& ctx) const {
    if(!inst->operands().empty()) {
        const auto val = inst->operands().front();
        const auto& dataLayout = ctx.getDataLayout();
        // TODO: floating-point return value
        const auto size = val->getType()->getSize(dataLayout);
        if(size <= 4) {
            // return by $v0
            ctx.emitInst<CopyMInst>(ctx.mapOperand(val), false, 0, v0, false, 0, static_cast<uint32_t>(size), false);
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

        size_t offset = 0U;
        std::vector<size_t> offsets;
        offsets.reserve(inst->operands().size() - 1);

        for(auto& arg : inst->operands()) {
            if(&arg == &inst->operands().back())
                break;

            const auto size = arg->getType()->getSize(dataLayout);
            const auto alignment = arg->getType()->getAlignment(dataLayout);
            // TODO: float

            offset = (offset + alignment - 1) / alignment * alignment;
            offsets.push_back(offset);
            offset += size;
        }

        Operand stackStorage = unusedOperand;
        if(offset > 16U) {
            stackStorage = ctx.getAllocationPool(AddressSpace::Stack).allocate(make<StackStorageType>(offset, 8U));
        }

        for(uint32_t idx = 0; idx + 1 < inst->operands().size(); ++idx) {
            const auto offset = offsets[idx];
            const auto arg = inst->getOperand(idx);
            const auto val = ctx.mapOperand(arg);
            const auto size = arg->getType()->getSize(dataLayout);

            if(offset < 16U) {
                // $a0-$a3
                const Operand dst{ MIPSAddressSpace::GPR, 4U + static_cast<uint32_t>(offset) / 4U };
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
        } else {
            const auto retReg = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(ret);
            Operand val = unusedOperand;
            if(ret->isFloatingPoint()) {
                // $f0
                val = Operand{ ret->getFixedSize() == 4 ? MIPSAddressSpace::FPR_S : MIPSAddressSpace::FPR_D, 0U };
            } else {
                assert(ret->getFixedSize() == 4);
                val = v0;
            }

            ctx.emitInst<CopyMInst>(val, false, 0, retReg, false, 0, static_cast<uint32_t>(ret->getSize(dataLayout)), false);
            ctx.addOperand(inst, retReg);
        }
    } else
        DiagnosticsContext::get().attach<Reason>("dynamic call is not supported").reportFatal();
}
void MIPSLoweringInfo::lower(FMAInst*, LoweringContext&) const {
    reportNotImplemented();
}

MIPSRegisterUsage::MIPSRegisterUsage() : mGPR{ std::numeric_limits<uint32_t>::max() }, mFPR{ 0U } {
    // $t0-$t9, $s0-$s7
    for(uint32_t idx = 8; idx < 26; ++idx)
        setDiscarded(mGPR, idx);
}
void MIPSRegisterUsage::markAsUsed(const Operand& operand) {
    switch(operand.addressSpace) {
        case MIPSAddressSpace::GPR:
            setUsed(mGPR, operand.id);
            break;
        case MIPSAddressSpace::FPR_S:
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
            setDiscarded(mFPR, operand.id);
            break;
        default:
            reportUnreachable();
    }
}
Operand MIPSRegisterUsage::getFreeRegister(uint32_t src) {
    uint32_t x;
    switch(src) {
        case MIPSAddressSpace::GPR: {
            x = mGPR;
        } break;
        case MIPSAddressSpace::FPR_S: {
            x = mFPR;
        } break;
        default:
            reportUnreachable();
    }

    const auto freeBits = ~x;
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
}
uint32_t MIPSRegisterUsage::getRegisterClass(const Type* type) const {
    if(type->isFloatingPoint()) {
        // TODO: double
        return MIPSAddressSpace::FPR_S;
    } else {
        return MIPSAddressSpace::GPR;
    }
}
bool MIPSTarget::isCallerSaved(const Operand& op) const noexcept {
    if(op.addressSpace == MIPSAddressSpace::GPR) {
        // $t0-$t9
        return (8 <= op.id && op.id <= 15) || (24 <= op.id && op.id <= 25);
    } else
        reportNotImplemented();
}
bool MIPSTarget::isCalleeSaved(const Operand& op) const noexcept {
    if(op.addressSpace == MIPSAddressSpace::GPR) {
        // $s0-$s7
        return 16 <= op.id && op.id <= 23;
    } else
        reportNotImplemented();
}

void MIPSLoweringInfo::emitPrologue(LoweringContext& ctx, Function* func) const {
    const auto& args = func->entryBlock()->args();
    size_t offset = 0U;
    std::vector<size_t> offsets;
    offsets.reserve(args.size());
    const auto& dataLayout = ctx.getDataLayout();

    for(auto arg : args) {
        const auto size = arg->getType()->getSize(dataLayout);
        const auto alignment = arg->getType()->getAlignment(dataLayout);
        // TODO: float

        offset = (offset + alignment - 1) / alignment * alignment;
        offsets.push_back(offset);
        offset += size;
    }

    for(uint32_t idx = 0; idx < args.size(); ++idx) {
        const auto offset = offsets[idx];
        const auto arg = args[idx];
        const auto val = ctx.mapOperand(arg);
        const auto size = arg->getType()->getSize(dataLayout);

        if(offset < 16U) {
            // $a0-$a3
            const Operand dst{ MIPSAddressSpace::GPR, 4U + static_cast<uint32_t>(offset) / 4U };
            ctx.emitInst<CopyMInst>(dst, false, 0, val, false, 0, static_cast<uint32_t>(size), false);
        } else {
            ctx.emitInst<CopyMInst>(sp, true, static_cast<int32_t>(offset), val, false, 0, static_cast<uint32_t>(size), false);
        }
    }
}

CMMC_NAMESPACE_END

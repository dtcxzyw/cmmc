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
#include <cmmc/Target/RISCV/RISCVTarget.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <limits>
#include <memory>
#include <variant>

CMMC_NAMESPACE_BEGIN

constexpr Operand zero{ RISCVAddressSpace::GPR, 0U };
constexpr Operand a0{ RISCVAddressSpace::GPR, 10U };
constexpr Operand sp{ RISCVAddressSpace::GPR, 2U };

// TODO: peephole: beq 0 v0 -> beq v0 0 -> beqz

extern StringOpt targetMachine;  // NOLINT

class RISCVSimpleSubTarget final : public SimpleSubTarget {
public:
    [[nodiscard]] uint32_t getPhysicalRegisterCount(uint32_t addressSpace) const override {
        switch(addressSpace) {
            case RISCVAddressSpace::FPR_D:
                return 32;
            case RISCVAddressSpace::FPR_S:
                return 32;
            case RISCVAddressSpace::GPR:
                return 19;
            default:
                reportUnreachable();
        }
    }
    [[nodiscard]] bool inlineMemOp(size_t size) const override {
        return size <= 256;
    }
    void postPeepholeOpt(GMIRFunction& func) const override {
        useZeroRegister(func, zero, 8U);
    }
};

RISCVTarget::RISCVTarget() {
    if(targetMachine.get() == "emulator")
        mSubTarget = std::make_unique<RISCVSimpleSubTarget>();
    else
        DiagnosticsContext::get().attach<UnrecognizedInput>("target machine", targetMachine.get()).reportFatal();
}

void RISCVTarget::legalizeModuleBeforeCodeGen(Module&, AnalysisPassManager&) const {}
void RISCVTarget::legalizeFunc(GMIRFunction& func) const {
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

    legalizeStoreWithConstants(func);
}

CMMC_TARGET("riscv", RISCVTarget);

std::string_view getRISCVTextualName(uint32_t idx) noexcept;
RISCVLoweringInfo::RISCVLoweringInfo()
    : mUnused{ String::get("unused") }, mConstant{ String::get("c") }, mStack{ String::get("m") }, mVReg{ String::get("vr") },
      mFPR{ String::get("f") } {}
Operand RISCVLoweringInfo::getZeroImpl(LoweringContext& ctx, const Type* type) const {
    auto& pool = ctx.getAllocationPool(AddressSpace::Constant);
    auto zeroReg = pool.allocate(type);
    if(type->isInteger())
        pool.getMetadata(zeroReg) = ConstantInteger::get(type, 0);
    else
        reportUnreachable();
    return zeroReg;
}
String RISCVLoweringInfo::getOperand(const Operand& operand) const {
    switch(operand.addressSpace) {
        case RISCVAddressSpace::Constant:
            return mConstant.withID(static_cast<int32_t>(operand.id));
        case RISCVAddressSpace::Stack:
            return mStack.withID(static_cast<int32_t>(operand.id));
        case RISCVAddressSpace::VirtualReg:
            return mVReg.withID(static_cast<int32_t>(operand.id));
        case RISCVAddressSpace::GPR:
            return String::get(getRISCVTextualName(operand.id));
        case RISCVAddressSpace::FPR_S:
            return mFPR.withID(static_cast<int32_t>(operand.id));
        case RISCVAddressSpace::FPR_D:
            return mFPR.withID(static_cast<int32_t>(operand.id));
        default:
            return mUnused;
    }
}
std::string_view RISCVLoweringInfo::getIntrinsicName(uint32_t intrinsicID) const {
    switch(static_cast<RISCVIntrinsic>(intrinsicID)) {
        case RISCVIntrinsic::Fma:
            return "fma";
        default:
            reportUnreachable();
    }
}
void RISCVLoweringInfo::lower(ReturnInst* inst, LoweringContext& ctx) const {
    if(!inst->operands().empty()) {
        const auto val = inst->operands().front();
        const auto& dataLayout = ctx.getDataLayout();
        // TODO: floating-point return value
        const auto size = val->getType()->getSize(dataLayout);
        if(size <= 8) {
            // return by $a0
            ctx.emitInst<CopyMInst>(ctx.mapOperand(val), false, 0, a0, false, 0, static_cast<uint32_t>(size), false);
        } else  // return by $a0, $a1
            reportNotImplemented();
    }
    ctx.emitInst<RetMInst>(unusedOperand);
}
void RISCVLoweringInfo::lower(FunctionCallInst* inst, LoweringContext& ctx) const {
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

            const auto size = arg->getType()->getSize(dataLayout);
            const auto alignment = arg->getType()->getAlignment(dataLayout);

            curOffset = (curOffset + alignment - 1) / alignment * alignment;
            offsets.push_back(curOffset);
            curOffset += size;
        }

        Operand stackStorage = unusedOperand;
        if(curOffset > 32U) {
            stackStorage = ctx.getAllocationPool(AddressSpace::Stack)
                               .allocate(make<StackStorageType>(curOffset, ctx.getModule().target.getStackPointerAlignment()));
            ctx.getCurrentBasicBlock()->usedStackObjects().insert(stackStorage);
        }

        for(uint32_t idx = 0; idx + 1 < inst->operands().size(); ++idx) {
            const auto offset = offsets[idx];
            const auto arg = inst->getOperand(idx);
            const auto val = ctx.mapOperand(arg);
            const auto size = arg->getType()->getSize(dataLayout);

            if(offset < 32U) {
                // $a0-$a7
                const Operand dst{ RISCVAddressSpace::GPR, 10U + static_cast<uint32_t>(offset) / 4U };
                ctx.emitInst<CopyMInst>(val, false, 0, dst, false, 0, static_cast<uint32_t>(size), false);

                // TODO: float
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
            val = Operand{ ret->getFixedSize() == 4 ? RISCVAddressSpace::FPR_S : RISCVAddressSpace::FPR_D, 0U };
        } else {
            assert(ret->getFixedSize() == 4);
            val = a0;
        }

        ctx.emitInst<CopyMInst>(val, false, 0, retReg, false, 0, static_cast<uint32_t>(ret->getSize(dataLayout)), false);
        ctx.addOperand(inst, retReg);

    } else
        DiagnosticsContext::get().attach<Reason>("dynamic call is not supported").reportFatal();
}
void RISCVLoweringInfo::lower(FMAInst*, LoweringContext&) const {
    reportNotImplemented();
}

RISCVRegisterUsage::RISCVRegisterUsage() : mGPR{ std::numeric_limits<uint32_t>::max() }, mFPR{ 0U } {
    // $t0-$t6, $s0-$s11
    for(uint32_t idx = 5; idx < 10; ++idx)
        setDiscarded(mGPR, idx);
    for(uint32_t idx = 18; idx < 32; ++idx)
        setDiscarded(mGPR, idx);
}
void RISCVRegisterUsage::markAsUsed(const Operand& operand) {
    switch(operand.addressSpace) {
        case RISCVAddressSpace::GPR:
            setUsed(mGPR, operand.id);
            break;
        case RISCVAddressSpace::FPR_S:
            setUsed(mFPR, operand.id);
            break;
        default:
            reportUnreachable();
    }
}
void RISCVRegisterUsage::markAsDiscarded(const Operand& operand) {
    switch(operand.addressSpace) {
        case RISCVAddressSpace::GPR:
            setDiscarded(mGPR, operand.id);
            break;
        case RISCVAddressSpace::FPR_S:
            setDiscarded(mFPR, operand.id);
            break;
        default:
            reportUnreachable();
    }
}
Operand RISCVRegisterUsage::getFreeRegister(uint32_t src) {
    uint32_t x;
    switch(src) {
        case RISCVAddressSpace::GPR: {
            x = mGPR;
        } break;
        case RISCVAddressSpace::FPR_S: {
            x = mFPR;
        } break;
        case RISCVAddressSpace::FPR_D: {
            x = mFPR;
        } break;
        default:
            reportUnreachable();
    }

    const auto freeBits = ~x;
    if(freeBits == 0)
        return unusedOperand;
    // prefer caller-saved registers
    // $t0-$t6
    for(uint32_t idx = 5; idx < 8; ++idx)
        if(freeBits & (1U << idx))
            return { src, idx };
    for(uint32_t idx = 28; idx < 32; ++idx)
        if(freeBits & (1U << idx))
            return { src, idx };
    return { src, static_cast<uint32_t>(__builtin_ctz(freeBits & (-freeBits))) };
}
uint32_t RISCVRegisterUsage::getRegisterClass(const Type* type) const {
    if(type->isFloatingPoint()) {
        return RISCVAddressSpace::FPR_D;
    }
    return RISCVAddressSpace::GPR;
}
bool RISCVTarget::isCallerSaved(const Operand& op) const noexcept {
    if(op.addressSpace == RISCVAddressSpace::GPR) {
        // $t0-$t6
        return (5 <= op.id && op.id <= 7) || (28 <= op.id && op.id <= 31);
    }
    reportNotImplemented();
}
bool RISCVTarget::isCalleeSaved(const Operand& op) const noexcept {
    if(op.addressSpace == RISCVAddressSpace::GPR) {
        // $s0-$s11
        return (8 <= op.id && op.id <= 9) || (18 <= op.id && op.id <= 27);
    }
    reportNotImplemented();
}

void RISCVLoweringInfo::emitPrologue(LoweringContext& ctx, Function* func) const {
    const auto& args = func->entryBlock()->args();
    size_t curOffset = 0U;
    std::vector<size_t> offsets;
    offsets.reserve(args.size());
    const auto& dataLayout = ctx.getDataLayout();

    for(auto arg : args) {
        const auto size = arg->getType()->getSize(dataLayout);
        const auto alignment = arg->getType()->getAlignment(dataLayout);
        // TODO: float

        curOffset = (curOffset + alignment - 1) / alignment * alignment;
        offsets.push_back(curOffset);
        curOffset += size;
    }

    for(uint32_t idx = 0; idx < args.size(); ++idx) {
        const auto offset = offsets[idx];
        const auto arg = args[idx];
        const auto val = ctx.mapOperand(arg);
        const auto size = arg->getType()->getSize(dataLayout);

        if(offset < 32U) {
            // $a0-$a7
            const Operand dst{ RISCVAddressSpace::GPR, 10U + static_cast<uint32_t>(offset) / 4U };
            ctx.emitInst<CopyMInst>(dst, false, 0, val, false, 0, static_cast<uint32_t>(size), false);
        } else {
            ctx.emitInst<CopyMInst>(sp, true, static_cast<int32_t>(offset), val, false, 0, static_cast<uint32_t>(size), false);
        }
    }
}

void RISCVTarget::addExternalFuncIPRAInfo(GMIRSymbol* symbol, IPRAUsageCache& infoIPRA) const {
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

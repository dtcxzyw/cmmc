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
constexpr Operand fa032{ RISCVAddressSpace::FPR_S, 10U };
constexpr Operand fa064{ RISCVAddressSpace::FPR_D, 10U };
constexpr Operand sp{ RISCVAddressSpace::GPR, 2U };

constexpr size_t passingByRegisterThreshold = 64;

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
                reportUnreachable(CMMC_LOCATION());
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

    // fne -> not feq

    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        for(auto iter = instructions.begin(); iter != instructions.end();) {
            const auto next = std::next(iter);
            auto& inst = *iter;

            if(std::holds_alternative<CompareMInst>(inst)) {
                auto& cmp = std::get<CompareMInst>(inst);

                if(cmp.instID == GMIRInstID::FCmp && cmp.compareOp == CompareOp::NotEqual) {
                    cmp.compareOp = CompareOp::Equal;
                    const auto intermediateReg = vreg.allocate(vreg.getType(cmp.dst));
                    const auto dst = std::exchange(cmp.dst, intermediateReg);
                    const auto boolean = IntegerType::getBoolean();
                    const auto cv = constant.allocate(boolean);
                    constant.getMetadata(cv) = ConstantInteger::get(boolean, 1);
                    // xori res, 1
                    instructions.insert(next, BinaryArithmeticMInst{ GMIRInstID::Xor, intermediateReg, cv, dst });
                }
            }

            iter = next;
        }
    }
}

CMMC_TARGET("riscv", RISCVTarget);

static uint32_t getRegisterClass(const Type* type) {
    if(type->isFloatingPoint()) {
        return type->getFixedSize() == sizeof(float) ? RISCVAddressSpace::FPR_S : RISCVAddressSpace::FPR_D;
    }
    return RISCVAddressSpace::GPR;
}

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
        reportUnreachable(CMMC_LOCATION());
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
            [[fallthrough]];
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
            reportUnreachable(CMMC_LOCATION());
    }
}
void RISCVLoweringInfo::lower(ReturnInst* inst, LoweringContext& ctx) const {
    if(!inst->operands().empty()) {
        const auto val = inst->operands().front();
        const auto& dataLayout = ctx.getDataLayout();
        // TODO: floating-point return value
        const auto size = val->getType()->getSize(dataLayout);
        if(size <= 8) {
            if(val->getType()->isFloatingPoint()) {
                // return by $fa0
                ctx.emitInst<CopyMInst>(ctx.mapOperand(val), false, 0, (size == sizeof(float) ? fa032 : fa064), false, 0,
                                        static_cast<uint32_t>(size), false);
            } else {
                // return by $a0
                ctx.emitInst<CopyMInst>(ctx.mapOperand(val), false, 0, a0, false, 0, static_cast<uint32_t>(size), false);
            }
        } else  // return by $a0, $a1
            reportNotImplemented(CMMC_LOCATION());
    }
    ctx.emitInst<RetMInst>(unusedOperand);
}
void RISCVLoweringInfo::lower(FunctionCallInst* inst, LoweringContext& ctx) const {
    auto callee = inst->operands().back();
    if(auto func = dynamic_cast<Function*>(callee)) {
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

            constexpr size_t minimumSize = sizeof(uint64_t);
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
                // $a0-$a7，$fa0-$fa7
                const Operand dst{ getRegisterClass(arg->getType()), 10U + static_cast<uint32_t>(offset) / 8U };
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
            // $fa0
            val = (ret->getFixedSize() == sizeof(float) ? fa032 : fa064);
        } else {
            val = a0;
        }

        ctx.emitInst<CopyMInst>(val, false, 0, retReg, false, 0, static_cast<uint32_t>(ret->getSize(dataLayout)), false);
        ctx.addOperand(inst, retReg);

    } else
        DiagnosticsContext::get().attach<Reason>("dynamic call is not supported").reportFatal();
}
void RISCVLoweringInfo::lower(FMAInst*, LoweringContext&) const {
    reportNotImplemented(CMMC_LOCATION());
}

RISCVRegisterUsage::RISCVRegisterUsage()
    : mGPR{ std::numeric_limits<uint32_t>::max() }, mFPR{ std::numeric_limits<uint32_t>::max() } {
    // $t0-$t6, $s0-$s11
    for(uint32_t idx = 5; idx < 10; ++idx)
        setDiscarded(mGPR, idx);
    for(uint32_t idx = 18; idx < 32; ++idx)
        setDiscarded(mGPR, idx);
    // $ft0-$ft11 $fs0-$fs11
    for(uint32_t idx = 0; idx < 10; ++idx)
        setDiscarded(mFPR, idx);
    for(uint32_t idx = 18; idx < 32; ++idx)
        setDiscarded(mFPR, idx);
}
void RISCVRegisterUsage::markAsUsed(const Operand& operand) {
    switch(operand.addressSpace) {
        case RISCVAddressSpace::GPR:
            setUsed(mGPR, operand.id);
            break;
        case RISCVAddressSpace::FPR_S:
            [[fallthrough]];
        case RISCVAddressSpace::FPR_D:
            setUsed(mFPR, operand.id);
            break;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}
void RISCVRegisterUsage::markAsDiscarded(const Operand& operand) {
    switch(operand.addressSpace) {
        case RISCVAddressSpace::GPR:
            setDiscarded(mGPR, operand.id);
            break;
        case RISCVAddressSpace::FPR_S:
            [[fallthrough]];
        case RISCVAddressSpace::FPR_D:
            setDiscarded(mFPR, operand.id);
            break;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}
Operand RISCVRegisterUsage::getFreeRegister(uint32_t src) {
    switch(src) {
        case RISCVAddressSpace::GPR: {
            const auto freeBits = ~mGPR;
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
        } break;
        case RISCVAddressSpace::FPR_S:
            [[fallthrough]];
        case RISCVAddressSpace::FPR_D: {
            const auto freeBits = ~mFPR;
            if(freeBits == 0)
                return unusedOperand;
            // prefer caller-saved registers
            // $ft0-$t11
            for(uint32_t idx = 0; idx < 8; ++idx)
                if(freeBits & (1U << idx))
                    return { src, idx };
            for(uint32_t idx = 28; idx < 32; ++idx)
                if(freeBits & (1U << idx))
                    return { src, idx };
            return { src, static_cast<uint32_t>(__builtin_ctz(freeBits & (-freeBits))) };
        } break;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}
uint32_t RISCVRegisterUsage::getRegisterClass(const Type* type) const {
    return cmmc::getRegisterClass(type);
}
bool RISCVTarget::isCallerSaved(const Operand& op) const noexcept {
    if(op.addressSpace == RISCVAddressSpace::GPR) {
        // $t0-$t6
        return (5 <= op.id && op.id <= 7) || (28 <= op.id && op.id <= 31);
    }
    if(op.addressSpace == RISCVAddressSpace::FPR_S || op.addressSpace == RISCVAddressSpace::FPR_D) {
        // $ft0-$ft11
        return op.id <= 7 || (28 <= op.id && op.id <= 31);
    }
    reportUnreachable(CMMC_LOCATION());
}
bool RISCVTarget::isCalleeSaved(const Operand& op) const noexcept {
    assert(op.addressSpace == RISCVAddressSpace::GPR || op.addressSpace == RISCVAddressSpace::FPR_S ||
           op.addressSpace == RISCVAddressSpace::FPR_D);
    // $(f)s0-$s11
    return (8 <= op.id && op.id <= 9) || (18 <= op.id && op.id <= 27);
}

void RISCVLoweringInfo::emitPrologue(LoweringContext& ctx, Function* func) const {
    const auto& args = func->args();
    size_t curOffset = 0U;
    std::vector<size_t> offsets;
    offsets.reserve(args.size());
    const auto& dataLayout = ctx.getDataLayout();

    for(auto arg : args) {
        auto size = arg->getType()->getSize(dataLayout);
        auto alignment = arg->getType()->getAlignment(dataLayout);

        constexpr size_t minimumSize = sizeof(uint64_t);
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
            // $a0-$a7
            const Operand dst{ getRegisterClass(arg->getType()), 10U + static_cast<uint32_t>(offset) / 8U };
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

bool RISCVLoweringInfo::isFusible(BranchInst* branch, CompareInst* cmp) const {
    CMMC_UNUSED(branch);
    return cmp->getInstID() != InstructionID::FCmp;
}

CMMC_NAMESPACE_END

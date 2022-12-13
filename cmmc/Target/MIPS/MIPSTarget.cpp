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

#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Target/MIPS/MIPSTarget.hpp>
#include <memory>

CMMC_NAMESPACE_BEGIN

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
                return 30;
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
void MIPSTarget::legalizeFunc(GMIRFunction&) const {}

CMMC_TARGET("mips", MIPSTarget);

const char* getMIPSTextualName(uint32_t idx) noexcept;
MIPSLoweringInfo::MIPSLoweringInfo()
    : mUnused{ String::get("unused") }, mConstant{ String::get("c") }, mStack{ String::get("s") }, mVReg{ String::get("vr") },
      mHi{ String::get("hi") }, mLo{ String::get("lo") }, mFPR{ String::get("f") } {}
Operand MIPSLoweringInfo::getZeroImpl(LoweringContext&, const Type* type) const {
    if(type->isInteger()) {
        return Operand{ MIPSAddressSpace::GPR, 0 };  //$zero
    }
    reportNotImplemented();
}
String MIPSLoweringInfo::getOperand(const Operand& operand) const {
    switch(operand.addressSpace) {
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
    // TODO: set return value
    CMMC_UNUSED(inst);
    ctx.emitInst<RetMInst>(unusedOperand);
}
void MIPSLoweringInfo::lower(FunctionCallInst* inst, LoweringContext& ctx) const {
    // TODO: set parameters
    auto callee = inst->operands().back();
    if(auto func = dynamic_cast<Function*>(callee)) {
        const auto global = ctx.mapGlobal(func);
        // TODO: push args
        ctx.emitInst<CallMInst>(global, unusedOperand);
        const auto ret = inst->getType();
        if(ret->isVoid()) {
            return;
        } else if(ret->isFloatingPoint()) {
            ctx.addOperand(inst, Operand{ ret->getFixedSize() == 4 ? MIPSAddressSpace::FPR_S : MIPSAddressSpace::FPR_D, 0U });
        } else {
            assert(ret->getFixedSize() == 4);
            ctx.addOperand(inst, Operand{ MIPSAddressSpace::GPR, 2U });
        }
    } else
        DiagnosticsContext::get().attach<Reason>("dynamic call is not supported").reportFatal();
}
void MIPSLoweringInfo::lower(FMAInst*, LoweringContext&) const {
    reportNotImplemented();
}

CMMC_NAMESPACE_END

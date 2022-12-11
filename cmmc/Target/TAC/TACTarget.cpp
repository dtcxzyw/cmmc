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

#include "cmmc/Config.hpp"
#include "cmmc/IR/Function.hpp"
#include "cmmc/IR/Instruction.hpp"
#include "cmmc/Transforms/Compatibility/Compatibility.hpp"
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Target/TAC/TACTarget.hpp>
#include <limits>
#include <memory>

CMMC_NAMESPACE_BEGIN

extern StringOpt targetMachine;

uint32_t TACSubTarget::getPhysicalRegisterCount(uint32_t) const {
    return std::numeric_limits<uint32_t>::max();
}

uint32_t TACRegisterUsage::classCount() const noexcept {
    return 1;
}
uint32_t TACRegisterUsage::estimateMigrationCost(uint32_t src, uint32_t dst) const {
    return src == dst ? 0U : 1U;
}
uint32_t TACRegisterUsage::getAvailableRegisters(uint32_t src) const noexcept {
    CMMC_UNUSED(src);
    assert(src == TACAddressSpace::GPR);
    return std::numeric_limits<uint32_t>::max();
}
TACTarget::TACTarget() {
    if(targetMachine.get() != "emulator")
        DiagnosticsContext::get().attach<UnrecognizedInput>("target machine", targetMachine.get()).reportFatal();
}
void TACTarget::legalizeModuleBeforeCodeGen(Module&, AnalysisPassManager&) const {
    // TODO: lowering memset/memcpy
}
void TACTarget::legalizeFunc(GMIRFunction&) const {}
bool TACTarget::builtinRA(GMIRFunction& mfunc) const {
    forEachOperands(mfunc, [](Operand& op) {
        if(op == unusedOperand)
            return;
        if(op.addressSpace == AddressSpace::VirtualReg)
            op.addressSpace = AddressSpace::Custom;
    });

    return true;
}
bool TACTarget::isNativeSupported(InstructionID inst) const noexcept {
    switch(inst) {
        case InstructionID::UDiv:
            [[fallthrough]];
        case InstructionID::URem:
            [[fallthrough]];
        case InstructionID::Neg:
            [[fallthrough]];
        case InstructionID::And:
            [[fallthrough]];
        case InstructionID::Or:
            [[fallthrough]];
        case InstructionID::Not:
            [[fallthrough]];
        case InstructionID::Xor:
            [[fallthrough]];
        case InstructionID::Shl:
            [[fallthrough]];
        case InstructionID::LShr:
            [[fallthrough]];
        case InstructionID::AShr:
            [[fallthrough]];
        case InstructionID::FAdd:
            [[fallthrough]];
        case InstructionID::FSub:
            [[fallthrough]];
        case InstructionID::FMul:
            [[fallthrough]];
        case InstructionID::FDiv:
            [[fallthrough]];
        case InstructionID::FNeg:
            [[fallthrough]];
        case InstructionID::FFma:
            [[fallthrough]];
        case InstructionID::SExt:
            [[fallthrough]];
        case InstructionID::ZExt:
            [[fallthrough]];
        case InstructionID::Trunc:
            [[fallthrough]];
        case InstructionID::Bitcast:
            [[fallthrough]];
        case InstructionID::F2U:
            [[fallthrough]];
        case InstructionID::F2S:
            [[fallthrough]];
        case InstructionID::U2F:
            [[fallthrough]];
        case InstructionID::S2F:
            [[fallthrough]];
        case InstructionID::FCast:
            [[fallthrough]];
        case InstructionID::Select:
            return false;
        default:
            return true;
    }
}
void TACTarget::legalizeModuleBeforeOpt(Module& module, AnalysisPassManager& analysis) const {
    CMMC_UNUSED(module);
    CMMC_UNUSED(analysis);
}

CMMC_TARGET("tac", TACTarget);

CMMC_NAMESPACE_END

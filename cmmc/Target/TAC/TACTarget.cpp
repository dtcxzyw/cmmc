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

#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Target/TAC/TACTarget.hpp>

CMMC_NAMESPACE_BEGIN

extern StringOpt targetMachine;

const TargetInstClass& TACInstInfo::getInstClass(uint32_t instID) const {
    reportNotImplemented();
}
bool TACInstInfo::isTerminator(MachineInst& inst) const noexcept {
    switch(inst.getInstID<TACInst>()) {
        case TACInst::Branch:
            [[fallthrough]];
        case TACInst::BranchCompare:
            [[fallthrough]];
        case TACInst::Return:
            return true;
        default:
            return false;
    }
}
bool TACInstInfo::hasSideEffect(MachineInst& inst) const noexcept {
    switch(inst.getInstID<TACInst>()) {
        case TACInst::Branch:
            [[fallthrough]];
        case TACInst::BranchCompare:
            [[fallthrough]];
        case TACInst::Store:
            [[fallthrough]];
        case TACInst::Return:
            [[fallthrough]];
        case TACInst::Call:
            [[fallthrough]];
        case TACInst::PushArg:
            [[fallthrough]];
        case TACInst::Write:
            [[fallthrough]];
        case TACInst::Read:
            return true;
        default: {
            return inst.hasAttr(TACInstAttr::FuseStore);
        }
    }
}

TACTarget::TACTarget() {
    if(targetMachine.get() != "emulator")
        reportFatal("Unsupported target machine");
}

std::unique_ptr<TargetRegisterUsage> TACFrameInfo::emitPrologue(MachineBasicBlock* block, FunctionType* func,
                                                                CallingConvention cc) const {
    reportNotImplemented();
}
void TACFrameInfo::emitEpilogue(MachineBasicBlock* block, FunctionType* func, CallingConvention cc,
                                TargetRegisterUsage& usage) const {
    reportNotImplemented();
}

CMMC_TARGET("tac", TACTarget);

CMMC_NAMESPACE_END
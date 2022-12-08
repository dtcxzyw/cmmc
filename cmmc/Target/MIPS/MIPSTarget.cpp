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

#include <cmmc/CodeGen/Target.hpp>
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

CMMC_NAMESPACE_END

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

#include <MIPS/ScheduleModelImpl.hpp>
#include <cmmc/Target/MIPS/MIPS.hpp>
#include <iterator>

CMMC_TARGET_NAMESPACE_BEGIN

const MicroarchitectureInfo& MIPSScheduleModel_emulator::getInfo() const {
    static MicroarchitectureInfo info{
        .enablePostRAScheduling = false,
        .hasRegRenaming = false,
        .hasMacroFusion = false,
        .issueWidth = 1,
        .outOfOrder = false,
        .hardwarePrefetch = false,
        .maxDataStreams = 1,
        .maxStrideByBytes = 1024,
    };
    return info;
}

bool MIPSScheduleModel_emulator::peepholeOpt(MIRFunction& func, const CodeGenContext& ctx) const {
    CMMC_UNUSED(ctx);
    // bxx zero, zero -> b
    bool modified = false;
    for(auto iter = func.blocks().begin(); iter != func.blocks().end();) {
        auto next = std::next(iter);

        for(auto& inst : iter->get()->instructions()) {
            uint32_t status = 0;
            auto isZero = [](const MIROperand& op) { return op.isReg() && op.reg() == MIPS::X0; };
            MIROperand b1;
            switch(inst.opcode()) {
                case MIPS::BEQ: {
                    if(isZero(inst.getOperand(0)) && isZero(inst.getOperand(1))) {
                        b1 = inst.getOperand(2);
                        status = 1;
                    }
                    break;
                }
                case MIPS::BNE: {
                    if(isZero(inst.getOperand(0)) && isZero(inst.getOperand(1))) {
                        b1 = inst.getOperand(2);
                        status = 2;
                    }
                    break;
                }
                case MIPS::BLEZ:
                case MIPS::BGEZ: {
                    if(isZero(inst.getOperand(0))) {
                        b1 = inst.getOperand(1);
                        status = 1;
                    }
                    break;
                }
                case MIPS::BLTZ:
                case MIPS::BGTZ: {
                    if(isZero(inst.getOperand(0))) {
                        b1 = inst.getOperand(1);
                        status = 2;
                    }
                    break;
                }
                default:
                    break;
            }
            if(status) {
                if(status == 1)
                    inst = MIRInst{ MIPS::B }.setOperand<0>(b1);
                else {
                    // fallthrough
                    if(ctx.flags.endsWithTerminator) {
                        assert(next != func.blocks().end());
                        const auto b2 = MIROperand::asReloc(next->get());
                        inst = MIRInst{ MIPS::B }.setOperand<0>(b2);
                    } else {
                        inst.setOpcode(InstCopy).setOperand<1>(inst.getOperand(0)).setOperand<2>(MIROperand{});
                    }
                }
                modified = true;
            }
        }

        iter = next;
    }
    return modified;
}

CMMC_TARGET_NAMESPACE_END

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

#include <RISCV/ScheduleModelImpl.hpp>
#include <cmmc/Target/RISCV/RISCV.hpp>
#include <iostream>
#include <iterator>

CMMC_TARGET_NAMESPACE_BEGIN

bool RISCVScheduleModel_sifive_u74::peepholeOpt(MIRFunction& func, const CodeGenContext& ctx) const {
    CMMC_UNUSED(ctx);
    // bxx zero, zero -> j
    bool modified = false;
    for(auto iter = func.blocks().begin(); iter != func.blocks().end();) {
        auto next = std::next(iter);

        for(auto& inst : iter->get()->instructions()) {
            auto isZero = [](const MIROperand& op) { return op.isReg() && op.reg() == RISCV::X0; };
            if(!(isZero(inst.getOperand(0)) && isZero(inst.getOperand(1))))
                continue;
            uint32_t status = 0;
            switch(inst.opcode()) {
                case RISCV::BEQ:
                case RISCV::BLE:
                case RISCV::BGE:
                case RISCV::BLEU:
                case RISCV::BGEU:
                    status = 1;
                    break;
                case RISCV::BNE:
                case RISCV::BLT:
                case RISCV::BGT:
                case RISCV::BLTU:
                case RISCV::BGTU:
                    status = 2;
                    break;
                default:
                    break;
            }
            if(status) {
                const auto b1 = inst.getOperand(2);
                if(status == 1)
                    inst = MIRInst{ RISCV::J }.setOperand<0>(b1);
                else {
                    // fallthrough
                    if(ctx.flags.endsWithTerminator) {
                        assert(next != func.blocks().end());
                        const auto b2 = MIROperand::asReloc(next->get());
                        inst = MIRInst{ RISCV::J }.setOperand<0>(b2);
                    } else {
                        inst.setOpcode(InstCopy).setOperand<2>(MIROperand{});
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

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

#include <RISCV/InstInfoDecl.hpp>
#include <RISCV/ScheduleModelImpl.hpp>
#include <cmmc/Target/RISCV/RISCV.hpp>
#include <cstdint>
#include <deque>
#include <iostream>
#include <iterator>

CMMC_TARGET_NAMESPACE_BEGIN

static bool branch2jump(MIRFunction& func, const CodeGenContext& ctx) {
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

static bool largeImmMaterialize(MIRBasicBlock& block) {
    constexpr uint32_t windowSize = 4;
    std::deque<std::pair<intmax_t, MIROperand>> immQueue;
    const auto addImm = [&](intmax_t val, const MIROperand& imm) {
        if(isOperandVReg(imm)) {
            immQueue.emplace_back(val, imm);
            while(immQueue.size() > windowSize)
                immQueue.pop_front();
        }
    };
    const auto reuseImm = [&](const intmax_t val, MIRInst& inst) {
        for(auto iter = immQueue.rbegin(); iter != immQueue.rend(); ++iter) {
            auto& [rhs, rhsOp] = *iter;
            // eq
            if(val == rhs) {
                inst.setOpcode(InstCopy).setOperand<1>(rhsOp);
                return true;
            }
            // shift
            {
                const int32_t maxK = 8;
                for(auto k = 1; k <= maxK; ++k) {
                    if((rhs << k) == val) {
                        inst.setOpcode(SLLI).setOperand<1>(rhsOp).setOperand<2>(MIROperand::asImm(k, OperandType::Int32));
                        return true;
                    }
                }
                for(auto k = 1; k <= maxK; ++k) {
                    if((rhs >> k) == val) {
                        inst.setOpcode(SRLI).setOperand<1>(rhsOp).setOperand<2>(MIROperand::asImm(k, OperandType::Int32));
                        return true;
                    }
                }
            }
            // bias
            {
                const auto offset = val - rhs;
                if(isSignedImm<12>(offset)) {
                    inst.setOpcode(ADDI).setOperand<1>(rhsOp).setOperand<2>(MIROperand::asImm(offset, OperandType::Int32));
                    return true;
                }
            }
            // neg
            if(-rhs == val) {
                inst.setOpcode(SUB).setOperand<1>(MIROperand::asISAReg(X0, rhsOp.type())).setOperand<2>(rhsOp);
                return true;
            }
        }

        return false;
    };
    bool modified = false;
    for(auto& inst : block.instructions()) {
        if(inst.opcode() == LoadImm12) {
            addImm(inst.getOperand(1).imm(), inst.getOperand(0));
        } else if(inst.opcode() == LoadImm32) {
            const auto val = inst.getOperand(1).imm();
            if(reuseImm(val, inst))
                modified = true;
            addImm(val, inst.getOperand(0));
        }
    }
    return modified;
}

bool RISCVScheduleModel_sifive_u74::peepholeOpt(MIRFunction& func, const CodeGenContext& ctx) const {
    bool modified = false;
    if(ctx.flags.preRA) {
        for(auto& block : func.blocks())
            modified |= largeImmMaterialize(*block);
    }
    modified |= branch2jump(func, ctx);
    return modified;
}

CMMC_TARGET_NAMESPACE_END

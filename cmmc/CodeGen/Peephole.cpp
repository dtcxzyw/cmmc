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

#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Config.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <variant>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

// TODO: CSE
// bool machineInstCSE(MIRFunction& func) {}
// bool constantPropagation(MIRFunction& func, const Target& target) {}

bool removeIndirectCopy(MIRFunction& func, const CodeGenContext& ctx) {
    bool modified = false;

    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();

        // TODO: multiple targets?
        std::unordered_map<MIROperand, MIROperand, MIROperandHasher> regValue;
        std::unordered_map<MIROperand, std::unordered_set<MIROperand, MIROperandHasher>, MIROperandHasher> invMap;

        const auto invalidateReg = [&](const MIROperand& reg) {
            if(!reg.isReg())
                return;
            if(auto iter = invMap.find(reg); iter != invMap.cend()) {
                for(auto ref : iter->second)
                    regValue.erase(ref);

                invMap.erase(iter);
            }
            regValue.erase(reg);
        };

        const auto replaceUse = [&](MIRInst& inst, MIROperand& reg) {
            if(!reg.isReg())
                return;
            if(auto iter = regValue.find(reg); iter != regValue.cend()) {
                reg = iter->second;
                modified = true;
                if constexpr(Config::debug) {
                    auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
                    CMMC_UNUSED(instInfo);
                    assert(instInfo.verify(inst, ctx));
                }
            }
        };

        const auto updateMap = [&](const MIROperand& reg, const MIROperand& value) {
            if(!reg.isReg())
                return;
            invalidateReg(reg);

            regValue[reg] = value;
            invMap[value].insert(reg);
        };

        for(auto& inst : instructions) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                    auto& operand = inst.getOperand(idx);
                    if(operand.isReg() && isVirtualReg(operand.reg()))
                        replaceUse(inst, operand);
                }

            // TODO: match copy?
            if(inst.opcode() == InstCopy) {
                auto& dst = inst.getOperand(0);
                auto& src = inst.getOperand(1);
                if(dst.type() == src.type()) {
                    updateMap(dst, src);
                } else
                    invalidateReg(dst);
            } else {
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                    if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                        invalidateReg(inst.getOperand(idx));
                        auto& operand = inst.getOperand(idx);
                        if(operand.isReg() && isVirtualReg(operand.reg()))
                            replaceUse(inst, operand);
                    }
                if(requireFlag(instInfo.getInstFlag(), InstFlagCall)) {
                    std::vector<MIROperand> nonVReg;
                    for(auto [reg, val] : regValue) {
                        CMMC_UNUSED(val);
                        if(reg.isReg() && isVirtualReg(reg.reg()))
                            nonVReg.push_back(reg);
                    }
                    for(auto reg : nonVReg)
                        invalidateReg(reg);
                }
            }
        }
    }

    if(modified) {
        removeIdentityCopies(func);
        removeUnusedInsts(func, ctx);
    }
    return modified;
}

bool genericPeepholeOpt(MIRFunction& func, const CodeGenContext& ctx) {
    bool modified = false;
    // modified |= eliminateStackLoads(func, ctx);
    modified |= removeIndirectCopy(func, ctx);
    modified |= removeUnusedInsts(func, ctx);
    return modified;
}

CMMC_MIR_NAMESPACE_END

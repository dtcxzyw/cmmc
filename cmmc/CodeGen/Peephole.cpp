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
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <variant>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

// TODO: CSE
// bool machineInstCSE(MIRFunction& func) {}
// bool constantPropagation(MIRFunction& func, const Target& target) {}

/*
bool removeIndirectCopy(MIRFunction& func) {
    bool modified = false;

    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();

        // TODO: multiple targets
        std::unordered_map<MIROperand, MIROperand, MIROperandHasher> regValue;
        std::unordered_map<MIROperand, std::unordered_set<MIROperand, MIROperandHasher>, MIROperandHasher> invMap;

        const auto invalidateReg = [&](MIROperand reg) {
            if(auto iter = invMap.find(reg); iter != invMap.cend()) {
                for(auto ref : iter->second)
                    regValue.erase(ref);

                invMap.erase(iter);
            }
            regValue.erase(reg);
        };

        const auto replaceUse = [&](MIROperand& reg) {
            if(auto iter = regValue.find(reg); iter != regValue.cend()) {
                reg = iter->second;
                modified = true;
            }
        };

        const auto updateMap = [&](MIROperand reg, MIROperand value) {
            invalidateReg(reg);

            regValue[reg] = value;
            invMap[value].insert(reg);
        };

        for(auto& inst : instructions) {
            if(std::holds_alternative<CopyMInst>(inst)) {
                auto& copy = std::get<CopyMInst>(inst);

                replaceUse(copy.src);
                if(copy.indirectDst)
                    replaceUse(copy.dst);

                if(!copy.indirectSrc && !copy.indirectDst && copy.dst.addressSpace == copy.src.addressSpace &&
                   copy.dst != copy.src) {
                    updateMap(copy.dst, copy.src);
                } else if(!copy.indirectDst)
                    invalidateReg(copy.dst);
            } else if(std::holds_alternative<CallMInst>(inst)) {
                std::vector<MIROperand> nonVReg;
                for(auto [reg, val] : regValue) {
                    CMMC_UNUSED(val);
                    if(reg.addressSpace != AddressSpace::VirtualReg)
                        nonVReg.push_back(reg);
                }
                for(auto reg : nonVReg)
                    invalidateReg(reg);
            } else {
                // update dirty
                // TODO: replace use
                forEachDefOperands(inst, [&](MIROperand& dst) { invalidateReg(dst); });
            }
        }
    }

    if(modified) {
        removeIdentityCopies(func);
        removeUnusedInsts(func);
    }
    return modified;
}
*/

bool genericPeepholeOpt(MIRFunction& func, const CodeGenContext& ctx) {
    bool modified = false;
    CMMC_UNUSED(func);
    CMMC_UNUSED(ctx);
    // modified |= eliminateStackLoads(func, ctx);
    // modified |= removeIndirectCopy(func);
    // modified |= removeUnusedInsts(func);
    return modified;
}

CMMC_MIR_NAMESPACE_END

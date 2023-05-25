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
#include <cmmc/CodeGen/ISelInfo.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Config.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <variant>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

/*
bool eliminateStackLoads(MIRFunction& func, const Target& target) {
    const auto stackPointer = target.getStackPointer();
    if(stackPointer == unusedOperand)
        return false;

    const auto& privateStackOffsets = func.privateStackOffsets();
    bool modified = false;

    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();

        // TODO: multiple targets
        std::unordered_map<int32_t, MIROperand> stack2Reg;
        std::unordered_map<MIROperand, int32_t, MIROperandHasher> invMap;

        auto invalidateReg = [&](MIROperand reg) {
            if(auto iter = invMap.find(reg); iter != invMap.cend()) {
                stack2Reg.erase(iter->second);
                invMap.erase(iter);
            }
        };

        auto updateMap = [&](MIROperand reg, int32_t offset) {
            invalidateReg(reg);

            stack2Reg[offset] = reg;
            invMap[reg] = offset;
        };

        const auto reset = [&](bool call) {
            std::vector<std::pair<const int32_t, MIROperand>> dirtyStackSlots;
            for(auto& pair : stack2Reg) {
                if(!privateStackOffsets.count(pair.first) ||
                   (call && (pair.second.addressSpace >= AddressSpace::Custom && target.isCallerSaved(pair.second)))) {
                    dirtyStackSlots.push_back(pair);
                }
            }
            for(auto [offset, reg] : dirtyStackSlots) {
                stack2Reg.erase(offset);
                invMap.erase(reg);
            }
        };

        for(auto& inst : instructions) {
            if(std::holds_alternative<CopyMInst>(inst)) {
                auto& copy = std::get<CopyMInst>(inst);

                if(copy.indirectSrc && copy.src == stackPointer && !copy.indirectDst) {
                    const auto cached = stack2Reg.find(copy.srcOffset);

                    const auto dst = copy.dst;
                    const auto oldOffset = copy.srcOffset;

                    if(cached != stack2Reg.cend()) {
                        const auto srcReg = cached->second;
                        // load -> move
                        copy.src = srcReg;
                        copy.indirectSrc = false;
                        copy.srcOffset = 0;
                        modified = true;
                    }

                    updateMap(dst, oldOffset);
                } else if(copy.indirectDst && copy.dst == stackPointer && !copy.indirectSrc) {
                    updateMap(copy.src, copy.dstOffset);
                } else {
                    if(copy.indirectDst) {
                        // unknown store
                        reset(false);
                    } else {
                        invalidateReg(copy.dst);
                    }
                }
            } else if(std::holds_alternative<CallMInst>(inst)) {
                reset(true);
            } else {
                // update dirty
                forEachDefOperands(inst, [&](MIROperand& dst) { invalidateReg(dst); });
            }
        }
    }

    if(modified)
        removeIdentityCopies(func);
    return modified;
}
*/

bool applySSAPropagation(MIRFunction& func, const CodeGenContext& ctx) {
    if(!ctx.flags.inSSAForm)
        return false;
    bool dirty = false;
    while(true) {
        std::unordered_map<MIROperand, MIROperand, MIROperandHasher> writer;
        const auto count = [&](const MIROperand& op, const MIROperand& val) {
            if(op.isReg() && isVirtualReg(op.reg())) {
                if(const auto iter = writer.find(op); iter != writer.cend()) {
                    iter->second = MIROperand{};
                } else {
                    auto& ref = writer[op];
                    if(val.isReg() && isVirtualReg(val.reg()))
                        ref = val;
                    else
                        ref = MIROperand{};
                }
            }
        };

        for(auto& block : func.blocks())
            for(auto& inst : block->instructions()) {
                // TODO: match copy?
                if(inst.opcode() == InstCopy) {
                    auto& dst = inst.getOperand(0);
                    auto& src = inst.getOperand(1);
                    count(dst, src);
                } else {
                    auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
                    for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                        if(instInfo.getOperandFlag(idx) & OperandFlagDef)
                            count(inst.getOperand(idx), MIROperand{});
                }
            }

        std::unordered_map<MIROperand, MIROperand, MIROperandHasher> replace;
        for(auto& [op, val] : writer) {
            if(!val.isUnused()) {
                replace.emplace(op, val);
            }
        }

        if(replace.empty())
            break;

        bool modified = false;
        forEachUseOperands(func, ctx, [&](MIRInst&, MIROperand& operand) {
            if(const auto iter = replace.find(operand); iter != replace.cend()) {
                operand = iter->second;
                modified = true;
            }
        });
        if(modified) {
            // func.dump(std::cerr, ctx);
            removeIdentityCopies(func);
            removeUnusedInsts(func, ctx);
            dirty = true;
        } else
            break;
    }
    return dirty;
}

// FIXME
[[maybe_unused]] bool machineInstCSE(MIRFunction& func, const CodeGenContext& ctx) {
    bool modified = false;
    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        std::unordered_map<uint32_t, std::unordered_map<MIROperand, MIROperand, MIROperandHasher>> constants;
        for(auto& inst : instructions) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
            if(requireFlag(instInfo.getInstFlag(), InstFlagLoadConstant)) {
                auto& dst = inst.getOperand(0);
                auto& src = inst.getOperand(1);
                auto& map = constants[inst.opcode()];
                if(auto iter = map.find(src); iter != map.end()) {
                    auto& lastDef = iter->second;
                    inst = MIRInst{ selectCopyOpcode(dst, lastDef) }.setOperand<0>(dst).setOperand<1>(lastDef);
                    modified = true;
                } else
                    map.emplace(src, dst);
            }
        }
    }
    return modified;
}

bool removeIndirectCopy(MIRFunction& func, const CodeGenContext& ctx) {
    bool modified = false;

    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();

        std::unordered_map<MIROperand, MIROperand, MIROperandHasher> regValue;  // vreg->vreg/isareg
        std::unordered_map<MIROperand, std::unordered_set<MIROperand, MIROperandHasher>, MIROperandHasher> invMap;

        const auto invalidateReg = [&](const MIROperand& reg) {
            if(!isOperandVRegOrISAReg(reg))
                return;
            if(auto iter = invMap.find(reg); iter != invMap.cend()) {
                for(auto ref : iter->second)
                    regValue.erase(ref);

                invMap.erase(iter);
            }
            regValue.erase(reg);
        };

        const auto replaceUse = [&](MIRInst& inst, MIROperand& reg) {
            if(!isOperandVReg(reg))
                return;
            if(auto iter = regValue.find(reg); iter != regValue.cend()) {
                auto backup = reg;
                reg = iter->second;
                auto backupInstOpcode = inst.opcode();
                if(inst.opcode() == InstCopy) {
                    inst.setOpcode(selectCopyOpcode(inst.getOperand(0), reg));
                }
                auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
                if(instInfo.verify(inst, ctx)) {
                    modified = true;
                } else {
                    reg = backup;
                    inst.setOpcode(backupInstOpcode);
                }
            }
        };

        const auto updateMap = [&](const MIROperand& reg, const MIROperand& value) {
            invalidateReg(reg);
            if(!isOperandVReg(reg) || !isOperandVRegOrISAReg(value))
                return;

            regValue[reg] = value;
            invMap[value].insert(reg);
        };

        for(auto& inst : instructions) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                    auto& operand = inst.getOperand(idx);
                    replaceUse(inst, operand);
                }

            // TODO: match copy?
            if(inst.opcode() == InstCopy || inst.opcode() == InstCopyFromReg) {
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
                    }
                if(requireFlag(instInfo.getInstFlag(), InstFlagCall)) {
                    std::vector<MIROperand> nonVReg;
                    for(auto [reg, val] : invMap) {
                        CMMC_UNUSED(val);
                        // TODO: use IPRA Info
                        if(isISAReg(reg.reg()))
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
    modified |= applySSAPropagation(func, ctx);
    // modified |= machineInstCSE(func, ctx);
    return modified;
}

CMMC_MIR_NAMESPACE_END

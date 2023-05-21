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
#include <cstdint>
#include <iostream>
#include <iterator>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <variant>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

bool removeUnusedInsts(MIRFunction& func, const CodeGenContext& ctx) {
    std::unordered_map<MIROperand, std::vector<MIRInst*>, MIROperandHasher> writers;
    std::queue<MIRInst*> q;

    for(auto& block : func.blocks())
        for(auto& inst : block->instructions()) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
            bool special = false;
            if(requireOneFlag(instInfo.getInstFlag(), InstFlagSideEffect)) {
                special = true;
            }

            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                    auto op = inst.getOperand(idx);
                    writers[op].push_back(&inst);
                    if(op.isReg() && isISAReg(op.reg()))
                        special = true;
                }
            }

            if(special)
                q.push(&inst);
        }

    while(!q.empty()) {
        auto& inst = *q.front();
        q.pop();

        auto popSrc = [&](const MIROperand& operand) {
            if(auto iter = writers.find(operand); iter != writers.cend()) {
                for(auto writer : iter->second)
                    q.push(writer);
                writers.erase(iter);
            }
        };

        auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                popSrc(inst.getOperand(idx));
            }
        }
    }

    std::unordered_set<MIRInst*> remove;
    for(auto& [op, writerList] : writers) {
        if(!isVirtualReg(op.reg()))
            continue;

        for(auto writer : writerList) {
            auto& instInfo = ctx.instInfo.getInstInfo(writer->opcode());
            if(requireOneFlag(instInfo.getInstFlag(), InstFlagSideEffect))
                continue;
            remove.insert(writer);
        }
    }

    for(auto& block : func.blocks())
        block->instructions().remove_if([&](auto& inst) { return remove.count(&inst); });
    return !remove.empty();
}

void forEachOperands(MIRFunction& func, const CodeGenContext& ctx, const std::function<void(MIROperand& op)>& functor) {
    for(auto& param : func.args())
        functor(param);
    for(auto& block : func.blocks())
        forEachOperands(*block, ctx, functor);
}

void forEachOperands(MIRBasicBlock& block, const CodeGenContext& ctx, const std::function<void(MIROperand& op)>& functor) {
    for(auto& inst : block.instructions()) {
        auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            functor(inst.getOperand(idx));
        }
    }
}

void forEachDefOperands(MIRBasicBlock& block, const CodeGenContext& ctx, const std::function<void(MIROperand& op)>& functor) {
    for(auto& inst : block.instructions()) {
        auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagDef)
                functor(inst.getOperand(idx));
        }
    }
}

void forEachUseOperands(MIRFunction& func, const CodeGenContext& ctx,
                        const std::function<void(MIRInst& inst, MIROperand& op)>& functor) {
    for(auto& block : func.blocks())
        forEachUseOperands(*block, ctx, functor);
}

void forEachUseOperands(MIRBasicBlock& block, const CodeGenContext& ctx,
                        const std::function<void(MIRInst& inst, MIROperand& op)>& functor) {
    for(auto& inst : block.instructions()) {
        auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse)
                functor(inst, inst.getOperand(idx));
        }
    }
}

void removeIdentityCopies(MIRFunction& func) {
    for(auto& block : func.blocks()) {
        block->instructions().remove_if([&](const MIRInst& inst) {
            // TODO: instInfo.matchCopy?
            return inst.opcode() == InstCopy && inst.getOperand(0) == inst.getOperand(1);
        });
    }
}

void dumpAssembly(std::ostream& out, const CodeGenContext& ctx, const MIRModule& module, const std::function<void()>& emitData,
                  const std::function<void()>& emitText) {
    //  TODO: rodata/bss

    out << ".data\n"sv;
    emitData();
    const auto dumpSymbol = [&](const MIRGlobal& global) {
        if(!global.reloc->isFunc())
            out << ".align " << global.alignment << std::endl;
        auto symbol = global.reloc->symbol();
        if(global.linkage == Linkage::Global)
            out << ".globl "sv << symbol << '\n';
        out << symbol << ":\n"sv;
    };
    for(auto& global : module.globals()) {
        if(!global->reloc->isFunc()) {
            dumpSymbol(*global);
            global->reloc->dump(out, ctx);
        }
    }

    out << ".text\n"sv;
    emitText();
    for(auto& global : module.globals()) {
        if(global->reloc->isFunc()) {
            auto& func = dynamic_cast<MIRFunction&>(*global->reloc);
            if(func.blocks().empty())
                continue;
            dumpSymbol(*global);
            for(auto& block : func.blocks()) {
                if(&block != &func.blocks().front()) {
                    block->dumpAsTarget(out);
                    out << ":\n";
                }
                for(auto& inst : block->instructions()) {
                    out << '\t';
                    auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
                    instInfo.print(out, inst, false);
                    out << '\n';
                }
            }
        }
    }
}

/*
void useZeroRegister(MIRFunction& func, MIROperand zero, uint32_t size) {
    const auto& constants = func.pools().pools[AddressSpace::Constant];
    for(auto& block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            if(std::holds_alternative<ConstantMInst>(inst)) {
                auto& constant = std::get<ConstantMInst>(inst);
                if(constant.dst.addressSpace != zero.addressSpace)
                    continue;
                if(std::visit([](auto val) { return val == static_cast<decltype(val)>(0); }, constant.constant)) {
                    inst = CopyMInst{ zero, false, 0, constant.dst, false, 0, size, false };
                }
            }
        }

        forEachUseOperands(*block, [&](MIRInst&, MIROperand& src) {
            if(src.addressSpace != AddressSpace::Constant)
                return;
            const auto constant = static_cast<ConstantValue*>(constants.getMetadata(src));
            if(constant->is<ConstantInteger>() && constant->as<ConstantInteger>()->getSignExtended() == 0)
                src = zero;
        });
    }
}

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

// TODO: fix it for mips/riscv backends
void applySSAPropagation(MIRFunction& func, const CodeGenContext& ctx) {
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
        } else
            break;
    }
}

[[noreturn]] void reportLegalizationFailure(const MIRInst& inst, const CodeGenContext& ctx, const DiagLocation& location) {
    std::cerr << "Failed to legalizing inst: ";
    auto& instInfo = ctx.instInfo.getInstInfo(inst.opcode());
    instInfo.print(std::cerr, inst, true);
    std::cerr << '\n';
    reportNotImplemented(location);
}

CMMC_MIR_NAMESPACE_END

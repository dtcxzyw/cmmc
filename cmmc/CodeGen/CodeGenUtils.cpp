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
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <variant>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

/*

bool removeUnusedInsts(MIRFunction& func) {
    std::unordered_map<MIROperand, std::vector<MIRInst*>, MIROperandHasher> writers;
    std::queue<MIRInst*> q;
    const auto hasCustomReg = [](const MIROperand& op) { return op.reg(); };

    for(auto& block : func.blocks())
        for(auto& inst : block->instructions()) {
            std::visit(Overload{
                           [&](const ControlFlowIntrinsicMInst&) { q.push(&inst); },  //
                           [&](const CopyMInst& instRef) {
                               // store/special
                               if(instRef.indirectDst || hasCustomReg(instRef.dst))
                                   q.push(&inst);
                               else {  // load/move
                                   writers[instRef.dst].push_back(&inst);
                               }
                           },                                                  //
                           [&](const BranchCompareMInst&) { q.push(&inst); },  //
                           [&](const RetMInst&) { q.push(&inst); },            //
                           [&](const UnreachableMInst&) {},                    //
                           [&](const BranchMInst&) {},                         //
                           [&](const CallMInst&) { q.push(&inst); },           //
                           [&](const auto& instRef) { writers[instRef.dst].push_back(&inst); },
                       },
                       inst);
        }

    while(!q.empty()) {
        auto& instruction = *q.front();
        q.pop();

        auto popSrc = [&](const MIROperand& operand) {
            if(auto iter = writers.find(operand); iter != writers.cend()) {
                for(auto inst : iter->second)
                    q.push(inst);
                writers.erase(iter);
            }
        };

        std::visit(Overload{
                       [&](const ControlFlowIntrinsicMInst& inst) { popSrc(inst.src); },  //
                       [&](const CopyMInst& inst) {
                           popSrc(inst.src);
                           if(inst.indirectDst)
                               popSrc(inst.dst);
                       },
                       [&](const BranchCompareMInst& inst) {
                           popSrc(inst.lhs);
                           popSrc(inst.rhs);
                       },                                                   //
                       [&](const RetMInst& inst) { popSrc(inst.retVal); },  //
                       [&](const UnreachableMInst&) {},                     //
                       [&](const BranchMInst&) {},
                       [&](const ConstantMInst&) {},
                       [&](const BinaryArithmeticMInst& inst) {
                           popSrc(inst.lhs);
                           popSrc(inst.rhs);
                       },
                       [&](const CompareMInst& inst) {
                           popSrc(inst.lhs);
                           popSrc(inst.rhs);
                       },
                       [&](const ArithmeticIntrinsicMInst& inst) {
                           for(auto op : inst.src)
                               popSrc(op);
                       },
                       [&](const CallMInst& inst) {
                           if(auto* dst = std::get_if<MIROperand>(&inst.callee))
                               popSrc(*dst);
                       },
                       [](const GlobalAddressMInst&) {},
                       [&](const auto& inst) { popSrc(inst.src); },
                   },
                   instruction);
    }
    std::unordered_set<MIRInst*> remove;
    for(auto& [op, writerList] : writers) {
        if(op.addressSpace != AddressSpace::VirtualReg)
            continue;

        for(auto writer : writerList) {
            remove.insert(writer);
        }
    }

    for(auto& block : func.blocks())
        block->instructions().remove_if([&](auto& inst) { return remove.count(&inst); });
    return !remove.empty();
}

void forEachOperands(MIRFunction& func, const std::function<void(MIROperand& op)>& functor) {
    for(auto& param : func.parameters())
        functor(param);
    for(auto& block : func.blocks())
        forEachOperands(*block, functor);
}

void forEachOperands(MIRBasicBlock& block, const std::function<void(MIROperand& op)>& functor) {
    for(auto& instruction : block.instructions()) {
        std::visit(Overload{ [&](CopyMInst& inst) {
                                functor(inst.src);
                                functor(inst.dst);
                            },
                             [&](ConstantMInst& inst) { functor(inst.dst); },
                             [&](GlobalAddressMInst& inst) { functor(inst.dst); },
                             [&](UnaryArithmeticMInst& inst) {
                                 functor(inst.src);
                                 functor(inst.dst);
                             },
                             [&](BinaryArithmeticMInst& inst) {
                                 functor(inst.lhs);
                                 functor(inst.rhs);
                                 functor(inst.dst);
                             },
                             [&](ArithmeticIntrinsicMInst& inst) {
                                 for(auto& op : inst.src)
                                     functor(op);
                                 functor(inst.dst);
                             },
                             [&](CompareMInst& inst) {
                                 functor(inst.lhs);
                                 functor(inst.rhs);
                                 functor(inst.dst);
                             },
                             [&](BranchCompareMInst& inst) {
                                 functor(inst.lhs);
                                 functor(inst.rhs);
                             },
                             [&](CallMInst& inst) {
                                 if(auto* dst = std::get_if<MIROperand>(&inst.callee))
                                     functor(*dst);

                                 functor(inst.dst);
                             },
                             [&](RetMInst& inst) { functor(inst.retVal); },
                             [&](ControlFlowIntrinsicMInst& inst) {
                                 functor(inst.src);
                                 functor(inst.dst);
                             },
                             [](auto&) {} },
                   instruction);
    }
}

void forEachDefOperands(MIRInst& instruction, const std::function<void(MIROperand& op)>& functor) {
    std::visit(Overload{ [&](BranchCompareMInst&) {}, [&](RetMInst&) {}, [&](BranchMInst&) {}, [&](UnreachableMInst&) {},
                         [&](auto& inst) { functor(inst.dst); },
                         [&](CopyMInst& inst) {
                             if(!inst.indirectDst)
                                 functor(inst.dst);
                         } },
               instruction);
}

void forEachDefOperands(MIRBasicBlock& block, const std::function<void(MIROperand& op)>& functor) {
    for(auto& instruction : block.instructions()) {
        forEachDefOperands(instruction, functor);
    }
}

void forEachUseOperands(MIRFunction& func, const std::function<void(MIRInst& inst, MIROperand& op)>& functor) {
    for(auto& block : func.blocks())
        forEachUseOperands(*block, functor);
}

void forEachUseOperands(MIRBasicBlock& block, const std::function<void(MIRInst& inst, MIROperand& op)>& functor) {
    for(auto& instruction : block.instructions()) {
        std::visit(Overload{ [&](CopyMInst& inst) {
                                functor(instruction, inst.src);
                                if(inst.indirectDst)
                                    functor(instruction, inst.dst);
                            },
                             [&](UnaryArithmeticMInst& inst) { functor(instruction, inst.src); },
                             [&](BinaryArithmeticMInst& inst) {
                                 functor(instruction, inst.lhs);
                                 functor(instruction, inst.rhs);
                             },
                             [&](ArithmeticIntrinsicMInst& inst) {
                                 for(auto& op : inst.src)
                                     functor(instruction, op);
                             },
                             [&](CompareMInst& inst) {
                                 functor(instruction, inst.lhs);
                                 functor(instruction, inst.rhs);
                             },
                             [&](BranchCompareMInst& inst) {
                                 functor(instruction, inst.lhs);
                                 functor(instruction, inst.rhs);
                             },
                             [&](RetMInst& inst) { functor(instruction, inst.retVal); },
                             [&](ControlFlowIntrinsicMInst& inst) { functor(instruction, inst.src); }, [](auto&) {} },
                   instruction);
    }
}

void removeIdentityCopies(MIRFunction& func) {
    for(auto& block : func.blocks()) {
        block->instructions().remove_if([&](const auto& inst) {
            if(std::holds_alternative<CopyMInst>(inst)) {
                const auto& copy = std::get<CopyMInst>(inst);
                if(copy.indirectDst || copy.indirectSrc)
                    return false;
                if(copy.dst == copy.src)
                    return true;
            }
            return false;
        });
    }
}

void dumpAssembly(std::ostream& out, const MIRModule& module, const std::function<void()>& emitData,
                  const std::function<void()>& emitText,
                  const std::function<void(const MIRFunction&, const std::unordered_map<const MIRRelocable*, String>&,
                                           LabelAllocator&)>& functionDumper) {
    LabelAllocator allocator;
    using namespace std::string_literals;

    std::unordered_map<const MIRRelocable*, String> symbolMap;

    for(auto& symbol : module.symbols)
        symbolMap.emplace(&symbol, allocator.allocate(symbol.symbol));

    auto& target = module.target;
    // TODO: rodata/bss

    out << ".data\n"sv;
    emitData();
    const auto dumpSymbol = [&](const MIRRelocable& symbol) {
        if(!std::holds_alternative<MIRFunction>(symbol.def))
            out << ".align " << symbol.alignment << std::endl;
        if(symbol.linkage == Linkage::Global)
            out << ".globl "sv << symbol.symbol << '\n';
        out << symbol.symbol << ":\n"sv;
    };
    for(auto& symbol : module.symbols) {
        std::visit(Overload{ [&](const GMIRDataStorage& data) {
                                dumpSymbol(symbol);
                                data.dump(out, target);
                            },
                             [&](const GMIRZeroStorage& data) {
                                 dumpSymbol(symbol);
                                 data.dump(out, target);
                             },
                             [](const auto&) {} },
                   symbol.def);
    }

    out << ".text\n"sv;
    emitText();
    for(auto& symbol : module.symbols) {
        std::visit(Overload{ [&](const MIRFunction& func) {
                                dumpSymbol(symbol);
                                functionDumper(func, symbolMap, allocator);
                            },
                             [](const auto&) {} },
                   symbol.def);
    }
}

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

void legalizeStoreWithConstants(MIRFunction& func) {
    auto& constant = func.pools().pools[AddressSpace::Constant];
    auto& vreg = func.pools().pools[AddressSpace::VirtualReg];

    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        for(auto iter = instructions.begin(); iter != instructions.end();) {
            auto& inst = *iter;
            const auto next = std::next(iter);
            if(std::holds_alternative<CopyMInst>(inst)) {
                auto& copy = std::get<CopyMInst>(inst);

                // match store with constants
                if(copy.indirectDst && !copy.indirectSrc && copy.src.addressSpace == AddressSpace::Constant) {
                    // create temporary vreg
                    const auto type = constant.getType(copy.src);
                    const auto temp = vreg.allocate(type);
                    // mem <- vreg <- constant
                    instructions.insert(next,
                                        CopyMInst{ temp, false, 0, copy.dst, true, copy.dstOffset, copy.size, copy.signExtend });

                    copy.dst = temp;
                    copy.indirectDst = false;
                    copy.dstOffset = 0;
                }
            }

            iter = next;
        }
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

// TODO: fix it for mips/riscv backends
void applySSAPropagation(MIRFunction& func) {
    while(true) {
        std::unordered_map<MIROperand, MIROperand, MIROperandHasher> writer;
        const auto count = [&](const MIROperand& op, const MIROperand& val) {
            if(op.addressSpace == AddressSpace::VirtualReg) {
                if(const auto iter = writer.find(op); iter != writer.cend()) {
                    iter->second = unusedOperand;
                } else {
                    auto& ref = writer[op];
                    if(val.addressSpace == AddressSpace::Stack || val.addressSpace == AddressSpace::VirtualReg)
                        ref = val;
                    else
                        ref = unusedOperand;
                }
            }
        };

        for(auto& block : func.blocks())
            for(auto& inst : block->instructions()) {
                std::visit(Overload{
                               [&](const CopyMInst& instRef) {
                                   if(!instRef.indirectDst) {
                                       if(instRef.indirectSrc)
                                           count(instRef.dst, unusedOperand);
                                       else
                                           count(instRef.dst, instRef.src);
                                   }
                               },                                  //
                               [&](const BranchCompareMInst&) {},  //
                               [&](const RetMInst&) {},            //
                               [&](const UnreachableMInst&) {},    //
                               [&](const BranchMInst&) {},         //
                               [&](const auto& instRef) { count(instRef.dst, unusedOperand); },
                           },
                           inst);
            }

        std::unordered_map<MIROperand, MIROperand, MIROperandHasher> replace;
        for(auto& [op, val] : writer) {
            if(val != unusedOperand) {
                replace.emplace(op, val);
            }
        }

        if(replace.empty())
            break;

        bool modified = false;
        forEachUseOperands(func, [&](MIRInst&, MIROperand& operand) {
            if(const auto iter = replace.find(operand); iter != replace.cend()) {
                operand = iter->second;
                modified = true;
            }
        });
        if(modified) {
            removeIdentityCopies(func);
            removeUnusedInsts(func);
        } else
            break;
    }
}
*/

CMMC_MIR_NAMESPACE_END

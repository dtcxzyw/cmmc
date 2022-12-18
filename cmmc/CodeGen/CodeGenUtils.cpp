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

#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <queue>
#include <unordered_map>
#include <variant>

CMMC_NAMESPACE_BEGIN

void removeUnusedInsts(GMIRFunction& func) {
    std::unordered_map<Operand, std::vector<GMIRInst*>, OperandHasher> writers;
    std::queue<GMIRInst*> q;
    const auto hasCustomReg = [](const Operand& op) { return op.addressSpace >= AddressSpace::Custom; };

    for(auto& block : func.blocks())
        for(auto& inst : block->instructions()) {
            std::visit(Overload{
                           [&](const ControlFlowIntrinsicMInst&) { q.push(&inst); },  //
                           [&](const CopyMInst& instRef) {
                               // store/special
                               if(instRef.indirectDst || hasCustomReg(instRef.src) || hasCustomReg(instRef.dst))
                                   q.push(&inst);
                               else {  // load/move
                                   writers[instRef.dst].push_back(&inst);
                               }
                           },                                                  //
                           [&](const BranchCompareMInst&) { q.push(&inst); },  //
                           [&](const RetMInst&) { q.push(&inst); },            //
                           [&](const UnreachableMInst&) {},                    //
                           [&](const BranchMInst&) {},                         //
                           [&](const CallMInst&) {},                           //
                           [&](const auto& instRef) { writers[instRef.dst].push_back(&inst); },
                       },
                       inst);
        }

    while(!q.empty()) {
        auto& inst = *q.front();
        q.pop();

        auto popSrc = [&](const Operand& operand) {
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
                       [&](const CallMInst&) {},
                       [&](const auto& inst) { popSrc(inst.src); },
                   },
                   inst);
    }
    std::unordered_set<GMIRInst*> remove;
    for(auto& [op, writerList] : writers) {
        if(op.addressSpace != AddressSpace::VirtualReg)
            continue;

        for(auto writer : writerList) {
            remove.insert(writer);
        }
    }

    for(auto& block : func.blocks())
        block->instructions().remove_if([&](auto& inst) { return remove.count(&inst); });
}

void forEachOperands(GMIRFunction& func, const std::function<void(Operand& op)>& functor) {
    for(auto& param : func.parameters())
        functor(param);
    for(auto& block : func.blocks())
        forEachOperands(*block, functor);
}

void forEachOperands(GMIRBasicBlock& block, const std::function<void(Operand& op)>& functor) {
    for(auto& inst : block.instructions()) {
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
                             [&](CallMInst& inst) { functor(inst.dst); }, [&](RetMInst& inst) { functor(inst.retVal); },
                             [&](ControlFlowIntrinsicMInst& inst) {
                                 functor(inst.src);
                                 functor(inst.dst);
                             },
                             [](auto&) {} },
                   inst);
    }
}

void forEachDefOperands(GMIRBasicBlock& block, const std::function<void(Operand& op)>& functor) {
    for(auto& inst : block.instructions()) {
        std::visit(Overload{ [&](BranchCompareMInst&) {}, [&](RetMInst&) {}, [&](BranchMInst&) {}, [&](UnreachableMInst&) {},
                             [&](auto& inst) { functor(inst.dst); } },
                   inst);
    }
}

void forEachUseOperands(GMIRFunction& func, const std::function<void(Operand& op)>& functor) {
    for(auto& block : func.blocks())
        forEachUseOperands(*block, functor);
}

void forEachUseOperands(GMIRBasicBlock& block, const std::function<void(Operand& op)>& functor) {
    for(auto& inst : block.instructions()) {
        std::visit(Overload{ [&](CopyMInst& inst) { functor(inst.src); }, [&](UnaryArithmeticMInst& inst) { functor(inst.src); },
                             [&](BinaryArithmeticMInst& inst) {
                                 functor(inst.lhs);
                                 functor(inst.rhs);
                             },
                             [&](ArithmeticIntrinsicMInst& inst) {
                                 for(auto& op : inst.src)
                                     functor(op);
                             },
                             [&](CompareMInst& inst) {
                                 functor(inst.lhs);
                                 functor(inst.rhs);
                             },
                             [&](BranchCompareMInst& inst) {
                                 functor(inst.lhs);
                                 functor(inst.rhs);
                             },
                             [&](RetMInst& inst) { functor(inst.retVal); },
                             [&](ControlFlowIntrinsicMInst& inst) { functor(inst.src); }, [](auto&) {} },
                   inst);
    }
}

void removeIdentityCopies(GMIRFunction& func) {
    for(auto& block : func.blocks()) {
        block->instructions().remove_if([&](const auto& inst) {
            if(std::holds_alternative<CopyMInst>(inst)) {
                const auto& copy = std::get<CopyMInst>(inst);
                if(copy.indirectDst || copy.indirectSrc)
                    return false;
                if(copy.dst.id == copy.src.id)
                    return true;
            }
            return false;
        });
    }
}

void dumpAssembly(std::ostream& out, const GMIRModule& module, const std::function<void()>& data,
                  const std::function<void()>& text,
                  const std::function<void(const GMIRFunction&, const std::unordered_map<const GMIRSymbol*, String>&,
                                           LabelAllocator&)>& functionDumper) {
    LabelAllocator allocator;
    using namespace std::string_literals;

    std::unordered_map<const GMIRSymbol*, String> symbolMap;

    for(auto& symbol : module.symbols)
        symbolMap.emplace(&symbol, allocator.allocate(symbol.symbol));

    auto& target = module.target;
    // TODO: rodata/bss

    out << ".data\n"sv;
    data();
    const auto dumpSymbol = [&](const GMIRSymbol& symbol) {
        if(symbol.linkage == Linkage::Global)
            out << ".globl "sv << symbol.symbol << '\n';
        out << ".align " << symbol.alignment << std::endl;
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
    text();
    for(auto& symbol : module.symbols) {
        std::visit(Overload{ [&](const GMIRFunction& func) {
                                dumpSymbol(symbol);
                                functionDumper(func, symbolMap, allocator);
                            },
                             [](const auto&) {} },
                   symbol.def);
    }
}

CMMC_NAMESPACE_END

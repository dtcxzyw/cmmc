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

#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/GMIRCFGAnalysis.hpp>
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <memory>
#include <unordered_map>
#include <variant>

CMMC_NAMESPACE_BEGIN

static void simpleAllocate(GMIRFunction& mfunc, const Target& target) {
    // const auto cfg = calcGMIRCFG(mfunc);
    CMMC_UNUSED(target);
    const auto setOperand = [](Operand& op) {
        if(op == unusedOperand)
            return;
        if(op.addressSpace == AddressSpace::VirtualReg)
            op.addressSpace = AddressSpace::Custom;
    };
    for(auto& block : mfunc.blocks()) {
        for(auto& inst : block->instructions()) {
            std::visit(Overload{ [&](CopyMInst& inst) {
                                    setOperand(inst.src);
                                    setOperand(inst.dst);
                                },
                                 [&](ConstantMInst& inst) { setOperand(inst.dst); },
                                 [&](GlobalAddressMInst& inst) { setOperand(inst.dst); },
                                 [&](UnaryArithmeticMIInst& inst) {
                                     setOperand(inst.src);
                                     setOperand(inst.dst);
                                 },
                                 [&](BinaryArithmeticMIInst& inst) {
                                     setOperand(inst.lhs);
                                     setOperand(inst.rhs);
                                     setOperand(inst.dst);
                                 },
                                 [&](ArithmeticIntrinsicMInst& inst) {
                                     for(auto& op : inst.src)
                                         setOperand(op);
                                     setOperand(inst.dst);
                                 },
                                 [&](CompareMInst& inst) {
                                     setOperand(inst.lhs);
                                     setOperand(inst.rhs);
                                     setOperand(inst.dst);
                                 },
                                 [&](BranchCompareMInst& inst) {
                                     setOperand(inst.lhs);
                                     setOperand(inst.rhs);
                                 },
                                 [&](CallMInst& inst) { setOperand(inst.dst); }, [&](RetMInst& inst) { setOperand(inst.retVal); },
                                 [&](ControlFlowIntrinsicMInst& inst) {
                                     setOperand(inst.src);
                                     setOperand(inst.dst);
                                 },
                                 [](auto&) {} },
                       inst);
        }
    }
}

CMMC_REGISTER_ALLOCATOR("simple", simpleAllocate);

CMMC_NAMESPACE_END

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
#include <cmmc/Support/Dispatch.hpp>
#include <cmmc/Target/TAC/TACTarget.hpp>
#include <unordered_map>
#include <variant>

CMMC_NAMESPACE_BEGIN

void TACSubTarget::peepholeOpt(GMIRFunction& func) const {
    while(true) {
        std::unordered_map<Operand, Operand, OperandHasher> writer;
        const auto count = [&](const Operand& op, const Operand& val) {
            if(op.addressSpace == AddressSpace::VirtualReg) {
                if(const auto iter = writer.find(op); iter != writer.cend()) {
                    iter->second = unusedOperand;
                } else {
                    auto& ref = writer[op];
                    if(ref.addressSpace == AddressSpace::Stack || ref.addressSpace == AddressSpace::VirtualReg)
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

        std::unordered_map<Operand, Operand, OperandHasher> replace;
        for(auto& [op, val] : writer) {
            if(val != unusedOperand) {
                replace.emplace(op, val);
            }
        }

        if(replace.empty())
            return;

        bool modified = false;
        forEachSrcOperands(func, [&](Operand& operand) {
            if(const auto iter = replace.find(operand); iter != replace.cend()) {
                operand = iter->second;
                modified = true;
            }
        });
        if(modified) {
            removeUnusedInsts(func);
        } else
            break;
    }
}

void TACSubTarget::postPeepholeOpt(GMIRFunction&) const {}

CMMC_NAMESPACE_END

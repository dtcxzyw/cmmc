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

#pragma once
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <functional>
#include <ostream>

CMMC_MIR_NAMESPACE_BEGIN

void simplifyCFG(MIRFunction& func, const Target& target);
void registerCoalescing(MIRFunction& func, const std::unordered_map<MIROperand, MIROperand, MIROperandHasher>& operandMap);
void optimizeBlockLayout(MIRFunction& func, const Target& target);
void schedule(MIRFunction& func, const Target& target, bool preRA);
void allocateStackObjects(MIRFunction& func, const Target& target, bool hasFuncCall, OptimizationLevel optLevel);
void identicalCodeFolding(MIRFunction& func);
void tailDuplication(MIRFunction& func);
void simplifyCFGWithUniqueTerminator(MIRFunction& func);
bool genericPeepholeOpt(MIRFunction& func, const Target& target);

bool removeUnusedInsts(MIRFunction& func);
bool removeIndirectCopy(MIRFunction& func);
void forEachOperands(MIRFunction& func, const std::function<void(MIROperand& op)>& functor);
void forEachUseOperands(MIRFunction& func, const std::function<void(MIRInst& inst, MIROperand& op)>& functor);
void forEachOperands(MIRBasicBlock& block, const std::function<void(MIROperand& op)>& functor);
void forEachUseOperands(MIRBasicBlock& block, const std::function<void(MIRInst& inst, MIROperand& op)>& functor);
void forEachDefOperands(MIRInst& instruction, const std::function<void(MIROperand& op)>& functor);
void forEachDefOperands(MIRBasicBlock& block, const std::function<void(MIROperand& op)>& functor);
void removeIdentityCopies(MIRFunction& func);
void useZeroRegister(MIRFunction& func, MIROperand zero, uint32_t size);
void legalizeStoreWithConstants(MIRFunction& func);
bool eliminateStackLoads(MIRFunction& func, const Target& target);
void applySSAPropagation(MIRFunction& func);
bool redirectGoto(MIRFunction& func);

void dumpAssembly(std::ostream& out, const MIRModule& module, const std::function<void()>& emitData,
                  const std::function<void()>& emitText,
                  const std::function<void(const MIRFunction&, const std::unordered_map<const MIRRelocable*, String>&,
                                           LabelAllocator&)>& functionDumper);

CMMC_MIR_NAMESPACE_END

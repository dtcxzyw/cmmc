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
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <functional>
#include <ostream>

CMMC_MIR_NAMESPACE_BEGIN

void simplifyCFG(MIRFunction& func, const CodeGenContext& ctx);
void registerCoalescing(MIRFunction& func, const CodeGenContext& ctx);
void optimizeBlockLayout(MIRFunction& func, CodeGenContext& ctx);
void schedule(MIRFunction& func, const CodeGenContext& ctx, bool preRA);
void allocateStackObjects(MIRFunction& func, const CodeGenContext& ctx, bool isNonLeafFunc, OptimizationLevel optLevel);
void identicalCodeFolding(MIRFunction& func, const CodeGenContext& ctx);
void tailDuplication(MIRFunction& func, CodeGenContext& ctx);
void simplifyCFGWithUniqueTerminator(MIRFunction& func, const CodeGenContext& ctx);
bool genericPeepholeOpt(MIRFunction& func, const CodeGenContext& ctx);
void postLegalizeFunc(MIRFunction& func, CodeGenContext& ctx);

bool removeUnusedInsts(MIRFunction& func, const CodeGenContext& ctx);
bool removeIndirectCopy(MIRFunction& func, const CodeGenContext& ctx);
void forEachOperands(MIRFunction& func, const CodeGenContext& ctx, const std::function<void(MIROperand& op)>& functor);
void forEachUseOperands(MIRFunction& func, const CodeGenContext& ctx,
                        const std::function<void(MIRInst& inst, MIROperand& op)>& functor);
void forEachOperands(MIRBasicBlock& block, const CodeGenContext& ctx, const std::function<void(MIROperand& op)>& functor);
void forEachUseOperands(MIRBasicBlock& block, const CodeGenContext& ctx,
                        const std::function<void(MIRInst& inst, MIROperand& op)>& functor);
void forEachDefOperands(MIRBasicBlock& block, const CodeGenContext& ctx, const std::function<void(MIROperand& op)>& functor);
void removeIdentityCopies(MIRFunction& func);
void useZeroRegister(MIRFunction& func, MIROperand zero, uint32_t size);
bool eliminateStackLoads(MIRFunction& func, const Target& target);
void applySSAPropagation(MIRFunction& func, const CodeGenContext& ctx);
bool redirectGoto(MIRFunction& func, const CodeGenContext& ctx);

void dumpAssembly(std::ostream& out, const CodeGenContext& ctx, const MIRModule& module, const std::function<void()>& emitData,
                  const std::function<void()>& emitText);

[[noreturn]] void reportLegalizationFailure(const MIRInst& inst, const CodeGenContext& ctx, const DiagLocation& location);

CMMC_MIR_NAMESPACE_END

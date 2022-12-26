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

#pragma once
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <functional>
#include <ostream>

CMMC_NAMESPACE_BEGIN

void simplifyCFG(GMIRFunction& func);
void registerCoalescing(GMIRFunction& func);
void optimizeBlockLayout(GMIRFunction& func, const Target& target);
void schedule(GMIRFunction& func, const Target& target, bool preRA);
void allocateStackObjects(GMIRFunction& func, const Target& target, bool hasFuncCall);
void identicalCodeFolding(GMIRFunction& func);

void removeUnusedInsts(GMIRFunction& func);
void forEachOperands(GMIRFunction& func, const std::function<void(Operand& op)>& functor);
void forEachUseOperands(GMIRFunction& func, const std::function<void(GMIRInst& inst, Operand& op)>& functor);
void forEachOperands(GMIRBasicBlock& block, const std::function<void(Operand& op)>& functor);
void forEachUseOperands(GMIRBasicBlock& block, const std::function<void(GMIRInst& inst, Operand& op)>& functor);
void forEachDefOperands(GMIRBasicBlock& block, const std::function<void(Operand& op)>& functor);
void removeIdentityCopies(GMIRFunction& func);
void useZeroRegister(GMIRFunction& func, Operand zero, uint32_t size);

void dumpAssembly(std::ostream& out, const GMIRModule& module, const std::function<void()>& emitData,
                  const std::function<void()>& emitText,
                  const std::function<void(const GMIRFunction&, const std::unordered_map<const GMIRSymbol*, String>&,
                                           LabelAllocator&)>& functionDumper);

CMMC_NAMESPACE_END

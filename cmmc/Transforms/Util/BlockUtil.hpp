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
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <functional>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

using ReplaceMap = std::unordered_map<Value*, Value*>;
using BlockReducer = std::function<Value*(Instruction* inst)>;
bool reduceBlock(IRBuilder& builder, Block& block, const BlockReducer& reducer);
void removeInst(Instruction* inst);
// NOTICE: no terminator/operand fix
Block* splitBlock(List<Block*>& blocks, List<Block*>::iterator block, IntrusiveListIterator<Instruction> after);
void fixPhiNode(Block* oldPred, Block* newPred);
bool applyReplace(Instruction* inst, const ReplaceMap& replace);
Block* createIndirectBlock(const Module& module, Function& func, Block* sourceBlock, Block* targetBlock);
bool isNoSideEffectExpr(const Instruction& inst);
bool isMovableExpr(const Instruction& inst, bool relaxedCtx);
bool hasCall(Block& block, bool excludeLoopBody);
void resetTarget(Instruction* branchOrSwitch, Block* oldTarget, Block* newTarget);
void retargetBlock(Block* target, Block* oldSource, Block* newSource);
void copyTarget(Block* target, Block* oldSource, Block* newSource);
bool hasSamePhiValue(Block* target, Block* sourceLhs, Block* sourceRhs);
bool removePhi(Block* source, Block* target);
void applyForSuccessors(Instruction* branchOrSwitch, const std::function<void(Block*)>& functor);
uint32_t estimateBlockSize(Block* block, bool dynamic);
bool collectLoopBody(Block* header, Block* latch, const DominateAnalysisResult& dom, const CFGAnalysisResult& cfg,
                     std::unordered_set<Block*>& body, bool allowInnerLoop, bool needSubLoop);
struct LoopBodyInfo final {
    Block* loop;
    PhiInst* indvar;
    Value* bound;
    PhiInst* rec;
    bool recUsedByOuter;
    bool recUsedByInner;
    Value* recInnerStep;
    FunctionCallInst* recNext;
    Block* exit;
};
bool extractLoopBody(Function& func, const class Loop& loop, const DominateAnalysisResult& dom, const CFGAnalysisResult& cfg,
                     Module& mod, bool independent, const class PointerBaseAnalysisResult* pointerBase, bool allowInnermost,
                     bool allowInnerLoop, bool onlyAddRec, bool estimateBlockSizeForUnroll, bool needSubLoop,
                     bool convertReduceToAtomic, LoopBodyInfo* ret);

CMMC_NAMESPACE_END

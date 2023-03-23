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
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <functional>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

using ReplaceMap = std::unordered_map<Value*, Value*>;
using BlockReducer = std::function<Value*(Instruction* inst, ReplaceMap& replace)>;
bool reduceBlock(IRBuilder& builder, Block& block, const BlockReducer& reducer);
void removeInst(Instruction* inst);
// NOTICE: no terminator/operand fix
Block* splitBlock(List<Block*>& blocks, List<Block*>::iterator block, List<Instruction*>::iterator after);
bool replaceOperands(Block& block, const ReplaceMap& replace);
bool replaceOperands(const std::vector<Instruction*>& insts, const ReplaceMap& replace);
std::pair<ConditionalBranchInst*, BranchTarget*> createIndirectBlock(const Module& module, Function& func, BranchTarget& target);
bool isNoSideEffectExpr(const Instruction& inst);
bool hasCall(Block& block);

template <typename Callable>
bool scanInstructions(Block& block, Callable callable) {
    bool modified = false;
    while(true) {
        bool rescan = false;
        for(auto inst : block.instructions()) {
            if(callable(inst)) {
                modified = rescan = true;
                break;
            }
        }
        if(!rescan)
            break;
    }
    return modified;
}

CMMC_NAMESPACE_END

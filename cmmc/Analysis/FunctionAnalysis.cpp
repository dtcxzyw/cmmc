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

#include <cmmc/Analysis/FunctionAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <queue>

CMMC_NAMESPACE_BEGIN

// FIXME: not sound and complete !!!
/*
std::unordered_set<Value*> collectStackAddress(Function& func, CollectOption opt) {
    std::unordered_set<Value*> addresses;
    std::unordered_set<Value*> determined;
    std::queue<Value*> q;
    // collect stack address source (alloc/loaded address)

    for(auto block : func.blocks()) {
        for(auto inst : block->instructions()) {
            if(inst->getInstID() == InstructionID::Alloc ||
               (inst->getInstID() == InstructionID::Load && inst->getType()->isPointer())) {
                addresses.insert(inst);
                q.push(inst);
                if(inst->getInstID() == InstructionID::Alloc)
                    determined.insert(inst);
            }
        }
    }

    // forward propagation (block argument passing/pointer arithmetic)
    const auto handleBlockArgPassing = [&](const BranchTarget& target, Value* arg, bool mustBeStack) {
        const auto block = target.getTarget();
        if(!block)
            return;

        auto& args = target.getArgs();
        for(uint32_t idx = 0; idx < args.size(); ++idx) {
            if(args[idx] == arg) {
                const auto blockArg = block->getArg(idx);
                if(addresses.insert(blockArg).second) {
                    q.push(blockArg);
                    if(mustBeStack)
                        determined.insert(blockArg);
                }

                if(!mustBeStack)
                    determined.erase(arg);
            }
        }
    };

    while(!q.empty()) {
        const auto u = q.front();
        q.pop();

        const auto mustBeStack = determined.count(u);

        const auto block = u->getBlock();
        for(auto inst : block->instructions()) {
            // block argument
            if(inst->isBranch()) {
                const auto branch = inst->as<ConditionalBranchInst>();

                handleBlockArgPassing(branch->getTrueTarget(), u, mustBeStack);
                handleBlockArgPassing(branch->getFalseTarget(), u, mustBeStack);

                continue;
            }

            // pointer arithmetic

            if(inst->isMemoryOp() || inst->isTerminator())
                continue;

            if(inst->hasOperand(u) && addresses.insert(inst).second)
                q.push(inst);
        }
    }

    return opt == CollectOption::MayBe ? addresses : determined;
}
*/

CMMC_NAMESPACE_END

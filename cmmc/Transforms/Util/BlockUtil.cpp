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

#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <iterator>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

bool reduceBlock(Block& block, BlockReducer reducer) {
    auto& insts = block.instructions();
    bool modified = false;
    for(auto iter = insts.begin(); iter != insts.end(); ++iter) {
        const auto inst = *iter;
        if(auto value = reducer(inst)) {
            if(value->isInstruction() && value->getBlock() != &block) {  // new instruction
                auto newInst = value->as<Instruction>();
                newInst->setBlock(&block);
                insts.insert(iter, newInst);
                modified = true;
            }
            for(auto i2 = std::next(iter); i2 != insts.end(); ++i2)
                modified |= (*i2)->replaceOperand(inst, value);
        }
    }
    return modified;
}
void removeInst(Instruction* inst) {
    const auto block = inst->getBlock();
    block->instructions().remove(inst);
    if constexpr(Config::debug) {
        inst->setBlock(nullptr);
        inst->setLabel("removed");
    }
}

Block* splitBlock(List<Block*>& blocks, List<Block*>::iterator block, List<Instruction*>::iterator after) {
    auto preBlock = *block;
    auto nextBlock = make<Block>(preBlock->getFunction());
    nextBlock->setLabel(preBlock->getLabel());
    auto& oldInsts = preBlock->instructions();
    auto beg = std::next(after);
    auto end = oldInsts.end();
    auto& newInsts = nextBlock->instructions();
    newInsts.insert(newInsts.cbegin(), beg, end);
    oldInsts.erase(beg, end);
    for(auto inst : newInsts)
        inst->setBlock(nextBlock);
    blocks.insert(std::next(block), nextBlock);
    return nextBlock;
}

CMMC_NAMESPACE_END

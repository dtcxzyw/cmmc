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

#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <iterator>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

bool reduceBlock(IRBuilder& builder, Block& block, const BlockReducer& reducer) {
    auto& insts = block.instructions();

    ReplaceMap replace;
    const auto oldSize = block.instructions().size();
    for(auto iter = insts.begin(); iter != insts.end(); ++iter) {
        const auto inst = *iter;
        builder.setInsertPoint(&block, iter);
        if(auto value = reducer(inst, replace)) {
            replace.emplace(inst, value);
        }
        iter = builder.getInsertPoint();
    }
    const auto newSize = block.instructions().size();
    auto modified = newSize != oldSize;
    modified |= replaceOperands(block, replace);
    return modified;
}

static bool applyReplace(Instruction* inst, const ReplaceMap& replace) {
    bool modified = false;
    if(!inst->isBranch())
        for(auto& operand : inst->operands()) {
            if(auto iter = replace.find(operand); iter != replace.cend()) {
                operand = iter->second;
                modified = true;
            }
        }
    else {
        for(auto& operand : inst->operands()) {
            if(auto iter = replace.find(operand); iter != replace.cend()) {
                inst->replaceOperand(operand, iter->second);
                modified = true;
            }
        }
    }
    return modified;
}
bool replaceOperands(Block& block, const ReplaceMap& replace) {
    if(replace.empty())
        return false;
    bool modified = false;
    for(auto inst : block.instructions())
        modified |= applyReplace(inst, replace);
    return modified;
}
bool replaceOperands(const std::vector<Instruction*>& insts, const ReplaceMap& replace) {
    if(replace.empty())
        return false;
    bool modified = false;
    for(auto inst : insts)
        modified |= applyReplace(inst, replace);
    return modified;
}

void removeInst(Instruction* inst) {
    const auto block = inst->getBlock();
    block->instructions().remove(inst);
    if constexpr(Config::debug) {
        inst->setBlock(nullptr);
        inst->setLabel(String::get("removed"));
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

std::pair<ConditionalBranchInst*, BranchTarget*> createIndirectBlock(const Module& module, Function& func, BranchTarget& target) {
    IRBuilder builder{ module.getTarget() };
    builder.setCurrentFunction(&func);
    const auto block = builder.addBlock();
    builder.setCurrentBlock(block);
    block->setLabel(String::get("indirect"));
    Vector<Value*> args;
    for(auto arg : target.getArgs())
        args.push_back(block->addArg(arg->getType()));
    const auto inst = builder.makeOp<ConditionalBranchInst>(BranchTarget{ target.getTarget(), std::move(args) });
    target.resetTarget(block);
    return { inst, &inst->getTrueTarget() };
}

bool isNoSideEffectExpr(const Instruction& inst) {
    if(!inst.canbeOperand())
        return false;
    if(inst.isTerminator())
        return false;
    switch(inst.getInstID()) {
        case InstructionID::Store:
            [[fallthrough]];
        case InstructionID::Alloc:
            [[fallthrough]];
        case InstructionID::Free:
            [[fallthrough]];
        case InstructionID::Load: {
            return false;
        }
        case InstructionID::Call: {
            const auto callee = inst.operands().back();
            if(auto func = dynamic_cast<Function*>(callee)) {
                auto& attr = func->attr();
                return attr.hasAttr(FunctionAttribute::NoSideEffect) && attr.hasAttr(FunctionAttribute::Stateless);
            }
            return false;
        }
        default:
            break;
    }

    return true;
}

CMMC_NAMESPACE_END

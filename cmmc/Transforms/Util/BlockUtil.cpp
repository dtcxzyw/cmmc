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
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <iterator>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

bool applyReplace(Instruction* inst, const ReplaceMap& replace) {
    bool modified = false;
    if(inst->getInstID() != InstructionID::Phi)
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
bool replaceOperandsInBlock(Block& block, const ReplaceMap& replace) {
    if(replace.empty())
        return false;
    bool modified = false;
    for(auto inst : block.instructions())
        modified |= applyReplace(inst, replace);
    return modified;
}
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
    modified |= replaceOperands(*builder.getCurrentFunction(), replace);
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

Block* createIndirectBlock(const Module& module, Function& func, Block* sourceBlock, Block* targetBlock) {
    IRBuilder builder{ module.getTarget() };
    builder.setCurrentFunction(&func);
    const auto block = builder.addBlock();
    builder.setCurrentBlock(block);
    block->setLabel(String::get("indirect"));
    builder.makeOp<BranchInst>(targetBlock);
    const auto terminator = sourceBlock->getTerminator()->as<BranchInst>();
    if(terminator->getTrueTarget() == targetBlock)
        terminator->getTrueTarget() = block;
    if(terminator->getFalseTarget() == targetBlock)
        terminator->getFalseTarget() = block;

    retargetBlock(targetBlock, sourceBlock, block);
    return block;
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
        case InstructionID::Load:
            [[fallthrough]];
        case InstructionID::Phi: {
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
bool hasCall(Block& block) {
    for(auto inst : block.instructions())
        if(inst->getInstID() == InstructionID::Call) {
            return true;
        }
    return false;
}
void retargetBlock(Block* target, Block* oldSource, Block* newSource) {
    for(auto inst : target->instructions()) {
        if(inst->getInstID() == InstructionID::Phi) {
            const auto phi = inst->as<PhiInst>();
            if(phi->incomings().count(newSource)) {
                assert(phi->incomings().at(oldSource) == phi->incomings().at(newSource));
                phi->removeSource(oldSource);
            } else
                phi->replaceSource(oldSource, newSource);
        } else
            break;
    }
}
void resetTarget(BranchInst* branch, Block* oldTarget, Block* newTarget) {
    assert(branch->getTrueTarget() == oldTarget || branch->getFalseTarget() == oldTarget);
    const auto handleTarget = [=](Block*& target) {
        if(target == oldTarget)
            target = newTarget;
    };
    handleTarget(branch->getTrueTarget());
    handleTarget(branch->getFalseTarget());
}
void copyTarget(Block* target, Block* oldSource, Block* newSource) {
    for(auto inst : target->instructions()) {
        if(inst->getInstID() == InstructionID::Phi) {
            auto phi = inst->as<PhiInst>();
            phi->addIncoming(newSource, phi->incomings().at(oldSource));
        } else
            break;
    }
}
void removePhi(Block* source, Block* target) {
    for(auto inst : target->instructions()) {
        if(inst->getInstID() == InstructionID::Phi) {
            const auto phi = inst->as<PhiInst>();
            if(phi->incomings().count(source))
                phi->removeSource(source);
        } else
            break;
    }
}
bool hasSamePhiValue(Block* target, Block* sourceLhs, Block* sourceRhs) {
    for(auto inst : target->instructions()) {
        if(inst->getInstID() == InstructionID::Phi) {
            const auto phi = inst->as<PhiInst>();
            auto& incomings = phi->incomings();
            if(incomings.at(sourceLhs) != incomings.at(sourceRhs)) {
                return false;
            }
        } else
            break;
    }
    return true;
}
void applyForSuccessors(BranchInst* branch, const std::function<void(Block*&)>& functor) {
    // immutable
    const auto trueTarget = branch->getTrueTarget();
    const auto falseTarget = branch->getFalseTarget();
    functor(branch->getTrueTarget());
    if(falseTarget && trueTarget != falseTarget)
        functor(branch->getFalseTarget());
}
CMMC_NAMESPACE_END

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

#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <iterator>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

bool applyReplace(Instruction* inst, const ReplaceMap& replace) {
    CMMC_UNUSED(inst);
    CMMC_UNUSED(replace);
    reportNotImplemented(CMMC_LOCATION());
}
bool replaceOperandsInBlock(Block& block, const ReplaceMap& replace) {
    if(replace.empty())
        return false;
    bool modified = false;
    CMMC_UNUSED(block);
    reportNotImplemented(CMMC_LOCATION());
    return modified;
}
bool reduceBlock(IRBuilder& builder, Block& block, const BlockReducer& reducer) {
    auto& insts = block.instructions();

    ReplaceMap replace;
    const auto oldSize = block.instructions().size();
    for(auto iter = insts.begin(); iter != insts.end(); ++iter) {
        auto& inst = *iter;
        builder.setInsertPoint(&block, iter);
        if(auto value = reducer(&inst, replace)) {
            replace.emplace(&inst, value);
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
    block->instructions().erase(inst->asNode());
    if constexpr(Config::debug) {
        inst->setLabel(String::get("removed"));
    }
}

Block* splitBlock(List<Block*>& blocks, List<Block*>::iterator block, IntrusiveListIterator<Instruction> after) {
    auto preBlock = *block;
    auto nextBlock = make<Block>(preBlock->getFunction());
    nextBlock->setLabel(preBlock->getLabel());
    auto& oldInsts = preBlock->instructions();
    auto beg = std::next(after);
    auto end = oldInsts.end();
    auto& newInsts = nextBlock->instructions();
    // FIXME:
    CMMC_UNUSED(newInsts);
    reportNotImplemented(CMMC_LOCATION());
    // newInsts.insert(newInsts.begin(), beg, end);
    oldInsts.erase(beg, end);
    // for(auto inst : newInsts)
    //     inst->setBlock(nextBlock);
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
    assert(terminator->getTrueTarget() == targetBlock || terminator->getFalseTarget() == targetBlock);
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
    for(auto& inst : block.instructions())
        if(inst.getInstID() == InstructionID::Call) {
            return true;
        }
    return false;
}
void retargetBlock(Block* target, Block* oldSource, Block* newSource) {
    for(auto& inst : target->instructions()) {
        if(inst.getInstID() == InstructionID::Phi) {
            const auto phi = inst.as<PhiInst>();
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
    for(auto& inst : target->instructions()) {
        if(inst.getInstID() == InstructionID::Phi) {
            auto phi = inst.as<PhiInst>();
            phi->addIncoming(newSource, phi->incomings().at(oldSource));
        } else
            break;
    }
}
bool removePhi(Block* source, Block* target) {
    for(auto& inst : target->instructions()) {
        if(inst.getInstID() == InstructionID::Phi) {
            const auto phi = inst.as<PhiInst>();
            if(phi->incomings().count(source)) {
                phi->removeSource(source);
            } else
                return false;
        } else
            return false;
    }
    return true;
}
bool hasSamePhiValue(Block* target, Block* sourceLhs, Block* sourceRhs) {
    for(auto& inst : target->instructions()) {
        if(inst.getInstID() == InstructionID::Phi) {
            const auto phi = inst.as<PhiInst>();
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

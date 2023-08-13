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

#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <iostream>
#include <iterator>
#include <stack>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

bool applyReplace(Instruction* inst, const ReplaceMap& replace) {
    bool modified = false;
    for(auto& ref : inst->mutableOperands()) {
        if(auto iter = replace.find(ref->value); iter != replace.end()) {
            ref->resetValue(iter->second);
            modified = true;
        }
    }
    return modified;
}
bool reduceBlock(IRBuilder& builder, Block& block, const BlockReducer& reducer) {
    auto& insts = block.instructions();

    bool modified = false;
    const auto oldSize = block.instructions().size();
    for(auto iter = insts.begin(); iter != insts.end(); ++iter) {
        auto& inst = *iter;
        // std::cerr << "reduce\n";
        // block.dump(std::cerr, HighlightInst{ &inst });
        builder.setInsertPoint(&block, iter);
        if(auto value = reducer(&inst)) {
            assert(value != &inst);
            // inst.dumpInst(std::cerr);
            // std::cerr << " => ";
            // value->dump(std::cerr, Noop{});
            // std::cerr << '\n';

            modified |= inst.replaceWith(value);
        }
    }
    const auto newSize = block.instructions().size();
    modified |= newSize != oldSize;
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
    auto pos = newInsts.begin();
    DisableValueRefCheckScope scope;
    for(auto iter = beg; iter != end;) {
        auto next = std::next(iter);
        iter->insertBefore(nextBlock, pos);
        iter = next;
    }
    blocks.insert(std::next(block), nextBlock);
    return nextBlock;
}
void fixPhiNode(Block* oldPred, Block* newPred) {
    const auto terminator = newPred->getTerminator();
    if(terminator->isBranch()) {
        auto handleTarget = [&](Block* target) {
            for(auto& phiInst : target->instructions()) {
                if(phiInst.getInstID() == InstructionID::Phi) {
                    phiInst.as<PhiInst>()->replaceSource(oldPred, newPred);
                } else
                    break;
            }
        };

        applyForSuccessors(terminator, handleTarget);
    }
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
    block->getTransformMetadata() = sourceBlock->getTransformMetadata();
    retargetBlock(targetBlock, sourceBlock, block);
    return block;
}

bool isNoSideEffectExpr(const Instruction& inst) {
    if(!inst.canbeOperand())
        return false;
    if(inst.isTerminator())
        return false;
    switch(inst.getInstID()) {
        case InstructionID::Store: {
            return false;
        }
        case InstructionID::Call: {
            const auto callee = inst.lastOperand();
            if(auto func = dynamic_cast<Function*>(callee)) {
                auto& attr = func->attr();
                return attr.hasAttr(FunctionAttribute::NoSideEffect) && attr.hasAttr(FunctionAttribute::Stateless) &&
                    !attr.hasAttr(FunctionAttribute::NoReturn);
            }
            return false;
        }
        default:
            break;
    }

    return true;
}
static bool isNonZero(const Value* x) {
    if(x->is<ConstantInteger>()) {
        return x->as<ConstantInteger>()->getZeroExtended() != 0;
    }
    return false;
}

bool isMovableExpr(const Instruction& inst, bool relaxedCtx) {
    if(!isNoSideEffectExpr(inst))
        return false;
    switch(inst.getInstID()) {
        case InstructionID::Alloc:
        case InstructionID::Phi:
        case InstructionID::Load:
            return false;
        // It is not safe to speculate division, since SIGFPE may be raised.
        case InstructionID::SDiv:
        case InstructionID::UDiv:
        case InstructionID::SRem:
        case InstructionID::URem:
            return !relaxedCtx || isNonZero(inst.getOperand(1));
        default:
            return true;
    }
}
bool hasCall(Block& block, bool excludeLoopBody) {
    for(auto& inst : block.instructions())
        if(inst.getInstID() == InstructionID::Call) {
            if(excludeLoopBody) {
                const auto callee = inst.lastOperand()->as<Function>();
                if(callee->attr().hasAttr(FunctionAttribute::LoopBody))
                    continue;
            }
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
void resetTarget(Instruction* branchOrSwitch, Block* oldTarget, Block* newTarget) {
    const auto handleTarget = [=](Block*& target) {
        if(target == oldTarget)
            target = newTarget;
    };
    if(branchOrSwitch->getInstID() == InstructionID::Switch) {
        const auto switchInst = branchOrSwitch->as<SwitchInst>();
        handleTarget(switchInst->defaultTarget());
        for(auto& [val, target] : switchInst->edges()) {
            handleTarget(target);
        }
    } else {
        const auto branch = branchOrSwitch->as<BranchInst>();
        assert(branch->getTrueTarget() == oldTarget || branch->getFalseTarget() == oldTarget);
        handleTarget(branch->getTrueTarget());
        handleTarget(branch->getFalseTarget());
    }
}
void copyTarget(Block* target, Block* oldSource, Block* newSource) {
    for(auto& inst : target->instructions()) {
        if(inst.getInstID() == InstructionID::Phi) {
            auto phi = inst.as<PhiInst>();
            phi->addIncoming(newSource, phi->incomings().at(oldSource)->value);
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
void applyForSuccessors(Instruction* branchOrSwitch, const std::function<void(Block*)>& functor) {
    // immutable
    if(branchOrSwitch->getInstID() == InstructionID::Switch) {
        const auto switchInst = branchOrSwitch->as<SwitchInst>();
        const auto targets = switchInst->getUniqueSuccessors();
        for(auto target : targets) {
            functor(target);
        }
    } else {
        const auto branch = branchOrSwitch->as<BranchInst>();
        const auto trueTarget = branch->getTrueTarget();
        const auto falseTarget = branch->getFalseTarget();
        functor(trueTarget);
        if(falseTarget && trueTarget != falseTarget)
            functor(falseTarget);
    }
}
uint32_t estimateBlockSize(Block* block, bool dynamic) {
    uint32_t count = 0;
    for(auto& inst : block->instructions()) {
        if(inst.isTerminator()) {
            if(inst.getInstID() == InstructionID::ConditionalBranch && inst.getOperand(0)->getBlock() == block &&
               inst.getOperand(0)->is<CompareInst>())
                --count;
            break;
        }
        switch(inst.getInstID()) {
            case InstructionID::Call: {
                const auto callee = inst.lastOperand()->as<Function>();
                if(callee->attr().hasAttr(FunctionAttribute::LoopBody)) {
                    for(auto b : callee->blocks())
                        count += estimateBlockSize(b, dynamic);
                } else
                    count += 16;
            } break;
            case InstructionID::Load:
            case InstructionID::Store:
                count += dynamic ? 4 : 1;
                break;
            case InstructionID::FDiv:
            case InstructionID::SDiv:
            case InstructionID::UDiv:
            case InstructionID::SRem:
            case InstructionID::URem:
                count += 4;
                break;
            case InstructionID::GetElementPtr:
            case InstructionID::PtrCast:
            case InstructionID::Bitcast:
            case InstructionID::Phi:
            case InstructionID::Alloc:
                break;
            default:
                ++count;
                break;
        }
    }
    return count;
}
bool collectLoopBody(Block* header, Block* latch, const DominateAnalysisResult& dom, const CFGAnalysisResult& cfg,
                     std::unordered_set<Block*>& body, bool allowInnerLoop) {
    body.insert(header);
    std::stack<Block*> stack;
    stack.push(latch);
    while(!stack.empty()) {
        const auto u = stack.top();
        stack.pop();
        if(body.insert(u).second) {
            for(auto v : cfg.predecessors(u)) {
                stack.push(v);
            }
        }
    }

    // if(body.size() <= 1)
    //     return false;
    for(auto block : body) {
        if(block == header)
            continue;
        for(auto succ : cfg.successors(block)) {
            if(block != latch && !body.count(succ)) {
                return false;
            }
            if(!allowInnerLoop && dom.dominate(succ, block) && succ != header)
                return false;
            if(succ == header && block != latch)
                return false;
        }
    }

    return true;
}

CMMC_NAMESPACE_END

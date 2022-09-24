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

// int* a = alloc int;
// store a with 10;
// ... store only
// ==>
// eliminate all

#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

/*
class StackAllocEliminate final : public TransformPass<Function> {
    static bool isStoreOnly(Value* root, const BranchTarget& target, std::unordered_set<Block*>& visited,
                            std::unordered_set<Instruction*>& storeInsts) {
        const auto block = target.getTarget();
        if(block == nullptr || visited.count(block))
            return true;
        visited.insert(block);

        auto isRoot = [root](Value* val) {
            if(val == root)
                return true;
            const auto arg = dynamic_cast<BlockArgument*>(val);
            return arg->getTarget() == root;
        };

        auto& args = block->args();
        for(uint32_t idx = 0; idx < args.size(); ++idx) {
            if(isRoot(target.getArgs()[idx]) && !isRoot(args[idx]))
                return false;  // TODO: sound but not complete
            const auto arg = args[idx];
            if(arg->getTarget() == root && !isStoreOnly(root, arg, block, visited, storeInsts)) {
                return false;
            }
        }
        return true;
    }
    static bool isStoreOnly(Value* root, Value* alloc, Block* block, std::unordered_set<Block*>& visited,
                            std::unordered_set<Instruction*>& storeInsts) {
        for(auto inst : block->instructions()) {
            if(inst == block->getTerminator()) {
                if(auto branch = dynamic_cast<ConditionalBranchInst*>(inst)) {
                    const auto& trueTarget = branch->getTrueTarget();
                    if(!isStoreOnly(root, trueTarget, visited, storeInsts)) {
                        return false;
                    }
                    const auto& falseTarget = branch->getFalseTarget();
                    if(!isStoreOnly(root, falseTarget, visited, storeInsts)) {
                        return false;
                    }
                    return true;
                }
            }
            if(!inst->hasOperand(alloc))
                continue;
            if(inst->getInstID() == InstructionID::Store && inst->getOperand(0) == alloc) {
                storeInsts.insert(inst);
                continue;
            }
            if(inst->getInstID() == InstructionID::Call) {
                const auto callee = inst->operands().back();
                if(const auto func = dynamic_cast<Function*>(callee)) {
                    if(func->attr().hasAttr(FunctionAttribute::NoMemoryRead))
                        continue;
                }
            }
            return false;
        }
        reportUnreachable();
    }
    static void removeAlloc(Function& func, Instruction* root, std::unordered_set<Instruction*>& storeInsts) {
        auto isRoot = [root](Value* val) {
            if(val == root)
                return true;
            const auto arg = dynamic_cast<BlockArgument*>(val);
            return arg->getTarget() == root;
        };

        removeInst(root);
        for(auto& inst : storeInsts)
            removeInst(inst);

        auto handleBranchTarget = [&](ConditionalBranchInst* branch, BranchTarget& target) {
            if(!target.getTarget())
                return;
            Vector<Value*> args;
            for(auto arg : target.getArgs())
                if(!isRoot(arg))
                    args.push_back(arg);
            branch->updateTargetArgs(target, std::move(args));
        };

        for(auto block : func.blocks()) {
            std::vector<BlockArgument*> deferred;
            for(auto arg : block->args()) {
                if(isRoot(arg))
                    deferred.emplace_back(arg);
            }
            for(auto arg : deferred)
                block->removeArg(arg);

            const auto terminator = block->getTerminator();
            if(terminator->getInstID() == InstructionID::Ret && !terminator->operands().empty() &&
               isRoot(terminator->getOperand(0))) {
                reportFatal("");
            } else if(terminator->isBranch()) {
                const auto branch = terminator->as<ConditionalBranchInst>();
                handleBranchTarget(branch, branch->getTrueTarget());
                handleBranchTarget(branch, branch->getFalseTarget());
            }
        }
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto block : func.blocks()) {
            modified |= scanInstructions(*block, [&](Instruction* inst) {
                if(inst->getInstID() == InstructionID::Alloc) {
                    std::unordered_set<Block*> visited;
                    std::unordered_set<Instruction*> storeInsts;
                    if(isStoreOnly(inst, inst, block, visited, storeInsts)) {
                        removeAlloc(func, inst, storeInsts);
                        return true;
                    }
                }
                return false;
            });
        }
        return modified;
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }
};

CMMC_TRANSFORM_PASS(StackAllocEliminate);
*/

// TODO: combine UselessStoreEliminate and NoSideEffectEliminate

CMMC_NAMESPACE_END

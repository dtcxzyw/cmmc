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

#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iostream>
#include <unordered_set>
#include <vector>

// Reference: https://www.cs.utexas.edu/~pingali/CS380C/2020/assignments/assignment5/index.html

CMMC_NAMESPACE_BEGIN

class LICMMemory final : public TransformPass<Function> {
    static bool runOnLoop(Block* block, const CFGAnalysisResult& cfg, const AliasAnalysisResult& aliasSet, IRBuilder& builder) {
        std::unordered_map<Value*, std::vector<Instruction*>> memoryInst;
        for(auto& inst : block->instructions()) {
            if(inst.getInstID() == InstructionID::Call)  // TODO: allow no-side-effect call
                return false;
            if(inst.getInstID() == InstructionID::Store || inst.getInstID() == InstructionID::Load ||
               inst.getInstID() == InstructionID::AtomicAdd) {
                auto addr = inst.getOperand(0);
                if(addr->getBlock() != block)  // static address memory instruction
                    memoryInst[addr].push_back(&inst);
            }
        }

        bool modified = false;
        Block* preBody = nullptr;
        Block* postBody = nullptr;

        auto preBodyOrCreate = [&]() mutable {
            if(!preBody) {
                modified = true;
                preBody = builder.addBlock();
                preBody->setLabel(String::get("prebody"));
            }
            return preBody;
        };
        auto postBodyOrCreate = [&]() mutable {
            if(!postBody) {
                modified = true;
                postBody = builder.addBlock();
                postBody->setLabel(String::get("postbody"));
            }
            return postBody;
        };

        for(auto& [addr, insts] : memoryInst) {
            bool isDistinct = true;
            for(auto& inst : block->instructions())
                if(inst.getInstID() == InstructionID::Store || inst.getInstID() == InstructionID::Load ||
                   inst.getInstID() == InstructionID::AtomicAdd) {
                    auto thatAddr = inst.getOperand(0);
                    if(thatAddr != addr && !aliasSet.isDistinct(addr, thatAddr)) {
                        isDistinct = false;
                        break;
                    }
                }

            if(!isDistinct)
                continue;

            bool hasAtomic = std::any_of(insts.begin(), insts.end(),
                                         [](Instruction* inst) { return inst->getInstID() == InstructionID::AtomicAdd; });
            if(hasAtomic)
                continue;
            bool hasLoad = std::any_of(insts.begin(), insts.end(),
                                       [](Instruction* inst) { return inst->getInstID() == InstructionID::Load; });
            bool hasStore = std::any_of(insts.begin(), insts.end(),
                                        [](Instruction* inst) { return inst->getInstID() == InstructionID::Store; });

            auto phiInst = make<PhiInst>(addr->getType()->as<PointerType>()->getPointee());
            phiInst->insertBefore(block, block->instructions().begin());
            if(hasLoad) {
                Block* pre = preBodyOrCreate();
                Instruction* loadInst = make<LoadInst>(addr);
                loadInst->insertBefore(pre, pre->instructions().end());
                phiInst->addIncoming(pre, loadInst);
            }

            Value* currentValue = phiInst;

            for(auto& inst : insts) {
                if(inst->getInstID() == InstructionID::Store) {
                    currentValue = inst->getOperand(1);
                    block->instructions().erase(inst->asNode());
                } else {
                    inst->replaceWith(currentValue);
                }
            }

            phiInst->addIncoming(block, currentValue);

            if(hasStore) {
                Block* post = postBodyOrCreate();
                Instruction* storeInst = make<StoreInst>(addr, currentValue);
                storeInst->insertBefore(post, post->instructions().end());
            }
        }

        if(preBody) {
            for(auto& inst : block->instructions())
                if(inst.getInstID() == InstructionID::Phi) {
                    auto thisPhi = inst.as<PhiInst>();
                    if(std::any_of(thisPhi->incomings().begin(), thisPhi->incomings().end(),
                                   [&](auto& p) { return p.first == preBody; }))
                        continue;

                    auto phi = inst.clone()->as<PhiInst>();  // pre-body's phi
                    phi->removeSource(block);
                    phi->insertBefore(preBody, preBody->instructions().begin());

                    inst.as<PhiInst>()->keepOneIncoming(block);
                    inst.as<PhiInst>()->addIncoming(preBody, phi);
                }

            for(auto& pred : cfg.predecessors(block)) {
                if(pred != block)
                    resetTarget(pred->getTerminator()->as<BranchInst>(), block, preBody);
            }
            builder.setInsertPoint(preBody, preBody->instructions().end());
            builder.makeOp<BranchInst>(block);
        }

        if(postBody) {
            Block* exit = block->getTerminator()->as<BranchInst>()->getFalseTarget();
            assert(exit != block);
            resetTarget(block->getTerminator()->as<BranchInst>(), exit, postBody);
            retargetBlock(exit, block, postBody);
            builder.setInsertPoint(postBody, postBody->instructions().end());
            builder.makeOp<BranchInst>(exit);
        }

        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& target = analysis.module().getTarget();

        IRBuilder builder{ target };
        builder.setCurrentFunction(&func);

        bool modified = false;
        std::unordered_set<Block*> visited;
        while(true) {
            auto& loops = analysis.get<LoopAnalysis>(func);
            auto& cfg = analysis.get<CFGAnalysis>(func);
            auto& aliasSet = analysis.get<AliasAnalysis>(func);
            bool changed = false;
            for(auto& loop : loops.loops) {
                if(loop.header == loop.latch) {
                    if(!visited.insert(loop.latch).second)
                        continue;
                    if(runOnLoop(loop.latch, cfg, aliasSet, builder)) {
                        changed = true;
                        modified = true;
                        analysis.invalidateFunc(func);
                        break;
                    }
                }
            }
            if(!changed)
                break;
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LICMMemory"sv;
    }
};

CMMC_TRANSFORM_PASS(LICMMemory);

CMMC_NAMESPACE_END

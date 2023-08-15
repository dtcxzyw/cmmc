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
#include <vector>

// Reference: https://www.cs.utexas.edu/~pingali/CS380C/2020/assignments/assignment5/index.html

CMMC_NAMESPACE_BEGIN

class LoopInvariantCodeMotion final : public TransformPass<Function> {
    static bool isDistinctCall(Instruction* inst, Instruction* call) {
        auto relativeAttr =
            inst->getInstID() == InstructionID::Store ? FunctionAttribute::NoMemoryRead : FunctionAttribute::NoMemoryWrite;

        if(auto func = dynamic_cast<Function*>(call->lastOperand())) {
            if(!func->attr().hasAttr(relativeAttr) || !func->attr().hasAttr(FunctionAttribute::NoSideEffect))
                return false;
        } else
            return false;
        return true;
    }

    static bool isMovable(Instruction* inst, Block* block, const AliasAnalysisResult& aliasSet) {
        if(inst->isTerminator())
            return false;

        switch(inst->getInstID()) {
            case InstructionID::Phi:
                return false;
            case InstructionID::Store:  // TODO: handle memory
                return false;
            case InstructionID::AtomicAdd:
                return false;
            case InstructionID::Load: {
                auto addr = inst->getOperand(0);
                auto inverseOp = inst->getInstID() == InstructionID::Store ? InstructionID::Load : InstructionID::Store;
                for(auto& subInst : block->instructions()) {
                    if((subInst.getInstID() == inverseOp || subInst.getInstID() == InstructionID::AtomicAdd) &&
                       !aliasSet.isDistinct(addr, subInst.getOperand(0)))
                        return false;
                    if(subInst.getInstID() == InstructionID::Call && !isDistinctCall(inst, &subInst))
                        return false;
                }
            } break;
            case InstructionID::Call: {
                const auto callee = inst->lastOperand();
                if(auto func = dynamic_cast<Function*>(callee)) {
                    if(!func->attr().hasAttr(FunctionAttribute::NoMemoryWrite) ||
                       !func->attr().hasAttr(FunctionAttribute::NoMemoryRead) ||
                       !func->attr().hasAttr(FunctionAttribute::NoSideEffect))
                        return false;
                } else
                    return false;
            } break;
            default:
                break;
        }

        for(auto operand : inst->operands())
            if(operand->getBlock() == block)
                return false;
        return true;
    }

    static bool runOnLoop(Block* block, const CFGAnalysisResult& cfg, const AliasAnalysisResult& aliasSet, IRBuilder& builder) {
        std::vector<Instruction*> invariantInst;
        for(auto& inst : block->instructions())
            if(isMovable(&inst, block, aliasSet))
                invariantInst.push_back(&inst);

        bool modified = false;

        if(!invariantInst.empty()) {
            modified = true;
            auto pre = builder.addBlock();
            pre->setLabel(String::get("prebody"));

            for(auto& inst : block->instructions())
                if(inst.getInstID() == InstructionID::Phi) {
                    auto phi = inst.clone()->as<PhiInst>();  // pre-body's phi
                    phi->removeSource(block);
                    phi->insertBefore(pre, pre->instructions().end());

                    inst.as<PhiInst>()->keepOneIncoming(block);
                    inst.as<PhiInst>()->addIncoming(pre, phi);
                }

            for(auto& inst : invariantInst)
                inst->insertBefore(pre, pre->instructions().end());

            for(auto& pred : cfg.predecessors(block)) {
                if(pred != block)
                    resetTarget(pred->getTerminator()->as<BranchInst>(), block, pre);
            }
            builder.setInsertPoint(pre, pre->instructions().end());
            builder.makeOp<BranchInst>(block);
        }

        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& target = analysis.module().getTarget();
        auto& loops = analysis.get<LoopAnalysis>(func);
        auto& cfg = analysis.get<CFGAnalysis>(func);
        auto& aliasSet = analysis.get<AliasAnalysis>(func);

        IRBuilder builder{ target };
        builder.setCurrentFunction(&func);

        bool modified = false;
        for(auto& loop : loops.loops) {
            if(loop.header == loop.latch)
                modified |= runOnLoop(loop.latch, cfg, aliasSet, builder);
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopInvariantCodeMotion"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopInvariantCodeMotion);

CMMC_NAMESPACE_END

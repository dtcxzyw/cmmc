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

// Turn for-loops into LLVM Loop Simplify Form

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <vector>

CMMC_NAMESPACE_BEGIN

/*
//       entering
//          |
//  ----> header ---> exiting
//  |       |
//  ----< body
//  =>
//        entering
//           |
//         header ---> exiting
//           |            |
//   -> body + header ---->
//   |       |
//   --------

struct SimpleLoopInfo final {
    Block* header;
    Block* latch;
};

class LoopRotate final : public TransformPass<Function> {
    static std::vector<SimpleLoopInfo> detectLoops(Function& func, AnalysisPassManager& analysis) {
        std::vector<SimpleLoopInfo> ret;
        auto& dom = analysis.get<DominateAnalysis>(func);
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::Branch)
                continue;
            const auto branch = terminator->as<BranchInst>();
            const auto header = branch->getTrueTarget();
            if(header == block)
                continue;
            if(header->instructions().front()->getInstID() != InstructionID::Phi)
                continue;
            if(dom.dominate(header, block)) {
                ret.push_back({ header, block });
            }
        }
        return ret;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& cfg = analysis.get<CFGAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);

        bool modified = false;
        for(auto loop : detectLoops(func, analysis)) {
            if(loop.header == loop.latch)
                continue;
            auto& pred = cfg.predecessors(loop.latch);
            if(!(pred.size() == 1 && pred.front() == loop.header))
                continue;
            auto& succ = cfg.successors(loop.latch);
            if(!(succ.size() == 1 && succ.front() == loop.header))
                continue;
            auto& predHeader = cfg.predecessors(loop.header);
            if(predHeader.size() != 2)
                continue;
            auto& succHeader = cfg.successors(loop.header);
            if(succHeader.size() != 2)
                continue;
            const auto entering = predHeader.front() == loop.latch ? predHeader.back() : predHeader.front();
            const auto exiting = succHeader.front() == loop.latch ? succHeader.back() : succHeader.front();

            if(exiting->instructions().front()->getInstID() == InstructionID::Phi)
                continue;

            auto& instructions = loop.latch->instructions();
            instructions.pop_back();
            ReplaceMap replacePhiLatch, replacePhiHeader;
            ReplaceMap replaceHeader;
            ReplaceMap replaceSucc;
            std::vector<Instruction*> latchInstructions{ loop.latch->instructions().cbegin(), loop.latch->instructions().cend() };
            std::vector<Instruction*> headerInstructions, phiInstructions;
            for(auto inst : loop.header->instructions()) {
                const auto newInst = inst->clone();
                newInst->setBlock(loop.latch);

                if(inst->getInstID() == InstructionID::Phi) {
                    const auto phi = inst->as<PhiInst>();
                    // header
                    phi->removeSource(loop.latch);
                    // latch
                    const auto newPhi = newInst->as<PhiInst>();
                    newPhi->replaceSource(entering, loop.header);
                    instructions.push_front(newInst);

                    replacePhiLatch.emplace(phi, newPhi);
                    phiInstructions.push_back(newInst);
                } else {
                    headerInstructions.push_back(newInst);
                    instructions.push_back(newInst);
                    if(inst->canbeOperand()) {
                        const auto phi = make<PhiInst>(inst->getType());
                        phi->setBlock(loop.latch);
                        phi->addIncoming(loop.header, inst);
                        phi->addIncoming(loop.latch, newInst);

                        instructions.push_front(phi);
                        replaceHeader.emplace(inst, newInst);
                    }
                }

                // exiting
                if(newInst->canbeOperand()) {
                    const auto newPhi = make<PhiInst>(newInst->getType());
                    newPhi->addIncoming(loop.header, inst);
                    newPhi->addIncoming(loop.latch, newInst);
                    newPhi->setBlock(exiting);
                    // exiting->instructions().push_front(newPhi);
                    replaceSucc.emplace(inst, newPhi);
                }
            }

            for(auto [key, val] : replacePhiLatch) {
                const auto phi = val->as<PhiInst>();
                auto realVal = phi->incomings().at(loop.latch);
                phi->removeSource(loop.latch);
                if(realVal->isInstruction()) {
                    if(realVal->is<PhiInst>()) {
                        realVal = replacePhiLatch.at(realVal);
                    }
                    if(realVal->getBlock() == loop.header) {
                        realVal = replaceHeader.at(realVal);
                    }
                }
                replacePhiHeader.emplace(key, realVal);
                phi->addIncoming(loop.latch, realVal);
            }

            replaceOperands(latchInstructions, replacePhiLatch);
            replaceOperands(latchInstructions, replaceHeader);
            replaceOperands(headerInstructions, replacePhiHeader);
            replaceOperands(headerInstructions, replaceHeader);
            replaceOperands(phiInstructions, replaceHeader);

            for(auto rhs : dom.blocks()) {
                if(!dom.dominate(exiting, rhs))
                    continue;

                replaceOperandsInBlock(*rhs, replaceSucc);
            }

            for(auto [key, val] : replaceSucc) {
                CMMC_UNUSED(key);
                exiting->instructions().push_front(val->as<Instruction>());
            }

            modified = true;
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopRotate"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopRotate);
*/

CMMC_NAMESPACE_END

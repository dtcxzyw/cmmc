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

#include <algorithm>
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

// Turn for-loops into LLVM Loop Simplify Form
//       entering
//          |
//  ----> header ---> exiting
//  |       |
//  |      xxx
//  |       |
//  ----< body
//  =>
//        entering
//           |
//         header ---> exiting
//           |            |
//          xxx  <--------|
//           |            |
//   -> body + header ---->
//   |       |
//   --------

struct SimpleLoopInfo final {
    Block* header;
    Block* latch;
};

constexpr uint32_t maxRotateCount = 8;

class LoopRotate final : public TransformPass<Function> {
    static std::vector<SimpleLoopInfo> detectLoops(Function& func, const DominateAnalysisResult& dom) {
        std::vector<SimpleLoopInfo> ret;
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

    static bool runImpl(Function& func, AnalysisPassManager& analysis) {
        auto& cfg = analysis.get<CFGAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        // func.dumpCFG(std::cerr);

        bool modified = false;
        for(auto loop : detectLoops(func, dom)) {
            if(loop.header == loop.latch)
                continue;
            if(hasCall(*loop.header, false))
                continue;
            // auto& pred = cfg.predecessors(loop.latch);
            // if(!(pred.size() == 1 && pred.front() == loop.header))
            //     continue;
            auto& succ = cfg.successors(loop.latch);
            if(!(succ.size() == 1 && succ.front() == loop.header))
                continue;
            // auto& predHeader = cfg.predecessors(loop.header);
            // if(predHeader.size() != 2)
            //     continue;
            auto& succHeader = cfg.successors(loop.header);
            if(succHeader.size() != 2)
                continue;
            Block* phiLoc = nullptr;
            for(auto b : succHeader)
                if(dom.dominate(loop.header, b) && dom.dominate(b, loop.latch)) {
                    phiLoc = b;
                }
            // FIXME
            if(!phiLoc)
                continue;

            std::unordered_set<Block*> body;
            if(!collectLoopBody(loop.header, loop.latch, dom, cfg, body, true, false))
                continue;
            // for(auto b : body) {
            //     b->dumpAsTarget(std::cerr);
            //     std::cerr << ' ';
            // }
            // std::cerr << '\n';

            const auto exiting = succHeader.front() == phiLoc ? succHeader.back() : succHeader.front();
            if(body.count(exiting))
                continue;
            // exiting->dumpAsTarget(std::cerr);
            // std::cerr << '\n';

            auto& rotateCount = loop.latch->getTransformMetadata().rotateCount;
            if(rotateCount < maxRotateCount) {
                ++rotateCount;
                rotateCount = std::max(loop.header->getTransformMetadata().rotateCount, rotateCount);
            } else
                continue;

            if(cfg.predecessors(phiLoc).size() != 1 || phiLoc->instructions().front()->getInstID() == InstructionID::Phi) {
                const auto newPhiLoc = make<Block>(&func);
                func.blocks().push_back(newPhiLoc);
                const auto term = make<BranchInst>(phiLoc);
                term->insertBefore(newPhiLoc, newPhiLoc->instructions().end());
                resetTarget(loop.header->getTerminator(), phiLoc, newPhiLoc);
                retargetBlock(phiLoc, loop.header, newPhiLoc);
                body.insert(newPhiLoc);
                phiLoc = newPhiLoc;
            }
            // reset target
            Block* indirectBlock = nullptr;
            if(cfg.predecessors(exiting).size() != 1 || exiting->instructions().front()->getInstID() == InstructionID::Phi) {
                indirectBlock = make<Block>(&func);
                resetTarget(loop.header->getTerminator()->as<BranchInst>(), exiting, indirectBlock);
            }

            // duplicate instructions
            std::unordered_map<Value*, PhiInst*> replace;
            loop.latch->instructions().pop_back();
            std::unordered_set<Instruction*> oldInsts;
            std::unordered_set<Instruction*> newInsts;
            for(auto b : body)
                if(b != loop.header)
                    for(auto& inst : b->instructions())
                        oldInsts.insert(&inst);
            for(auto& inst : loop.header->instructions()) {
                if(inst.canbeOperand()) {
                    const auto phi = make<PhiInst>(inst.getType());
                    replace.emplace(&inst, phi);
                    phi->insertBefore(phiLoc, phiLoc->instructions().begin());
                }
            }
            for(auto& inst : loop.header->instructions()) {
                if(inst.getInstID() == InstructionID::Phi) {
                    auto val = inst.as<PhiInst>()->incomings().at(loop.latch)->value;
                    inst.as<PhiInst>()->removeSource(loop.latch);
                    const auto phi = replace.at(&inst);
                    phi->addIncoming(loop.header, &inst);
                    if(auto iter = replace.find(val); iter != replace.end())
                        val = iter->second;
                    phi->addIncoming(loop.latch, val);
                } else {
                    const auto newInst = inst.clone();
                    newInst->insertBefore(loop.latch, loop.latch->instructions().end());
                    if(inst.canbeOperand()) {
                        const auto phi = replace.at(&inst);
                        phi->addIncoming(loop.header, &inst);
                        phi->addIncoming(loop.latch, newInst);
                    }
                    newInsts.insert(newInst);
                }
            }
            // body/tail header use header
            // body:
            //   new phis
            //   old body
            //   tail header
            for(auto& inst : loop.header->instructions()) {
                auto& users = inst.users();
                for(auto iter = users.begin(); iter != users.end();) {
                    const auto next = std::next(iter);
                    const auto user = iter.ref()->user;
                    if(oldInsts.count(user)) {
                        // old body
                        iter.ref()->resetValue(replace.at(&inst));
                    } else if(newInsts.count(user)) {
                        // tail header
                        iter.ref()->resetValue(replace.at(&inst)->incomings().at(loop.latch)->value);
                    } else {
                        // new phis/outer users
                    }
                    iter = next;
                }
            }

            // outer use header

            for(auto& inst : loop.header->instructions()) {
                bool usedByOuter = false;
                auto& users = inst.users();
                for(auto user : users) {
                    const auto block = user->getBlock();
                    if(!body.count(block)) {
                        usedByOuter = true;
                        break;
                    }
                }

                if(!usedByOuter)
                    continue;

                const auto phi = make<PhiInst>(inst.getType());

                for(auto iter = users.begin(); iter != users.end();) {
                    const auto next = std::next(iter);
                    const auto block = iter.ref()->user->getBlock();
                    if(!body.count(block)) {
                        iter.ref()->resetValue(phi);
                    }
                    iter = next;
                }

                phi->addIncoming(loop.header, &inst);
                phi->addIncoming(loop.latch, replace.at(&inst)->incomings().at(loop.latch)->value);
                if(indirectBlock)
                    phi->insertBefore(indirectBlock, indirectBlock->instructions().begin());
                else
                    phi->insertBefore(exiting, exiting->instructions().begin());
            }
            if(indirectBlock) {
                const auto terminator = make<BranchInst>(exiting);
                terminator->insertBefore(indirectBlock, indirectBlock->instructions().end());
                func.blocks().push_back(indirectBlock);

                for(auto& phi : exiting->instructions()) {
                    if(phi.getInstID() == InstructionID::Phi) {
                        auto phiInst = phi.as<PhiInst>();
                        phiInst->replaceSource(loop.header, indirectBlock);
                    } else
                        break;
                }
            }

            modified = true;
            break;
        }
        return modified;
    }

    static bool cleanupPhi(Function& func) {
        bool modified = false;

        for(auto block : func.blocks()) {
            auto& insts = block->instructions();
            for(auto it = insts.begin(); it != insts.end();) {
                auto next = std::next(it);
                auto& inst = *it;
                if(inst.getInstID() == InstructionID::Phi) {
                    const auto phi = inst.as<PhiInst>();
                    if(phi->incomings().size() == 1) {
                        inst.replaceWith(phi->incomings().begin()->second->value);
                        insts.erase(inst.asNode());
                    }
                } else
                    break;
                it = next;
            }
        }

        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        bool modified = false;
        modified |= cleanupPhi(func);
        while(runImpl(func, analysis)) {
            // if(!func.verify(std::cerr))
            //     reportUnreachable(CMMC_LOCATION());

            cleanupPhi(func);
            modified = true;
            analysis.invalidateFunc(func);
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopRotate"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopRotate);

CMMC_NAMESPACE_END

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

#include "cmmc/Analysis/AnalysisPass.hpp"
#include <algorithm>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
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

constexpr uint32_t maxRotateCount = 8;

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
            const auto exiting = succHeader.front() == loop.latch ? succHeader.back() : succHeader.front();
            // TODO: create new block for phi nodes
            if(cfg.predecessors(exiting).size() != 1)
                continue;
            auto& rotateCount = loop.latch->getTransformMetadata().rotateCount;
            if(rotateCount < maxRotateCount) {
                ++rotateCount;
                rotateCount = std::max(loop.header->getTransformMetadata().rotateCount, rotateCount);
            } else
                continue;

            // duplicate instructions
            std::unordered_map<Value*, PhiInst*> replace;
            loop.latch->instructions().pop_back();
            std::unordered_set<Instruction*> oldInsts;
            std::unordered_set<Instruction*> newInsts;
            for(auto& inst : loop.latch->instructions())
                oldInsts.insert(&inst);
            for(auto& inst : loop.header->instructions()) {
                if(inst.canbeOperand()) {
                    const auto phi = make<PhiInst>(inst.getType());
                    replace.emplace(&inst, phi);
                    phi->insertBefore(loop.latch, loop.latch->instructions().begin());
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
                    if(block != loop.latch && block != loop.header) {
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
                    if(block != loop.latch && block != loop.header) {
                        iter.ref()->resetValue(phi);
                    }
                    iter = next;
                }

                phi->addIncoming(loop.header, &inst);
                phi->addIncoming(loop.latch, replace.at(&inst)->incomings().at(loop.latch)->value);
                phi->insertBefore(exiting, exiting->instructions().begin());
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

CMMC_NAMESPACE_END

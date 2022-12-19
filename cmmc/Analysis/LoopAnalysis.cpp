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

#include <cmmc/Analysis/BlockArgumentAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/Analysis/PhiAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <iostream>
#include <variant>

CMMC_NAMESPACE_BEGIN

// only detect the following patterns (Canonical Form):
// for(int i = initial; i < cond; ++i)
//     body

LoopAnalysisResult LoopAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    std::vector<Loop> loops;
    auto& dom = analysis.get<DominateAnalysis>(func);
    auto& blockArgMap = analysis.get<BlockArgumentAnalysis>(func);
    auto& phiMap = analysis.get<PhiAnalysis>(func);

    for(auto block : dom.blocks()) {
        const auto terminator = block->getTerminator();
        if(terminator->getInstID() != InstructionID::ConditionalBranch)
            continue;
        const auto branch = terminator->as<ConditionalBranchInst>();
        const auto cond = branch->getOperand(0);
        if(!cond->is<CompareInst>())
            continue;
        const auto cmp = cond->as<CompareInst>();
        if(cmp->getOp() != CompareOp::LessThan)
            continue;
        if(cmp->getInstID() != InstructionID::SCmp)
            continue;
        const auto next = cmp->getOperand(0);
        auto bound = cmp->getOperand(1);

        Value* indvar;
        if(!add(any(indvar), cuint_(1))(MatchContext<Value>{ next, nullptr })) {
            continue;
        }

        // backedge
        const auto& trueTarget = branch->getTrueTarget();
        const auto header = trueTarget.getTarget();
        if(header != dom.lca(header, block))
            continue;

        // TODO: handle phi nodes
        indvar = blockArgMap.queryRoot(indvar);
        if(indvar->getBlock() != header || !indvar->is<BlockArgument>())
            continue;

        if(!bound->isConstant()) {
            const auto root = blockArgMap.queryRoot(bound);
            bound = nullptr;
            for(auto arg : header->args())
                if(blockArgMap.queryRoot(arg) == root) {
                    bound = arg;
                    break;
                }
            if(!bound)
                continue;
        }

        intmax_t boundValue;
        if(!int_(boundValue)(MatchContext<Value>{ bound, nullptr }))
            continue;

        const auto& indvarPrev = phiMap.query(indvar->as<BlockArgument>());
        Value* initial = nullptr;
        if(std::holds_alternative<PhiNode>(indvarPrev)) {
            auto& phiNode = std::get<PhiNode>(indvarPrev);
            if(phiNode.size() != 2)
                continue;

            bool invalid = false;
            for(auto val : phiNode) {
                if(val == next)
                    continue;
                else if(initial == nullptr) {
                    initial = val;
                } else {
                    invalid = true;
                }
            }
            if(invalid)
                continue;
        } else
            continue;
        assert(initial);
        intmax_t initialValue;
        if(!int_(initialValue)(MatchContext<Value>{ initial, nullptr }))
            continue;

        loops.push_back({ header, block, indvar, next, initial, bound });
    }

    /*
    func.dump(std::cerr);
    for(auto& loop : loops) {
        std::cerr << "header: ";
        loop.header->dumpAsTarget(std::cerr);
        std::cerr << "\nlatch: ";
        loop.latch->dumpAsTarget(std::cerr);
        std::cerr << "\nindvar: ";
        loop.inductionVar->dumpAsOperand(std::cerr);
        std::cerr << "\nnext: ";
        loop.next->dumpAsOperand(std::cerr);
        std::cerr << "\ninitial: ";
        loop.initial->dumpAsOperand(std::cerr);
        std::cerr << "\nbound: ";
        loop.bound->dumpAsOperand(std::cerr);
        std::cerr << '\n';
    }*/

    return { std::move(loops) };
}

CMMC_NAMESPACE_END

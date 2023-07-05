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

#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <iostream>
#include <variant>

CMMC_NAMESPACE_BEGIN

// only detect the following patterns (Canonical Form):
// for(int i = initial; i </> cond; i += step) (step != 0)
//     body

LoopAnalysisResult LoopAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    std::vector<Loop> loops;
    auto& dom = analysis.get<DominateAnalysis>(func);

    for(auto block : dom.blocks()) {
        const auto terminator = block->getTerminator();
        if(terminator->getInstID() != InstructionID::ConditionalBranch)
            continue;
        const auto branch = terminator->as<BranchInst>();
        const auto cond = branch->getOperand(0);
        if(!cond->is<CompareInst>())
            continue;
        const auto cmp = cond->as<CompareInst>();
        if(cmp->getInstID() != InstructionID::ICmp)
            continue;
        const auto next = cmp->getOperand(0);
        auto bound = cmp->getOperand(1);

        Value* indvar;
        intmax_t step;
        if(!add(any(indvar), int_(step))(MatchContext<Value>{ next })) {
            continue;
        }

        // TODO: suppress this warning
        if(step == 0)  // NOLINT(clang-analyzer-core.UndefinedBinaryOperatorResult)
            continue;

        // backedge
        const auto& trueTarget = branch->getTrueTarget();
        const auto header = trueTarget;
        assert(header);
        if(!dom.dominate(header, block))
            continue;

        if(indvar->getBlock() != header || !indvar->is<PhiInst>())
            continue;

        if(!bound->isConstant() && !bound->isArgument()) {
            // bound should be invariant
            if(bound->getBlock() == header || !dom.dominate(bound->getBlock(), header))
                continue;
        }

        Value* initial = nullptr;
        bool uniqueInitial = true;
        const auto phi = indvar->as<PhiInst>();
        for(auto [pred, val] : phi->incomings()) {
            if(pred != block) {
                if(initial)
                    uniqueInitial = false;
                else
                    initial = val->value;
            }
        }
        if(!uniqueInitial || !initial)
            continue;

        if(cmp->getOp() == CompareOp::ICmpNotEqual) {
            intmax_t boundValue;
            if(!int_(boundValue)(MatchContext<Value>{ bound }))
                continue;

            intmax_t initialValue;
            if(!int_(initialValue)(MatchContext<Value>{ initial }))
                continue;

            if((boundValue - initialValue) % step)
                continue;
            if(step > 0 && (initialValue >= boundValue))
                continue;
            if(step < 0 && (initialValue <= boundValue))
                continue;
        } else if(cmp->getOp() == CompareOp::ICmpSignedLessThan) {
            // increment
            if(step <= 0)
                continue;
        } else if(cmp->getOp() == CompareOp::ICmpSignedGreaterThan) {
            // decrement
            if(step >= 0)
                continue;
        } else
            continue;

        loops.push_back({ header, block, indvar, next, initial, bound, step });
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
        std::cerr << "\nstep: " << loop.step << '\n';
    }
    */

    return { std::move(loops) };
}

CMMC_NAMESPACE_END

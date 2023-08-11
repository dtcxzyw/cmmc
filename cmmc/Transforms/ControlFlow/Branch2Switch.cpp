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

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iterator>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class Branch2Switch final : public TransformPass<Function> {
    static bool matchICmpEqual(Block* block, Value* base, intmax_t& key, Block*& target, Block*& fallback) {
        const auto terminator = block->getTerminator();
        if(terminator->getInstID() != InstructionID::ConditionalBranch)
            return false;
        const auto branch = terminator->as<BranchInst>();
        CompareOp cmp;
        if(icmp(cmp, exactly(base), int_(key))(MatchContext<Value>{ terminator->getOperand(0) })) {
            if(cmp == CompareOp::ICmpEqual) {
                target = branch->getTrueTarget();
                fallback = branch->getFalseTarget();
                return true;
            }
            if(cmp == CompareOp::ICmpNotEqual) {
                target = branch->getFalseTarget();
                fallback = branch->getTrueTarget();
                return true;
            }
        }
        return false;
    }
    static void matchCaseChain(Value* base, Block* block, bool head, std::map<intmax_t, Block*>& chain,
                               std::unordered_set<Block*>& visited, Block*& defaultBlock, Block*& parent) {
        visited.insert(block);
        if(!head) {
            const auto terminator = block->getTerminator();
            bool usedByTerminator = true;
            for(auto& inst : block->instructions()) {
                for(auto user : inst.users()) {
                    if(user != terminator) {
                        usedByTerminator = false;
                        break;
                    }
                }
                if(!usedByTerminator)
                    break;
            }
            if(!usedByTerminator) {
                defaultBlock = block;
                return;
            }
        }
        intmax_t key;
        Block* target;
        Block* fallback;
        if(matchICmpEqual(block, base, key, target, fallback)
           // FIXME
           && !chain.count(key)) {
            chain[key] = target;
            parent = block;
            matchCaseChain(base, fallback, false, chain, visited, defaultBlock, parent);
        } else {
            defaultBlock = block;
        }
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        if(!analysis.module().getTarget().isNativeSupported(InstructionID::Switch))
            return false;
        auto& dom = analysis.get<DominateAnalysis>(func);
        bool modified = false;
        std::unordered_set<Block*> visited;
        for(auto block : dom.blocks()) {
            if(visited.count(block))
                continue;
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::ConditionalBranch)
                continue;

            Value* base = nullptr;
            intmax_t i1;
            CompareOp cmp;
            if(!(icmp(cmp, any(base), int_(i1))(MatchContext<Value>{ terminator->getOperand(0) }) &&
                 (cmp == CompareOp::ICmpEqual || cmp == CompareOp::ICmpNotEqual)))
                continue;

            std::map<intmax_t, Block*> chain;
            Block *defaultBlock, *parent;
            matchCaseChain(base, block, true, chain, visited, defaultBlock, parent);
            if(chain.size() < 4)
                continue;
            const auto minVal = chain.begin()->first;
            const auto maxVal = std::prev(chain.end())->first;
            if(maxVal - minVal > 256)
                continue;
            if(static_cast<double>(chain.size()) < 0.8 * static_cast<double>(maxVal - minVal))
                continue;

            bool hasPhi = false;
            for(auto [key, target] : chain) {
                if(target->instructions().front()->getInstID() == InstructionID::Phi) {
                    hasPhi = true;
                    break;
                }
            }
            if(hasPhi)
                continue;
            block->instructions().pop_back();
            const auto switchInst = make<SwitchInst>(base, defaultBlock);
            copyTarget(defaultBlock, parent, block);
            for(auto [key, target] : chain) {
                switchInst->addEdge(key, target);
            }
            switchInst->insertBefore(block, block->instructions().end());
            modified = true;
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "Branch2Switch"sv;
    }
};

CMMC_TRANSFORM_PASS(Branch2Switch);

CMMC_NAMESPACE_END

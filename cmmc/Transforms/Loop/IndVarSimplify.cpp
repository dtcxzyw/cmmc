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

#include <cmath>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>

CMMC_NAMESPACE_BEGIN

class IndVarSimplify final : public TransformPass<Function> {
    static bool isInvariant(Value* val, Block* header, const DominateAnalysisResult& dom) {
        if(!val->getBlock())
            return true;
        return val->getBlock() != header && dom.dominate(val->getBlock(), header);
    }
    static bool isIndVarMonotonic(Value* indVar, Block* header, const DominateAnalysisResult& dom, bool dir, int32_t depth) {
        if(indVar->is<PhiInst>()) {
            constexpr intmax_t maxInc = 1;  // FIXME
            auto phi = indVar->as<PhiInst>();
            for(auto [pred, val] : phi->incomings()) {
                if(isInvariant(val->value, header, dom)) {
                    continue;
                }
                intmax_t step;
                if(!add(exactly(indVar), int_(step))(MatchContext<Value>{ val->value }))
                    return false;
                if(dir) {
                    if(step <= maxInc)
                        continue;
                } else {
                    if(step >= -maxInc)
                        continue;
                }
                return false;
            }
            return true;
        }
        if(depth < 0)
            return false;
        Value* base;
        intmax_t step;
        if(add(any(base), int_(step))(MatchContext<Value>{ indVar })) {
            return isIndVarMonotonic(base, header, dom, dir, depth - 1);
        }

        return false;
    }

    static bool isNonSideEffect(Block* block) {
        for(auto& inst : block->instructions()) {
            if(inst.isTerminator())
                continue;
            if(!isNoSideEffectExpr(inst) || inst.getInstID() == InstructionID::Load) {
                return false;
            }
        }
        return true;
    }

    static bool isUsedByOuter(Block* block, Block* exit, const DominateAnalysisResult& dom) {
        for(auto& inst : block->instructions()) {
            for(auto it = inst.users().begin(); it != inst.users().end(); ++it) {
                auto user = *it;
                if(dom.dominate(exit, user->getBlock()))
                    return true;

                if(user->is<PhiInst>()) {
                    auto phi = user->as<PhiInst>();
                    for(auto [pred, val] : phi->incomings()) {
                        if(val == it.ref()) {
                            if(dom.dominate(exit, pred))
                                return true;
                        } else
                            break;
                    }
                }
            }
        }
        return false;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& dom = analysis.get<DominateAnalysis>(func);
        bool modified = false;

        for(auto& block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::ConditionalBranch)
                continue;
            const auto branch = terminator->as<BranchInst>();
            CompareOp cmp;
            Value* indVar;
            Value *x, *y;
            if(!icmp(cmp, any(x), any(y))(MatchContext<Value>{ branch->getOperand(0) }))
                continue;

            const auto trueTarget = branch->getTrueTarget();
            if(trueTarget == branch->getFalseTarget())
                continue;

            auto matchCmp = [&](Value* v1, Value* v2) {
                // if(!v1->is<PhiInst>())
                //     return false;
                const auto header = v1->getBlock();
                if(header != trueTarget)
                    return false;
                // handled by loop elimination
                if(header == block)
                    return false;
                if(!dom.dominate(header, block))
                    return false;
                if(!isInvariant(v2, header, dom))
                    return false;
                return true;
            };

            if(matchCmp(x, y)) {
                indVar = x;
            } else if(matchCmp(y, x)) {
                indVar = y;
                cmp = getReversedOp(cmp);
            } else
                continue;

            const auto header = indVar->getBlock();
            // std::cerr << "block: ";
            // block->dumpAsTarget(std::cerr);
            // std::cerr << " header: ";
            // header->dumpAsTarget(std::cerr);
            // std::cerr << '\n';

            constexpr int32_t depth = 1;
            if(cmp == CompareOp::ICmpSignedGreaterThan || cmp == CompareOp::ICmpSignedGreaterEqual) {
                if(!isIndVarMonotonic(indVar, header, dom, true, depth))
                    continue;
            } else if(cmp == CompareOp::ICmpSignedLessThan || cmp == CompareOp::ICmpSignedLessEqual) {
                if(!isIndVarMonotonic(indVar, header, dom, false, depth))
                    continue;
            } else
                continue;  // TODO

            if(!(isNonSideEffect(header) && isNonSideEffect(block)))
                continue;
            // only handle direct edges
            const auto headerTerminator = header->getTerminator();
            if(headerTerminator->getInstID() != InstructionID::ConditionalBranch)
                continue;

            const auto headerBranch = headerTerminator->as<BranchInst>();
            if(headerBranch->getTrueTarget() != block && headerBranch->getFalseTarget() != block)
                continue;
            const auto exit =
                headerBranch->getTrueTarget() != block ? headerBranch->getTrueTarget() : headerBranch->getFalseTarget();
            if(exit == block || exit == header || exit == branch->getFalseTarget())
                continue;
            if(isUsedByOuter(header, exit, dom) || isUsedByOuter(block, exit, dom))
                continue;

            resetTarget(branch, header, exit);
            copyTarget(exit, header, block);
            removePhi(block, header);

            constexpr auto earlyExitProb = 0.1;
            std::swap(branch->getTrueTarget(), branch->getFalseTarget());
            branch->updateBranchProb(1.0 - earlyExitProb);
            const auto cond = branch->getOperand(0)->as<CompareInst>();
            cond->setOp(getInvertedOp(cond->getOp()));

            modified = true;
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "IndVarSimplify"sv;
    }
};

CMMC_TRANSFORM_PASS(IndVarSimplify);

CMMC_NAMESPACE_END

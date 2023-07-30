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
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>

CMMC_NAMESPACE_BEGIN

class LoopCanonicalize final : public TransformPass<Function> {
    static bool simplifyIndVar(Block* block, CompareInst* cmp, BranchInst* terminatorBranch, const DominateAnalysisResult& dom) {
        // addrec (initial, step) + offset < end -> addrec (initial step) + step < end + step - offset
        const auto next = cmp->getOperand(0);
        const auto rhs = cmp->getOperand(1);
        Value* v1;
        intmax_t i1, i2;
        if(!(add(any(v1), int_(i1))(MatchContext<Value>{ next }) && std::abs(i1) < maxStep))
            return false;

        if(!v1->is<PhiInst>())
            return false;
        const auto phi = v1->as<PhiInst>();
        const auto latch = block;
        const auto header = terminatorBranch->getTrueTarget();
        if(!(phi->getBlock() == header && phi->incomings().count(latch)))
            return false;
        const auto indvar = phi->incomings().at(latch)->value;
        if(!(add(exactly(v1), int_(i2))(MatchContext<Value>{ indvar }) && i1 != i2 && std::abs(i2) < maxStep))
            return false;
        if(rhs->getBlock() != nullptr && !(rhs->getBlock() != block && dom.dominate(rhs->getBlock(), block)))
            return false;
        const auto newLhs = make<BinaryInst>(InstructionID::Add, v1, ConstantInteger::get(v1->getType(), i2));
        const auto newRhs = make<BinaryInst>(InstructionID::Add, rhs, ConstantInteger::get(rhs->getType(), i2 - i1));
        newLhs->insertBefore(block, cmp->asIterator());
        newRhs->insertBefore(block, cmp->asIterator());
        cmp->mutableOperands()[0]->resetValue(newLhs);
        cmp->mutableOperands()[1]->resetValue(newRhs);
        return true;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& dom = analysis.get<DominateAnalysis>(func);
        bool modified = false;

        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::ConditionalBranch)
                continue;
            const auto cond = terminator->getOperand(0);
            if(!cond->is<CompareInst>())
                continue;
            const auto cmp = cond->as<CompareInst>();
            // make constants rhs
            if(cmp->getOperand(0)->isConstant() && !cmp->getOperand(1)->isConstant()) {
                auto& operands = cmp->mutableOperands();
                std::swap(operands[0], operands[1]);
                cmp->setOp(getReversedOp(cmp->getOp()));
                modified = true;
            }

            const auto terminatorBranch = terminator->as<BranchInst>();
            if(terminatorBranch->getTrueTarget() != terminatorBranch->getFalseTarget() && cmp->hasExactlyOneUse() &&
               dom.dominate(terminatorBranch->getFalseTarget(), block) &&
               !dom.dominate(terminatorBranch->getFalseTarget(), terminatorBranch->getTrueTarget())) {
                terminatorBranch->updateBranchProb(1.0 - terminatorBranch->getBranchProb());
                std::swap(terminatorBranch->getTrueTarget(), terminatorBranch->getFalseTarget());
                cmp->setOp(getInvertedOp(cmp->getOp()));
                modified = true;
            }

            modified |= simplifyIndVar(block, cmp, terminatorBranch, dom);
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopCanonicalize"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopCanonicalize);

CMMC_NAMESPACE_END

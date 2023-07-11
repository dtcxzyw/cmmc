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
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <optional>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class ForwardBranch final : public TransformPass<Function> {
    static bool tryForward(Block* block, Value* cond, bool direction, Block*& target) {
        if(target == block)
            return false;

        Block* directTarget = nullptr;
        Instruction* phi = nullptr;
        if(target->instructions().size() == 1) {
            auto terminator = target->instructions().front();
            if(terminator->getInstID() != InstructionID::ConditionalBranch)
                return false;
            const auto branch = terminator->as<BranchInst>();
            if(branch->getOperand(0) != cond)
                return false;
            directTarget = direction ? branch->getTrueTarget() : branch->getFalseTarget();
        } else if(target->instructions().size() == 2) {
            phi = target->instructions().front();
            if(phi->getInstID() != InstructionID::Phi)
                return false;
            if(!phi->hasExactlyOneUse())
                return false;
            if(!phi->getType()->isBoolean())
                return false;
            const auto val = phi->as<PhiInst>()->incomings().at(block);
            std::optional<bool> dir;
            if(val->value == cond) {
                dir = direction;
            } else if(val->value->is<ConstantInteger>()) {
                dir = (val->value->as<ConstantInteger>()->getSignExtended() != 0);
            }
            if(!dir.has_value())
                return false;
            auto terminator = target->instructions().back();
            if(terminator->getInstID() != InstructionID::ConditionalBranch)
                return false;
            if(terminator->getOperand(0) != phi)
                return false;
            const auto branch = terminator->as<BranchInst>();
            directTarget = *dir ? branch->getTrueTarget() : branch->getFalseTarget();
        } else
            return false;

        // target -> direct target
        if(target == directTarget)
            return false;
        // FIXME
        if(directTarget->instructions().front()->getInstID() == InstructionID::Phi)
            return false;

        target = directTarget;
        if(phi)
            phi->as<PhiInst>()->removeSource(block);
        return true;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;

        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::ConditionalBranch)
                continue;
            auto& trueTarget = terminator->as<BranchInst>()->getTrueTarget();
            auto& falseTarget = terminator->as<BranchInst>()->getFalseTarget();
            if(trueTarget == falseTarget)
                continue;

            if(tryForward(block, terminator->getOperand(0), true, trueTarget)) {
                modified = true;
            }
            if(tryForward(block, terminator->getOperand(0), false, falseTarget)) {
                modified = true;
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ForwardBranch"sv;
    }
};

CMMC_TRANSFORM_PASS(ForwardBranch);

CMMC_NAMESPACE_END

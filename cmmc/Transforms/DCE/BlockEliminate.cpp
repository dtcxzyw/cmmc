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

// TODO: +InfiniteEliminate
// eliminate unreachable blocks
// ^entry(i32 %a, i32 %b):
//     ret i32 0;
// ^b2(int %a):
//     ret i32 0;
// ==>
// ^entry(i32 %a, int %b):
//     ret i32 0;

#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <queue>
#include <vector>

CMMC_NAMESPACE_BEGIN

class BlockEliminate final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        std::unordered_set<Block*> reachable;
        std::queue<Block*> q;

        q.push(func.entryBlock());
        reachable.insert(func.entryBlock());

        while(!q.empty()) {
            auto u = q.front();
            q.pop();

            const auto terminator = u->getTerminator();
            if(terminator->isBranch()) {
                auto addSucc = [&](Block* block) {
                    if(reachable.insert(block).second) {
                        q.push(block);
                    }
                };
                if(terminator->getInstID() == InstructionID::Switch) {
                    const auto switchInst = terminator->as<SwitchInst>();
                    addSucc(switchInst->defaultTarget());
                    for(auto [val, target] : switchInst->edges()) {
                        addSucc(target);
                    }
                } else {
                    const auto inst = terminator->as<BranchInst>();
                    const auto trueTarget = inst->getTrueTarget();
                    addSucc(trueTarget);
                    const auto falseTarget = inst->getFalseTarget();
                    if(falseTarget)
                        addSucc(falseTarget);
                }
            }
        }

        auto& blocks = func.blocks();
        if(blocks.size() == reachable.size())
            return false;
        std::vector<Block*> removed;
        removed.reserve(blocks.size() - reachable.size());
        blocks.remove_if([&](auto block) {
            if(!reachable.count(block)) {
                removed.push_back(block);
                return true;
            }
            return false;
        });
        for(auto block : removed) {
            for(auto& inst : block->instructions())
                if(inst.canbeOperand())
                    inst.replaceWith(make<UndefinedValue>(inst.getType()));
            const auto terminator = block->getTerminator();
            if(terminator->isBranch()) {
                auto handleTarget = [&](Block* target) {
                    if(!target || !reachable.count(target))
                        return;
                    removePhi(block, target);
                };
                if(terminator->getInstID() == InstructionID::Switch) {
                    const auto switchInst = terminator->as<SwitchInst>();
                    handleTarget(switchInst->defaultTarget());
                    for(auto [val, target] : switchInst->edges()) {
                        handleTarget(target);
                    }
                } else {
                    const auto branch = terminator->as<BranchInst>();
                    handleTarget(branch->getTrueTarget());
                    handleTarget(branch->getFalseTarget());
                }
            }
            // remove references
            block->instructions().clear();
        }

        return !removed.empty();
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "BlockEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(BlockEliminate);

CMMC_NAMESPACE_END

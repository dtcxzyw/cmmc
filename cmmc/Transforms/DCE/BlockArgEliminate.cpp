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

// entry(int a, int b):
//     break b2(a);
// b2(int a):
//     return 0;
// ==>
// entry(int a, int b):
//     break b2();
// b2():
//     return 0;

#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cstdint>
#include <queue>

CMMC_NAMESPACE_BEGIN

class BlockArgEliminate final : public TransformPass<Function> {
    std::vector<uint32_t> tryElimiteArg(Block& block) const {
        std::unordered_set<Value*> unused;
        for(auto arg : block.args())
            unused.insert(arg);

        for(auto inst : block.instructions()) {
            for(auto operand : inst->operands()) {
                unused.erase(operand);
            }
        }

        std::vector<uint32_t> removed;
        auto& args = block.args();
        for(uint32_t idx = 0; idx < args.size(); ++idx) {
            if(unused.count(args[idx])) {
                removed.push_back(idx);
            }
        }
        for(auto it = removed.rbegin(); it != removed.rend(); ++it)
            block.removeArg(args[*it]);
        return removed;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        std::unordered_map<Block*, std::vector<uint32_t>> modified;

        for(auto block : func.blocks()) {
            if(block == func.entryBlock())
                continue;
            auto removed = tryElimiteArg(*block);
            if(!removed.empty()) {
                modified.emplace(block, std::move(removed));
            }
        }

        auto updateArgs = [&](ConditionalBranchInst* branch, BranchTarget& target) {
            const auto iter = modified.find(target.getTarget());
            if(iter == modified.cend())
                return;
            auto& removed = iter->second;
            auto args = target.getArgs();
            for(auto it = removed.rbegin(); it != removed.rend(); ++it)
                args.erase(args.cbegin() + *it);
            branch->updateTargetArgs(target, std::move(args));
        };

        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(!terminator->isBranch())
                continue;
            const auto branch = terminator->as<ConditionalBranchInst>();
            updateArgs(branch, branch->getTrueTarget());
            updateArgs(branch, branch->getFalseTarget());
        }

        return !modified.empty();
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }

    std::string_view name() const noexcept override {
        using namespace std::string_view_literals;
        return "BlockArgEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(BlockArgEliminate);

CMMC_NAMESPACE_END

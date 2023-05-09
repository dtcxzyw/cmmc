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

// replace noreturn blocks with unreachable terminator

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <queue>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class InfiniteEliminate final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& cfg = analysis.get<CFGAnalysis>(func);
        const auto& target = analysis.module().getTarget();

        std::queue<Block*> q;
        std::unordered_set<Block*> visit;

        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() == InstructionID::Ret) {
                visit.insert(block);
                q.push(block);
            }
        }

        while(!q.empty()) {
            const auto u = q.front();
            q.pop();

            for(auto pred : cfg.predecessors(u)) {
                if(visit.insert(pred).second) {
                    q.push(pred);
                }
            }
        }

        if(visit.size() == func.blocks().size())
            return false;

        bool modified = false;
        for(auto block : func.blocks()) {
            if(visit.count(block))
                continue;
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::Unreachable) {
                modified = true;
                block->instructions().pop_back();
                IRBuilder builder{ target, block };
                builder.makeOp<UnreachableInst>();
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "InfiniteEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(InfiniteEliminate);

CMMC_NAMESPACE_END

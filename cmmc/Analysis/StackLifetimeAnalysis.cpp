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

#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/StackLifetimeAnalysis.hpp>
#include <cmmc/IR/Instruction.hpp>

CMMC_NAMESPACE_BEGIN

const std::unordered_set<Value*>& StackLifetimeAnalysisResult::getUsedAllocas(const Block* block) const {
    return mUsedAllocas.at(block);
}

StackLifetimeAnalysisResult StackLifetimeAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    std::unordered_map<const Block*, std::unordered_set<Value*>> res;
    for(auto& block : func.blocks())
        res.emplace(block, std::unordered_set<Value*>{});

    auto& domTree = analysis.get<DominateAnalysis>(func);
    for(auto block : domTree.blocks()) {
        auto& allocas = res[block];
        const auto parent = domTree.parent(block);

        // inherit from parent in the dom tree
        if(parent) {
            for(auto alloca : res[parent])
                allocas.insert(alloca);
        }

        for(auto inst : block->instructions()) {
            if(inst->getInstID() == InstructionID::Alloc) {  // lifetime begin
                allocas.insert(inst);
            } else if(inst->getInstID() == InstructionID::Free) {  // lifetime end
                allocas.erase(inst->getOperand(0));
            }
        }
    }

    return StackLifetimeAnalysisResult{ res };
}

CMMC_NAMESPACE_END

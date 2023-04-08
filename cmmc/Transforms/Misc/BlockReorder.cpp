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

#include <algorithm>
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <limits>
#include <queue>
#include <set>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

static bool fullOrderRank(const Instruction* lhs, const Instruction* rhs) {
    if(lhs->getInstID() != rhs->getInstID()) {
        return lhs->getInstID() > rhs->getInstID();
    } else if(!lhs->getType()->isSame(rhs->getType())) {
        return typeid(lhs->getType()).name() < typeid(rhs->getType()).name();
        // } else if (lhs->getLabel() != rhs->getLabel()) {
        //     return lhs->getLabel() < rhs->getLabel();
    } else if(lhs->operands().size() != rhs->operands().size()) {
        return lhs->operands().size() < rhs->operands().size();
    } else {
        for(long unsigned int i = 0; i < (lhs->operands().size()); i++) {
            if(lhs->operands()[i]->getType()->isSame(rhs->operands()[i]->getType())) {
                return typeid(lhs->operands()[i]->getType()).name() < typeid(rhs->operands()[i]->getType()).name();
            }
        }
        DiagnosticsContext::get().attach<Reason>("unreproduce sort").reportFatal();
        return (size_t)lhs < (size_t)rhs;  // should not reach here
    }
}

bool reorderBlock(Function& func) {
    bool modified = false;
    for(auto& block : func.blocks()) {
        auto& blockInstructionsRaw = block->instructions();
        List<Instruction*> sortedBlock;  // store reordered block
        std::set<Value*> blockInstructionsCurrent;
        std::priority_queue<Value*, std::vector<Value*>, std::function<bool(Value*, Value*)>> instructionQueue(
            [&](Value* lhs, Value* rhs) -> bool {
                return fullOrderRank(lhs->as<Instruction>(), rhs->as<Instruction>());
            });  // auto sort instructions
        for(auto inst = blockInstructionsRaw.begin(); *inst != blockInstructionsRaw.back(); inst++) {
            if(isNoSideEffectExpr(**inst)) {
                blockInstructionsCurrent.insert(*inst);
            } else {
                while(!blockInstructionsCurrent.empty()) {
                    for(auto instCheck = blockInstructionsCurrent.begin(); instCheck != blockInstructionsCurrent.end();
                        instCheck++) {
                        bool effected = false;
                        for(auto& value : ((*instCheck)->as<Instruction>())->operands()) {
                            if(blockInstructionsCurrent.find(value) != blockInstructionsCurrent.end()) {
                                effected = true;
                            }
                        }
                        if(!effected) {
                            instructionQueue.push(*instCheck);
                        }
                    }
                    while(!instructionQueue.empty()) {
                        sortedBlock.push_back(instructionQueue.top()->as<Instruction>());
                        blockInstructionsCurrent.erase(blockInstructionsCurrent.find(instructionQueue.top()));
                        instructionQueue.pop();
                    }
                }
                sortedBlock.push_back(*inst);
            }
        }
        bool modifiedThisTime = false;
        auto instOld = blockInstructionsRaw.begin();
        for(auto instNew = sortedBlock.begin(); instNew != sortedBlock.end(); instOld++, instNew++) {
            if(*instOld != *instNew) {
                *instOld = *instNew;
                modifiedThisTime = true;
            }
        }
        modified |= modifiedThisTime;
    }
    return modified;
}

class BlockReorder final : public TransformPass<Function> {
public:
    // bool run(Function& , AnalysisPassManager&) const override {
    //     return false;
    // }
    bool run(Function& func, AnalysisPassManager&) const override {
        return reorderBlock(func);
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "BlockReorder"sv;
    }
};

CMMC_TRANSFORM_PASS(BlockReorder);

CMMC_NAMESPACE_END

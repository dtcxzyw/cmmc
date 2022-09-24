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

// int* a = alloc int;
// store a with 10;
// no user
// ==>
// int* a = alloc int;

#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class StoreEliminate final : public TransformPass<Function> {
    static bool isInvisible(Instruction* store, Block& block, const AliasAnalysisResult& aliasSet) {
        const auto addr = store->getOperand(0);
        // FIXME: too limited
        if(addr->isInstruction() && addr->as<Instruction>()->getInstID() == InstructionID::Alloc) {
            bool isAfterStore = false;
            for(auto inst : block.instructions()) {
                if(isAfterStore) {
                    for(auto operand : inst->operands())
                        if(operand->getType()->isPointer() && !aliasSet.isDistinct(addr, operand))
                            return false;
                    if(inst->getInstID() == InstructionID::Call) {
                        const auto callee = inst->operands().back();
                        if(auto func = dynamic_cast<Function*>(callee)) {
                            if(!func->attr().hasAttr(FunctionAttribute::NoMemoryRead))
                                return false;
                        } else
                            return false;
                    }
                } else if(inst == store) {
                    isAfterStore = true;
                }
            }
            return true;
        }
        return false;
    }

    static bool runOnBlock(Block& block, const AliasAnalysisResult& aliasSet) {
        auto& insts = block.instructions();
        const auto size = insts.size();
        insts.remove_if([&](Instruction* inst) {
            if(inst->getInstID() != InstructionID::Store)
                return false;
            return isInvisible(inst, block, aliasSet);
        });
        return insts.size() != size;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& aliasSet = analysis.get<AliasAnalysis>(func);
        bool modified = false;
        for(auto block : func.blocks()) {
            modified |= runOnBlock(*block, aliasSet);
        }
        return modified;
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }
};

CMMC_TRANSFORM_PASS(StoreEliminate);

CMMC_NAMESPACE_END

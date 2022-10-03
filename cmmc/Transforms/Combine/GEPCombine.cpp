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

// combine constant GEPs
// [1 x i32]* %a = getelementptr &([1 * [1 * i32]]* %x)[i32 0][i32 0];
// i32* %b = getelementptr &([[1 * i32]]* %a)[i32 0][i32 0];
// ==>
// [1 x i32]* %a = getelementptr &([1 * [1 * i32]]* %x)[i32 0][i32 0];
// i32* %b = getelementptr &([1 * [1 * i32]]* %x)[i32 0][i32 0][i32 0];

#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <queue>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class GEPCombine final : public TransformPass<Function> {
    bool runBlock(Block& block) const noexcept {
        std::unordered_set<Value*> constantGEP;
        bool modified = false;
        for(auto inst : block.instructions()) {
            if(inst->getInstID() == InstructionID::GetElementPtr) {
                bool isConstant = true;
                auto& operands = inst->operands();
                auto base = operands.back();
                for(auto operand : operands) {
                    if(operand == base)
                        break;
                    if(!operand->isConstant()) {
                        isConstant = false;
                        break;
                    }
                }

                if(isConstant) {
                    constantGEP.insert(inst);
                    if(constantGEP.count(base) && cuint_(0)(operands.front())) {
                        operands.pop_front();
                        auto baseGEP = base->as<GetElementPtrInst>();
                        const auto& prevOffsets = baseGEP->operands();
                        operands.insert(operands.begin(), prevOffsets.begin(), std::prev(prevOffsets.end()));  // insert offsets
                        operands.back() = prevOffsets.back();                                                  // replace base
                        modified = true;
                    }
                }
            }
        }

        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto block : func.blocks())
            modified |= runBlock(*block);
        return modified;
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }
};

CMMC_TRANSFORM_PASS(GEPCombine);

CMMC_NAMESPACE_END

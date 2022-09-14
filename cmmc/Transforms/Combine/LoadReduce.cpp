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

// replace load with the last loaded/stored value
// ^entry(i32* %a, i32 %b):
//     store i32* %a with i32 0
//     i32 %c = load i32* %a;
//     ret i32 %c;
// ==>
// ^entry(i32* %a, i32* %b):
//     store i32* %a with i32 0
//     i32 %c = load i32* %a;
//     ret i32 0; // replace %c with 0

#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/Analysis/FunctionAnalysis.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <queue>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class LoadAfterStoreReduce final : public TransformPass<Function> {
    bool runOnBlock(Block& block, const DistinctPointerSet& set) const {
        std::unordered_map<Value*, Value*> lastValue;
        std::unordered_map<Instruction*, Value*> replace;

        const auto update = [&](Value* addr, Value* val) {
            std::vector<Value*> outdated;
            for(auto [ptr, val] : lastValue) {
                CMMC_UNUSED(val);
                if(ptr != addr && !set.isDistinct(ptr, addr))
                    outdated.push_back(val);
            }
            for(auto key : outdated)
                lastValue.erase(key);

            lastValue[addr] = val;
        };

        for(auto inst : block.instructions()) {
            const auto addr = inst->getOperand(0);

            if(inst->getInstID() == InstructionID::Load) {
                const auto iter = lastValue.find(addr);
                if(iter != lastValue.cend())
                    replace[inst] = iter->second;
                else
                    update(addr, inst);
            } else if(inst->getInstID() == InstructionID::Store) {
                update(addr, inst->getOperand(1));
            }
        }

        bool modified = false;

        for(auto inst : block.instructions()) {
            for(auto [key, val] : replace)
                modified |= inst->replaceOperand(key, val);
        }

        return modified;
    }

public:
    bool run(Function& func) const override {
        const auto set = analysisAliases(func);

        bool modified = false;
        for(auto block : func.blocks()) {
            modified |= runOnBlock(*block, set);
        }
        return modified;
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }
};

CMMC_TRANSFORM_PASS(LoadAfterStoreReduce);

CMMC_NAMESPACE_END

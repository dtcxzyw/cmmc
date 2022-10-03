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

// TODO: handling branches:
// ^a(i1 %arg):
//     i32* %x = alloc i32;
//     cbr %arg, [^b i32* %x], [^c i32* %x];
// ^b(i32* %arg):
//     store i32* %arg with i32 1;
//     ubr [^d i32* %arg];
// ^c(i32* %arg):
//     store i32* %arg with i32 2;
//     ubr [^d i32* %arg];
// ^d(i32* %arg):
//     i32 %x = load i32* %arg;
// ==>
// ^a(i1 %arg):
//     i32* %x = alloc i32;
//     cbr %arg, [^b i32* %x], [^c i32* %x];
// ^b(i32* %arg):
//     store i32* %arg with i32 1;
//     ubr [^d i32 1];
// ^c(i32* %arg):
//     store i32* %arg with i32 2;
//     ubr [^d i32 2];
// ^d(i32 %x):
//

#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/Analysis/FunctionAnalysis.hpp>
#include <cmmc/Analysis/SimpleValueAnalysis.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <iostream>
#include <queue>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class LoadReducePayload : public LossyAnalysisPayload {
    SimpleValueAnalysis mAnalysis;

public:
    explicit LoadReducePayload(const AliasAnalysisResult& aliasSet) : mAnalysis{ aliasSet } {}

    bool run(Block& block) override {
        auto& args = block.args();
        for(auto arg : args) {
            if(!arg->getType()->isPointer())
                continue;
            if(auto root = arg->getTarget())
                mAnalysis.addAlias(arg, root);
        }
        std::unordered_map<Value*, Value*> replace;

        for(auto inst : block.instructions()) {
            if(inst->getInstID() == InstructionID::Load) {
                const auto val = mAnalysis.getLastValue(inst->getOperand(0));
                if(val)
                    replace.emplace(inst, val);
            }

            mAnalysis.next(inst);
        }

        bool modified = false;

        for(auto inst : block.instructions()) {
            for(auto [key, val] : replace)
                modified |= inst->replaceOperand(key, val);
        }

        return modified;
    }
    void merge(const LossyAnalysisPayload& rhs) override {
        mAnalysis.merge(dynamic_cast<const LoadReducePayload&>(rhs).mAnalysis);
    }
    void completeMerge() override {
        mAnalysis.completeMerge();
    }
};

class LoadReduce final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& alias = analysis.get<AliasAnalysis>(func);
        LossyAnalysisTransformDriver driver{ [&]() -> std::unique_ptr<LossyAnalysisPayload> {
            return std::make_unique<LoadReducePayload>(alias);
        } };

        if(driver.run(func)) {
            blockArgPropagation(func);  // fixup cross references
            return true;
        }
        return false;
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }
};

// FIXME: lossy reduce is not sound. test: 62_percolation.sy
// CMMC_TRANSFORM_PASS(LoadReduce);

CMMC_NAMESPACE_END

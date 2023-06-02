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

// FIXME
// func fac(int a) -> int:
// entry(int a):
//     bool c = a == 1;
//     cbr c, [b1], [b2, a];
// b1():
//     ubr [ret, 1];
// b2(int a):
//     int x = a - 1;
//     int b = call fac(x);
//     int c = b * c;
//     ubr [ret, c];
// ret(int x):
//     return x;
// ==>
// func fac(int a) -> int:
// entry(int a):
//     bool c = a == 1;
//     cbr c, [b1], [b2, a];
// b1():
//     return 1;
// b2(int a):
//     int x = a - 1;
//     int b = call fac(x);
//     int c = b * c;
//     return c;

#include <algorithm>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class SmallBlockInlining final : public TransformPass<Function> {
    static constexpr size_t sizeThreshold = 5;  // TODO: better threshold?

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::Branch)
                continue;
            const auto& target = terminator->as<BranchInst>()->getTrueTarget();
            const auto nextBlock = target;
            // Cannot inline blocks which end with branches since we don't use argumented SSA now.
            if(nextBlock->getTerminator()->isBranch())
                continue;
            if(nextBlock->instructions().size() > sizeThreshold)  // TODO: only count non-phi instructions?
                continue;
            if(hasCall(*block))
                continue;

            modified = true;
            auto& insts = block->instructions();
            insts.pop_back();

            ReplaceMap replace;
            std::vector<Instruction*> newInsts;
            for(auto& inst : nextBlock->instructions()) {
                if(inst.getInstID() == InstructionID::Phi) {
                    auto phi = inst.as<PhiInst>();
                    replace.emplace(&inst, phi->incomings().at(block)->value);
                    phi->removeSource(block);
                } else {
                    const auto newInst = inst.clone();
                    newInst->setLabel(inst.getLabel());
                    newInsts.push_back(newInst);
                    replace.emplace(&inst, newInst);
                }
            }
            replaceOperands(newInsts, replace);
            for(auto inst : newInsts)
                inst->insertBefore(block, insts.end());
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "SmallBlockInlining"sv;
    }
};

CMMC_TRANSFORM_PASS(SmallBlockInlining);

CMMC_NAMESPACE_END

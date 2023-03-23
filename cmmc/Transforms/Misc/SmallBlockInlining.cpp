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
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
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
            const auto& target = terminator->as<ConditionalBranchInst>()->getTrueTarget();
            const auto nextBlock = target.getTarget();
            if(nextBlock->instructions().size() > sizeThreshold)
                continue;
            if(hasCall(*block))
                continue;

            modified = true;
            auto& insts = block->instructions();
            insts.pop_back();

            ReplaceMap replace;
            auto& srcArgs = target.getArgs();
            auto& dstArgs = nextBlock->args();
            for(uint32_t idx = 0; idx < srcArgs.size(); ++idx) {
                replace.emplace(dstArgs[idx], srcArgs[idx]);
            }
            std::vector<Instruction*> newInsts;
            for(auto inst : nextBlock->instructions()) {
                const auto newInst = inst->clone();
                newInst->setBlock(block);
                newInst->setLabel(inst->getLabel());
                newInsts.push_back(newInst);
                replace.emplace(inst, newInst);
            }
            replaceOperands(newInsts, replace);
            insts.insert(insts.cend(), newInsts.cbegin(), newInsts.cend());
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "SmallBlockInlining"sv;
    }
};

CMMC_TRANSFORM_PASS(SmallBlockInlining);

CMMC_NAMESPACE_END

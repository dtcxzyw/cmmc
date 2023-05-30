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

// FIXME: it defeats the optimization in ArithmeticReduce.
// %1 = scmp eq a,b
// %2 = scmp neq a,b
// ->
// %1 = scmp eq a,b
// %2 = not %1

#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <functional>
#include <queue>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class CompareCombine final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& dom = analysis.get<DominateAnalysis>(func);
        bool modified = false;
        ReplaceMap replace;

        std::unordered_map<const Block*, std::unordered_map<size_t, std::vector<CompareInst*>>> compareInsts;

        for(auto block : dom.blocks()) {
            auto& insts = compareInsts[block];
            if(auto parent = dom.parent(block)) {
                insts = compareInsts.at(parent);
            }

            for(auto& inst : block->instructions()) {
                if(inst.isCompareOp()) {
                    const auto cmp = inst.as<CompareInst>();
                    const auto hash = std::hash<InstructionID>{}(cmp->getInstID()) ^ std::hash<Value*>{}(cmp->getOperand(0)) ^
                        std::hash<Value*>{}(cmp->getOperand(1));
                    auto& instList = insts[hash];
                    bool reuse = false;
                    for(auto rhs : instList) {
                        if(inst.getInstID() != rhs->getInstID())
                            continue;
                        const auto lhsOp = cmp->getOp();
                        const auto rhsOp = rhs->getOp();
                        const auto match = [&](uint32_t r0, uint32_t r1) {
                            return cmp->getOperand(0) == rhs->getOperand(r0) && cmp->getOperand(1) == rhs->getOperand(r1);
                        };
                        if((lhsOp == rhsOp && match(0, 1)) || (getReversedOp(lhsOp) == rhsOp && match(1, 0))) {
                            replace.emplace(cmp, rhs);
                            reuse = true;
                            break;
                        }
                        if((getInvertedOp(lhsOp) == rhsOp && match(0, 1)) ||
                           (getReversedOp(getInvertedOp(lhsOp)) == rhsOp && match(1, 0))) {
                            IRBuilder builder{ analysis.module().getTarget() };
                            builder.setInsertPoint(block, cmp);
                            const auto invert = builder.makeOp<BinaryInst>(InstructionID::Xor, rhs, builder.getTrue());
                            modified |= cmp->replaceWith(invert);
                            reuse = true;
                            break;
                        }
                    }
                    if(!reuse) {
                        instList.push_back(cmp);
                    } else
                        modified = true;
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "CompareCombine"sv;
    }
};

CMMC_TRANSFORM_PASS(CompareCombine);

CMMC_NAMESPACE_END

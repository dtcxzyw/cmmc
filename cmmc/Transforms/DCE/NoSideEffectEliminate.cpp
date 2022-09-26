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

// eliminate useless no-side-effect instructions
// ^entry(i32* %a, i32 %b):
//     i32 %c = load i32* %a;
//     i32 %d = add i32 %c, i32 %b;
//     ret %c;
// ==>
// ^entry(i32* %a, i32* %b):
//     i32 %c = load i32* %a;
//     ret %c;

#include <cmmc/Analysis/FunctionAnalysis.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <queue>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class NoSideEffectEliminate final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        std::unordered_set<Instruction*> used;
        std::queue<Instruction*> q;
        // collect side effect sinks (terminators/stores/funcs)

        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            used.insert(terminator);
            q.push(terminator);
        }

        for(auto block : func.blocks()) {
            for(auto inst : block->instructions()) {
                if(inst->getInstID() == InstructionID::Store) {
                    used.insert(inst);
                    q.push(inst);
                } else if(inst->getInstID() == InstructionID::Call) {
                    const auto callee = inst->getOperand(inst->operands().size() - 1);
                    if(auto func = dynamic_cast<Function*>(callee); func->attr().hasAttr(FunctionAttribute::NoSideEffect))
                        continue;
                    used.insert(inst);
                    q.push(inst);
                }
            }
        }

        // back-propagation
        while(!q.empty()) {
            const auto u = q.front();
            q.pop();
            for(auto operand : u->operands()) {
                if(operand->isInstruction()) {
                    const auto inst = operand->as<Instruction>();
                    if(used.insert(inst).second)
                        q.push(inst);
                }
            }
        }

        bool modified = false;

        for(auto block : func.blocks()) {
            auto& insts = block->instructions();
            const auto oldSize = insts.size();
            insts.remove_if([&](auto inst) { return !used.count(inst); });
            modified |= oldSize != insts.size();
        }

        return modified;
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }
};

CMMC_TRANSFORM_PASS(NoSideEffectEliminate);

CMMC_NAMESPACE_END
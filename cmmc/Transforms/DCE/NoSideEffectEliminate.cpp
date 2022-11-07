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

#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <queue>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class NoSideEffectEliminate final : public TransformPass<Function> {
    bool eliminateBlock(Block* block) const {
        std::unordered_set<Instruction*> used;
        std::queue<Instruction*> q;
        // collect side effect sinks (terminators/stores/funcs)

        for(auto inst : block->instructions()) {
            const auto instID = inst->getInstID();
            if(inst->isTerminator() || instID == InstructionID::Store || instID == InstructionID::Free) {
                used.insert(inst);
                q.push(inst);
            } else if(instID == InstructionID::Call) {
                const auto callee = inst->getOperand(inst->operands().size() - 1);
                if(auto func = dynamic_cast<Function*>(callee); func->attr().hasAttr(FunctionAttribute::NoSideEffect))
                    continue;
                used.insert(inst);
                q.push(inst);
            }
        }
        for(auto inst : block->instructions()) {
            const auto instID = inst->getInstID();
            if(instID == InstructionID::Store || instID == InstructionID::Free) {
                used.insert(inst);
                q.push(inst);
            } else if(instID == InstructionID::Call) {
                const auto callee = inst->getOperand(inst->operands().size() - 1);
                if(auto func = dynamic_cast<Function*>(callee); func->attr().hasAttr(FunctionAttribute::NoSideEffect))
                    continue;
                used.insert(inst);
                q.push(inst);
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

        auto& insts = block->instructions();
        if(insts.size() == used.size())
            return false;
        insts.remove_if([&](auto inst) { return !used.count(inst); });
        return true;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto block : func.blocks()) {
            while(eliminateBlock(block))
                modified = true;
        }

        return modified;
    }

    std::string_view name() const noexcept override {
        using namespace std::string_view_literals;
        return "NoSideEffectEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(NoSideEffectEliminate);

CMMC_NAMESPACE_END

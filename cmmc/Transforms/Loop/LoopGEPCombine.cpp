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

// i32* %a = getelementptr &([1 * i32]* %x)[i32 0][i32 %i1];
// i32 %i2 = add i32 %i1, i32 1;
// i32* %b = getelementptr &([1 * i32]* %x)[i32 0][i32 %i2];
// -->
// i32* %a = getelementptr &([1 * i32]* %x)[i32 0][i32 %i1];
// i32* %b = getelementptr &([1 * i32]* %a)[i32 1];

#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class LoopGEPCombine final : public TransformPass<Function> {
    static void runBlock(IRBuilder& builder, Block& block, ReplaceMap& replace) {
        std::unordered_map<size_t, std::vector<std::vector<Instruction*>>> continuousGEP;

        for(auto inst : block.instructions()) {
            if(inst->getInstID() != InstructionID::GetElementPtr)
                continue;
            size_t hash = 0;
            for(uint32_t idx = 0; idx < inst->operands().size(); ++idx) {
                if(idx == inst->operands().size() - 2U)
                    continue;

                hash = hash * 131 + std::hash<Value*>{}(inst->getOperand(idx));
            }
            auto& sets = continuousGEP[hash];
            bool inserted = false;
            for(auto& set : sets) {
                const auto lhs = set.front();
                if(lhs->operands().size() != inst->operands().size())
                    continue;
                bool match = true;
                for(uint32_t idx = 0; idx < inst->operands().size(); ++idx) {
                    if(idx == inst->operands().size() - 2U)
                        continue;

                    if(lhs->getOperand(idx) != inst->getOperand(idx)) {
                        match = false;
                        break;
                    }
                }
                if(match) {
                    inserted = true;
                    set.push_back(inst);
                    break;
                }
            }
            if(!inserted) {
                sets.push_back({ inst });
            }
        }

        struct OffsetPair final {
            Instruction* baseGEP;
            intmax_t offset;
        };

        std::unordered_map<Instruction*, OffsetPair> todo;

        for(auto& sets : continuousGEP) {
            for(auto& geps : sets.second) {
                std::queue<Instruction*> prevs;
                for(auto gep : geps) {
                    while(!prevs.empty()) {
                        const auto prev = prevs.front();

                        const auto prevLast = prev->getOperand(static_cast<uint32_t>(prev->operands().size() - 2));
                        const auto curLast = gep->getOperand(static_cast<uint32_t>(gep->operands().size() - 2));

                        MatchContext<Value> matchCtx{ curLast, nullptr };
                        intmax_t offset1, offset2;
                        Value *base1, *base2;
                        if(add(any(base1), int_(offset1))(matchCtx) && base1 == prevLast) {
                            todo.emplace(gep, OffsetPair{ prev, offset1 });
                            break;
                        }
                        if(add(any(base1), int_(offset1))(matchCtx) &&
                           add(any(base2), int_(offset2))(MatchContext<Value>{ prevLast, nullptr }) && base1 == base2) {
                            todo.emplace(gep, OffsetPair{ prev, offset1 - offset2 });
                            break;
                        }

                        prevs.pop();
                    }
                    prevs.push(gep);
                }
            }
        }

        if(todo.empty())
            return;

        builder.setCurrentBlock(&block);

        for(auto iter = block.instructions().begin(); iter != block.instructions().end(); ++iter) {
            const auto inst = *iter;
            const auto it = todo.find(inst);
            if(it == todo.cend())
                continue;
            builder.setInsertPoint(&block, iter);
            const auto newInst = builder.makeOp<GetElementPtrInst>(
                it->second.baseGEP, std::vector<Value*>{ ConstantInteger::get(builder.getIndexType(), it->second.offset) });
            replace.emplace(inst, newInst);
        }
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& target = analysis.module().getTarget();
        IRBuilder builder{ target };

        ReplaceMap replace;
        for(auto block : func.blocks())
            runBlock(builder, *block, replace);

        return replaceOperands(func, replace);
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopGEPCombine"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopGEPCombine);

CMMC_NAMESPACE_END

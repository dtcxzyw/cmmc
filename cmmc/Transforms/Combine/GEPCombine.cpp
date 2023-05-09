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

// combine constant GEPs
// [1 x i32]* %a = getelementptr &([1 * [1 * i32]]* %x)[i32 0][i32 0];
// i32* %b = getelementptr &([[1 * i32]]* %a)[i32 0][i32 0];
// ==>
// [1 x i32]* %a = getelementptr &([1 * [1 * i32]]* %x)[i32 0][i32 0];
// i32* %b = getelementptr &([1 * [1 * i32]]* %x)[i32 0][i32 0][i32 0];

#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <queue>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class GEPCombine final : public TransformPass<Function> {
    static void gatherBlock(Block& block, std::unordered_set<Value*>& constantGEP) {
        for(auto inst : block.instructions()) {
            if(inst->getInstID() != InstructionID::GetElementPtr)
                continue;

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

            if(!isConstant)
                continue;
            constantGEP.insert(inst);
        }
    }
    static bool runBlock(Block& block, const std::unordered_set<Value*>& constantGEP) {
        bool modified = false;
        for(auto inst : block.instructions()) {
            if(!constantGEP.count(inst))
                continue;

            const auto base = inst->operands().back();
            if(!constantGEP.count(base))
                continue;

            const auto baseGEP = base->as<GetElementPtrInst>();
            auto& operands = inst->operands();
            MatchContext<Value> matchFront{ operands.front(), nullptr };
            MatchContext<Value> matchBack{ baseGEP->getOperand(static_cast<uint32_t>(baseGEP->operands().size() - 2)), nullptr };
            if(cuint_(0)(matchFront)) {
                operands.pop_front();
                const auto& prevOffsets = baseGEP->operands();
                operands.insert(operands.begin(), prevOffsets.begin(), std::prev(prevOffsets.end()));  // insert offsets
                operands.back() = prevOffsets.back();                                                  // replace base
                modified = true;
            } else if(cuint_(0)(matchBack)) {
                const auto& prevOffsets = baseGEP->operands();
                operands.insert(operands.begin(), prevOffsets.begin(),
                                std::prev(std::prev(prevOffsets.end())));  // insert offsets
                operands.back() = prevOffsets.back();                      // replace base
                modified = true;
            } else {
                intmax_t offset1, offset2;
                if(int_(offset1)(matchFront) && int_(offset2)(matchBack)) {
                    operands.front() = ConstantInteger::get(operands.front()->getType(), offset1 + offset2);
                    const auto& prevOffsets = baseGEP->operands();
                    operands.insert(operands.begin(), prevOffsets.begin(),
                                    std::prev(std::prev(prevOffsets.end())));  // insert offsets
                    operands.back() = prevOffsets.back();                      // replace base
                    modified = true;
                }
            }
        }

        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        std::unordered_set<Value*> constantGEP;
        for(auto block : func.blocks())
            gatherBlock(*block, constantGEP);

        if(constantGEP.empty())
            return false;

        bool modified = false;
        for(auto block : func.blocks())
            modified |= runBlock(*block, constantGEP);

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "GEPCombine"sv;
    }
};

CMMC_TRANSFORM_PASS(GEPCombine);

CMMC_NAMESPACE_END

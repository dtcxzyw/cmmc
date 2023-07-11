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

#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <queue>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

static bool isEligibleAndInst(Instruction* inst) {
    for(auto operand : inst->operands())
        if(operand->getType()->as<IntegerType>()->getBitwidth() != 1)
            return false;
    return true;
}

class State {
    std::unordered_set<Value*> beingCompared{};
    std::unordered_set<Value*> unsolvedValue{};
    std::optional<Value*> rootValue{};
    Value* targetValue;

public:
    State(Value* target) : targetValue(target) {
        unsolvedValue.insert(target);
    }

    bool finished() const noexcept {
        return unsolvedValue.empty() && rootValue.has_value();
    }

    std::unordered_set<Value*>& getBeingCompared() noexcept {
        return beingCompared;
    }

    Value* getRootValue() noexcept {
        return rootValue.value();
    }

    Value* getTargetValue() noexcept {
        return targetValue;
    }

    bool visitCompare(Instruction* inst) {
        if(!unsolvedValue.erase(inst))
            return false;

        auto lhs = inst->getOperand(0);
        auto rhs = inst->getOperand(1);

        if(rootValue.has_value()) {
            if(rootValue.value() != lhs)
                return false;
        } else {
            rootValue = lhs;
        }

        beingCompared.insert(rhs);
        return true;
    }

    bool visitAnd(Instruction* inst) {
        if(!unsolvedValue.erase(inst) || !isEligibleAndInst(inst))
            return false;

        for(auto operand : inst->operands())
            unsolvedValue.insert(operand);
        return true;
    }
};

class ValueInSetCombine final : public TransformPass<Function> {
    static bool handleFinalState(State state, IRBuilder& builder, uint32_t registerLength) {
        std::vector<intmax_t> constants;
        for(auto& inst : state.getBeingCompared()) {
            if(auto constant = dynamic_cast<ConstantInteger*>(inst))
                constants.push_back(constant->getSignExtended());
            else
                return false;
        }

        intmax_t max = *std::max_element(constants.begin(), constants.end());
        intmax_t min = *std::min_element(constants.begin(), constants.end());

        uintmax_t sections = (max - min + 1 - 1) / registerLength + 1;
        if(constants.size() <= sections * 3)
            return false;

        Value* root = state.getRootValue();
        const auto& rootInt = [&](intmax_t n) { return ConstantInteger::get(root->getType()->as<IntegerType>(), n); };
        const auto& cint = [&](intmax_t n) { return ConstantInteger::get(IntegerType::get(registerLength), n); };

        Value* result = builder.getTrue();
        for(uintmax_t i = 0; i < sections; i++) {
            uintmax_t mask = 0;
            const intmax_t section_offset = min + i * registerLength;
            for(auto constant : constants)
                if(constant >= section_offset && constant < section_offset + registerLength)
                    mask |= 1ULL << (constant - section_offset);

            Instruction* fixed = builder.makeOp<BinaryInst>(InstructionID::Sub, root, rootInt(section_offset));
            if(registerLength != root->getType()->as<IntegerType>()->getBitwidth())
                fixed = builder.makeOp<CastInst>(InstructionID::SExt, IntegerType::get(registerLength), fixed);
            const auto shifted = builder.makeOp<BinaryInst>(InstructionID::Shl, cint(1), fixed);
            const auto and_ = builder.makeOp<BinaryInst>(InstructionID::And, shifted, cint(mask));
            const auto localResult = builder.makeOp<CompareInst>(InstructionID::ICmp, CompareOp::ICmpEqual, and_, cint(0));

            const auto cond = builder.makeOp<CompareInst>(InstructionID::ICmp, CompareOp::ICmpSignedGreaterEqual, root,
                                                          rootInt(section_offset));
            result = builder.makeOp<SelectInst>(cond, localResult, result);
        }

        const auto rightCond =
            builder.makeOp<CompareInst>(InstructionID::ICmp, CompareOp::ICmpSignedLessEqual, root, rootInt(max));
        result = builder.makeOp<SelectInst>(rightCond, result, builder.getTrue());

        state.getTargetValue()->as<TrackableValue>()->replaceWith(result);
        return true;
    }

    static bool runBlock(Block& block, IRBuilder& builder, uint32_t registerLength) {
        bool modified = false;
        std::optional<State> state;
        for(auto iter = block.instructions().rbegin(); iter != block.instructions().rend(); ++iter) {
            auto& inst = *iter;
            switch(inst.getInstID()) {
                case InstructionID::And:
                    if(!state.has_value() && isEligibleAndInst(&inst))
                        state = State{ &inst };
                    if(state.has_value())
                        state.value().visitAnd(&inst);
                    break;
                case InstructionID::ICmp:
                    if(state.has_value() && inst.as<CompareInst>()->getOp() == CompareOp::ICmpNotEqual)
                        state.value().visitCompare(&inst);
                    break;
                default:
                    break;
            }

            if(state.has_value() && state.value().finished()) {
                builder.setInsertPoint(inst.getBlock(), &inst);
                modified |= handleFinalState(state.value(), builder, registerLength);
                state = std::nullopt;
            }
        }
        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& target = analysis.module().getTarget();
        IRBuilder builder{ target };
        uint32_t registerLength = target.getOptHeuristic().registerLength;

        bool modified = false;
        for(auto block : func.blocks())
            modified |= runBlock(*block, builder, registerLength);

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ValueInSetCombine"sv;
    }
};

CMMC_TRANSFORM_PASS(ValueInSetCombine);

CMMC_NAMESPACE_END

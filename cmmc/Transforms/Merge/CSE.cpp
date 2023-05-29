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

// Simple Common Subexpression Extraction

#include <algorithm>
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cstdint>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

struct InstHasher final {
    size_t operator()(const Instruction* inst) const {
        size_t hashValue = std::hash<InstructionID>{}(inst->getInstID());
        for(auto operand : inst->operands())
            hashValue = hashValue * 131 + std::hash<Value*>{}(operand);
        return hashValue;
    }
};

struct InstEqual final {
    bool operator()(const Instruction* lhs, const Instruction* rhs) const {
        if(!lhs->isEqual(rhs))
            return false;
        auto lhsOperands = lhs->operands();
        auto rhsOperands = rhs->operands();
        if(lhsOperands.size() != rhsOperands.size())
            return false;
        return std::equal(lhsOperands.begin(), lhsOperands.end(), rhsOperands.begin(),
                          [](Value* lhsVal, Value* rhsVal) { return lhsVal == rhsVal; });
    }
};

class SimpleCSE final : public TransformPass<Function> {
    static void instMerge(Block* block, ReplaceMap& replace) {
        std::unordered_set<Instruction*, InstHasher, InstEqual> lut;
        std::vector<PhiInst*> phiList;
        for(auto inst : block->instructions()) {
            if(inst->getInstID() == InstructionID::Phi) {
                const auto lhs = inst->as<PhiInst>();
                bool unique = true;
                for(auto rhs : phiList) {
                    if(lhs->isEqual(rhs)) {
                        replace.emplace(lhs, rhs);
                        unique = false;
                        break;
                    }
                }
                if(unique)
                    phiList.push_back(lhs);
            } else {
                if(!isNoSideEffectExpr(*inst))
                    continue;

                if(auto [iter, res] = lut.insert(inst); !res) {
                    replace.emplace(inst, *iter);
                }
            }
        }
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        // block-level merge
        ReplaceMap replace;
        for(auto block : func.blocks()) {
            instMerge(block, replace);
        }
        return replaceOperands(func, replace);
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "SimpleCSE"sv;
    }
};

CMMC_TRANSFORM_PASS(SimpleCSE);

CMMC_NAMESPACE_END

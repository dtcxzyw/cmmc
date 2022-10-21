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

// Simple Common Subexpression Extraction

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

struct InstHasher final {
    size_t operator()(const Instruction* inst) const {
        size_t hashValue = std::hash<InstructionID>{}(inst->getInstID());
        for(auto operand : inst->operands())
            hashValue ^= std::hash<Value*>{}(operand);
        return hashValue;
    }
};

struct InstEqual final {
    bool operator()(const Instruction* lhs, const Instruction* rhs) const {
        if(lhs->getInstID() != rhs->getInstID())
            return false;
        auto& lhsOperands = lhs->operands();
        auto& rhsOperands = rhs->operands();
        return lhsOperands == rhsOperands;
    }
};

class SimpleCSE final : public TransformPass<Function> {
    bool instMerge(Block* block) const {
        std::unordered_set<Instruction*, InstHasher, InstEqual> lut;
        std::unordered_map<Value*, Value*> replace;
        for(auto inst : block->instructions()) {
            if(!inst->canbeOperand())
                continue;
            if(inst->isTerminator())
                continue;
            bool valid = true;
            switch(inst->getInstID()) {
                case InstructionID::Store:
                    [[fallthrough]];
                case InstructionID::Alloc:
                    [[fallthrough]];
                case InstructionID::Free: {
                    valid = false;
                    break;
                }
                case InstructionID::Call: {
                    const auto callee = inst->operands().back();
                    if(auto func = dynamic_cast<Function*>(callee)) {
                        auto& attr = func->attr();
                        valid = attr.hasAttr(FunctionAttribute::NoSideEffect) && attr.hasAttr(FunctionAttribute::Stateless);
                    } else {
                        valid = false;
                    }
                    break;
                }
                default:
                    break;
            }

            if(!valid)
                continue;

            if(auto [iter, res] = lut.insert(inst); !res) {
                replace.emplace(inst, *iter);
            }
        }

        return replaceOperands(*block, replace);
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        // block-level merge
        for(auto block : func.blocks()) {
            modified |= instMerge(block);
        }
        return modified;
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }

    std::string_view name() const noexcept override {
        using namespace std::string_view_literals;
        return "SimpleCSE"sv;
    }
};

CMMC_TRANSFORM_PASS(SimpleCSE);

CMMC_NAMESPACE_END

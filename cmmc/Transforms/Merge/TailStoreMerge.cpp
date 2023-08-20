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

// Merge same blocks

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <functional>
#include <iostream>
#include <unordered_map>
#include <unordered_set>

// TODO: sink stores

CMMC_NAMESPACE_BEGIN

class TailStoreMerge final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        // func.dump(std::cerr, Noop{});
        if(func.blocks().size() <= 1)
            return false;
        auto& cfg = analysis.get<CFGAnalysis>(func);
        bool modified = false;
        for(auto block : func.blocks()) {
            std::vector<std::pair<Block*, StoreInst*>> stores;
            auto& preds = cfg.predecessors(block);
            if(preds.size() < 2)
                continue;
            Value* commonBase = nullptr;
            bool valid = true;
            for(auto pred : preds) {
                if(pred == block) {
                    valid = false;
                    break;
                }
                if(pred->instructions().size() < 2) {
                    valid = false;
                    break;
                }
                const auto terminator = pred->getTerminator();
                if(terminator->getInstID() != InstructionID::Branch) {
                    valid = false;
                    break;
                }
                auto back = std::next(pred->instructions().rbegin(), 1).get();
                if(back->getInstID() != InstructionID::Store) {
                    valid = false;
                    break;
                }

                const auto store = back->as<StoreInst>();
                const auto base = store->getOperand(0);
                if(!commonBase) {
                    commonBase = base;
                } else if(commonBase != base) {
                    valid = false;
                    break;
                }
                stores.emplace_back(pred, store);
            }
            if(!valid)
                continue;

            modified = true;
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::Phi)
                    continue;
                const auto insertPoint = inst.asIterator();
                const auto ref = stores.front().second->getOperand(1)->getType();
                const auto phi = make<PhiInst>(ref);
                phi->insertBefore(block, insertPoint);
                for(auto [pred, store] : stores) {
                    const auto val = store->getOperand(1);
                    phi->addIncoming(pred, val);
                    pred->instructions().erase(store->asNode());
                }
                const auto store = make<StoreInst>(commonBase, phi);
                store->insertBefore(block, insertPoint);
                break;
            }
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "TailStoreMerge"sv;
    }
};

CMMC_TRANSFORM_PASS(TailStoreMerge);

CMMC_NAMESPACE_END

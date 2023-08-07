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
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class SmallBlockInlining final : public TransformPass<Function> {
    static constexpr size_t sizeThreshold = 5;  // TODO: better threshold?

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& cfg = analysis.get<CFGAnalysis>(func);

        bool modified = false;
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() != InstructionID::Branch)
                continue;
            if(hasCall(*block, false))
                continue;

            auto& preds = cfg.predecessors(block);
            if(preds.empty())
                continue;
            bool valid = true;
            for(auto pred : preds) {
                if(pred == block || cfg.successors(pred).size() != 1) {
                    valid = false;
                    break;
                }
            }

            if(!valid)
                continue;

            uint32_t instCount = 0;
            for(auto& inst : block->instructions()) {
                if(inst.isTerminator() || inst.getInstID() == InstructionID::Phi)
                    continue;
                ++instCount;
                if(instCount > sizeThreshold) {
                    valid = false;
                    break;
                }
            }
            if(!valid)
                continue;
            if(instCount == 0)
                continue;

            auto usedByOuterOrTerminatorOrPhi = [&](const Instruction& inst) {
                for(auto user : inst.users()) {
                    if(user->getBlock() != block)
                        return true;
                    if(user->isTerminator() || user->getInstID() == InstructionID::Phi)
                        return true;
                }
                return false;
            };

            std::unordered_map<Block*, std::unordered_map<Value*, Value*>> maps;
            std::vector<std::pair<Instruction*, PhiInst*>> newPhis;
            for(auto& inst : block->instructions()) {
                if(inst.isTerminator())
                    continue;
                if(inst.getInstID() == InstructionID::Phi) {
                    auto phi = inst.as<PhiInst>();
                    for(auto pred : preds) {
                        maps[pred].emplace(&inst, phi->incomings().at(pred)->value);
                    }
                    continue;
                }
                PhiInst* phi = nullptr;
                if(inst.canbeOperand() && usedByOuterOrTerminatorOrPhi(inst)) {
                    phi = make<PhiInst>(inst.getType());
                }
                for(auto pred : preds) {
                    const auto clonedInst = inst.clone();
                    for(auto& operand : clonedInst->mutableOperands()) {
                        if(operand->value->getBlock() == block) {
                            operand->resetValue(maps.at(pred).at(operand->value));
                        }
                    }
                    clonedInst->insertBefore(pred, std::prev(pred->instructions().end()));
                    if(phi)
                        phi->addIncoming(pred, clonedInst);
                    maps[pred].emplace(&inst, clonedInst);
                }
                if(phi) {
                    newPhis.emplace_back(&inst, phi);
                }
            }

            for(auto [inst, phi] : newPhis) {
                inst->replaceWith(phi);
                phi->insertBefore(block, std::prev(block->instructions().end()));
            }
            block->instructions().remove_if(
                [](const Instruction* inst) { return !inst->isTerminator() && inst->getInstID() != InstructionID::Phi; });
            modified = true;
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "SmallBlockInlining"sv;
    }
};

CMMC_TRANSFORM_PASS(SmallBlockInlining);

CMMC_NAMESPACE_END

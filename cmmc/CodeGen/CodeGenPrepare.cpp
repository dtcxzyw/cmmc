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

// Utils before lowering

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/CodeGen/MultiplyByConstant.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <limits>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class DuplicateGEP final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        // TODO: common base opt
        for(auto block : func.blocks()) {
            std::unordered_map<Instruction*, uint64_t> instId;
            const auto increment = std::numeric_limits<uint64_t>::max() / 2 / (block->instructions().size() + 2);
            uint64_t idx = increment;
            for(auto& inst : block->instructions()) {
                instId[&inst] = idx;
                idx += increment;
            }

            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::Load || inst.getInstID() == InstructionID::Store) {
                    const auto addr = inst.getOperand(0);
                    if(addr->isInstruction() && addr->getBlock() != block) {
                        const auto addrInst = addr->as<Instruction>();
                        if(addrInst->getInstID() != InstructionID::GetElementPtr)
                            continue;

                        bool usedByPhi = false;
                        uint64_t minId = std::numeric_limits<uint64_t>::max();
                        Instruction* firstUse = nullptr;
                        for(auto user : addrInst->users()) {
                            if(user->getBlock() == block) {
                                if(user->getInstID() == InstructionID::Phi) {
                                    usedByPhi = true;
                                    break;
                                }
                                auto id = instId.at(user);
                                if(id < minId) {
                                    minId = id;
                                    firstUse = user;
                                }
                            }
                        }

                        if(usedByPhi)
                            continue;

                        const auto dup = addrInst->clone();
                        dup->insertBefore(block, firstUse->asIterator());
                        const auto l =
                            dup->asIterator() == block->instructions().begin() ? 0 : instId.at(&*std::prev(dup->asIterator()));
                        const auto r = instId.at(firstUse);
                        instId[dup] = (l + r) / 2;
                        addrInst->replaceWithInBlock(block, dup);
                        modified = true;
                    }
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "DuplicateGEP"sv;
    }
};

CMMC_TRANSFORM_PASS(DuplicateGEP);

CMMC_NAMESPACE_END

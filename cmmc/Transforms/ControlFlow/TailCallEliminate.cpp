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

// replace tail recursions with jumps

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cmmc/Support/StringFlyWeight.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

class TailCallEliminate final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& target = analysis.module().getTarget();
        // requirement: no alloc
        // TODO: hoist allocas
        // FIXME: All allocas should be in the entry block!
        for(auto block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::Alloc) {
                    return false;
                }
            }
        }

        std::vector<Block*> redirect;
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() == InstructionID::Ret) {
                auto prev = std::next(block->instructions().rbegin());
                if(prev == block->instructions().rend()) {
                    continue;
                }

                auto& prevInst = *prev;
                if(prevInst.getInstID() != InstructionID::Call)
                    continue;
                auto callee = prevInst.operands().back();
                if(auto calleeFunc = dynamic_cast<Function*>(callee); &func == calleeFunc) {
                    auto type = calleeFunc->getType()->as<FunctionType>();
                    if((type->getRetType()->isVoid() && terminator->operands().empty()) ||
                       (!type->getRetType()->isVoid() && !terminator->operands().empty() &&
                        terminator->getOperand(0) == &prevInst)) {
                        redirect.push_back(block);
                    }
                }
            }
        }
        if(redirect.empty())
            return false;

        IRBuilder builder{ target };
        auto entry = func.entryBlock();

        // add dummy entry
        std::vector<PhiInst*> phis;
        ReplaceMap replace;

        {
            auto newEntry = make<Block>(&func);
            newEntry->setLabel(String::get("dummy_entry"));
            func.blocks().push_front(newEntry);
            builder.setCurrentBlock(newEntry);
            builder.makeOp<BranchInst>(entry);
            builder.setInsertPoint(entry, entry->instructions().begin());
            phis.reserve(func.args().size());
            for(auto arg : func.args()) {
                const auto phi = builder.createPhi(arg->getType());
                phi->addIncoming(newEntry, arg);
                phis.push_back(phi);
                replace.emplace(arg, phi);
            }
        }

        for(auto block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                if(block == entry && inst.getInstID() == InstructionID::Phi)
                    continue;
                applyReplace(&inst, replace);
            }
        }

        for(auto block : redirect) {
            removeInst(block->instructions().back());
            auto callInst = block->instructions().back();
            uint32_t idx = 0;
            for(auto operand : callInst->operands()) {
                if(idx < phis.size()) {
                    phis[idx]->addIncoming(block, operand);
                    ++idx;
                }
            }
            removeInst(callInst);
            builder.setCurrentBlock(block);
            builder.makeOp<BranchInst>(entry);
        }

        return true;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "TailCallEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(TailCallEliminate);

CMMC_NAMESPACE_END

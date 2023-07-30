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

#include <algorithm>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iostream>
#include <queue>
#include <string_view>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class ShrinkWrapping final : public TransformPass<Function> {
    static Function* cloneFunc(Function& func) {
        auto newFunc = make<Function>(String::get(std::string(func.getSymbol().prefix()) + "_inline_wrapped"),
                                      func.getType()->as<FunctionType>());
        newFunc->setLinkage(Linkage::Internal);

        std::unordered_map<Value*, Value*> replaceMap;
        std::unordered_map<Block*, Block*> blockMap;

        for(auto arg : func.args())
            replaceMap.emplace(arg, newFunc->addArg(arg->getType()));

        for(auto block : func.blocks()) {
            auto newBlock = block->clone(replaceMap, false);
            newBlock->setFunction(newFunc);
            newFunc->blocks().push_back(newBlock);
            blockMap.emplace(block, newBlock);
        }

        for(auto [k, v] : replaceMap) {
            auto tracked = k->as<TrackableValue>();
            auto& users = tracked->users();
            for(auto it = users.begin(); it != users.end();) {
                auto next = std::next(it);
                if(it.ref()->user->getBlock()->getFunction() != &func) {
                    it.ref()->resetValue(v);
                }
                it = next;
            }
        }

        for(auto block : newFunc->blocks()) {
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::Phi) {
                    auto phi = inst.as<PhiInst>();
                    std::vector<std::pair<Block*, Block*>> rep;
                    for(auto& [k, v] : phi->incomings()) {
                        CMMC_UNUSED(k);
                        rep.emplace_back(k, blockMap.at(k));
                    }
                    for(auto [k, v] : rep)
                        phi->replaceSource(k, v);
                } else
                    break;
            }

            auto terminator = block->getTerminator();
            if(terminator->isBranch()) {
                auto branchInst = terminator->as<BranchInst>();
                auto& trueTarget = branchInst->getTrueTarget();
                auto& falseTarget = branchInst->getFalseTarget();
                trueTarget = blockMap.at(trueTarget);
                if(falseTarget)
                    falseTarget = blockMap.at(falseTarget);
            }
        }

        return newFunc;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        if(func.attr().hasAttr(FunctionAttribute::NoRecurse))
            return false;
        if(!func.isUsed())
            return false;
        if(func.entryBlock()->instructions().front()->getInstID() == InstructionID::Alloc)
            return false;

        auto terminator = func.entryBlock()->getTerminator();
        if(terminator->getInstID() == InstructionID::ConditionalBranch) {
            const auto branch = terminator->as<BranchInst>();
            if(branch->getTrueTarget()->getTerminator()->getInstID() != InstructionID::Ret &&
               branch->getFalseTarget()->getTerminator()->getInstID() != InstructionID::Ret)
                return false;
        }

        constexpr uint32_t codeSizeThreshold = 256;
        uint32_t bodySize = 0;
        for(auto block : func.blocks()) {
            bodySize += static_cast<uint32_t>(block->instructions().size());
        }
        uint32_t size = bodySize;
        for(auto block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::Call) {
                    if(inst.lastOperand() == &func) {
                        size += bodySize;
                        if(size > codeSizeThreshold)
                            return false;
                    } else
                        return false;
                }
            }
        }

        auto newFunc = cloneFunc(func);
        analysis.module().add(newFunc);

        for(auto it = func.users().begin(); it != func.users().end();) {
            auto next = std::next(it);
            auto user = it.ref()->user;
            if(user->getBlock()->getFunction() == &func) {
                it.ref()->resetValue(newFunc);
            }
            it = next;
        }

        newFunc->attr().addAttr(FunctionAttribute::NoRecurse);

        return true;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ShrinkWrapping"sv;
    }
};

CMMC_TRANSFORM_PASS(ShrinkWrapping);

CMMC_NAMESPACE_END

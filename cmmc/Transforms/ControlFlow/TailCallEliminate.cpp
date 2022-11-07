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
#include <iostream>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

class TailCallEliminate final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        // requirement: no alloc
        // TODO: hoist allocas
        for(auto block : func.blocks()) {
            for(auto inst : block->instructions()) {
                if(inst->getInstID() == InstructionID::Alloc) {
                    return false;
                }
            }
        }

        std::vector<Block*> redirect;
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() == InstructionID::Ret) {
                auto prev = std::next(block->instructions().crbegin());
                if(prev == block->instructions().crend()) {
                    continue;
                }

                auto prevInst = *prev;
                if(prevInst->getInstID() != InstructionID::Call)
                    continue;
                auto callee = prevInst->operands().back();
                if(auto calleeFunc = dynamic_cast<Function*>(callee); &func == calleeFunc) {
                    auto type = calleeFunc->getType()->as<FunctionType>();
                    if((type->getRetType()->isVoid() && terminator->operands().empty()) ||
                       (!type->getRetType()->isVoid() && !terminator->operands().empty() &&
                        terminator->getOperand(0) == prevInst)) {
                        redirect.push_back(block);
                    }
                }
            }
        }
        if(redirect.empty())
            return false;

        IRBuilder builder;
        auto entry = func.entryBlock();

        // add dummy entry
        {
            auto newEntry = make<Block>(&func);
            Vector<Value*> args;
            args.reserve(func.entryBlock()->args().size());
            for(auto arg : func.entryBlock()->args())
                args.push_back(newEntry->addArg(arg->getType()));

            newEntry->setLabel(String::get("dummy_entry"));
            func.blocks().push_front(newEntry);
            builder.setCurrentBlock(newEntry);
            builder.makeOp<ConditionalBranchInst>(BranchTarget{ entry, std::move(args) });
        }

        for(auto block : redirect) {
            removeInst(block->instructions().back());
            auto callInst = block->instructions().back();
            Vector<Value*> operands{ callInst->operands().cbegin(), std::prev(callInst->operands().cend()) };
            removeInst(callInst);
            builder.setCurrentBlock(block);
            builder.makeOp<ConditionalBranchInst>(BranchTarget{ entry, std::move(operands) });
        }

        return true;
    }

    std::string_view name() const noexcept override {
        using namespace std::string_view_literals;
        return "TailCallEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(TailCallEliminate);

CMMC_NAMESPACE_END

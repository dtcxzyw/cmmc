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

#include <cmmc/IR/Attachments.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cstdint>
#include <queue>

CMMC_NAMESPACE_BEGIN

void blockArgPropagation(Function& func) {
    auto& blocks = func.blocks();

    struct BlockArgPropagationContext final {
        std::unordered_set<Value*> req;  // instructions/block arguments
        std::vector<Instruction*> todo;
    };

    std::unordered_map<Block*, BlockArgPropagationContext> ctx;

    // bottom-up
    for(auto block : blocks) {
        auto& data = ctx[block];
        for(auto inst : block->instructions()) {
            bool isInvalid = false;
            for(auto operand : inst->operands()) {
                if(auto operandBlock = operand->getBlock()) {
                    if(operandBlock != block) {
                        data.req.emplace(operand);
                        isInvalid = true;
                    }
                }
            }
            if(isInvalid)
                data.todo.push_back(inst);
        }
    }

    while(true) {
        bool modified = false;

        for(auto iter = blocks.crbegin(); iter != blocks.crend(); ++iter) {
            auto block = *iter;
            auto terminator = block->getTerminator();
            if(!terminator->isBranch())
                continue;

            auto& dst = ctx[block].req;

            const auto inst = terminator->as<ConditionalBranchInst>();
            const auto propagation = [&](BranchTarget& target) {
                auto targetBlock = target.getTarget();
                if(!targetBlock)
                    return;

                for(auto ref : ctx[targetBlock].req) {
                    if(ref->getBlock() != block)
                        modified |= dst.insert(ref).second;
                }
            };

            propagation(inst->getTrueTarget());
            propagation(inst->getFalseTarget());
        }

        if(!modified)
            break;
    }

    // per-block
    for(auto block : blocks) {
        // append arguments
        auto& blockCtx = ctx[block];
        auto& req = blockCtx.req;
        if(block == blocks.front() && !req.empty()) {
            DiagnosticsContext::get()
                .attach<Reason>("Bad dominator tree")
                .attach<FuncAttachment>("func", &func)
                .attach<CFGAttachment>("func CFG", &func)
                .attach<ValueAttachment>("example", *req.cbegin())
                .reportFatal();
        }

        ReplaceMap map;
        for(auto val : req)
            map[val] = block->addArg(val->getType());

        // fix branch arguments
        if(auto terminator = block->getTerminator(); terminator->isBranch()) {
            const auto inst = terminator->as<ConditionalBranchInst>();
            const auto propagation = [&](BranchTarget& target) {
                auto targetBlock = target.getTarget();
                if(!targetBlock)
                    return;

                auto& targetReq = ctx[targetBlock].req;
                if(targetReq.empty())
                    return;
                auto args = target.getArgs();
                for(auto val : targetReq) {
                    assert(val->getBlock() == block || map.count(val));
                    const auto operand = val->getBlock() == block ? val : map.at(val);
                    args.push_back(operand);
                }
                inst->updateTargetArgs(target, std::move(args));
            };

            propagation(inst->getTrueTarget());
            propagation(inst->getFalseTarget());
        }

        // replace operands
        replaceOperands(blockCtx.todo, map);
    }
}

CMMC_NAMESPACE_END

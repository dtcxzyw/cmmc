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

#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cstdint>
#include <queue>

CMMC_NAMESPACE_BEGIN

bool LossyAnalysisTransformDriver::run(Function& func) const {
    struct BlockContext final {
        std::vector<Block*> successors;
        std::unique_ptr<LossyAnalysisPayload> payload;
        uint32_t degree = 0;
    };
    std::unordered_map<Block*, BlockContext> blockCtx;

    auto addTarget = [&](BlockContext& self, BranchTarget& target) {
        if(auto targetBlock = target.getTarget()) {
            self.successors.push_back(targetBlock);
            auto& ctx = blockCtx[targetBlock];
            ++ctx.degree;
        }
    };

    for(auto block : func.blocks()) {
        auto& ctx = blockCtx[block];
        ctx.payload = mBuilder();

        const auto terminator = block->getTerminator();
        if(terminator->isBranch()) {
            const auto branch = terminator->as<ConditionalBranchInst>();
            addTarget(ctx, branch->getTrueTarget());
            addTarget(ctx, branch->getFalseTarget());
        }
    }

    std::queue<Block*> q;
    std::unordered_set<Block*> frontier;
    q.push(func.entryBlock());
    frontier.insert(func.entryBlock());
    std::unordered_set<Block*> solved;

    bool modified = false;
    auto runBlock = [&](Block* block) {
        auto& ctx = blockCtx[block];
        if(ctx.degree == 0) {
            ctx.payload->completeMerge();
        } else {
            ctx.payload = mBuilder();  // invalidate incomplete information
        }
        modified |= ctx.payload->run(*block);
        solved.insert(block);
        frontier.erase(block);

        for(auto successor : ctx.successors) {
            if(solved.count(successor))
                continue;
            auto& sctx = blockCtx[successor];
            sctx.payload->merge(*ctx.payload);
            --sctx.degree;
            if(sctx.degree == 0)
                q.push(successor);
            frontier.insert(successor);
        }

        blockCtx.erase(block);
    };

    while(true) {
        // topology sort
        while(!q.empty()) {
            const auto u = q.front();
            q.pop();
            runBlock(u);
        }

        if(solved.size() == func.blocks().size())
            break;

        // break one cycle
        if(frontier.empty())
            break;  // unreachable
        runBlock(*frontier.begin());
    }

    return modified;
}

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
            auto& err = reportError();
            err << "required arguments:" << std::endl;
            for(auto val : req) {
                val->dump(err);
                err << std::endl;
            }
            err << "func:" << std::endl;
            func.dump(err);
            err << "CFG: " << std::endl;
            func.dumpCFG(err);
            reportFatal("cannot change arguments of the entry block");
        }

        std::unordered_map<Value*, Value*> map;
        for(auto val : req)
            map[val] = block->addArg(val);

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
                    const auto operand = val->getBlock() == block ? val : map.find(val)->second;
                    args.push_back(operand);
                }
                inst->updateTargetArgs(target, std::move(args));
            };

            propagation(inst->getTrueTarget());
            propagation(inst->getFalseTarget());
        }

        // replace operands
        for(auto inst : blockCtx.todo) {
            for(auto [src, dst] : map)
                inst->replaceOperand(src, dst);
        }
    }
}

CMMC_NAMESPACE_END

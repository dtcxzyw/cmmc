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

// entry(int a, int b):
//     break b2(a);
// b2(int a):
//     return 0;
// ==>
// entry(int a, int b):
//     break b2();
// b2():
//     return 0;

// cycles
// entry(int a, int b):
//     break b2(a);
// b2(int a):
//     cbr false, b2(a), exit(0);
// exit(int x):
//     return x;
// ==>
// entry(int a, int b):
//     break b2();
// b2():
//     cbr false, b2(), exit(0);
// exit(int x):
//     return x;

#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cstdint>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class BlockArgEliminate final : public TransformPass<Function> {
    // Remove unused block arguments
    void applyRemoval(Function& func, std::unordered_map<Block*, std::vector<uint32_t>>& modified) const {
        for(auto& [block, removed] : modified) {
            auto& args = block->args();
            assert(std::is_sorted(removed.begin(), removed.end()));
            for(auto it = removed.rbegin(); it != removed.rend(); ++it)
                block->removeArg(args[*it]);
        }

        auto updateArgs = [&](ConditionalBranchInst* branch, BranchTarget& target) {
            const auto iter = modified.find(target.getTarget());
            if(iter == modified.cend())
                return;
            auto& removed = iter->second;
            auto args = target.getArgs();
            assert(std::is_sorted(removed.begin(), removed.end()));
            for(auto it = removed.rbegin(); it != removed.rend(); ++it)
                args.erase(args.cbegin() + *it);
            branch->updateTargetArgs(target, std::move(args));
        };

        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(!terminator->isBranch())
                continue;
            const auto branch = terminator->as<ConditionalBranchInst>();
            updateArgs(branch, branch->getTrueTarget());
            updateArgs(branch, branch->getFalseTarget());
        }
    }

    std::vector<uint32_t> tryElimiteArg(Block& block) const {
        std::unordered_set<Value*> unused;
        for(auto arg : block.args())
            unused.insert(arg);

        for(auto inst : block.instructions()) {
            for(auto operand : inst->operands()) {
                unused.erase(operand);
            }
        }

        std::vector<uint32_t> removed;
        auto& args = block.args();
        for(uint32_t idx = 0; idx < args.size(); ++idx) {
            if(unused.count(args[idx])) {
                removed.push_back(idx);
            }
        }
        return removed;
    }

    bool runIntra(Function& func) const {
        std::unordered_map<Block*, std::vector<uint32_t>> modified;

        for(auto block : func.blocks()) {
            if(block == func.entryBlock())
                continue;
            auto removed = tryElimiteArg(*block);
            if(!removed.empty()) {
                modified.emplace(block, std::move(removed));
            }
        }

        applyRemoval(func, modified);
        return !modified.empty();
    }

    // TODO: improve eliminate performance
    static constexpr uint32_t maxDepth = 32;

    bool tryEliminateArgPath(BlockArgument* arg, std::unordered_map<Block*, bool>& visit,
                             std::unordered_set<BlockArgument*>& interested, uint32_t depth) const {
        if(depth > maxDepth)
            return false;

        if(!interested.count(arg))
            return false;

        if(visit[arg->getBlock()])
            return true;

        const auto terminator = arg->getBlock()->getTerminator();
        if(terminator->isBranch()) {
            assert(!visit[arg->getBlock()]);
            visit[arg->getBlock()] = true;
            const auto branch = terminator->as<ConditionalBranchInst>();
            const auto handleTarget = [&](const BranchTarget& target) {
                if(!target.getTarget())
                    return true;
                for(uint32_t idx = 0; idx < target.getArgs().size(); ++idx) {
                    if(target.getArgs()[idx] == arg) {
                        if(!tryEliminateArgPath(target.getTarget()->getArg(idx), visit, interested, depth + 1)) {
                            return false;
                        }
                    }
                }
                return true;
            };

            const auto& trueTarget = branch->getTrueTarget();
            const auto& falseTarget = branch->getFalseTarget();
            bool ret = handleTarget(trueTarget) && handleTarget(falseTarget);
            visit[arg->getBlock()] = false;
            return ret;
        }

        return true;
    }

    bool runInter(Function& func) const {
        std::unordered_map<Block*, bool> visit;
        std::unordered_set<BlockArgument*> interested;

        for(auto block : func.blocks()) {
            if(block == func.entryBlock())
                continue;

            for(auto arg : block->args()) {
                bool used = false;
                for(auto inst : block->instructions()) {
                    if(inst->isBranch()) {
                        if(inst->getInstID() == InstructionID::ConditionalBranch && inst->getOperand(0) == arg) {
                            used = true;
                            break;
                        }
                        continue;
                    }
                    if(inst->hasOperand(arg)) {
                        used = true;
                        break;
                    }
                }
                if(!used)
                    interested.insert(arg);
            }
        }

        std::unordered_set<BlockArgument*> removeList;

        for(auto arg : interested)
            if(tryEliminateArgPath(arg, visit, interested, 0))
                removeList.insert(arg);

        bool isModified = false;
        std::unordered_map<Block*, std::vector<uint32_t>> modified;
        for(auto block : func.blocks()) {
            if(block == func.entryBlock())
                continue;

            auto& removed = modified[block];
            auto& args = block->args();
            for(uint32_t idx = 0; idx < args.size(); ++idx) {
                const auto arg = args[idx];
                if(removeList.count(arg))
                    removed.push_back(idx);
            }

            if(!removed.empty())
                isModified = true;
        }

        applyRemoval(func, modified);
        return isModified;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        // intra-block arg eliminate
        bool modified = runIntra(func);
        // inter-block arg eliminate
        modified |= runInter(func);
        return modified;
    }

    PassType type() const noexcept override {
        return PassType::SideEffectEquality;
    }

    std::string_view name() const noexcept override {
        using namespace std::string_view_literals;
        return "BlockArgEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(BlockArgEliminate);

CMMC_NAMESPACE_END

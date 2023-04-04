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

// Remove a SCC without side-effects

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Graph.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cstdint>
#include <iostream>
#include <limits>
#include <queue>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class SCCEliminate final : public TransformPass<Function> {
    static bool hasSideEffect(Block& block) {
        for(auto inst : block.instructions()) {
            if(inst->getInstID() == InstructionID::Store)
                return true;
            if(inst->getInstID() == InstructionID::Call) {
                const auto callee = inst->operands().back()->as<Function>();
                if(!callee->attr().hasAttr(FunctionAttribute::NoSideEffect))
                    return true;
            }
        }
        return false;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& cfg = analysis.get<CFGAnalysis>(func);

        std::vector<Block*> blocks{ func.blocks().cbegin(), func.blocks().cend() };
        std::unordered_map<Block*, NodeIndex> nodeMap;
        NodeIndex idx = 0;
        for(; idx < blocks.size(); ++idx)
            nodeMap[blocks[idx]] = idx;
        const auto unreachableNode = idx++;
        const auto retNode = idx++;
        Graph graph(idx);
        for(idx = 0; idx < blocks.size(); ++idx) {
            const auto u = blocks[idx];
            const auto terminator = u->getTerminator();
            if(terminator->isBranch()) {
                const auto branch = terminator->as<BranchInst>();

                applyForSuccessors(branch, [&](Block* v) {
                    if(u != v)
                        graph[idx].push_back(nodeMap.at(v));
                });
            } else if(terminator->getInstID() == InstructionID::Ret) {
                graph[idx].push_back(retNode);
            } else {
                graph[idx].push_back(unreachableNode);
            }
        }

        auto [ccnt, cols] = calcSCC(graph);

        std::vector<std::vector<NodeIndex>> groups(ccnt);
        for(idx = 0; idx < blocks.size(); ++idx) {
            groups[cols[idx]].push_back(idx);
        }
        // (color, exitNode, commonRetValue)
        std::vector<std::tuple<NodeIndex, NodeIndex, Value*, Block*>> unusedSCC;
        for(NodeIndex cu = 0; cu < ccnt; ++cu) {
            if(groups[cu].size() == 1) {
                const auto block = blocks[groups[cu].front()];
                if(!block->getTerminator()->isBranch())
                    continue;
                const auto branch = block->getTerminator()->as<BranchInst>();
                if(branch->getTrueTarget() != block && branch->getFalseTarget() != block)
                    continue;
            }

            constexpr auto undef = std::numeric_limits<NodeIndex>::max();
            auto exitNode = undef;
            bool uniqueExit = true;
            for(auto u : groups[cu]) {
                for(auto v : graph[u]) {
                    const auto cv = cols[v];
                    if(cu == cv)
                        continue;

                    if(exitNode == undef) {
                        exitNode = v;
                    } else if(exitNode != v) {
                        uniqueExit = false;
                        break;
                    }
                }
                if(!uniqueExit)
                    break;
            }

            bool noSideEffect = true;
            for(auto u : groups[cu]) {
                const auto block = blocks[u];
                if(block == func.entryBlock()) {
                    noSideEffect = false;
                    break;
                }
                if(hasSideEffect(*block)) {
                    noSideEffect = false;
                    break;
                }
            }

            if(exitNode != undef && uniqueExit && noSideEffect) {
                bool valid = true;
                Value* commonRetValue = nullptr;
                Block* refBlock = nullptr;
                if(exitNode == retNode) {
                    if(!func.getType()->as<FunctionType>()->getRetType()->isVoid()) {
                        // check return values
                        Value* value = nullptr;

                        std::unordered_set<Block*> groupSet;
                        for(auto u : groups[cu]) {
                            const auto block = blocks[u];
                            groupSet.insert(block);
                            if(block->getTerminator()->getInstID() == InstructionID::Ret) {
                                const auto retVal = block->getTerminator()->getOperand(0);
                                if(value == nullptr)
                                    value = retVal;
                                else if(value != retVal) {
                                    valid = false;
                                    break;
                                }
                            }
                        }
                        commonRetValue = value;
                        if(commonRetValue && groupSet.count(commonRetValue->getBlock())) {
                            valid = false;
                        }
                    }
                } else if(exitNode != unreachableNode) {
                    // unique exiting block
                    // check phi nodes
                    const auto exitBlock = blocks[exitNode];
                    if(exitBlock->instructions().front()->getInstID() == InstructionID::Phi) {
                        std::vector<Block*> preds;
                        for(auto pred : cfg.predecessors(exitBlock)) {
                            if(cols[nodeMap.at(pred)] == cu) {
                                preds.push_back(pred);
                            }
                        }
                        assert(!preds.empty());
                        for(idx = 1; idx < preds.size(); ++idx) {
                            if(!hasSamePhiValue(exitBlock, preds[idx - 1], preds[idx])) {
                                valid = false;
                                break;
                            }
                        }
                        refBlock = preds.front();
                    }
                }
                if(!valid)
                    continue;
                unusedSCC.emplace_back(cu, exitNode, commonRetValue, refBlock);
            }
        }

        // TODO: reorder unusedSCC?

        bool modified = false;
        for(auto [col, exitNode, commonRetValue, refBlock] : unusedSCC) {
            const auto& group = groups[col];

            /*
            for(auto u : groups[col]) {
                const auto block = blocks[u];
                block->dumpAsTarget(std::cerr);
            }
            std::cerr << '\n';
            */

            if(exitNode == unreachableNode) {
                for(auto u : group) {
                    const auto block = blocks[u];
                    block->instructions().clear();
                    const auto unreachableInst = make<UnreachableInst>();
                    unreachableInst->setBlock(block);
                    block->instructions().push_back(unreachableInst);
                }
                modified = true;
            } else if(exitNode == retNode) {
                const auto retVoid = func.getType()->as<FunctionType>()->getRetType()->isVoid();
                for(auto u : group) {
                    const auto block = blocks[u];
                    block->instructions().clear();
                    const auto retInst = retVoid ? make<ReturnInst>() : make<ReturnInst>(commonRetValue);
                    retInst->setBlock(block);
                    block->instructions().push_back(retInst);
                }
                modified = true;
            } else {
                std::unordered_set<Block*> groupSet;
                for(auto u : groups[col]) {
                    const auto block = blocks[u];
                    groupSet.insert(block);
                }

                if([&, colors = &cols, color = col] {
                       for(idx = 0; idx < blocks.size(); ++idx) {
                           if((*colors)[idx] != color) {
                               const auto block = blocks[idx];
                               for(auto inst : block->instructions()) {
                                   for(auto operand : inst->operands()) {
                                       if(const auto dep = operand->getBlock(); groupSet.count(dep)) {
                                           return true;
                                       }
                                   }
                               }
                           }
                       }
                       return false;
                   }())
                    continue;

                const auto exitBlock = blocks[exitNode];
                const auto hasPhiNodes = exitBlock->instructions().front()->getInstID() == InstructionID::Phi;
                for(auto u : group) {
                    const auto block = blocks[u];
                    if(block->instructions().size() == 1 && block->getTerminator()->getInstID() == InstructionID::Branch) {
                        const auto branch = block->getTerminator()->as<BranchInst>();
                        if(branch->getTrueTarget() == exitBlock) {
                            continue;
                        }
                    }
                    block->instructions().clear();
                    const auto branchInst = make<BranchInst>(exitBlock);
                    branchInst->setBlock(block);
                    block->instructions().push_back(branchInst);
                    if(hasPhiNodes) {
                        if(exitBlock->instructions().front()->as<PhiInst>()->incomings().count(block))
                            continue;
                        copyTarget(exitBlock, refBlock, block);
                        modified = true;
                    }
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "SCCEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(SCCEliminate);

CMMC_NAMESPACE_END

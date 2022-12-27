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

#include <algorithm>
#include <cmmc/Analysis/BlockArgumentAnalysis.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Graph.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <ostream>
#include <queue>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

struct Condition final {
    Value* cond;
    bool value;

    bool operator==(const Condition& rhs) const {
        return cond == rhs.cond && value == rhs.value;
    }
};

struct ConditionSet final {
    std::unordered_set<Value*> trueSet;
    std::unordered_set<Value*> falseSet;
    bool empty = true;

    void merge(const ConditionSet& rhs, const Condition& cond) {
        if(empty) {
            trueSet = rhs.trueSet;
            falseSet = rhs.falseSet;
            if(cond.cond)
                (cond.value ? trueSet : falseSet).insert(cond.cond);
            empty = false;
            return;
        }

        {
            std::vector<Value*> outdated;
            for(auto val : trueSet)
                if(!rhs.trueSet.count(val) && !(cond.value && val == cond.cond))
                    outdated.push_back(val);
            for(auto val : outdated)
                trueSet.erase(val);
        }
        {
            std::vector<Value*> outdated;
            for(auto val : falseSet)
                if(!rhs.falseSet.count(val) && !(!cond.value && val == cond.cond))
                    outdated.push_back(val);
            for(auto val : outdated)
                falseSet.erase(val);
        }
    }

    void finalize() {
        std::vector<Value*> outdated;
        for(auto val : trueSet)
            if(falseSet.count(val))
                outdated.push_back(val);

        for(auto val : outdated) {
            trueSet.erase(val);
            falseSet.erase(val);
        }
    }

    void dump(std::ostream& out, Block* block) {
        block->dumpAsTarget(out);
        out << ":\nT:";
        for(auto val : trueSet) {
            out << ' ';
            val->dumpAsOperand(out);
        }
        out << "\nF:";
        for(auto val : falseSet) {
            out << ' ';
            val->dumpAsOperand(out);
        }
        out << '\n';
    }
};

class ConditionalPropagation final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& cfg = analysis.get<CFGAnalysis>(func);
        const auto& blockArgMap = analysis.get<BlockArgumentAnalysis>(func);

        std::vector<Block*> blocks{ func.blocks().cbegin(), func.blocks().cend() };
        std::unordered_map<Block*, NodeIndex> nodeMap;
        for(NodeIndex idx = 0; idx < blocks.size(); ++idx)
            nodeMap[blocks[idx]] = idx;
        Graph graph{ blocks.size() };
        for(NodeIndex idx = 0; idx < blocks.size(); ++idx) {
            const auto block = blocks[idx];
            for(auto& [next, nextTarget] : cfg.successors(block)) {
                CMMC_UNUSED(nextTarget);
                graph[idx].push_back(nodeMap[next]);
            }
        }

        const auto [ccnt, col] = calcSCC(graph);

        std::vector<std::unordered_set<NodeIndex>> dag(ccnt);
        std::vector<NodeIndex> indegree(ccnt);

        for(NodeIndex u = 0; u < blocks.size(); ++u) {
            const auto cu = col[u];
            for(auto v : graph[u]) {
                const auto cv = col[v];
                if(cu == cv)
                    continue;
                if(dag[cu].insert(cv).second)
                    ++indegree[cv];
            }
        }

        std::vector<std::unordered_map<NodeIndex, std::vector<Condition>>> edges(ccnt);

        for(NodeIndex u = 0; u < blocks.size(); ++u) {
            const auto cu = col[u];
            const auto bu = blocks[u];
            for(auto& [next, nextTarget] : cfg.successors(bu)) {
                const auto v = nodeMap.at(next);
                const auto cv = col[v];
                if(cu == cv)
                    continue;

                const auto terminator = bu->getTerminator()->as<ConditionalBranchInst>();
                auto& e = edges[cu][cv];

                if(terminator->getInstID() == InstructionID::ConditionalBranch) {
                    const auto cond = blockArgMap.queryRoot(terminator->getOperand(0));
                    e.push_back({ cond, nextTarget == &terminator->getTrueTarget() });
                } else {
                    e.push_back({ nullptr, false });
                }
            }
        }

        std::queue<NodeIndex> q;
        for(NodeIndex idx = 0; idx < ccnt; ++idx)
            if(indegree[idx] == 0)
                q.push(idx);

        std::vector<ConditionSet> color(ccnt);
        while(!q.empty()) {
            const auto u = q.front();
            q.pop();
            auto& su = color[u];
            su.finalize();
            auto& es = edges[u];
            for(auto v : dag[u]) {
                Condition edgeCond{ nullptr, false };
                if(const auto iter = es.find(v); iter != es.cend()) {
                    const auto cond = iter->second.front();
                    if(cond.cond && std::all_of(iter->second.cbegin(), iter->second.cend(), [&](const Condition& rhs) {
                           return cond == rhs;
                       })) {
                        edgeCond = cond;
                    }
                }

                auto& sv = color[v];
                sv.merge(su, edgeCond);

                if(--indegree[v] == 0) {
                    q.push(v);
                }
            }
        }

        bool modified = false;

        for(auto block : func.blocks()) {
            auto& set = color[col[nodeMap.at(block)]];
            ReplaceMap replace;
            for(auto arg : block->args()) {
                if(arg->getType()->isBoolean()) {
                    const auto root = blockArgMap.queryRoot(arg);
                    if(set.trueSet.count(root)) {
                        replace.emplace(arg, ConstantInteger::getTrue());
                    } else if(set.falseSet.count(root)) {
                        replace.emplace(arg, ConstantInteger::getFalse());
                    }
                }
            }

            modified |= replaceOperands(*block, replace);
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ConditionalPropagation"sv;
    }
};

CMMC_TRANSFORM_PASS(ConditionalPropagation);

CMMC_NAMESPACE_END

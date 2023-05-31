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

// Remove redundant cycles of phi functions
/*
Reference:
Braun, M., Buchwald, S., Hack, S., Leißa, R., Mallon, C., Zwinkau, A. (2013).
Simple and Efficient Construction of Static Single Assignment Form.
In: Jhala, R., De Bosschere, K. (eds) Compiler Construction. CC 2013. Lecture Notes in Computer Science, vol 7791. Springer,
Berlin, Heidelberg. https://doi.org/10.1007/978-3-642-37051-9_6
*/

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Graph.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iostream>
#include <limits>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class PhiEliminate final : public TransformPass<Function> {
    static std::vector<std::unordered_set<Value*>> calcSubgraphSCC(const std::unordered_set<Value*>& set) {
        uint32_t idx = 0;
        std::unordered_map<Value*, uint32_t> idxMap;
        Graph graph;
        auto getNode = [&](Value* u) {
            if(auto iter = idxMap.find(u); iter != idxMap.cend())
                return iter->second;
            const auto id = idx++;
            idxMap[u] = id;
            while(graph.size() <= id)
                graph.push_back({});
            return id;
        };
        auto addEdge = [&](Value* u, Value* v) {
            auto ui = getNode(u);
            auto vi = getNode(v);
            graph[ui].push_back(vi);
        };

        for(auto inst : set) {
            auto phi = inst->as<PhiInst>();
            for(auto [pred, val] : phi->incomings()) {
                CMMC_UNUSED(pred);
                addEdge(phi, val->value);
            }
        }

        const auto n = idx;
        std::vector<Value*> invMap(n);
        for(auto [k, v] : idxMap)
            invMap[v] = k;

        auto [ccnt, col] = calcSCC(graph);
        std::vector<std::unordered_set<Value*>> groups(ccnt);
        for(uint32_t i = 0; i < n; ++i)
            groups[col[i]].insert(invMap[i]);
        return groups;
    }

    static bool removeRedundantPhis(const std::unordered_set<Value*>& scc) {
        if(scc.empty())
            return false;
        auto groups = calcSubgraphSCC(scc);
        bool modified = false;
        // in topological order
        for(auto iter = groups.rbegin(); iter != groups.rend(); ++iter)
            modified |= processSCC(*iter);
        return modified;
    }

    static bool processSCC(const std::unordered_set<Value*>& scc) {
        if(scc.size() == 1)  // trivial phi func/outer inst
            return false;

        std::unordered_set<Value*> inner;
        std::unordered_set<Value*> outerOps;
        for(auto phi : scc) {
            const auto phiInst = phi->as<PhiInst>();
            bool isInner = true;
            for(auto [pred, val] : phiInst->incomings()) {
                CMMC_UNUSED(pred);
                if(!scc.count(val->value)) {
                    isInner = false;
                    outerOps.insert(val->value);
                }
            }
            if(isInner)
                inner.insert(phi);
        }

        if(outerOps.size() == 1) {
            const auto rep = *outerOps.begin();
            for(auto val : scc) {
                val->as<Instruction>()->replaceWith(rep);
            }
            return true;
        } else if(outerOps.size() > 1) {
            return removeRedundantPhis(inner);
        }
        return false;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        std::unordered_set<Value*> phis;
        for(auto block : func.blocks())
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::Phi) {
                    phis.insert(&inst);
                } else
                    break;
            }

        return removeRedundantPhis(phis);
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "PhiEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(PhiEliminate);

CMMC_NAMESPACE_END

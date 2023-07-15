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

#include "cmmc/Support/Diagnostics.hpp"
#include "cmmc/Support/StaticReflection.hpp"
#include <algorithm>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Graph.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <optional>
#include <ostream>
#include <queue>
#include <string_view>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

struct VarPair final {
    Value *v1, *v2;

    VarPair(Value* vp1, Value* vp2) : v1{ vp1 }, v2{ vp2 } {
        assert(vp1 < vp2);
    }

    bool operator==(const VarPair& rhs) const {
        return v1 == rhs.v1 && v2 == rhs.v2;
    }
};

struct VarPairHasher final {
    size_t operator()(const VarPair& vp) const {
        return std::hash<Value*>{}(vp.v1) ^ std::hash<Value*>{}(vp.v2);
    }
};

enum class KnownRelation { Unknown, True, False };

struct KnownRelations final {
    KnownRelation equal = KnownRelation::Unknown;
    KnownRelation lessThan = KnownRelation::Unknown;     // signed
    KnownRelation greaterThan = KnownRelation::Unknown;  // signed

    bool operator==(const KnownRelations& rhs) const {
        return equal == rhs.equal && lessThan == rhs.lessThan && greaterThan == rhs.greaterThan;
    }

    void update(const KnownRelations& rhs) {
        if(rhs.equal != KnownRelation::Unknown && equal != rhs.equal) {
            assert(equal == KnownRelation::Unknown);
            equal = rhs.equal;
        }
        if(rhs.lessThan != KnownRelation::Unknown && lessThan != rhs.lessThan) {
            assert(lessThan == KnownRelation::Unknown);
            lessThan = rhs.lessThan;
        }
        if(rhs.greaterThan != KnownRelation::Unknown && greaterThan != rhs.greaterThan) {
            assert(greaterThan == KnownRelation::Unknown);
            greaterThan = rhs.greaterThan;
        }
    }
    void merge(const KnownRelations& rhs) {
        if(equal != rhs.equal)
            equal = KnownRelation::Unknown;
        if(lessThan != rhs.lessThan)
            lessThan = KnownRelation::Unknown;
        if(greaterThan != rhs.greaterThan)
            greaterThan = KnownRelation::Unknown;
    }
    void localInfer() {
        if(equal == KnownRelation::True) {
            lessThan = KnownRelation::False;
            greaterThan = KnownRelation::False;
        }
        if(lessThan == KnownRelation::False && greaterThan == KnownRelation::False)
            equal = KnownRelation::True;

        if(equal == KnownRelation::False && lessThan == KnownRelation::False)
            greaterThan = KnownRelation::True;
        if(equal == KnownRelation::False && greaterThan == KnownRelation::False)
            lessThan = KnownRelation::True;
        if(lessThan == KnownRelation::False && greaterThan == KnownRelation::False)
            equal = KnownRelation::True;
    }
};

class ConstraintReduce final : public TransformPass<Function> {
    using CondSet = std::unordered_map<VarPair, KnownRelations, VarPairHasher>;
    static CondSet mergeSets(std::vector<CondSet> sets) {
        if(sets.empty())
            return {};
        CondSet res = std::move(sets[0]);

        for(uint32_t idx = 1; idx < sets.size(); ++idx) {
            auto& set = sets[idx];
            for(auto& [pair, relations] : set) {
                if(res.count(pair))
                    res[pair].merge(relations);
            }
            std::vector<VarPair> toRemove;
            for(auto& [pair, relations] : res)
                if(!set.count(pair)) {
                    toRemove.push_back(pair);
                }
            for(auto& pair : toRemove)
                res.erase(pair);
        }
        for(auto& [pair, relations] : res)
            relations.localInfer();
        // TODO: transitive relation?
        return res;
    }

    static void addEdge(std::unordered_map<Value*, bool>& edges, Value* cond, bool val) {
        if(!edges.emplace(cond, val).second)
            return;

        MatchContext<Value> matchCtx{ cond };
        Value *v1, *v2;
        if(xor_(any(v1), cint_(1))(matchCtx)) {
            addEdge(edges, v1, !val);
        }

        if(val && and_(any(v1), any(v2))(matchCtx)) {
            addEdge(edges, v1, true);
            if(v1 != v2)
                addEdge(edges, v2, true);
        }

        if(!val && or_(any(v1), any(v2))(matchCtx)) {
            addEdge(edges, v1, false);
            addEdge(edges, v2, false);
        }
    }

    static std::string_view relName(KnownRelation rel) {
        switch(rel) {
            case KnownRelation::Unknown:
                return "unknown";
            case KnownRelation::True:
                return "true";
            case KnownRelation::False:
                return "false";
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }

    [[maybe_unused]] static void dumpSystem(const std::unordered_map<Block*, CondSet>& conditions) {
        for(auto& [block, set] : conditions) {
            std::cerr << "block ";
            block->dumpAsTarget(std::cerr);
            std::cerr << '\n';
            for(auto& [pair, rel] : set) {
                std::cerr << '[';
                pair.v1->dumpAsOperand(std::cerr);
                std::cerr << " , ";
                pair.v2->dumpAsOperand(std::cerr);
                std::cerr << ']';

                std::cerr << relName(rel.equal) << ' ' << relName(rel.lessThan) << ' ' << relName(rel.greaterThan) << '\n';
            }
        }
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& cfg = analysis.get<CFGAnalysis>(func);

        std::unordered_map<Block*, std::unordered_map<Block*, std::unordered_map<Value*, bool>>> edges;

        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() == InstructionID::ConditionalBranch) {
                const auto branch = terminator->as<BranchInst>();
                const auto cond = terminator->getOperand(0);
                if(cond->isConstant())
                    continue;

                const auto trueTarget = branch->getTrueTarget();
                const auto falseTarget = branch->getFalseTarget();

                if(trueTarget == falseTarget)
                    continue;

                addEdge(edges[trueTarget][block], cond, true);
                addEdge(edges[falseTarget][block], cond, false);
            }
        }
        if(edges.empty())
            return false;

        auto addToSet = [](CondSet& set, Value* lhs, Value* rhs, KnownRelations relations) {
            if(lhs == rhs)
                return;
            if(lhs > rhs) {
                std::swap(lhs, rhs);
                std::swap(relations.lessThan, relations.greaterThan);
            }
            auto& ref = set[VarPair{ lhs, rhs }];
            ref.update(relations);
            ref.localInfer();
        };

        std::unordered_map<Block*, CondSet> conditions;
        std::unordered_map<Block*, std::unordered_map<Block*, CondSet>> edgeSets;
        std::unordered_set<Block*> inQueue;
        constexpr uint32_t maxEnqueueCount = 30;
        std::unordered_map<Block*, uint32_t> enqueueCount;
        std::queue<Block*> q;

        auto updateBlock = [&](Block* block) {
            for(auto succ : cfg.successors(block))
                if(inQueue.insert(succ).second && ++enqueueCount[succ] < maxEnqueueCount)
                    q.push(succ);
        };

        const auto trueVal = ConstantInteger::getTrue();
        const auto falseVal = ConstantInteger::getFalse();
        for(auto block : func.blocks()) {
            auto& edgeSet = edgeSets[block];
            for(auto& [src, edge] : edges[block]) {
                auto& set = edgeSet[src];
                for(auto [cond, val] : edge) {
                    addToSet(
                        set, cond, trueVal,
                        { val ? KnownRelation::True : KnownRelation::False, KnownRelation::Unknown, KnownRelation::Unknown });
                    Value *v1, *v2;
                    CompareOp cmp;
                    if(icmp(cmp, any(v1), any(v2))(MatchContext<Value>(cond))) {
                        if(!val)
                            cmp = getInvertedOp(cmp);
                        switch(cmp) {
                            case CompareOp::ICmpEqual:
                                addToSet(set, v1, v2, { KnownRelation::True, KnownRelation::False, KnownRelation::False });
                                break;
                            case CompareOp::ICmpNotEqual:
                                addToSet(set, v1, v2, { KnownRelation::False, KnownRelation::Unknown, KnownRelation::Unknown });
                                break;
                            case CompareOp::ICmpSignedLessThan:
                                addToSet(set, v1, v2, { KnownRelation::False, KnownRelation::True, KnownRelation::False });
                                break;
                            case CompareOp::ICmpSignedLessEqual:
                                addToSet(set, v1, v2, { KnownRelation::Unknown, KnownRelation::Unknown, KnownRelation::False });
                                break;
                            case CompareOp::ICmpSignedGreaterThan:
                                addToSet(set, v1, v2, { KnownRelation::False, KnownRelation::False, KnownRelation::True });
                                break;
                            case CompareOp::ICmpSignedGreaterEqual:
                                addToSet(set, v1, v2, { KnownRelation::Unknown, KnownRelation::False, KnownRelation::Unknown });
                                break;
                            default:
                                break;
                        }
                    }
                }
            }

            q.push(block);
        }

        // dumpSystem(conditions);

        while(!q.empty()) {
            const auto u = q.front();
            inQueue.erase(u);
            q.pop();

            auto& preds = cfg.predecessors(u);
            auto& dst = conditions[u];
            if(preds.size() == 1 && preds.front() != u) {
                auto oldDst = dst;
                for(auto& [pair, rel] : conditions[preds.front()]) {
                    addToSet(dst, pair.v1, pair.v2, rel);
                }
                for(auto& [pair, rel] : edgeSets[u][preds.front()]) {
                    addToSet(dst, pair.v1, pair.v2, rel);
                }
                if(oldDst != dst) {
                    updateBlock(u);
                }
            } else {
                std::vector<CondSet> sets;
                sets.reserve(preds.size());
                auto& edge = edgeSets[u];
                for(auto pred : preds) {
                    auto set = conditions[pred];
                    for(auto& [pair, rel] : edge[pred])
                        addToSet(set, pair.v1, pair.v2, rel);
                    sets.push_back(std::move(set));
                }
                auto newDst = mergeSets(std::move(sets));
                if(newDst != dst) {
                    dst.swap(newDst);
                    updateBlock(u);
                }
            }
        }

        auto solveCmp = [](Value* v1, Value* v2, CompareOp op, const CondSet& set) -> std::optional<bool> {
            if(v1 == v2) {
                switch(op) {
                    case CompareOp::ICmpEqual:
                        return true;
                    case CompareOp::ICmpNotEqual:
                        return false;
                    case CompareOp::ICmpSignedLessThan:
                        return false;
                    case CompareOp::ICmpSignedLessEqual:
                        return true;
                    case CompareOp::ICmpSignedGreaterThan:
                        return false;
                    case CompareOp::ICmpSignedGreaterEqual:
                        return true;
                    default:
                        return std::nullopt;
                }
            }
            if(v1 > v2) {
                std::swap(v1, v2);
                op = getReversedOp(op);
            }

            const auto it = set.find(VarPair{ v1, v2 });
            if(it != set.end()) {
                auto& rel = it->second;
                switch(op) {
                    case CompareOp::ICmpEqual:
                        if(rel.equal != KnownRelation::Unknown)
                            return rel.equal == KnownRelation::True;
                        break;
                    case CompareOp::ICmpNotEqual:
                        if(rel.equal != KnownRelation::Unknown)
                            return rel.equal == KnownRelation::False;
                        break;
                    case CompareOp::ICmpSignedLessThan:
                        if(rel.lessThan != KnownRelation::Unknown)
                            return rel.lessThan == KnownRelation::True;
                        break;
                    case CompareOp::ICmpSignedLessEqual:
                        if(rel.greaterThan != KnownRelation::Unknown)
                            return rel.greaterThan == KnownRelation::False;
                        break;
                    case CompareOp::ICmpSignedGreaterThan:
                        if(rel.greaterThan != KnownRelation::Unknown)
                            return rel.greaterThan == KnownRelation::True;
                        break;
                    case CompareOp::ICmpSignedGreaterEqual:
                        if(rel.lessThan != KnownRelation::Unknown)
                            return rel.lessThan == KnownRelation::False;
                        break;
                    default:
                        break;
                }
            }

            return std::nullopt;
        };

        // dumpSystem(conditions);

        auto solve = [&](Value* val, const CondSet& set) -> std::optional<bool> {
            if(auto res = solveCmp(val, trueVal, CompareOp::ICmpEqual, set); res.has_value())
                return res;
            CompareOp cmp;
            Value *v1, *v2;
            if(icmp(cmp, any(v1), any(v2))(MatchContext<Value>{ val })) {
                return solveCmp(v1, v2, cmp, set);
            }

            return std::nullopt;
        };

        bool modified = false;
        for(auto block : func.blocks()) {
            auto& ctx = conditions[block];
            for(auto& inst : block->instructions()) {
                if(inst.getType()->isBoolean()) {
                    if(auto res = solve(&inst, ctx); res.has_value()) {
                        modified = true;
                        inst.replaceWith(*res ? trueVal : falseVal);
                    }
                }

                for(auto& op : inst.mutableOperands()) {
                    if(op->value->getType()->isBoolean() && !op->value->isConstant()) {
                        if(auto res = solve(op->value, ctx); res.has_value()) {
                            modified = true;
                            op->resetValue(*res ? trueVal : falseVal);
                        }
                    }
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ConstraintReduce"sv;
    }
};

CMMC_TRANSFORM_PASS(ConstraintReduce);

CMMC_NAMESPACE_END

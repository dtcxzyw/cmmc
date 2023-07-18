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
#include <atomic>
#include <bitset>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
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
#include <variant>
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

    bool update(const KnownRelations& rhs) {
        auto old = *this;
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
        return !(old == *this);
    }
    void merge(const KnownRelations& rhs) {
        if(equal != rhs.equal)
            equal = KnownRelation::Unknown;
        if(lessThan != rhs.lessThan)
            lessThan = KnownRelation::Unknown;
        if(greaterThan != rhs.greaterThan)
            greaterThan = KnownRelation::Unknown;
    }
    bool localInfer() {
        auto old = *this;
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
        return !(old == *this);
    }
};

class ConstraintReduce final : public TransformPass<Function> {
    using CondSet = std::unordered_map<VarPair, KnownRelations, VarPairHasher>;

    static constexpr uint32_t maxSystemSize = 512;
    using Matrix = std::array<std::array<uint8_t, maxSystemSize>, maxSystemSize>;
    static constexpr uint8_t equalLUT[3][3] = { { 0, 0, 0 }, { 0, 1, 2 }, { 0, 2, 0 } };
    static constexpr uint8_t lessThanLUT[3][3] = { { 0, 0, 0 }, { 0, 1, 2 }, { 0, 2, 2 } };

    // TODO: conflict -> unreachable block
    static bool calcTransitiveClosure(CondSet& set) {
        std::vector<Value*> values;
        for(auto& [pair, relations] : set) {
            values.push_back(pair.v1);
            values.push_back(pair.v2);
        }
        std::sort(values.begin(), values.end());
        values.erase(std::unique(values.begin(), values.end()), values.end());

        if(values.size() <= 2)
            return false;
        if(values.size() > maxSystemSize)
            return false;

        const auto getValueIdx = [&values](Value* v) -> uint32_t {
            return static_cast<uint32_t>(std::distance(values.begin(), std::lower_bound(values.begin(), values.end(), v)));
        };

        bool newInfo = false;
        auto floyd = [&](Matrix& mat, auto transitionMat) {
            while(true) {
                bool modified = false;
                for(uint32_t k = 0; k < values.size(); ++k)
                    for(uint32_t i = 0; i < values.size(); ++i) {
                        if(!mat[i][k])
                            continue;
                        for(uint32_t j = 0; j < values.size(); ++j) {
                            const auto val = transitionMat(mat[i][k], mat[k][j]);
                            if(mat[i][j] < val) {
                                mat[i][j] = val;
                                modified = true;
                            }
                        }
                    }
                if(!modified)
                    break;
                newInfo = true;
            }
        };

        Matrix eqMat{};  // 1 -> i == j 2 -> i != j
        for(uint32_t i = 0; i < values.size(); ++i) {
            eqMat[i][i] = 1;
        }
        for(auto& [pair, relations] : set) {
            const auto i = getValueIdx(pair.v1);
            const auto j = getValueIdx(pair.v2);
            if(relations.equal == KnownRelation::True)
                eqMat[i][j] = eqMat[j][i] = 1;
            else if(relations.equal == KnownRelation::False)
                eqMat[i][j] = eqMat[j][i] = 2;
        }
        floyd(eqMat, [](uint8_t v1, uint8_t v2) { return equalLUT[v1][v2]; });

        Matrix ltMat{};  // 1 -> i <= j 2 -> i < j
        for(uint32_t i = 0; i < values.size(); ++i) {
            ltMat[i][i] = 1;
        }
        for(auto& [pair, relations] : set) {
            const auto i = getValueIdx(pair.v1);
            const auto j = getValueIdx(pair.v2);
            if(relations.lessThan == KnownRelation::True)
                ltMat[i][j] = 2;
            else if(relations.greaterThan == KnownRelation::False)
                ltMat[i][j] = 1;
            if(relations.greaterThan == KnownRelation::True)
                ltMat[j][i] = 2;
            else if(relations.lessThan == KnownRelation::False)
                ltMat[j][i] = 1;
        }
        for(uint32_t i = 0; i < values.size(); ++i) {
            if(values[i]->getType()->isBoolean())
                continue;
            if(auto lhs = dynamic_cast<ConstantInteger*>(values[i])) {
                for(uint32_t j = i + 1; j < values.size(); ++j) {
                    if(values[j]->getType()->isBoolean())
                        continue;
                    if(auto rhs = dynamic_cast<ConstantInteger*>(values[j])) {
                        if(lhs->getSignExtended() <= rhs->getSignExtended())
                            ltMat[i][j] = 1;
                        if(lhs->getSignExtended() >= rhs->getSignExtended())
                            ltMat[j][i] = 1;
                        if(lhs->getSignExtended() < rhs->getSignExtended())
                            ltMat[i][j] = 2;
                        if(lhs->getSignExtended() > rhs->getSignExtended())
                            ltMat[j][i] = 2;
                    }
                }
            }
        }
        floyd(ltMat, [&](uint8_t v1, uint8_t v2) { return lessThanLUT[v1][v2]; });

        if(!newInfo)
            return false;

        bool changed = false;
        for(size_t i = 0; i < values.size(); i++)
            for(size_t j = i + 1; j < values.size(); j++) {
                if(eqMat[i][j] || ltMat[i][j]) {
                    VarPair pair{ values[i], values[j] };
                    KnownRelations relations{};
                    if(eqMat[i][j] == 1 || eqMat[j][i] == 1)
                        relations.equal = KnownRelation::True;
                    else if(eqMat[i][j] == 2 || eqMat[j][i] == 2)
                        relations.equal = KnownRelation::False;
                    if(ltMat[i][j] == 2)
                        relations.lessThan = KnownRelation::True;
                    else if(ltMat[j][i] == 1)
                        relations.greaterThan = KnownRelation::False;
                    if(ltMat[j][i] == 2)
                        relations.greaterThan = KnownRelation::True;
                    else if(ltMat[i][j] == 1)
                        relations.greaterThan = KnownRelation::False;

                    changed |= set[pair].update(relations);
                    changed |= set[pair].localInfer();
                }
            }
        return changed;
    }

    static CondSet mergeSets(Block* curBlock, const std::unordered_map<Block*, CondSet>& sets,
                             const DominateAnalysisResult& dom) {
        if(sets.empty())
            return {};

        // FIXME
        auto getCommonAncestor = [&]() -> Block* {
            Block* ancestor = nullptr;
            for(auto& [block, set] : sets) {
                if(!dom.reachable(block))
                    return nullptr;
                if(ancestor == nullptr) {
                    ancestor = block;
                } else {
                    ancestor = dom.lca(ancestor, block);
                }
            }
            if(curBlock != ancestor && dom.dominate(ancestor, curBlock)) {
                for(auto& [block, set] : sets) {
                    if(ancestor != block && !dom.dominate(curBlock, block))
                        return nullptr;
                }
                return ancestor;
            }
            return nullptr;
        };

        const auto commonAncestor = getCommonAncestor();
        const auto commonAncestorSet = sets.count(commonAncestor) ? &sets.at(commonAncestor) : nullptr;
        const CondSet* minimal = commonAncestorSet;
        if(!commonAncestorSet) {
            for(auto& [block, set] : sets)
                if(!minimal || set.size() < minimal->size())
                    minimal = &set;
        }
        CondSet res = *minimal;

        std::vector<VarPair> toRemove;
        for(auto& [block, set] : sets) {
            if(&set == minimal)
                continue;
            for(auto& [pair, relations] : set) {
                if(res.count(pair))
                    res[pair].merge(relations);
            }
            if(!commonAncestorSet) {
                toRemove.clear();
                for(auto& [pair, relations] : res)
                    if(!set.count(pair)) {
                        toRemove.push_back(pair);
                    }
                for(auto& pair : toRemove)
                    res.erase(pair);
            }
        }
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
        auto& dom = analysis.get<DominateAnalysis>(func);

        std::unordered_map<Block*, std::unordered_map<Block*, std::unordered_map<Value*, bool>>> edges;
        std::unordered_map<Block*, CondSet> conditions;
        auto addToSet = [](CondSet& set, Value* lhs, Value* rhs, KnownRelations relations) {
            if(lhs == rhs)
                return false;
            if(lhs > rhs) {
                std::swap(lhs, rhs);
                std::swap(relations.lessThan, relations.greaterThan);
            }
            auto& ref = set[VarPair{ lhs, rhs }];
            bool modified = ref.update(relations);
            modified |= ref.localInfer();
            return modified;
        };

        for(auto block : func.blocks()) {
            auto& condSet = conditions[block];
            for(auto& inst : block->instructions()) {
                switch(inst.getInstID()) {
                    case InstructionID::ConditionalBranch: {
                        const auto branch = inst.as<BranchInst>();
                        const auto cond = inst.getOperand(0);
                        if(cond->isConstant())
                            break;

                        const auto trueTarget = branch->getTrueTarget();
                        const auto falseTarget = branch->getFalseTarget();

                        if(trueTarget == falseTarget)
                            break;

                        addEdge(edges[trueTarget][block], cond, true);
                        addEdge(edges[falseTarget][block], cond, false);
                        break;
                    }
                    case InstructionID::SMin: {
                        addToSet(condSet, &inst, inst.getOperand(0),
                                 { KnownRelation::Unknown, KnownRelation::Unknown, KnownRelation::False });
                        addToSet(condSet, &inst, inst.getOperand(1),
                                 { KnownRelation::Unknown, KnownRelation::Unknown, KnownRelation::False });
                        break;
                    }
                    case InstructionID::SMax: {
                        addToSet(condSet, &inst, inst.getOperand(0),
                                 { KnownRelation::Unknown, KnownRelation::False, KnownRelation::Unknown });
                        addToSet(condSet, &inst, inst.getOperand(1),
                                 { KnownRelation::Unknown, KnownRelation::False, KnownRelation::Unknown });
                        break;
                    }
                    default:
                        break;
                }
            }
        }

        std::unordered_map<Block*, std::unordered_map<Block*, CondSet>> edgeSets;
        std::unordered_set<Block*> inQueue;
        constexpr uint32_t maxEnqueueCount = 60;
        std::unordered_map<Block*, uint32_t> enqueueCount;
        std::queue<Block*> q;

        auto updateEdgeSet = [&](const CondSet& src, CondSet& dst) {
            bool modified = false;
            for(auto [pair, rel] : src) {
                modified |= addToSet(dst, pair.v1, pair.v2, rel);
            }
            return modified;
        };

        auto updateBlock = [&](Block* block) {
            auto& src = conditions[block];
            if(src.empty())
                return;
            for(auto succ : cfg.successors(block)) {
                if(updateEdgeSet(src, edgeSets[succ][block]) && inQueue.insert(succ).second &&
                   ++enqueueCount[succ] < maxEnqueueCount)
                    q.push(succ);
            }
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

            if(inQueue.insert(block).second)
                q.push(block);
            updateBlock(block);
        }

        while(!q.empty()) {
            const auto u = q.front();
            inQueue.erase(u);
            q.pop();

            auto& preds = cfg.predecessors(u);
            auto& dst = conditions[u];
            if(preds.size() == 1 && preds.front() != u) {
                bool modified = false;
                for(auto& [pair, rel] : edgeSets[u][preds.front()]) {
                    modified |= addToSet(dst, pair.v1, pair.v2, rel);
                }
                modified |= calcTransitiveClosure(dst);
                if(modified)
                    updateBlock(u);
            } else {
                auto& edge = edgeSets[u];
                for(auto pred : preds)
                    edge[pred];  // touch
                auto newDst = mergeSets(u, edge, dom);
                for(auto& [pair, rel] : dst)
                    addToSet(newDst, pair.v1, pair.v2, rel);
                for(auto& [pair, relations] : newDst)
                    relations.localInfer();
                calcTransitiveClosure(newDst);
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

        auto solveAtomic = [&](Value* val, const CondSet& set) -> std::optional<bool> {
            if(auto res = solveCmp(val, trueVal, CompareOp::ICmpEqual, set); res.has_value())
                return res;
            CompareOp cmp;
            Value *v1, *v2;
            if(icmp(cmp, any(v1), any(v2))(MatchContext<Value>{ val })) {
                return solveCmp(v1, v2, cmp, set);
            }

            return std::nullopt;
        };

        using ValueMap = std::unordered_map<Value*, uint32_t>;

        auto infer = [&](Value* val, const CondSet& set) -> std::optional<bool> {
            MatchContext<Value> matchCtx{ val };
            uintmax_t i1;
            if(uint_(i1)(matchCtx))
                return i1 != 0;
            return solveAtomic(val, set);
        };
        auto explore = [&](Value* val, const CondSet& set, ValueMap& valueMap, uint32_t depth, auto self) {
            if(valueMap.count(val))
                return;
            if(auto res = infer(val, set); res.has_value())
                return;
            if(depth) {
                MatchContext<Value> matchCtx{ val };
                Value *v1, *v2;
                if(and_(any(v1), any(v2))(matchCtx)) {
                    self(v1, set, valueMap, depth - 1, self);
                    self(v2, set, valueMap, depth - 1, self);
                    return;
                }
                if(or_(any(v1), any(v2))(matchCtx)) {
                    self(v1, set, valueMap, depth - 1, self);
                    self(v2, set, valueMap, depth - 1, self);
                    return;
                }
                if(xor_(any(v1), any(v2))(matchCtx)) {
                    self(v1, set, valueMap, depth - 1, self);
                    self(v2, set, valueMap, depth - 1, self);
                    return;
                }
            }

            const auto id = static_cast<uint32_t>(valueMap.size());
            valueMap.emplace(val, id);
            return;
        };
        auto checkAssign = [&](Value* val, const ValueMap& map, uint32_t assignment, const CondSet& set, auto self) -> bool {
            if(auto it = map.find(val); it != map.cend()) {
                return assignment & (1U << it->second);
            }
            if(auto res = infer(val, set); res.has_value())
                return *res;

            MatchContext<Value> matchCtx{ val };
            Value *v1, *v2;
            if(and_(any(v1), any(v2))(matchCtx)) {
                return self(v1, map, assignment, set, self) && self(v2, map, assignment, set, self);
            }
            if(or_(any(v1), any(v2))(matchCtx)) {
                return self(v1, map, assignment, set, self) || self(v2, map, assignment, set, self);
            }
            if(xor_(any(v1), any(v2))(matchCtx)) {
                return self(v1, map, assignment, set, self) ^ self(v2, map, assignment, set, self);
            }
            reportUnreachable(CMMC_LOCATION());
        };
        auto isValidCmp = [](CompareOp op1, CompareOp op2) {
            switch(op1) {
                case CompareOp::ICmpEqual:
                    return op2 != CompareOp::ICmpNotEqual && op2 != CompareOp::ICmpSignedLessThan &&
                        op2 != CompareOp::ICmpSignedGreaterThan && op2 != CompareOp::ICmpUnsignedLessThan &&
                        op2 != CompareOp::ICmpUnsignedGreaterThan;
                case CompareOp::ICmpNotEqual:
                    return op2 != CompareOp::ICmpEqual;
                case CompareOp::ICmpSignedLessThan:
                    return op2 != CompareOp::ICmpEqual && op2 != CompareOp::ICmpSignedGreaterThan &&
                        op2 != CompareOp::ICmpSignedGreaterEqual;
                case CompareOp::ICmpSignedLessEqual:
                    return op2 != CompareOp::ICmpSignedGreaterThan;
                case CompareOp::ICmpSignedGreaterThan:
                    return op2 != CompareOp::ICmpEqual && op2 != CompareOp::ICmpSignedLessThan &&
                        op2 != CompareOp::ICmpSignedLessEqual;
                case CompareOp::ICmpSignedGreaterEqual:
                    return op2 != CompareOp::ICmpSignedLessThan;
                default:
                    return true;
            }
        };
        auto isValidAssignment = [&](uint32_t assignment, const ValueMap& map) -> bool {
            for(auto x = map.begin(); x != map.end(); ++x) {
                CompareOp cmp1, cmp2;
                Value *v1, *v2;
                if(icmp(cmp1, any(v1), any(v2))(MatchContext{ x->first })) {
                    if(!(assignment & (1U << x->second)))
                        cmp1 = getInvertedOp(cmp1);
                    for(auto y = std::next(x); y != map.end(); ++y) {
                        if(icmp(cmp2, exactly(v1), exactly(v2))(MatchContext{ y->first })) {
                            if(!(assignment & (1U << y->second)))
                                cmp2 = getInvertedOp(cmp2);
                            if(!isValidCmp(cmp1, cmp2))
                                return false;
                        }
                    }
                }
            }
            return true;
        };
        auto solveSatisfy = [&](Value* val, const ValueMap& map, const CondSet& set) -> std::optional<bool> {
            bool hasFalse = false;
            bool hasTrue = false;

            const auto end = 1U << map.size();
            for(uint32_t assignment = 0; assignment < end; ++assignment) {
                if(!isValidAssignment(assignment, map))
                    continue;
                // std::cerr << "Assign " << assignment << " -> ";
                if(checkAssign(val, map, assignment, set, checkAssign)) {
                    hasTrue = true;
                    // std::cerr << "true\n";
                } else {
                    hasFalse = true;
                    // std::cerr << "false\n";
                }
                if(hasTrue && hasFalse)
                    return std::nullopt;
            }

            if(hasTrue && !hasFalse)
                return true;
            if(hasFalse && !hasTrue)
                return false;
            return std::nullopt;
        };
        auto solve = [&](Value* val, const CondSet& set) -> std::optional<bool> {
            // std::cerr << "Checking ";
            // val->dumpAsOperand(std::cerr);
            // std::cerr << '\n';

            if(auto res = solveAtomic(val, set); res.has_value())
                return res;

            ValueMap valMap, lastMap;
            for(uint32_t depth = 1; depth <= 5; ++depth) {
                valMap.clear();
                explore(val, set, valMap, depth, explore);
                if(valMap.size() > 8)
                    break;
                if(depth != 1 && valMap == lastMap)
                    break;
                if(auto res = solveSatisfy(val, valMap, set); res.has_value())
                    return res;
                lastMap = valMap;
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

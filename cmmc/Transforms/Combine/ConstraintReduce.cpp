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
#include <bitset>
#include <cmmc/Analysis/CFGAnalysis.hpp>
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

    template <uint32_t kMaxValues>
    using MatrixRow = std::bitset<kMaxValues>;
    template <uint32_t kMaxValues>
    using Matrix = std::array<MatrixRow<kMaxValues>, kMaxValues>;
    template <uint32_t kMaxValues>
    static Matrix<kMaxValues> matrixMultiply(const size_t size, const Matrix<kMaxValues>& lhs, const Matrix<kMaxValues>& rhs) {
        Matrix<kMaxValues> transpose{};
        for(size_t j = 0; j < size; ++j) {
            auto& row = rhs[j];
            if(row.none())
                continue;
            for(size_t i = 0; i < size; ++i)
                transpose[i][j] = row[i];
        }

        Matrix<kMaxValues> res{};
        for(size_t i = 0; i < size; ++i) {
            auto& row = lhs[i];
            if(row.none())
                continue;
            for(size_t j = 0; j < size; ++j)
                res[i][j] = (row & transpose[j]).any();
        }
        return res;
    }

    template <uint32_t kMaxValues>
    static bool calcTransitiveClosureImpl(CondSet& set, const std::vector<Value*>& values) {
        const auto& getValueIdx = [&values](Value* v) -> uint32_t {
            return static_cast<uint32_t>(std::distance(values.begin(), std::lower_bound(values.begin(), values.end(), v)));
        };

        const auto& invertRelation = [](KnownRelation rel) {
            switch(rel) {
                case KnownRelation::True:
                    return KnownRelation::False;
                case KnownRelation::False:
                    return KnownRelation::True;
                default:
                    return KnownRelation::Unknown;
            }
        };

        bool modified = false;
        auto workRelation = [&](bool symmetric, auto getter, auto constantCmp) mutable {
            Matrix<kMaxValues> mat{};
            // known relations
            for(auto& [pair, relations] : set) {
                auto rel = getter(relations);
                auto p1 = getValueIdx(pair.v1);
                auto p2 = getValueIdx(pair.v2);
                mat[p1][p2] = rel == KnownRelation::True;
                if(symmetric)
                    mat[p2][p1] = rel == KnownRelation::False;
            }
            // reflexive
            for(size_t i = 0; i < values.size(); ++i)
                mat[i][i] = true;
            // constant relations
            for(size_t i = 0; i < values.size(); i++)
                if(auto value = dynamic_cast<ConstantInteger*>(values[i]))
                    for(size_t j = 0; j < values.size(); j++)
                        if(auto value2 = dynamic_cast<ConstantInteger*>(values[j]))
                            mat[i][j] = constantCmp(value->getSignExtended(), value2->getSignExtended());

            Matrix<kMaxValues> oldMat;
            for(size_t i = 1; i < values.size(); i *= 2) {
                oldMat = mat;
                mat = matrixMultiply<kMaxValues>(values.size(), mat, mat);
                if(oldMat == mat) {
                    break;
                }
                modified = true;
            }
            return mat;
        };

        Matrix<kMaxValues> eqMat = workRelation(
            false, [](auto& r) { return r.equal; }, std::equal_to<intmax_t>{});
        Matrix<kMaxValues> ltMat = workRelation(
            true, [](auto& r) { return r.lessThan; }, std::less<intmax_t>{});
        Matrix<kMaxValues> gtMat = workRelation(
            true, [](auto& r) { return r.greaterThan; }, std::greater<intmax_t>{});
        Matrix<kMaxValues> ltMatInv = workRelation(
            true, [&](auto& r) { return invertRelation(r.lessThan); }, std::greater_equal<intmax_t>{});
        Matrix<kMaxValues> gtMatInv = workRelation(
            true, [&](auto& r) { return invertRelation(r.greaterThan); }, std::less_equal<intmax_t>{});
        if(!modified)
            return false;

        // TODO: a == b != c == d -> a != d

        bool changed = false;
        for(size_t i = 0; i < values.size(); i++)
            for(size_t j = i + 1; j < values.size(); j++) {
                if(eqMat[i][j] || ltMat[i][j] || gtMat[i][j] || ltMatInv[i][j] || gtMatInv[i][j]) {
                    VarPair pair{ values[i], values[j] };
                    KnownRelations relations{};
                    if(eqMat[i][j])
                        relations.equal = KnownRelation::True;
                    if(ltMat[i][j])
                        relations.lessThan = KnownRelation::True;
                    if(gtMat[i][j])
                        relations.greaterThan = KnownRelation::True;
                    if(ltMatInv[i][j])
                        relations.lessThan = KnownRelation::False;
                    if(gtMatInv[i][j])
                        relations.greaterThan = KnownRelation::False;

                    changed |= set[pair].update(relations);
                    changed |= set[pair].localInfer();
                }
            }
        return changed;
    }

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

        if(values.size() <= 64)
            return calcTransitiveClosureImpl<64>(set, values);
        if(values.size() <= 128)
            return calcTransitiveClosureImpl<128>(set, values);
        if(values.size() <= 256)
            return calcTransitiveClosureImpl<256>(set, values);
        return false;
    }

    static CondSet mergeSets(const std::unordered_map<Block*, CondSet>& sets) {
        if(sets.empty())
            return {};
        const CondSet* minimal = nullptr;
        for(auto& [block, set] : sets)
            if(!minimal || set.size() < minimal->size())
                minimal = &set;
        CondSet res = *minimal;

        std::vector<VarPair> toRemove;
        for(auto& [block, set] : sets) {
            if(&set == minimal)
                continue;
            for(auto& [pair, relations] : set) {
                if(res.count(pair))
                    res[pair].merge(relations);
            }
            toRemove.clear();
            for(auto& [pair, relations] : res)
                if(!set.count(pair)) {
                    toRemove.push_back(pair);
                }
            for(auto& pair : toRemove)
                res.erase(pair);
        }
        for(auto& [pair, relations] : res)
            relations.localInfer();
        calcTransitiveClosure(res);
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

        std::unordered_map<Block*, CondSet> conditions;
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
                auto newDst = mergeSets(edge);
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

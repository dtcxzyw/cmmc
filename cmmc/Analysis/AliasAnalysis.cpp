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
#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <limits>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

static uint64_t encode(uint32_t a, uint32_t b) {
    assert(a != b);
    if(a < b)
        std::swap(a, b);
    return (static_cast<uint64_t>(a) << 32) | b;
}

void AliasAnalysisResult::addPair(uint32_t attr1, uint32_t attr2) {
    mDistinctPairs.insert(encode(attr1, attr2));
}
void AliasAnalysisResult::addDistinctGroup(std::unordered_set<uint32_t> group) {
    if(!group.empty())
        mDistinctGroups.push_back(std::move(group));
}
void AliasAnalysisResult::addValue(Value* p, std::vector<uint32_t> attrs) {
    assert(p->getType()->isPointer());
    mPointerAttributes.emplace(p, std::move(attrs));
}
bool AliasAnalysisResult::isDistinct(Value* p1, Value* p2) const {
    if constexpr(Config::debug) {
        if(!mPointerAttributes.count(p1)) {
            p1->getBlock()->dump(reportError());
            p1->dump(reportError() << "undefined pointer "sv);
            reportUnreachable(CMMC_LOCATION());
        }
        if(!mPointerAttributes.count(p2)) {
            p2->getBlock()->dump(reportError());
            p2->dump(reportError() << "undefined pointer "sv);
            reportUnreachable(CMMC_LOCATION());
        }
    }
    if(p1 == p2)
        return false;

    auto& attr1 = mPointerAttributes.at(p1);
    auto& attr2 = mPointerAttributes.at(p2);
    for(auto attrX : attr1)
        for(auto attrY : attr2) {
            if(attrX == attrY)
                continue;
            if(mDistinctPairs.count(encode(attrX, attrY)))
                return true;
            for(auto& group : mDistinctGroups)
                if(group.count(attrX) && group.count(attrY))
                    return true;
        }
    return false;
}
const std::vector<uint32_t>& AliasAnalysisResult::inheritFrom(Value* ptr) const {
    if(ptr->isConstant()) {
        return mEmpty;  // undefined/hardcoded pointer
    }
    return mPointerAttributes.at(ptr);
}
bool AliasAnalysisResult::appendAttr(Value* p, const std::vector<uint32_t>& newAttrs) {
    if(newAttrs.empty())
        return false;
    assert(mPointerAttributes.count(p));
    auto& attrs = mPointerAttributes.at(p);
    const auto oldSize = attrs.size();
    attrs.insert(attrs.cend(), newAttrs.cbegin(), newAttrs.cend());
    std::sort(attrs.begin(), attrs.end());
    attrs.erase(std::unique(attrs.begin(), attrs.end()), attrs.end());
    return oldSize != attrs.size();
}
bool AliasAnalysisResult::appendAttr(Value* p, uint32_t newAttr) {
    assert(mPointerAttributes.count(p));
    auto& attrs = mPointerAttributes.at(p);
    if(std::find(attrs.cbegin(), attrs.cend(), newAttr) == attrs.cend()) {
        attrs.push_back(newAttr);
        return true;
    }
    return false;
}

[[maybe_unused]] static void divide(const std::vector<Instruction*>& gepList, uint32_t& allocateID, AliasAnalysisResult& result,
                                    uint32_t idx) {
    if(gepList.size() <= 1)
        return;

    std::unordered_map<ConstantValue*, std::vector<Instruction*>, ConstantHasher, ConstantWeakEqual> clusters;
    for(auto gep : gepList) {
        if(gep->operands().size() <= idx + 1)
            continue;
        const auto index = gep->getOperand(idx);
        if(auto constantIndex = dynamic_cast<ConstantValue*>(index)) {
            clusters[constantIndex].push_back(gep);
        }
    }
    if(clusters.empty())
        return;

    if(clusters.size() >= 2) {
        std::unordered_set<uint32_t> distinctGroup;
        for(auto& [base, geps] : clusters) {
            CMMC_UNUSED(base);
            const auto id = ++allocateID;
            distinctGroup.insert(id);
            for(auto gep : geps)
                result.appendAttr(gep, id);
            divide(geps, allocateID, result, idx + 1);
        }
        result.addDistinctGroup(std::move(distinctGroup));
    } else {
        divide(gepList, allocateID, result, idx + 1);
    }
}

struct TypePair final {
    const Type* lhs;
    const Type* rhs;

    TypePair(const Type* lhsType, const Type* rhsType) noexcept : lhs{ lhsType }, rhs{ rhsType } {
        if(lhs < rhs)
            std::swap(lhs, rhs);
    }
    bool operator==(const TypePair& rhsPair) const noexcept {
        return this->lhs == rhsPair.lhs && this->rhs == rhsPair.rhs;
    }
};

struct TypePairHasher final {
    size_t operator()(const TypePair& val) const noexcept {
        const std::hash<const Type*> hasher;
        return hasher(val.lhs) ^ hasher(val.rhs);
    }
};

class TBAAQuery final {
    std::unordered_map<TypePair, bool, TypePairHasher> mCachedResult;

    // a includes b?
    bool includes(const Type* a, const Type* b) const {
        if(a->isSame(b))
            return true;
        if(a->isPrimitive()) {
            return false;
        }
        if(a->isArray()) {
            const auto array = a->as<ArrayType>();
            const auto next = b->isArray() ? array->getElementType() : array->getScalarType();
            return includes(next, b);
        }
        if(a->isStruct()) {
            const auto structure = a->as<StructType>();
            for(auto& field : structure->fields())
                if(includes(field.type, b))
                    return true;
            return false;
        }
        reportUnreachable(CMMC_LOCATION());
    }

public:
    bool isDistinct(const Type* lhs, const Type* rhs) {
        assert(lhs != rhs);
        TypePair pair{ lhs, rhs };
        if(auto iter = mCachedResult.find(pair); iter != mCachedResult.cend())
            return iter->second;
        const auto res = !includes(lhs, rhs) && !includes(rhs, lhs);
        mCachedResult.emplace(pair, res);
        return res;
    }
};

AliasAnalysisResult AliasAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    auto& dom = analysis.get<DominateAnalysis>(func);

    AliasAnalysisResult result;
    uint32_t allocateID = 0;
    const auto globalID = ++allocateID;
    const auto stackID = ++allocateID;
    result.addPair(globalID, stackID);

    std::unordered_set<Value*> globals;
    std::unordered_set<uint32_t> globalGroup;
    std::unordered_set<uint32_t> stackGroup;
    std::vector<Instruction*> geps;

    struct InheritEdge final {
        Value* dst;
        Value* src1;
        Value* src2;

        InheritEdge(Value* dstVal, Value* src1Val, Value* src2Val = nullptr) noexcept
            : dst{ dstVal }, src1{ src1Val }, src2{ src2Val } {}
        bool operator==(const InheritEdge& rhs) const noexcept {
            return dst == rhs.dst && src1 == rhs.src1 && src2 == rhs.src2;
        }
    };

    struct EdgeHasher final {
        size_t operator()(const InheritEdge& edge) const {
            std::hash<Value*> hasher;
            return (hasher(edge.dst) * 10007) ^ (hasher(edge.src1) * 131) ^ hasher(edge.src2);
        }
    };

    std::unordered_set<InheritEdge, EdgeHasher> inheritGraph;
    for(auto global : analysis.module().globals()) {
        if(!global->isFunction()) {
            globals.insert(global);
            const auto id = ++allocateID;
            result.addValue(global, { globalID, id });
            globalGroup.insert(id);
        }
    }

    std::unordered_set<Block*> reachableBlocks;
    uint32_t argID = ++allocateID;
    bool noAlias = func.attr().hasAttr(FunctionAttribute::NoAlias);
    for(auto arg : func.args()) {
        if(!arg->getType()->isPointer())
            continue;
        if(noAlias) {
            result.addValue(arg, { argID, ++allocateID });
        } else {
            result.addValue(arg, { argID });
        }
    }

    for(auto block : dom.blocks()) {
        reachableBlocks.insert(block);

        for(auto inst : block->instructions()) {
            if(!inst->getType()->isPointer())
                continue;

            switch(inst->getInstID()) {
                case InstructionID::Alloc: {
                    uint32_t id = ++allocateID;
                    stackGroup.insert(id);
                    result.addPair(id, argID);
                    result.addValue(inst, { stackID, id });
                    break;
                }
                case InstructionID::GetElementPtr: {
                    std::vector<uint32_t> attrs;
                    auto cur = inst;
                    while(true) {
                        const auto base = cur->operands().back();
                        MatchContext<Value> matchCtx{ cur->getOperand(0), nullptr };
                        if(cuint_(0)(matchCtx)) {
                            inheritGraph.emplace(inst, base);
                            break;
                        }
                        if(cur == inst) {
                            // add distinct pair
                            intmax_t offset;
                            if(int_(offset)(matchCtx) && offset != 0) {
                                const auto a1 = ++allocateID;
                                const auto a2 = ++allocateID;
                                result.addPair(a1, a2);
                                attrs.push_back(a1);
                                result.appendAttr(cur->operands().back(), a2);
                            }
                        }
                        if(base->is<GetElementPtrInst>()) {
                            cur = base->as<Instruction>();
                        } else
                            break;
                    }
                    result.addValue(inst, std::move(attrs));
                    geps.push_back(inst);
                    break;
                }
                case InstructionID::PtrCast: {
                    inheritGraph.emplace(inst, inst->getOperand(0));
                    result.addValue(inst, {});
                    break;
                }
                case InstructionID::Select: {
                    inheritGraph.emplace(inst, inst->getOperand(1), inst->getOperand(2));
                    result.addValue(inst, {});
                    break;
                }
                case InstructionID::IntToPtr: {
                    const auto base = inst->getOperand(0);
                    if(base->isArgument()) {
                        result.addValue(inst, { argID });
                    } else
                        result.addValue(inst, {});
                    break;
                }
                case InstructionID::Load:
                    [[fallthrough]];
                case InstructionID::Call: {
                    result.addValue(inst, {});
                    break;
                }
                case InstructionID::Phi: {
                    result.addValue(inst, {});
                    std::unordered_set<Value*> inheritSet;
                    for(auto ptr : inst->operands()) {
                        if(ptr->isConstant())
                            continue;

                        inheritSet.insert(ptr);
                        // TODO: support more sources
                        if(inheritSet.size() > 2) {
                            break;
                        }
                    }

                    if(inheritSet.size() == 1) {
                        inheritGraph.emplace(inst, *inheritSet.begin());
                    } else if(inheritSet.size() == 2) {
                        inheritGraph.emplace(inst, *inheritSet.begin(), *std::next(inheritSet.begin()));
                    }

                    break;
                }
                default: {
                    reportNotImplemented(CMMC_LOCATION());
                }
            }
        }
    }

    // unreachable
    for(auto block : func.blocks()) {
        if(reachableBlocks.count(block))
            continue;
        for(auto inst : block->instructions()) {
            if(!inst->getType()->isPointer())
                continue;
            result.addValue(inst, {});
        }
    }

    // TBAA
    {
        std::unordered_map<const Type*, uint32_t> types;
        TBAAQuery query;
        for(auto& [val, attrs] : result.pointerAttrs()) {
            CMMC_UNUSED(attrs);
            const auto type = val->getType();
            assert(type->isPointer());
            types.emplace(type, ++allocateID);
        }

        const auto i8 = IntegerType::get(8);  // ignore char*

        for(auto i = types.cbegin(); i != types.cend(); ++i) {
            const auto t1 = i->first->as<PointerType>()->getPointee();
            if(t1->isSame(i8))
                continue;

            for(auto j = std::next(i); j != types.cend(); ++j) {
                const auto t2 = j->first->as<PointerType>()->getPointee();
                if(t2->isSame(i8))
                    continue;

                if(query.isDistinct(t1, t2)) {
                    result.addPair(i->second, j->second);
                }
            }
        }

        for(auto& [val, attrs] : result.pointerAttrs()) {
            CMMC_UNUSED(attrs);
            const auto type = val->getType();
            assert(type->isPointer());
            const auto attr = types.at(type);
            result.appendAttr(val, attr);
        }
    }

    // geps
    std::unordered_map<Value*, std::vector<Instruction*>> clusters;
    for(auto gep : geps)
        clusters[gep->operands().back()].push_back(gep);
    for(auto& [base, gepList] : clusters) {
        CMMC_UNUSED(base);
        divide(gepList, allocateID, result, 0);
    }

    result.addDistinctGroup(std::move(globalGroup));
    result.addDistinctGroup(std::move(stackGroup));

    // inherit relation propagation
    while(true) {
        bool modified = false;
        for(auto [dst, src1, src2] : inheritGraph) {
            if(src2) {
                auto lhs = result.inheritFrom(src1);
                std::sort(lhs.begin(), lhs.end());
                auto rhs = result.inheritFrom(src2);
                std::sort(rhs.begin(), rhs.end());
                std::vector<uint32_t> intersection;
                std::set_intersection(lhs.cbegin(), lhs.cend(), rhs.cbegin(), rhs.cend(), std::back_inserter(intersection));
                modified |= result.appendAttr(dst, intersection);
            } else {
                modified |= result.appendAttr(dst, result.inheritFrom(src1));
            }
        }
        if(!modified)
            break;
    }

    /*
    func.dump(std::cerr);
    for(auto& [ptr1, attr1] : result.pointerAttrs()) {
        ptr1->dump(std::cerr);
        std::cerr << " :"sv;
        for(auto& [ptr2, attr2] : result.pointerAttrs()) {
            ptr2->dumpAsOperand(std::cerr);
            std::cerr << '[';
            std::cerr << result.isDistinct(ptr1, ptr2);
            std::cerr << "] "sv;
        }
        std::cerr << '\n';
    }
    */

    return result;
}

CMMC_NAMESPACE_END

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

#include "cmmc/Config.hpp"
#include <algorithm>
#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/Analysis/BlockArgumentAnalysis.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
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
            p1->dump(reportError() << "undefined pointer ");
            p1->getBlock()->dump(reportError());
            reportUnreachable();
        }
        if(!mPointerAttributes.count(p2)) {
            p2->dump(reportError() << "undefined pointer ");
            p2->getBlock()->dump(reportError());
            reportUnreachable();
        }
    }
    if(p1 == p2)
        return false;

    auto& attr1 = mPointerAttributes.find(p1)->second;
    auto& attr2 = mPointerAttributes.find(p2)->second;
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
    assert(mPointerAttributes.count(ptr));
    return mPointerAttributes.find(ptr)->second;
}
void AliasAnalysisResult::appendAttr(Value* p, const std::vector<uint32_t>& newAttrs) {
    assert(mPointerAttributes.count(p));
    auto& attrs = mPointerAttributes.find(p)->second;
    attrs.insert(attrs.cend(), newAttrs.cbegin(), newAttrs.cend());
    std::sort(attrs.begin(), attrs.end());
    attrs.erase(std::unique(attrs.begin(), attrs.end()), attrs.end());
}
void AliasAnalysisResult::appendAttr(Value* p, uint32_t newAttr) {
    assert(mPointerAttributes.count(p));
    auto& attrs = mPointerAttributes.find(p)->second;
    attrs.push_back(newAttr);
}

static void divide(const std::vector<GetElementPtrInst*>& gepList, uint32_t& allocateID, AliasAnalysisResult& result,
                   uint32_t idx) {
    if(gepList.size() <= 1)
        return;

    std::unordered_map<ConstantValue*, std::vector<GetElementPtrInst*>, ConstantHasher, ConstantEqual> clusters;
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

AliasAnalysisResult AliasAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    AliasAnalysisResult result;
    uint32_t allocateID = 0;
    const auto globalID = ++allocateID;
    const auto stackID = ++allocateID;
    result.addPair(globalID, stackID);

    std::unordered_set<Value*> globals;
    std::unordered_set<uint32_t> globalGroup;
    std::unordered_set<uint32_t> stackGroup;
    std::vector<GetElementPtrInst*> geps;

    for(auto block : func.blocks()) {
        const auto argID = ++allocateID;
        for(auto arg : block->args())
            if(arg->getType()->isPointer())
                result.addValue(arg, { argID });

        for(auto inst : block->instructions()) {
            for(auto operand : inst->operands())
                if(operand->isGlobal() && operand->getType()->isPointer())
                    if(globals.insert(operand).second) {
                        const auto id = ++allocateID;
                        result.addValue(operand, { globalID, id });
                        globalGroup.insert(id);
                    }

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
                    const auto& src = result.inheritFrom(inst->operands().back());
                    result.addValue(inst, src);
                    geps.push_back(inst->as<GetElementPtrInst>());
                    break;
                }
                case InstructionID::PtrCast: {
                    const auto& src = result.inheritFrom(inst->getOperand(0));
                    result.addValue(inst, src);
                    break;
                }
                case InstructionID::Select: {
                    auto lhs = result.inheritFrom(inst->getOperand(1));
                    std::sort(lhs.begin(), lhs.end());
                    auto rhs = result.inheritFrom(inst->getOperand(2));
                    std::sort(rhs.begin(), rhs.end());
                    std::vector<uint32_t> intersection;
                    std::set_intersection(lhs.cbegin(), lhs.cend(), rhs.cbegin(), rhs.cend(), std::back_inserter(intersection));
                    result.addValue(inst, std::move(intersection));
                    break;
                }
                case InstructionID::IntToPtr:
                    [[fallthrough]];
                case InstructionID::Load:
                    [[fallthrough]];
                case InstructionID::Call: {
                    result.addValue(inst, {});
                    break;
                }
                default: {
                    reportNotImplemented();
                }
            }
        }
    }

    auto& blockArgMap = analysis.get<BlockArgumentAnalysis>(func);
    for(auto [arg, val] : blockArgMap.map()) {
        if(arg->getType()->isPointer()) {
            result.appendAttr(arg, result.inheritFrom(val));
        }
    }

    // geps
    std::unordered_map<Value*, std::vector<GetElementPtrInst*>> clusters;
    for(auto gep : geps)
        clusters[blockArgMap.queryRoot(gep->operands().back())].push_back(gep);
    for(auto& [base, gepList] : clusters) {
        CMMC_UNUSED(base);
        divide(gepList, allocateID, result, 0);
    }

    result.addDistinctGroup(std::move(globalGroup));
    result.addDistinctGroup(std::move(stackGroup));

    /*
    func.dump(std::cerr);
    for(auto& [ptr1, attr1] : result.pointerAttrs()) {
        ptr1->dump(std::cerr);
        std::cerr << " :";
        for(auto& [ptr2, attr2] : result.pointerAttrs()) {
            ptr2->dumpAsOperand(std::cerr);
            std::cerr << "[";
            std::cerr << result.isDistinct(ptr1, ptr2);
            std::cerr << "] ";
        }
        std::cerr << std::endl;
    }
    */

    return result;
}

CMMC_NAMESPACE_END

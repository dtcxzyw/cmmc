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

#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>

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
std::vector<uint32_t> AliasAnalysisResult::inheritFrom(Value* ptr) const {
    assert(mPointerAttributes.count(ptr));
    return mPointerAttributes.find(ptr)->second;
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

            switch(inst->getInstID()) {
                case InstructionID::Alloc: {
                    uint32_t id = ++allocateID;
                    stackGroup.insert(id);
                    result.addPair(id, argID);
                    result.addValue(inst, { stackID, id });
                    break;
                }
                case InstructionID::GetElementPtr: {
                    // TODO: handle distinct array indices and distinct struct fields
                    const auto src = result.inheritFrom(inst->operands().back());
                    result.addValue(inst, src);
                    break;
                }
                case InstructionID::PtrCast: {
                    result.addValue(inst, {});  // TODO: provide basic information
                    break;
                }
                case InstructionID::Load: {
                    if(inst->getType()->isPointer())
                        result.addValue(inst, {});
                    break;
                }
                default:
                    break;
            }
        }
    }

    result.addDistinctGroup(std::move(globalGroup));
    result.addDistinctGroup(std::move(stackGroup));

    return result;
}

CMMC_NAMESPACE_END

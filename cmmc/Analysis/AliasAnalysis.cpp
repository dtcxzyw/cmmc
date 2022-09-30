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
void AliasAnalysisResult::addValue(Value* p, std::vector<uint32_t> attrs) {
    mPointerAttributes.emplace(p, std::move(attrs));
}
bool AliasAnalysisResult::isDistinct(Value* p1, Value* p2) const {
    assert(mPointerAttributes.count(p1) && mPointerAttributes.count(p2));
    auto& attr1 = mPointerAttributes.find(p1)->second;
    auto& attr2 = mPointerAttributes.find(p2)->second;
    for(auto attrX : attr1)
        for(auto attrY : attr2)
            if(attrX != attrY && mDistinctPairs.count(encode(attrX, attrY)))
                return true;
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

    for(auto block : func.blocks()) {
        const auto argID = ++allocateID;
        for(auto arg : block->args())
            if(arg->getType()->isPointer())
                result.addValue(arg, { argID });

        for(auto inst : block->instructions()) {
            if(inst->getInstID() == InstructionID::Alloc) {
                uint32_t newID = ++allocateID;
                for(uint32_t id = argID; id < newID; ++id)
                    result.addPair(id, newID);
                result.addValue(inst, { stackID, newID });
            } else if(inst->getInstID() == InstructionID::GetElementPtr) {
                // TODO: handle distinct array indices and distinct struct fields
                const auto src = result.inheritFrom(inst->operands().back());
                result.addValue(inst, src);
            }
            for(auto operand : inst->operands())
                if(operand->isGlobal() && operand->getType()->isPointer())
                    globals.insert(operand);
        }
    }

    for(auto global : globals)
        result.addValue(global, { globalID });

    return result;
}

CMMC_NAMESPACE_END

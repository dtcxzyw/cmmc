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

void DistinctPointerSet::addPair(Value* ptr1, Value* ptr2) {
    mPairs.emplace(ptr1, ptr2);
    mPairs.emplace(ptr2, ptr1);
}
bool DistinctPointerSet::isDistinct(Value* ptr1, Value* ptr2) const {
    return mPairs.count({ ptr1, ptr2 });
}

DistinctPointerSet analysisAliases(Function& func) {
    DistinctPointerSet set;

    for(auto block : func.blocks()) {
        std::vector<Value*> allocs;
        for(auto inst : block->instructions()) {
            if(inst->getInstID() == InstructionID::Alloc)
                allocs.push_back(inst);
        }

        for(uint32_t i = 0; i < allocs.size(); ++i)
            for(uint32_t j = i + 1; j < allocs.size(); ++j)
                set.addPair(allocs[i], allocs[j]);
    }

    // TODO: safe pointer arithmetic

    // TODO: global pointers

    // TODO: cross block pointers

    return set;
}

CMMC_NAMESPACE_END

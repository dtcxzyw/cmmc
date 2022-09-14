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

#pragma once
#include <cmmc/IR/Function.hpp>

CMMC_NAMESPACE_BEGIN

struct PointPairHasher final {
    size_t operator()(std::pair<Value*, Value*> val) const noexcept {
        std::hash<Value*> hasher;
        return (hasher(val.first) * 998244353) ^ hasher(val.second);
    }
};

class DistinctPointerSet final {
    std::unordered_set<std::pair<Value*, Value*>, PointPairHasher> mPairs;

public:
    void addPair(Value* ptr1, Value* ptr2);
    bool isDistinct(Value* ptr1, Value* ptr2) const;
};

DistinctPointerSet analysisAliases(Function& func);

CMMC_NAMESPACE_END

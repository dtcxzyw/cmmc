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
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <functional>
#include <memory>

CMMC_NAMESPACE_BEGIN

// Break cycles in the CFG with some information loss
// Case 1:
// A
// |
// B
// |
// C <- |
// |    |
// D -> |
// |
// E
//
// Order:
// A:
// B: A
// C:
// D: C
// E: C D E
//
// Case 2:
// A
// |
// B -> C
// |    |
// D <- |
// |
// E
//
// Order:
// A:
// B: A
// C: A B
// D: merge({A B}, {A B C})
// E: merge({A B}, {A B C}) D

class LossyAnalysisPayload {
public:
    virtual ~LossyAnalysisPayload() = default;
    virtual bool run(Block& block) = 0;
    virtual void merge(const LossyAnalysisPayload& rhs) = 0;
    virtual void completeMerge() = 0;
};

class LossyAnalysisTransformDriver final {
public:
    using Builder = std::function<std::unique_ptr<LossyAnalysisPayload>()>;

private:
    Builder mBuilder;

public:
    explicit LossyAnalysisTransformDriver(Builder builder) : mBuilder{ std::move(builder) } {}
    bool run(Function& func) const;
};

void blockArgPropagation(Function& func);

CMMC_NAMESPACE_END

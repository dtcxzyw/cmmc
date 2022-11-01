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
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cstdint>
#include <limits>
#include <unordered_map>
#include <variant>

CMMC_NAMESPACE_BEGIN

struct PhiEdge final {
    BranchTarget* from;
    ConditionalBranchInst* branch;
    Value* value;
};

using PhiNode = std::vector<PhiEdge>;

class PhiAnalysisResult final {
    std::unordered_map<BlockArgument*, std::variant<Value*, PhiNode>> mPhiNodes;

public:
    explicit PhiAnalysisResult(std::unordered_map<BlockArgument*, std::variant<Value*, PhiNode>> phiNodes)
        : mPhiNodes{ std::move(phiNodes) } {}
    const std::variant<Value*, PhiNode>& query(BlockArgument* arg) const;
};

class PhiAnalysis final : public FuncAnalysisPassWrapper<PhiAnalysis, PhiAnalysisResult> {
public:
    static PhiAnalysisResult run(Function& func, AnalysisPassManager& analysis);
};

CMMC_NAMESPACE_END

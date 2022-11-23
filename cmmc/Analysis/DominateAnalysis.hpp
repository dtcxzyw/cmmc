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

class DominateAnalysisResult final {
    Block* mEntry;
    std::unordered_map<Block*, std::unordered_set<Block*>> mDomTree;
    std::unordered_map<Block*, size_t> mDDep;
    std::unordered_map<Block*, std::vector<Block*>> mDFa;

public:
    explicit DominateAnalysisResult(
            std::tuple<Block*, std::unordered_map<Block*, std::unordered_set<Block*>>,
            std::unordered_map<Block*, size_t>, std::unordered_map<Block*, std::vector<Block*>>>
            dtree
        ) : mEntry(std::move(std::get<0>(dtree))), mDomTree(std::move(std::get<1>(dtree))),
            mDDep(std::move(std::get<2>(dtree))), mDFa(std::move(std::get<3>(dtree))) {}
    // a dominates b
    bool dominate(Block* a, Block* b) const;
};

class DominateAnalysis final : public FuncAnalysisPassWrapper<DominateAnalysis, DominateAnalysisResult> {
public:
    static DominateAnalysisResult run(Function& func, AnalysisPassManager& analysis);
};

CMMC_NAMESPACE_END

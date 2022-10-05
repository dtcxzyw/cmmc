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

CMMC_NAMESPACE_BEGIN

class BlockArgumentAnalysisResult final {
    mutable std::unordered_map<BlockArgument*, Value*> mMappings;

public:
    Value* queryRoot(Value* val) const;
    void addMapping(BlockArgument* arg, Value* val);
    Value* query(BlockArgument* arg) const;
};

class BlockArgumentAnalysis final : public FuncAnalysisPassWrapper<BlockArgumentAnalysis, BlockArgumentAnalysisResult> {
public:
    static BlockArgumentAnalysisResult run(Function& func, AnalysisPassManager& analysis);
};

CMMC_NAMESPACE_END

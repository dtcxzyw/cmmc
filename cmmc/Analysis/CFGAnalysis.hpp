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

// TODO: CFG dump

#pragma once
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cstdint>
#include <vector>

CMMC_NAMESPACE_BEGIN

struct BlockCFGInfo final {
    std::vector<Block*> predecessors;
    std::vector<Block*> successors;
};

class CFGAnalysisResult final {
    std::unordered_map<Block*, BlockCFGInfo> mInfo;

public:
    std::unordered_map<Block*, BlockCFGInfo>& storage() {
        return mInfo;
    }
    const std::vector<Block*>& predecessors(Block* block) const;
    const std::vector<Block*>& successors(Block* block) const;
};

class CFGAnalysis final : public FuncAnalysisPassWrapper<CFGAnalysis, CFGAnalysisResult> {
public:
    static CFGAnalysisResult run(Function& func, AnalysisPassManager& analysis);
};

CMMC_NAMESPACE_END

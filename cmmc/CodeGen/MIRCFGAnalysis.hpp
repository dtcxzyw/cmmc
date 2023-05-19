/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2023 CMMC Authors
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
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cstdint>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

struct MIRBlockEdge final {
    MIRBasicBlock* block;
    double prob;
};

struct MIRBlockCFGInfo final {
    std::vector<MIRBlockEdge> predecessors;
    std::vector<MIRBlockEdge> successors;
};

class CFGAnalysisResult final {
    std::unordered_map<const MIRBasicBlock*, MIRBlockCFGInfo> mInfo;

public:
    std::unordered_map<const MIRBasicBlock*, MIRBlockCFGInfo>& storage() {
        return mInfo;
    }
    const std::vector<MIRBlockEdge>& predecessors(const MIRBasicBlock* block) const;
    const std::vector<MIRBlockEdge>& successors(const MIRBasicBlock* block) const;
};

CFGAnalysisResult calcCFG(const MIRFunction& func, const CodeGenContext& ctx);

CMMC_MIR_NAMESPACE_END

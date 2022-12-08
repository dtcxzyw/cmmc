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
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/IR/Block.hpp>
#include <cstdint>
#include <vector>

CMMC_NAMESPACE_BEGIN

struct GMIRBlockCFGInfo final {
    std::vector<const GMIRBasicBlock*> predecessors;
    std::vector<const GMIRBasicBlock*> successors;
};

class GMIRCFGAnalysisResult final {
    std::unordered_map<const GMIRBasicBlock*, GMIRBlockCFGInfo> mInfo;

public:
    std::unordered_map<const GMIRBasicBlock*, GMIRBlockCFGInfo>& storage() {
        return mInfo;
    }
    const std::vector<const GMIRBasicBlock*>& predecessors(const GMIRBasicBlock* block) const;
    const std::vector<const GMIRBasicBlock*>& successors(const GMIRBasicBlock* block) const;
};

GMIRCFGAnalysisResult calcGMIRCFG(const GMIRFunction& func);

CMMC_NAMESPACE_END

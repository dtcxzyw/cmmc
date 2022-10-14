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
#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>

CMMC_NAMESPACE_BEGIN

class SimpleValueAnalysis final {
    const AliasAnalysisResult& mAliasSet;
    std::unordered_map<Value*, Value*> mBasePointer;                            // <pointer, base pointer>
    std::unordered_map<Value*, std::unordered_map<Value*, Value*>> mLastValue;  // <base pointer, <pointer, value>>

public:
    explicit SimpleValueAnalysis(Block* block, const AliasAnalysisResult& aliasSet);
    void next(Instruction* inst);
    Value* getLastValue(Value* pointer) const;
};

CMMC_NAMESPACE_END

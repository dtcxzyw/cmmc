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

// b1(int a):
//     br b3(a, a);
// b2(int a):
//     br b3(a, a);
// b3(int a, int b):
//     use a
//     use b
// ==>
// b1(int a):
//     br b3(a);
// b2(int a):
//     br b3(a);
// b3(int a):
//     use a
//     use a

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cstdint>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

// TODO: Using phi?
/*
class BlockArgMerge final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& cfg = analysis.get<CFGAnalysis>(func);
        bool modified = false;
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "BlockArgMerge"sv;
    }
};

CMMC_TRANSFORM_PASS(BlockArgMerge);
*/

CMMC_NAMESPACE_END

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

#include <cmmc/Analysis/BlockArgumentAnalysis.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/PhiAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cstdint>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

Value* BlockArgumentAnalysisResult::queryRoot(Value* arg) const {
    assert(arg);
    if(auto blockArg = dynamic_cast<BlockArgument*>(arg)) {
        const auto iter = mMappings.find(blockArg);
        if(iter != mMappings.cend())
            return iter->second;
    }
    return arg;
}
void BlockArgumentAnalysisResult::addMapping(BlockArgument* arg, Value* val) {
    assert(arg && val);
    mMappings[arg] = val;
}
Value* BlockArgumentAnalysisResult::query(BlockArgument* arg) const {
    const auto val = queryRoot(arg);
    return val == arg ? nullptr : val;
}

BlockArgumentAnalysisResult BlockArgumentAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    BlockArgumentAnalysisResult res;
    auto& phi = analysis.get<PhiAnalysis>(func);
    for(auto block : func.blocks())
        for(auto arg : block->args()) {
            auto& phiVal = phi.query(arg);
            if(phiVal.index() == 0)
                res.addMapping(arg, std::get<Value*>(phiVal));
        }
    return res;
}

CMMC_NAMESPACE_END

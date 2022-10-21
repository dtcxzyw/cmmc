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
    const auto& cfg = analysis.get<CFGAnalysis>(func);
    std::unordered_map<BlockArgument*, std::vector<Value*>> phiMap;

    for(auto block : func.blocks()) {
        for(uint32_t idx = 0; idx < block->args().size(); ++idx) {
            auto arg = block->args()[idx];
            auto& phi = phiMap[arg];
            for(auto& [predBlock, pred] : cfg.predecessors(block)) {
                CMMC_UNUSED(predBlock);
                phi.push_back(pred->getArgs()[idx]);
            }
        }
    }

    while(true) {
        bool modified = false;

        for(auto& [blockArg, phi] : phiMap) {
            size_t oldSize = phi.size();
            phi.erase(std::remove(phi.begin(), phi.end(), blockArg), phi.end());
            std::sort(phi.begin(), phi.end());
            phi.erase(std::unique(phi.begin(), phi.end()), phi.end());
            size_t newSize = phi.size();
            modified |= (oldSize != newSize);
            for(auto& val : phi) {
                if(auto arg = dynamic_cast<BlockArgument*>(val)) {
                    const auto& rhsPhi = phiMap[arg];
                    if(rhsPhi.size() == 1) {
                        val = rhsPhi.front();
                        modified = true;
                    }
                }
            }
        }

        if(!modified)
            break;
    }

    BlockArgumentAnalysisResult result;
    for(auto& [blockArg, phi] : phiMap) {
        if(phi.size() == 1) {
            result.addMapping(blockArg, phi.front());
        }
    }

    return result;
}

CMMC_NAMESPACE_END

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
#include <cmmc/Config.hpp>
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
            return iter->second = queryRoot(iter->second);
        return arg;
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
    BlockArgumentAnalysisResult result;
    // TODO: merge same constant values

    while(true) {
        bool modified = false;

        for(auto block : func.blocks()) {
            for(uint32_t idx = 0; idx < block->args().size(); ++idx) {
                bool unique = true;
                Value* root = nullptr;
                for(auto& [predBlock, pred] : cfg.predecessors(block)) {
                    CMMC_UNUSED(predBlock);

                    auto val = result.queryRoot(pred->getArgs()[idx]);
                    if(root) {
                        if(root != val) {
                            unique = false;
                            break;
                        }
                    } else
                        root = val;
                }
                if(root && unique) {
                    const auto arg = block->args()[idx];
                    const auto oldRoot = result.queryRoot(arg);
                    if(oldRoot != root) {
                        result.addMapping(arg, root);
                        modified = true;
                    }
                }
            }
        }

        if(!modified)
            break;
    }
    return result;
}

CMMC_NAMESPACE_END

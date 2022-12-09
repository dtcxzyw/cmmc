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

#include <cmmc/Analysis/IntegerRangeAnalysis.hpp>

CMMC_NAMESPACE_BEGIN

const IntegerRange& IntegerRangeAnalysisResult::query(Value* val) const {
    return mRanges.at(val);
}

IntegerRangeAnalysisResult IntegerRangeAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    CMMC_UNUSED(func);
    CMMC_UNUSED(analysis);
    std::unordered_map<Value*, IntegerRange> ret;
    return IntegerRangeAnalysisResult{ std::move(ret) };
}

CMMC_NAMESPACE_END

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

#include <cmmc/Analysis/AnalysisPass.hpp>

CMMC_NAMESPACE_BEGIN

const void* AnalysisPassManager::getPassResult(Function& func, void* id) {
    auto& map = mFuncLevelAnalysis[&func];
    auto& pass = map[id];
    if(!pass)
        pass = mFuncAnalysisBuilder[id]();
    return pass->getPassResult(func, *this);
}
const void* AnalysisPassManager::getPassResult(void* id) {
    auto& pass = mModuleLevelAnalysis[id];
    if(!pass)
        pass = mModuleAnalysisBuilder[id]();
    return pass->getPassResult(*mModule, *this);
}

void AnalysisPassManager::invalidateFunc(Function& func) {
    mFuncLevelAnalysis[&func].clear();
}
void AnalysisPassManager::invalidateModule() {
    mModuleLevelAnalysis.clear();
    mFuncLevelAnalysis.clear();
}

CMMC_NAMESPACE_END

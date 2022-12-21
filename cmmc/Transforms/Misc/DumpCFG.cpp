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

#include <cmmc/Transforms/TransformPass.hpp>
#include <iostream>

CMMC_NAMESPACE_BEGIN

class DumpCFG final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        func.dumpCFG(std::cerr);
        return false;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "DumpCFG"sv;
    }
};

CMMC_TRANSFORM_PASS(DumpCFG);

CMMC_NAMESPACE_END

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
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Config.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Module.hpp>
#include <memory>

CMMC_NAMESPACE_BEGIN

enum class PassType {
    AttributeInference,  // don't change instructions
    SideEffectEquality,  // don't change count/order of load/store instructions, -O1
    IgnoreUB,            // don't change side effects when the program executes normally, -O2
    Expensive,           // take a much longer compile time, -O3
    Max
};

// **Stateless** Transform Pass

template <typename Scope>
class TransformPass {
public:
    TransformPass() = default;
    virtual ~TransformPass();
    TransformPass(const TransformPass&) = delete;
    TransformPass& operator=(const TransformPass&) = delete;

    virtual bool run(Scope& item, AnalysisPassManager& analysis) const = 0;
    virtual PassType type() const noexcept = 0;
};

enum class OptimizationLevel { O0 = 0, O1 = 1, O2 = 2, O3 = 3 };

class PassManager final {
    std::vector<std::shared_ptr<TransformPass<Module>>> mPasses;

public:
    PassManager() = default;
    bool run(Module& item, AnalysisPassManager& analysis) const;
    void addPass(std::shared_ptr<TransformPass<Module>> pass);
    static std::shared_ptr<PassManager> get(OptimizationLevel level);
};

class IterationPassWrapper final : public TransformPass<Module> {
    std::shared_ptr<PassManager> mSubPasses;
    uint32_t mMaxIterations;

public:
    IterationPassWrapper(std::shared_ptr<PassManager> subPasses, uint32_t maxIterations);
    bool run(Module& item, AnalysisPassManager& analysis) const override;
    PassType type() const noexcept override;
};

class PassRegistry final {
    std::vector<std::shared_ptr<TransformPass<Module>>> mPasses[static_cast<uint32_t>(PassType::Max)];

public:
    void registerPass(std::shared_ptr<TransformPass<Module>> pass);
    void registerPass(std::shared_ptr<TransformPass<Function>> pass);
    const std::vector<std::shared_ptr<TransformPass<Module>>>& collect(PassType type) const;

    static PassRegistry& get();
};

#define CMMC_TRANSFORM_PASS(CLASS)                                   \
    static int __pass_##CLASS = [] {                                 \
        PassRegistry::get().registerPass(std::make_shared<CLASS>()); \
        return 0;                                                    \
    }()

CMMC_NAMESPACE_END

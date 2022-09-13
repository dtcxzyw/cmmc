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

#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <memory>

CMMC_NAMESPACE_BEGIN

template <>
TransformPass<Function>::~TransformPass() {}
template <>
TransformPass<Module>::~TransformPass() {}

bool PassManager::run(Module& item) const {
    bool modified = false;
    for(auto& pass : mPasses)
        modified |= pass->run(item);
    return modified;
}

void PassManager::addPass(std::shared_ptr<TransformPass<Module>> pass) {
    mPasses.push_back(std::move(pass));
}

IterationPassWrapper::IterationPassWrapper(std::shared_ptr<PassManager> subPasses, uint32_t maxIterations)
    : mSubPasses{ std::move(subPasses) }, mMaxIterations{ maxIterations } {}

bool IterationPassWrapper::run(Module& item) const {
    bool modified = false;
    for(uint32_t i = 0; i < mMaxIterations; ++i) {
        if(!mSubPasses->run(item))
            break;
        modified = true;
    }
    return modified;
}

PassType IterationPassWrapper::type() const noexcept {
    return PassType::Expensive;
}

std::shared_ptr<PassManager> PassManager::get(OptimizationLevel level) {
    auto root = std::make_shared<PassManager>();

    if(level == OptimizationLevel::O0)
        return root;

    auto& passesSource = PassRegistry::get();

    auto basic = std::make_shared<PassManager>();
    for(auto& pass : passesSource.collect(PassType::AttributeInference))
        basic->addPass(pass);
    for(auto& pass : passesSource.collect(PassType::SideEffectEquality))
        basic->addPass(pass);
    if(level >= OptimizationLevel::O2) {
        for(auto& pass : passesSource.collect(PassType::IgnoreUB))
            basic->addPass(pass);
    }

    auto iter = std::make_shared<IterationPassWrapper>(std::move(basic), 128);

    root->addPass(iter);  // pre optimization

    if(level >= OptimizationLevel::O3) {
        for(auto& pass : passesSource.collect(PassType::Expensive))
            root->addPass(pass);
    }

    root->addPass(iter);  // post optimization
    return root;
}

class FunctionPassWrapper final : public TransformPass<Module> {
    std::shared_ptr<TransformPass<Function>> mPass;

public:
    explicit FunctionPassWrapper(std::shared_ptr<TransformPass<Function>> pass) : mPass{ std::move(pass) } {}
    bool run(Module& item) const override {
        reportNotImplemented();
        return false;
    }
    PassType type() const noexcept override {
        return mPass->type();
    }
};

void PassRegistry::registerPass(std::shared_ptr<TransformPass<Module>> pass) {
    mPasses[static_cast<uint32_t>(pass->type())].push_back(std::move(pass));
}
void PassRegistry::registerPass(std::shared_ptr<TransformPass<Function>> pass) {
    mPasses[static_cast<uint32_t>(pass->type())].push_back(std::make_shared<FunctionPassWrapper>(std::move(pass)));
}
const std::vector<std::shared_ptr<TransformPass<Module>>>& PassRegistry::collect(PassType type) const {
    return mPasses[static_cast<uint32_t>(type)];
}

PassRegistry& PassRegistry::get() {
    static PassRegistry instance;
    return instance;
}

CMMC_NAMESPACE_END

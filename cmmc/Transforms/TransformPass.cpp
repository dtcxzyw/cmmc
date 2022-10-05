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

#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <iostream>
#include <memory>

CMMC_NAMESPACE_BEGIN

template <>
TransformPass<Function>::~TransformPass() {}
template <>
TransformPass<Module>::~TransformPass() {}

bool PassManager::run(Module& item, AnalysisPassManager& analysis) const {
    bool modified = false;
    for(auto& pass : mPasses) {
        if(pass->isWrapper()) {
            if(pass->run(item, analysis)) {
                analysis.invalidateModule();
                modified = true;
            }
        } else {
            Stage stage{ pass->name() };
            if constexpr(Config::debug) {
                std::cerr << pass->name() << std::endl;
            }
            if(pass->run(item, analysis)) {
                analysis.invalidateModule();
                modified = true;

                if constexpr(Config::debug)
                    item.dump(std::cerr);
                assert(item.verify(std::cerr));
            }
        }
    }
    return modified;
}

void PassManager::addPass(std::shared_ptr<TransformPass<Module>> pass) {
    mPasses.push_back(std::move(pass));
}

IterationPassWrapper::IterationPassWrapper(std::shared_ptr<PassManager> subPasses, uint32_t maxIterations)
    : mSubPasses{ std::move(subPasses) }, mMaxIterations{ maxIterations } {}

bool IterationPassWrapper::run(Module& item, AnalysisPassManager& analysis) const {
    bool modified = false;
    bool stopEarly = false;
    for(uint32_t i = 0; i < mMaxIterations; ++i) {
        if(!mSubPasses->run(item, analysis)) {
            stopEarly = true;
            break;
        } else
            analysis.invalidateModule();
        modified = true;
    }
    if(!stopEarly)
        reportWarning() << "partial optimization" << std::endl;
    return modified;
}

PassType IterationPassWrapper::type() const noexcept {
    return PassType::Expensive;
}

std::string_view IterationPassWrapper::name() const noexcept {
    using namespace std::string_view_literals;
    return "IterationPassWrapper"sv;
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
        for(auto& pass : passesSource.collect(PassType::TargetSpecific))
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
    bool run(Module& module, AnalysisPassManager& analysis) const override {
        bool modified = false;
        for(auto global : module.globals()) {
            if(global->isFunction()) {
                auto& func = *global->as<Function>();
                if(func.blocks().empty())
                    continue;
                Stage stage{ mPass->name() };
                if constexpr(Config::debug) {
                    std::cerr << mPass->name() << " " << func.getSymbol() << std::endl;
                }
                if(mPass->run(func, analysis)) {
                    if constexpr(Config::debug) {
                        func.dump(std::cerr);
                    }
                    analysis.invalidateFunc(func);
                    modified = true;
                    assert(func.verify(std::cerr));
                }
            }
        }
        if constexpr(Config::debug) {
            for(auto global : module.globals()) {
                if(global->isFunction()) {
                    auto& func = *global->as<Function>();
                    if(func.blocks().empty())
                        continue;
                    assert(func.verify(std::cerr));
                }
            }
        }

        return modified;
    }
    PassType type() const noexcept override {
        return mPass->type();
    }
    bool isWrapper() const noexcept override {
        return true;
    }
    std::string_view name() const noexcept override {
        using namespace std::string_view_literals;
        return "FunctioFunctionPassWrappernAttrInfer"sv;
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

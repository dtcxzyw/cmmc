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

#include <cmmc/IR/Attachments.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <iostream>
#include <memory>

CMMC_NAMESPACE_BEGIN

static Flag debugTransform;

CMMC_INIT_OPTIONS_BEGIN
debugTransform.setName("debug-transform", 'd').setDesc("print out transform pass result");
CMMC_INIT_OPTIONS_END

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
            if(debugTransform.get()) {
                std::cerr << pass->name() << std::endl;
            }
            if(pass->run(item, analysis)) {
                analysis.invalidateModule();
                modified = true;

                if(debugTransform.get())
                    item.dump(std::cerr);
                if(!item.verify(std::cerr))
                    DiagnosticsContext::get().attach<ModuleAttachment>("module", &item).reportFatal();
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
    // if(!stopEarly)
    //     reportWarning() << "partial optimization" << std::endl;
    CMMC_UNUSED(stopEarly);
    return modified;
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
    for(auto& pass : passesSource.collect({
            // Preprocess
            "FunctionAttrInfer",      //
            "BlockSort",              //
            "NoSideEffectEliminate",  // clean up
            // Constant
            "ConstantMerge",          //
            "SimpleCSE",              //
            "GEPCombine",             //
            "NoSideEffectEliminate",  // clean up
            // Arithmetic
            "ConstantPropagation",    //
            "ArithmeticReduce",       //
            "NoSideEffectEliminate",  // clean up
            // Control flow
            "MergeBranch",        //
            "SimplyBranch",       //
            "CombineBranch",      //
            "BlockMerge",         //
            "BlockEliminate",     // clean up
            "BlockArgEliminate",  // clean up
            // Load/Store
            "LoadReduce",             //
            "StoreEliminate",         //
            "NoSideEffectEliminate",  // clean up
            // Outline
            "BlockOutliner",   //
            "BlockMerge",      //
            "BlockEliminate",  // clean up
            // Postprocess
            "NoReturnCallEliminate",  //
            "FreeEliminate",          //
            "NoSideEffectEliminate",  // clean up
            "GlobalEliminate"         //
        }))
        basic->addPass(pass);

    auto iter = std::make_shared<IterationPassWrapper>(std::move(basic), 64);

    root->addPass(iter);  // pre optimization

    if(level >= OptimizationLevel::O3) {
        for(auto pass : passesSource.collect({
                "FuncInlining",  //
                "CombineFma",    //
            }))
            root->addPass(pass);
    }

    root->addPass(iter);  // optimization after inlining

    if(level >= OptimizationLevel::O3) {
        for(auto pass : passesSource.collect({
                // "ScalarMem2Reg",          //
                "StoreEliminate",         // clean up
                "BlockArgEliminate",      // clean up
                "FreeEliminate",          // clean up
                "NoSideEffectEliminate",  // clean up
                "SmallBlockInlining",     //
            }))
            root->addPass(pass);
    }

    root->addPass(iter);  // post optimization

    for(auto& pass : passesSource.collect({ "UninitializedCheck" }))
        root->addPass(pass);
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
                if(debugTransform.get()) {
                    std::cerr << mPass->name() << " " << func.getSymbol() << std::endl;
                }
                if(mPass->run(func, analysis)) {
                    if(debugTransform.get()) {
                        func.dump(std::cerr);
                    }
                    analysis.invalidateFunc(func);
                    modified = true;
                    assert(func.verify(std::cerr));
                }
            }
        }
        if(debugTransform.get()) {
            for(auto global : module.globals()) {
                if(global->isFunction()) {
                    auto& func = *global->as<Function>();
                    if(func.blocks().empty())
                        continue;
                    if(!func.verify(std::cerr))
                        DiagnosticsContext::get().attach<FuncAttachment>("function", &func).reportFatal();
                }
            }
        }

        return modified;
    }
    bool isWrapper() const noexcept override {
        return true;
    }
    std::string_view name() const noexcept override {
        return mPass->name();
    }
};

void PassRegistry::registerPass(std::shared_ptr<TransformPass<Module>> pass) {
    auto name = pass->name();
    mPasses.emplace(name, std::move(pass));
}
void PassRegistry::registerPass(std::shared_ptr<TransformPass<Function>> pass) {
    auto name = pass->name();
    mPasses.emplace(name, std::make_shared<FunctionPassWrapper>(std::move(pass)));
}
std::vector<std::shared_ptr<TransformPass<Module>>> PassRegistry::collect(std::initializer_list<std::string_view> list) const {
    std::vector<std::shared_ptr<TransformPass<Module>>> ret;
    ret.reserve(list.size());
    for(auto name : list) {
        if(auto iter = mPasses.find(name); iter != mPasses.cend()) {
            ret.push_back(iter->second);
        } else {
            DiagnosticsContext::get().attach<Reason>("invalid pass name").reportFatal();
        }
    }
    return ret;
}

PassRegistry& PassRegistry::get() {
    static PassRegistry instance;
    return instance;
}

CMMC_NAMESPACE_END

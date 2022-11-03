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

#include <cmmc/ExecutionEngine/Interpreter.hpp>
#include <cmmc/IR/Attachments.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/EnumName.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <fstream>
#include <iostream>
#include <limits>
#include <memory>
#include <string>

CMMC_NAMESPACE_BEGIN

static Flag debugTransform;
static StringOpt referenceOutput;
extern StringOpt executeInput;
static IntegerOpt skipCount;

static uint32_t runCount = 0;

CMMC_INIT_OPTIONS_BEGIN
debugTransform.setName("debug-transform", 'd').setDesc("print transform pass result step by step");
referenceOutput.setName("reference-output", 'R').setDesc("reference output for debugging");
skipCount.withDefault(0)
    .setName("skip-transform-count", 'T')
    .setDesc("skip the correctness check for the first N transform runs");
CMMC_INIT_OPTIONS_END

template <>
TransformPass<Function>::~TransformPass() {}
template <>
TransformPass<Module>::~TransformPass() {}

std::variant<ConstantValue*, SimulationFailReason> runMain(Module& module, SimulationIOContext& ctx);
static std::string loadString(const std::string& input) {
    std::string str;
    std::ifstream in{ input, std::ios::binary | std::ios::in };
    in.seekg(0, std::ios::end);
    const size_t size = in.tellg();
    in.seekg(0, std::ios::beg);
    str.resize(size);
    in.read(str.data(), size);
    return str;
}
static void verifyModuleExec(Module& module) {
    const auto tempOutput = "/tmp/cmmcsim";
    int retCode = 0;

    {
        auto ref = referenceOutput.get(false);
        if(ref.empty())
            return;

        std::cerr << "verify round " << (++runCount);
        if(runCount <= skipCount.get()) {
            std::cerr << " skipped" << std::endl;
            return;
        }

        InputStream in{ executeInput.get() };
        OutputStream out{ tempOutput };
        SimulationIOContext ctx{ in, out };
        const auto ret = runMain(module, ctx);
        std::visit(
            [&](auto ret) {
                if constexpr(std::is_same_v<std::decay_t<decltype(ret)>, ConstantValue*>) {
                    if(auto val = dynamic_cast<ConstantInteger*>(ret)) {
                        retCode = val->getSignExtended();
                    } else {
                        std::cerr << " failed" << std::endl;
                        DiagnosticsContext::get().attach<Reason>("main should return a integer").reportFatal();
                    }
                } else {
                    std::cerr << " failed" << std::endl;
                    DiagnosticsContext::get().attach<Reason>(enumName(ret)).reportFatal();
                }
            },
            ret);
    }

    auto answer = loadString(tempOutput);
    if(!answer.empty() && answer.back() != '\n')
        answer.push_back('\n');
    answer += std::to_string(retCode);
    answer += '\n';
    const auto standandAnswer = loadString(referenceOutput.get());

    if(answer == standandAnswer) {
        std::cerr << " passed" << std::endl;
    } else {
        std::cerr << " failed" << std::endl;
        DiagnosticsContext::get().attach<Reason>("output mismatch").reportFatal();
    }
}

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
            if(debugTransform.get()) {
                verifyModuleExec(item);
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
            // Code Move
            // "CodeMove",  //
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

    if(level >= OptimizationLevel::O2) {
        for(auto pass : passesSource.collect({
                "ScalarMem2Reg",          //
                "StoreEliminate",         // clean up
                "BlockArgEliminate",      // clean up
                "FreeEliminate",          // clean up
                "NoSideEffectEliminate",  // clean up
                "SmallBlockInlining",     //
            }))
            root->addPass(pass);
    }

    root->addPass(iter);  // post optimization

    /*
    for(auto& pass : passesSource.collect({ "UninitializedCheck" }))
        root->addPass(pass);
    */
    if(debugTransform.get()) {
        for(auto& pass : passesSource.collect({ "DumpCFG" }))
            root->addPass(pass);
    }
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

                if(debugTransform.get()) {
                    verifyModuleExec(module);
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

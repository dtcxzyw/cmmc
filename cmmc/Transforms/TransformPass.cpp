/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2023 CMMC Authors
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

#include <chrono>
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CallGraphSCC.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/ExecutionEngine/Interpreter.hpp>
#include <cmmc/IR/Attachments.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <cmmc/Support/StaticReflection.hpp>
#include <cmmc/Support/StringFlyWeight.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <limits>
#include <memory>
#include <optional>
#include <ostream>
#include <string>
#include <string_view>
#include <type_traits>

CMMC_NAMESPACE_BEGIN

Flag debugTransform;    // NOLINT
IntegerOpt skipCount;   // NOLINT
uint32_t runCount = 0;  // NOLINT

template <>
TransformPass<Function>::~TransformPass() = default;
template <>
TransformPass<Module>::~TransformPass() = default;

template <>
String TransformPass<Module>::dump(std::ostream& out, String prev, LabelAllocator& allocator) const {
    const auto label = allocator.allocate(String::get("p"));
    out << label << "[label = " << name() << "];\n";
    out << prev << " -> " << label << ";\n";
    return label;
}

template <>
String TransformPass<Function>::dump(std::ostream&, String, LabelAllocator&) const {
    reportUnreachable(CMMC_LOCATION());
}

void verifyModuleExec(Module& module, AnalysisPassManager& analysis, const std::string_view& passName);

template <typename Scope>
std::string_view PassManager<Scope>::name() const noexcept {
    return "PassManager"sv;
}

static void cleanupUnusedInsts(Function& func) {
    for(auto block : func.blocks()) {
        block->instructions().remove_if([](Instruction* inst) { return !inst->isUsed() && isNoSideEffectExpr(*inst); });
    }
}
static void cleanupUnusedInsts(Module& module) {
    for(auto global : module.globals()) {
        if(global->isFunction())
            cleanupUnusedInsts(*global->as<Function>());
    }
}

template <typename Scope>
std::optional<size_t> PassManager<Scope>::run(Scope& item, AnalysisPassManager& analysis, size_t lastStop) const {
    auto dumpItem = [&] {
        if(runCount < skipCount.get())
            return;
        if constexpr(std::is_same_v<Function, Scope>)
            item.dump(std::cerr, Noop{});
        else
            item.dump(std::cerr);
    };

    if(debugTransform.get()) {
        std::cerr << "Original" << std::endl;
        dumpItem();
        verifyModuleExec(analysis.module(), analysis, name());
    }

    bool modified = false;
    size_t idx = 0, newLastStop = 0;
    for(auto& pass : mPasses) {
        if(!modified && idx >= lastStop)
            return std::nullopt;

        if(pass->isWrapper()) {
            if(pass->run(item, analysis)) {
                analysis.invalidateModule();
                cleanupUnusedInsts(item);
                modified = true;
                newLastStop = idx + 1;
            }
        } else {
            Stage stage{ pass->name() };
            if(debugTransform.get()) {
                std::cerr << "\033[1;32m" << pass->name() << "\033[0m" << std::endl;
            }
            if(pass->run(item, analysis)) {
                analysis.invalidateModule();
                cleanupUnusedInsts(item);
                modified = true;
                newLastStop = idx + 1;

                if(debugTransform.get()) {
                    std::cerr << "\tmodified" << std::endl;
                    dumpItem();
                }
                if(!item.verify(std::cerr))
                    DiagnosticsContext::get().attach<Attachment<Scope>>("item", &item).reportFatal();
                if(debugTransform.get()) {
                    verifyModuleExec(analysis.module(), analysis, pass->name());
                }
            }
            // else {
            //     if constexpr(std::is_same_v<Scope, Function>)
            //         item.dump(std::cerr, Noop{});
            // }
        }

        ++idx;
    }
    return modified ? std::optional<size_t>{ newLastStop } : std::nullopt;
}

template <typename Scope>
bool PassManager<Scope>::run(Scope& item, AnalysisPassManager& analysis) const {
    return run(item, analysis, std::numeric_limits<size_t>::max()).has_value();
}

template <typename Scope>
void PassManager<Scope>::addPass(std::shared_ptr<TransformPass<Scope>> pass) {
    mPasses.push_back(std::move(pass));
}

class IterationPassWrapper final : public TransformPass<Function> {
    std::shared_ptr<PassManager<Function>> mSubPasses;
    uint32_t mMaxIterations;
    bool mTreatWarningAsError;

public:
    IterationPassWrapper(std::shared_ptr<PassManager<Function>> subPasses, uint32_t maxIterations, bool treatWarningAsError)
        : mSubPasses{ std::move(subPasses) }, mMaxIterations{ maxIterations }, mTreatWarningAsError{ treatWarningAsError } {}
    bool run(Function& item, AnalysisPassManager& analysis) const override {
        bool modified = false;
        bool stopEarly = false;
        using namespace std::literals;
        constexpr auto timeout = 20s;
        const auto deadline = Clock::now() + timeout;
        size_t lastStop = std::numeric_limits<size_t>::max();
        for(uint32_t i = 0; i < mMaxIterations; ++i) {
            auto newLastStop = mSubPasses->run(item, analysis, lastStop);
            if(!newLastStop) {
                stopEarly = true;
                break;
            }

            lastStop = newLastStop.value();
            analysis.invalidateFunc(item);
            cleanupUnusedInsts(item);
            modified = true;
            if(!debugTransform.get()) {
                const auto now = Clock::now();
                if(now > deadline)
                    return modified;
            }
        }
        if(!stopEarly && mTreatWarningAsError)
            DiagnosticsContext::get().attach<Reason>("partial optimization").reportFatal();
        return modified;
    }
    [[nodiscard]] std::string_view name() const noexcept override {
        return "IterationPassWrapper"sv;
    }
    [[nodiscard]] bool isWrapper() const noexcept override {
        return true;
    }
    String dump(std::ostream& out, String prev, LabelAllocator& allocator) const override {
        const auto clusterName = allocator.allocate(String::get("cluster_")).withDefaultID(0);

        out << "subgraph " << clusterName << " {\n";
        const auto start = allocator.allocate(String::get("start"));
        const auto end = allocator.allocate(String::get("end"));
        out << start << "[color=blue];\n";
        out << end << "[color=blue];\n";
        const auto last = mSubPasses->dump(out, start, allocator);
        out << last << " -> " << end << ";\n";
        out << end << " -> " << start << "[color=red];\n";
        out << "}\n";
        out << prev << " -> " << start << ";\n";
        return end;
    }
};

class FunctionPassWrapper final : public TransformPass<Module> {
    std::shared_ptr<TransformPass<Function>> mPass;

public:
    explicit FunctionPassWrapper(std::shared_ptr<TransformPass<Function>> pass) : mPass{ std::move(pass) } {}
    bool run(Module& module, AnalysisPassManager& analysis) const override {
        bool modified = false;

        const auto funcOrder = analysis.get<CallGraphSCCAnalysis>().getOrder();
        for(auto func : funcOrder) {
            if(func->blocks().empty())
                continue;
            Stage stage{ mPass->name() };
            if(debugTransform.get()) {
                std::cerr << "\033[1;32m" << mPass->name() << "\033[0m" << ' ' << func->getSymbol() << std::endl;
            }
            if(mPass->run(*func, analysis)) {
                if(debugTransform.get()) {
                    std::cerr << "\tmodified" << std::endl;
                    if(runCount >= skipCount.get())
                        func->dump(std::cerr, Noop{});
                }
                analysis.invalidateFunc(*func);
                modified = true;
                assert(func->verify(std::cerr));
                if(debugTransform.get()) {
                    verifyModuleExec(module, analysis, mPass->name());
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
    [[nodiscard]] bool isWrapper() const noexcept override {
        return true;
    }
    [[nodiscard]] std::string_view name() const noexcept override {
        return mPass->name();
    }
};

std::shared_ptr<TransformPass<Module>> createWrapper(std::shared_ptr<TransformPass<Function>> funcPass) {
    return std::make_shared<FunctionPassWrapper>(std::move(funcPass));
}

template <>
std::shared_ptr<PassManager<Module>> PassManager<Module>::get(OptimizationLevel level) {
    auto root = std::make_shared<PassManager<Module>>();

    if(level == OptimizationLevel::O0)
        return root;

    auto& passesSource = PassRegistry::get();
    auto perFunc = std::make_shared<PassManager<Function>>();

    auto globalOpt = std::make_shared<PassManager<Module>>();
    for(auto& pass : passesSource.collectModulePass({
            "GlobalVarAttrInfer",        //
            "StoreOnlyGlobalEliminate",  //
            "GlobalEliminate",           //
            "DeadArgEliminate",          //
        }))
        globalOpt->addPass(pass);

    // preprocess to improve transform performance
    for(auto& pass : passesSource.collectFunctionPass({
            "BlockSort",              //
            "NoSideEffectEliminate",  // clean up
            "ConstantMerge",          //
            "SimpleCSE",              //
            "NoSideEffectEliminate",  // clean up
            "ArithmeticReduce",       //
            "NoSideEffectEliminate",  // clean up
            "MergeBranch",            //
            "SimplifyBranch",         //
            "CombineBranch",          //
            "BlockMerge",             //
            "BlockEliminate",         // clean up
            "NoSideEffectEliminate",  // clean up
        }))
        perFunc->addPass(pass);

    auto basic = std::make_shared<PassManager<Function>>();
    for(auto& pass : passesSource.collectFunctionPass({
            // Preprocess
            "FunctionAttrInfer",      //
            "BlockSort",              //
            "ConstantPropagation",    //
            "ScalarMem2Reg",          //
            "StoreEliminate",         //
            "NoSideEffectEliminate",  // clean up
            // Constant
            "ConstexprFuncEval",       //
            "ConstantMerge",           //
            "ConditionalPropagation",  //
            "SimpleCSE",               //
            "GEPCombine",              //
            "GlobalUse2PlaceHolder",   //
            "NoSideEffectEliminate",   // clean up
            // Arithmetic
            "IPConstantPropagation",     //
            "ConstantPropagation",       //
            "PointerArithmeticCombine",  //
            "ArithmeticReduce",          //
            "RangeAwareArithReduce",     //
            "ExtGEPCombine",             //
            "NoSideEffectEliminate",     // clean up
            // Loop
            "LoopRotate",               //
            "LoopCanonicalize",         //
            "LoopBranchProbFix",        //
            "LoopEliminate",            //
            "LICMMemory",               //
            "LoopInvariantCodeMotion",  //
            // Control flow
            "Branch2Select",        //
            "MergeBranch",          //
            "SimplifyBranch",       //
            "CombineBranch",        //
            "BlockMerge",           //
            "PhiMerge",             //
            "ShortCircuitCombine",  //
            "UnifyReturn",          //
            "BlockEliminate",       // clean up
            // Load/Store
            "LoadReduce",             //
            "StoreEliminate",         //
            "PhiEliminate",           // clean up
            "NoSideEffectEliminate",  // clean up
            // Outline
            "ConstantHoist",   //
            "BlockOutliner",   //
            "BlockMerge",      //
            "BlockEliminate",  // clean up
            // Code Move
            "CodeMove",               //
            "CodeSink",               //
            "NoSideEffectEliminate",  // clean up
            // MemoryOp
            "MemoryIntrinsicOpt",  //
            // Postprocess
            "NoReturnCallEliminate",  //
            "NoSideEffectEliminate",  // clean up
            "SCCEliminate",           //
            "UndefPropagation"        //
        }))
        basic->addPass(pass);

    if(level >= OptimizationLevel::O2) {
        for(const auto& pass : passesSource.collectFunctionPass({
                // "CompareCombine",         //
                "GVN",                    //
                "NoSideEffectEliminate",  // clean up
                "LoopUnroll",             //
                "BlockMerge",             // clean up
                "BlockEliminate",         // clean up
                "LoopGEPCombine",         //
                "NoSideEffectEliminate",  // clean up
                "SROA",
            }))
            basic->addPass(pass);
    }

    if(level >= OptimizationLevel::O3) {
        // Assuming that all functions are terminated with return instructions normally.
        for(const auto& pass : passesSource.collectFunctionPass({
                "InfiniteEliminate",                 //
                "UnreachableEliminate",              //
                "SimplifyPartialUnreachableBranch",  //
                "BlockEliminate",                    // clean up
            }))
            basic->addPass(pass);
    }

    auto iter = std::make_shared<IterationPassWrapper>(std::move(basic), 1024, true);

    perFunc->addPass(iter);

    if(level >= OptimizationLevel::O2) {
        for(const auto& pass : passesSource.collectFunctionPass({
                "SmallBlockInlining",     //
                "NoSideEffectEliminate",  // clean up
                "PhiEliminate",           //
                "StoreEliminate",         // clean up
                "NoSideEffectEliminate",  // clean up
            }))
            perFunc->addPass(pass);
        perFunc->addPass(iter);  // middle-1 optimization
    }

    if(level >= OptimizationLevel::O3) {
        // TODO: it is a time costuming phase.
        auto specialization = std::make_shared<PassManager<Function>>();
        for(const auto& pass : passesSource.collectFunctionPass({
                "BlockArgSpecialization",  //
                "ConstantPropagation",     // clean up
                "ArithmeticReduce",        // clean up
                "SimplifyBranch",          // clean up
                "CombineBranch",           // clean up
                "BlockMerge",              // clean up
                "BlockEliminate",          // clean up
                "NoSideEffectEliminate",   // clean up
            }))
            specialization->addPass(pass);
        perFunc->addPass(std::make_shared<IterationPassWrapper>(std::move(specialization), 256, false));
        perFunc->addPass(iter);  // middle-2 optimization
    }

    if(level >= OptimizationLevel::O3) {
        for(const auto& pass : passesSource.collectFunctionPass({
                "Reassociate",            //
                "ConstantPropagation",    //
                "NoSideEffectEliminate",  // clean up
            }))
            perFunc->addPass(pass);
        perFunc->addPass(iter);  // middle-3 optimization
    }

    auto perFuncWithInline = std::make_shared<PassManager<Function>>();
    perFuncWithInline->addPass(perFunc);

    if(level >= OptimizationLevel::O3) {
        for(const auto& pass : passesSource.collectFunctionPass({
                "DiscardReturnValue",  //
                "TailCallEliminate",   //
                "ShrinkWrapping",      //
                "CallEliminate",       //
                "LoadEliminate",       //
                "FuncInlining",        //
            }))
            perFuncWithInline->addPass(pass);
        perFuncWithInline->addPass(iter);

        for(const auto& pass : passesSource.collectFunctionPass({
                "DynamicLoopUnroll",  //
                "BlockMerge",         // clean up
                "BlockEliminate",     // clean up
            }))
            perFuncWithInline->addPass(pass);
        perFuncWithInline->addPass(perFunc);  // after inlining

        for(const auto& pass : passesSource.collectFunctionPass({
                "DiscardReturnValue",  //
                "TailCallEliminate",   //
                "CallEliminate",       //
                "LoadEliminate",       //
                "FuncInlining",        //
            }))
            perFuncWithInline->addPass(pass);
        perFuncWithInline->addPass(iter);
    }

    root->addPass(globalOpt);
    root->addPass(std::make_shared<FunctionPassWrapper>(perFuncWithInline));

    if(level >= OptimizationLevel::O2) {
        for(const auto& pass : passesSource.collectModulePass({
                "GlobalScalar2Local",
                "LargeLocal2Global",
                "ImmutableScalarRefArg2Value",
            }))
            root->addPass(pass);
        root->addPass(globalOpt);
        root->addPass(std::make_shared<FunctionPassWrapper>(perFuncWithInline));
    }

    // final cleanup
    for(const auto& pass : passesSource.collectModulePass({
            "UnusedTypeEliminate",  //
            "GlobalEliminate",      //
            "GlobalZeroEliminate",  //
            //"UninitializedCheck"
        }))
        root->addPass(pass);

    // TODO: inst sort for testing
    if(debugTransform.get()) {
        for(auto& pass : passesSource.collectFunctionPass({ "DumpCFG" }))
            root->addPass(std::make_shared<FunctionPassWrapper>(pass));
    }
    for(auto& pass : passesSource.collectFunctionPass({ "InstReorder" }))
        root->addPass(std::make_shared<FunctionPassWrapper>(pass));
    return root;
}

void PassRegistry::registerPass(std::shared_ptr<TransformPass<Module>> pass) {
    auto name = pass->name();
    mModulePasses.emplace(name, std::move(pass));
}
void PassRegistry::registerPass(std::shared_ptr<TransformPass<Function>> pass) {
    auto name = pass->name();
    mFunctionPasses.emplace(name, std::move(pass));
}
std::vector<std::shared_ptr<TransformPass<Module>>>
PassRegistry::collectModulePass(std::initializer_list<std::string_view> list) const {
    std::vector<std::shared_ptr<TransformPass<Module>>> ret;
    ret.reserve(list.size());
    for(auto name : list) {
        if(auto iter = mModulePasses.find(name); iter != mModulePasses.cend()) {
            ret.push_back(iter->second);
        } else {
            DiagnosticsContext::get().attach<Reason>("Unknown module pass").attach<Reason>(name).reportFatal();
        }
    }
    return ret;
}
std::vector<std::shared_ptr<TransformPass<Function>>>
PassRegistry::collectFunctionPass(std::initializer_list<std::string_view> list) const {
    std::vector<std::shared_ptr<TransformPass<Function>>> ret;
    ret.reserve(list.size());
    for(auto name : list) {
        if(auto iter = mFunctionPasses.find(name); iter != mFunctionPasses.cend()) {
            ret.push_back(iter->second);
        } else {
            DiagnosticsContext::get().attach<Reason>("Unknown function pass").attach<Reason>(name).reportFatal();
        }
    }
    return ret;
}

PassRegistry& PassRegistry::get() {
    static PassRegistry instance;
    return instance;
}

template <typename Scope>
String PassManager<Scope>::dump(std::ostream& out, String prev, LabelAllocator& allocator) const {
    for(auto& pass : mPasses)
        prev = pass->dump(out, prev, allocator);
    return prev;
}

template <>
void PassManager<Module>::printOptPipeline(OptimizationLevel level) {
    auto pipeline = get(level);

    LabelAllocator allocator;
    const auto start = allocator.allocate(String::get("start"));
    const auto end = allocator.allocate(String::get("end"));

    auto& out = std::cout;
    out << "digraph {\n";
    out << start << "[color=green];\n";
    out << end << "[color=green];\n";
    const auto last = pipeline->dump(out, start, allocator);
    out << last << " -> " << end << ";\n}\n";
}

template class PassManager<Function>;
template class PassManager<Module>;

CMMC_NAMESPACE_END

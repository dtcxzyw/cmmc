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

#include "cmmc/IR/Value.hpp"
#include <chrono>
#include <cmmc/Analysis/CallGraphSCC.hpp>
#include <cmmc/ExecutionEngine/Interpreter.hpp>
#include <cmmc/IR/Attachments.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/EnumName.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <cmmc/Support/StringFlyWeight.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <fstream>
#include <iostream>
#include <limits>
#include <memory>
#include <ostream>
#include <string>
#include <string_view>
#include <type_traits>

CMMC_NAMESPACE_BEGIN

static Flag debugTransform;        // NOLINT
static StringOpt referenceOutput;  // NOLINT
extern StringOpt executeInput;     // NOLINT
static IntegerOpt skipCount;       // NOLINT
extern StringOpt targetName;       // NOLINT

static uint32_t runCount = 0;  // NOLINT

CMMC_INIT_OPTIONS_BEGIN
debugTransform.setName("debug-transform", 'd').setDesc("print transform pass result step-by-step");
referenceOutput.setName("reference-output", 'R').setDesc("reference output for debugging");
skipCount.withDefault(0)
    .setName("skip-transform-count", 'T')
    .setDesc("skip the correctness check for the first N transform runs");
CMMC_INIT_OPTIONS_END

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

std::variant<ConstantValue*, SimulationFailReason> runMain(Module& module, SimulationIOContext& ctx);
static std::string loadString(const std::string& input) {
    std::string str;
    std::ifstream in{ input, std::ios::binary | std::ios::in };
    in.seekg(0, std::ios::end);
    const auto size = in.tellg();
    in.seekg(0, std::ios::beg);
    str.resize(static_cast<size_t>(size));
    in.read(str.data(), size);
    return str;
}
static void verifyModuleExec(Module& module) {
    const auto tempOutput = "/tmp/cmmcsim";
    int retCode = 0;

    {
        const auto& ref = referenceOutput.get(false);
        if(ref.empty())
            return;

        std::cerr << "verify round "sv << (++runCount);
        if(runCount <= skipCount.get()) {
            std::cerr << " skipped"sv << std::endl;
            return;
        }

        InputStream in{ executeInput.get() };
        OutputStream out{ tempOutput };
        SimulationIOContext ctx{ in, out };
        const auto ret = runMain(module, ctx);
        std::visit(
            [&](auto retVal) {
                if constexpr(std::is_same_v<std::decay_t<decltype(retVal)>, ConstantValue*>) {
                    if(auto val = dynamic_cast<ConstantInteger*>(retVal)) {
                        retCode = static_cast<int>(val->getSignExtended()) & 0x7f;
                    } else {
                        std::cerr << " failed"sv << std::endl;
                        DiagnosticsContext::get().attach<Reason>("main should return a integer").reportFatal();
                    }
                } else {
                    std::cerr << " failed"sv << std::endl;
                    DiagnosticsContext::get().attach<Reason>(enumName(retVal)).reportFatal();
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
        std::cerr << " passed"sv << std::endl;
    } else {
        std::cerr << " failed"sv << std::endl;
        DiagnosticsContext::get().attach<Reason>("output mismatch").reportFatal();
    }
}

template <typename Scope>
std::string_view PassManager<Scope>::name() const noexcept {
    return "PassManager"sv;
}

template <typename Scope>
bool PassManager<Scope>::run(Scope& item, AnalysisPassManager& analysis) const {
    auto dumpItem = [&] {
        if constexpr(std::is_same_v<Function, Scope>)
            item.dump(std::cerr, Noop{});
        else
            item.dump(std::cerr);
    };

    if(debugTransform.get()) {
        std::cerr << "Original" << std::endl;
        dumpItem();
        verifyModuleExec(analysis.module());
    }

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

                if(debugTransform.get()) {
                    std::cerr << "\tmodified" << std::endl;
                    dumpItem();
                }
                if(!item.verify(std::cerr))
                    DiagnosticsContext::get().attach<Attachment<Scope>>("item", &item).reportFatal();
                if(debugTransform.get()) {
                    verifyModuleExec(analysis.module());
                }
            }
        }
    }
    return modified;
}

template <typename Scope>
void PassManager<Scope>::addPass(std::shared_ptr<TransformPass<Scope>> pass) {
    mPasses.push_back(std::move(pass));
}

IterationPassWrapper::IterationPassWrapper(std::shared_ptr<PassManager<Function>> subPasses, uint32_t maxIterations,
                                           bool treatWarningAsError)
    : mSubPasses{ std::move(subPasses) }, mMaxIterations{ maxIterations }, mTreatWarningAsError{ treatWarningAsError } {}

bool IterationPassWrapper::run(Function& item, AnalysisPassManager& analysis) const {
    bool modified = false;
    bool stopEarly = false;
    using namespace std::literals;
    constexpr auto timeout = 1s;
    const auto deadline = Clock::now() + timeout;
    for(uint32_t i = 0; i < mMaxIterations; ++i) {
        if(!mSubPasses->run(item, analysis)) {
            stopEarly = true;
            break;
        }
        analysis.invalidateModule();
        modified = true;
        const auto now = Clock::now();
        if(now > deadline)
            return modified;
    }
    if(!stopEarly && mTreatWarningAsError)
        DiagnosticsContext::get().attach<Reason>("partial optimization").reportFatal();
    return modified;
}

std::string_view IterationPassWrapper::name() const noexcept {
    return "IterationPassWrapper"sv;
}

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
                std::cerr << mPass->name() << ' ' << func->getSymbol() << std::endl;
            }
            if(mPass->run(*func, analysis)) {
                if(debugTransform.get()) {
                    std::cerr << "\tmodified" << std::endl;
                    func->dump(std::cerr, Noop{});
                }
                analysis.invalidateFunc(*func);
                modified = true;
                assert(func->verify(std::cerr));
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
    [[nodiscard]] bool isWrapper() const noexcept override {
        return true;
    }
    [[nodiscard]] std::string_view name() const noexcept override {
        return mPass->name();
    }
};

template <>
std::shared_ptr<PassManager<Module>> PassManager<Module>::get(OptimizationLevel level) {
    auto root = std::make_shared<PassManager<Module>>();

    if(level == OptimizationLevel::O0)
        return root;

    auto& passesSource = PassRegistry::get();
    auto perFunc = std::make_shared<PassManager<Function>>();

    auto globalOpt = std::make_shared<PassManager<Module>>();
    for(auto& pass : passesSource.collectModulePass({
            "GlobalVarAttrInfer",  //
            "GlobalEliminate"      //
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
            "NoSideEffectEliminate",  // clean up
            // Constant
            "ConstexprFuncEval",       //
            "ConstantMerge",           //
            "ConditionalPropagation",  //
            "SimpleCSE",               //
            "GEPCombine",              //
            "NoSideEffectEliminate",   // clean up
            // Arithmetic
            "ConstantPropagation",       //
            "PointerArithmeticCombine",  //
            "ArithmeticReduce",          //
            "ExtGEPCombine",             //
            "NoSideEffectEliminate",     // clean up
            // Loop
            //"LoopRotate",         //
            "LoopCanonicalize",   //
            "LoopBranchProbFix",  //
            "LoopEliminate",      //
            // Control flow
            "TailCallEliminate",  //
            "MergeBranch",        //
            "SimplifyBranch",     //
            "CombineBranch",      //
            "BlockMerge",         //
            "BlockEliminate",     // clean up
            // Load/Store
            "LoadReduce",             //
            "StoreEliminate",         //
            "NoSideEffectEliminate",  // clean up
            // Outline
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
            "UndefPropagation"        //
        }))
        basic->addPass(pass);

    if(level >= OptimizationLevel::O2) {
        for(const auto& pass : passesSource.collectFunctionPass({
                "CompareCombine",         //
                "GVN",                    //
                "NoSideEffectEliminate",  // clean up
                "LoopUnroll",             //
                "BlockMerge",             // clean up
                "BlockEliminate",         // clean up
                "LoopGEPCombine",         //
                "NoSideEffectEliminate",  // clean up
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
                "ScalarMem2Reg",          //
                "StoreEliminate",         // clean up
                "NoSideEffectEliminate",  // clean up
                //"SmallBlockInlining",     //
            }))
            perFunc->addPass(pass);
        perFunc->addPass(iter);  // middle-1 optimization
    }

    if(level >= OptimizationLevel::O3) {
        for(const auto& pass : passesSource.collectFunctionPass({
                //"DynamicLoopUnroll",  //
                "BlockMerge",      // clean up
                "BlockEliminate",  // clean up
            }))
            perFunc->addPass(pass);
        perFunc->addPass(iter);  // middle-2 optimization
    }

    if(level >= OptimizationLevel::O3) {
        for(const auto& pass : passesSource.collectFunctionPass({
                "Reassociate",            //
                "ConstantPropagation",    //
                "NoSideEffectEliminate",  // clean up
            }))
            perFunc->addPass(pass);

        /*
        // TODO: it is a time costuming phase.
        auto specialization = std::make_shared<PassManager>();
        for(const auto& pass : passesSource.collect({
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
        root->addPass(std::make_shared<IterationPassWrapper>(std::move(specialization), 256, false));
        */
        perFunc->addPass(iter);  // middle-3 optimization
    }

    auto perFuncWithInline = std::make_shared<PassManager<Function>>();
    perFuncWithInline->addPass(perFunc);

    if(level >= OptimizationLevel::O3) {
        for(const auto& pass : passesSource.collectFunctionPass({
                "FuncInlining",  //
            }))
            perFuncWithInline->addPass(pass);
        perFuncWithInline->addPass(perFunc);  // after inlining
    }

    root->addPass(globalOpt);
    root->addPass(std::make_shared<FunctionPassWrapper>(perFuncWithInline));

    if(level >= OptimizationLevel::O2) {
        for(const auto& pass : passesSource.collectModulePass({
                "GlobalScalar2Local",
            }))
            root->addPass(pass);
        root->addPass(globalOpt);
        root->addPass(std::make_shared<FunctionPassWrapper>(perFunc));
    }

    // final cleanup
    for(const auto& pass : passesSource.collectModulePass({
            "UnusedTypeEliminate",  //
            "GlobalEliminate"       //
            //"UninitializedCheck"
        }))
        root->addPass(pass);

    // TODO: inst sort for testing
    if(debugTransform.get()) {
        for(auto& pass : passesSource.collectFunctionPass({ "DumpCFG" }))
            root->addPass(std::make_shared<FunctionPassWrapper>(pass));
    }
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
            DiagnosticsContext::get().attach<Reason>("invalid module pass name").attach<Reason>(name).reportFatal();
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
            DiagnosticsContext::get().attach<Reason>("invalid module pass name").attach<Reason>(name).reportFatal();
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

String IterationPassWrapper::dump(std::ostream& out, String prev, LabelAllocator& allocator) const {
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

CMMC_NAMESPACE_END

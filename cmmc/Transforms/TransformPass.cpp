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

bool PassManager::run(Module& item, AnalysisPassManager& analysis) const {
    if(debugTransform.get()) {
        std::cerr << "Original" << std::endl;
        item.dump(std::cerr);
        verifyModuleExec(item);
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
                    item.dump(std::cerr);
                }
                if(!item.verify(std::cerr))
                    DiagnosticsContext::get().attach<ModuleAttachment>("module", &item).reportFatal();
                if(debugTransform.get()) {
                    verifyModuleExec(item);
                }
            }
        }
    }
    return modified;
}

void PassManager::addPass(std::shared_ptr<TransformPass<Module>> pass) {
    mPasses.push_back(std::move(pass));
}

IterationPassWrapper::IterationPassWrapper(std::shared_ptr<PassManager> subPasses, uint32_t maxIterations,
                                           bool treatWarningAsError)
    : mSubPasses{ std::move(subPasses) }, mMaxIterations{ maxIterations }, mTreatWarningAsError{ treatWarningAsError } {}

bool IterationPassWrapper::run(Module& item, AnalysisPassManager& analysis) const {
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

std::shared_ptr<PassManager> PassManager::get(OptimizationLevel level) {
    auto root = std::make_shared<PassManager>();

    if(level == OptimizationLevel::O0)
        return root;

    auto& passesSource = PassRegistry::get();

    // preprocess to improve transform performance
    for(auto& pass : passesSource.collect({
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
            "GlobalEliminate"         //
        }))
        root->addPass(pass);

    auto basic = std::make_shared<PassManager>();
    for(auto& pass : passesSource.collect({
            // Preprocess
            "FunctionAttrInfer",      //
            "GlobalVarAttrInfer",     //
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
            // "BlockOutliner",   //
            "BlockMerge",      //
            "BlockEliminate",  // clean up
            // Code Move
            "CodeMove",  //
            //"CodeSink",               //
            "NoSideEffectEliminate",  // clean up
            // MemoryOp
            "MemoryIntrinsicOpt",  //
            // Postprocess
            "NoReturnCallEliminate",  //
            "NoSideEffectEliminate",  // clean up
            "GlobalEliminate",        //
            "UndefPropagation"        //
        }))
        basic->addPass(pass);

    if(level >= OptimizationLevel::O2) {
        for(const auto& pass : passesSource.collect({
                //  "GVN",                    //
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
        for(const auto& pass : passesSource.collect({
                "InfiniteEliminate",                 //
                "UnreachableEliminate",              //
                "SimplifyPartialUnreachableBranch",  //
                "BlockEliminate",                    // clean u
            }))
            basic->addPass(pass);
    }

    auto iter = std::make_shared<IterationPassWrapper>(std::move(basic), 1024, true);

    root->addPass(iter);  // pre optimization

    if(level >= OptimizationLevel::O2) {
        for(const auto& pass : passesSource.collect({ "GlobalScalar2Local" }))
            root->addPass(pass);
    }

    if(level >= OptimizationLevel::O3) {
        for(const auto& pass : passesSource.collect({
                "FuncInlining",  //
                // "CombineFma", // TODO: fast math?
            }))
            root->addPass(pass);
    }

    root->addPass(iter);  // optimization after inlining

    if(level >= OptimizationLevel::O2) {
        for(const auto& pass : passesSource.collect({
                //"ScalarMem2Reg",          //
                "StoreEliminate",         // clean up
                "NoSideEffectEliminate",  // clean up
                "SmallBlockInlining",     //
            }))
            root->addPass(pass);
        root->addPass(iter);  // middle-1 optimization
    }

    if(level >= OptimizationLevel::O3) {
        for(const auto& pass : passesSource.collect({
                "DynamicLoopUnroll",  //
                "BlockMerge",         // clean up
                "BlockEliminate",     // clean up
            }))
            root->addPass(pass);
        root->addPass(iter);  // middle-2 optimization
    }

    if(level >= OptimizationLevel::O3) {
        for(const auto& pass : passesSource.collect({
                "Reassociate",            //
                "ConstantPropagation",    //
                "NoSideEffectEliminate",  // clean up
            }))
            root->addPass(pass);

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
    }

    root->addPass(iter);  // post optimization

    // final cleanup
    for(const auto& pass : passesSource.collect({
            "UnusedTypeEliminate",
            //"UninitializedCheck"
        }))
        root->addPass(pass);

    // TODO: inst/arg sort for testing
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

        const auto& funcOrder = analysis.get<CallGraphSCCAnalysis>().getOrder();
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
                    func->dump(std::cerr);
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
            DiagnosticsContext::get().attach<Reason>("invalid pass name").attach<Reason>(name).reportFatal();
        }
    }
    return ret;
}

PassRegistry& PassRegistry::get() {
    static PassRegistry instance;
    return instance;
}

String PassManager::dump(std::ostream& out, String prev, LabelAllocator& allocator) const {
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

void PassManager::printOptPipeline(OptimizationLevel level) {
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

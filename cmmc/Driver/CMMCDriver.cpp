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

#include <cassert>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/ExecutionEngine/Interpreter.hpp>
#include <cmmc/Frontend/Driver.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/TAC.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/EnumName.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <string>
#include <string_view>
#include <type_traits>
#include <variant>

using namespace cmmc;

CMMC_NAMESPACE_BEGIN

static Flag version;
static Flag help;
static Flag emitAST;
static Flag emitIR;
Flag strictMode;
IntegerOpt optimizationLevel;
extern StringOpt target;
static StringOpt outputPath;
StringOpt executeInput;
static Flag grammarCheck;

CMMC_INIT_OPTIONS_BEGIN
version.setName("version", 'v').setDesc("print CMMC build information");
help.setName("help", 'h').setDesc("print help information");
emitAST.setName("emitAST", 'a').setDesc("emit AST");
emitIR.setName("emitIR", 'i').setDesc("emit IR");
strictMode.setName("strict", 's').setDesc("disable language extensions (SPL only)");
optimizationLevel.withDefault(3).setName("opt", 'O').setDesc("optimiaztion level [0-3]");
outputPath.setName("output", 'o').setDesc("path to the output file");
grammarCheck.setName("grammar-check", 'g').setDesc("only check grammar");
executeInput.setName("execute-input", 'e').setDesc("execute with built-in interpreter");
CMMC_INIT_OPTIONS_END

std::variant<ConstantValue*, SimulationFailReason> runMain(Module& module, SimulationIOContext& ctx) {
    Interpreter interpreter{ 120'000'000'000ULL, 2ULL << 30, 1024 };
    Function* func = nullptr;
    for(auto global : module.globals())
        if(global->isFunction() && global->getSymbol() == "main") {
            func = global->as<Function>();
            break;
        }
    if(func)
        return interpreter.execute(module, *func, {}, ctx);
    return SimulationFailReason::NoEntry;
}

CMMC_NAMESPACE_END

static std::string getOutputPath(const std::string& defaultPath) {
    const auto& path = outputPath.get(false);
    return path.empty() ? defaultPath : path;
}

static int runIRPipeline(Module& module, const std::string& base) {
    if(!module.verify(std::cerr)) {
        DiagnosticsContext::get().attach<Reason>("Invalid IR").reportFatal();
    }
    AnalysisPassManager analysis{ &module };
    const auto& target = module.getTarget();
    target.legalizeModuleBeforeOpt(module, analysis);
    analysis.invalidateModule();

    {
        Stage stage{ "optimize IR" };
        const auto opt = PassManager::get(static_cast<OptimizationLevel>(optimizationLevel.get()));
        opt->run(module, analysis);
    }
    if(!module.verify(std::cerr)) {
        DiagnosticsContext::get().attach<Reason>("Invalid optimized IR").reportFatal();
    }

    if(emitIR.get()) {
        const auto path = getOutputPath(base + ".ir2");
        reportDebug() << "emitIR >> "sv << path << std::endl;
        std::ofstream out{ path };
        module.dump(out);
        return EXIT_SUCCESS;
    }

    if(auto& input = executeInput.get(false); !input.empty()) {
        InputStream in{ input };
        const auto path = getOutputPath(base + ".out");
        reportDebug() << "simulation << "sv << input << " >> "sv << path << std::endl;
        OutputStream out{ path };
        SimulationIOContext ctx{ in, out };
        const auto ret = runMain(module, ctx);
        return std::visit(
            [](auto ret) -> int {
                if constexpr(std::is_same_v<std::decay_t<decltype(ret)>, ConstantValue*>) {
                    if(auto val = dynamic_cast<ConstantInteger*>(ret)) {
                        return val->getSignExtended();
                    }
                    return EXIT_FAILURE;
                } else {
                    reportError() << enumName(ret) << std::endl;
                    return EXIT_FAILURE;
                }
            },
            ret);
    }

    const auto emitTAC = (::target.get() == "tac");
    const auto path = getOutputPath(base + (emitTAC ? ".ir" : ".s"));
    reportDebug() << (emitTAC ? "emitTAC >> " : "emitASM >> ") << path << std::endl;

    std::ofstream out{ path };
    const auto machineModule = lowerToMachineModule(module, analysis, static_cast<OptimizationLevel>(optimizationLevel.get()));
    // assert(machineModule->verify());
    {
        Stage stage{ "dump ASM" };
        target.emitAssembly(*machineModule, out);
    }

    return EXIT_SUCCESS;
}

static bool endswith(const std::string& str, const std::string_view& ext) {
    if(str.size() < ext.size())
        return false;
    return str.substr(str.size() - ext.size()) == ext;
}

int mainImpl(int argc, char** argv) {
    int start = parseCommands(argc, argv);

    if(version.get()) {
        reportInfo() << "CMMC " CMMC_VERSION << std::endl;
        reportInfo() << "Build time: " __TIME__ " " __DATE__ << std::endl;
        return EXIT_SUCCESS;
    }

    if(help.get()) {
        printHelpInfo();
        return EXIT_SUCCESS;
    }

    if(argc == start) {
        reportError() << "no input file"sv << std::endl;
        return EXIT_FAILURE;
    }

    if(argc - start != 1) {
        reportError() << "only one input file is accepted"sv << std::endl;
        return EXIT_FAILURE;
    }

    try {
        std::string path = argv[start];

        bool isSpl = endswith(path, ".spl"sv);
        bool isSysY = endswith(path, ".sy"sv);

        if(isSpl || isSysY) {
            const auto base = path.substr(0, path.size() - (isSpl ? 4 : 3));
            Module module;
            const auto target = TargetRegistry::get().selectTarget();
            module.setTarget(target.get());

            {
                Driver driver{ path, isSpl ? FrontEndLang::Spl : FrontEndLang::SysY, emitAST.get(), strictMode.get() };

                if(grammarCheck.get())
                    return EXIT_SUCCESS;

                if(emitAST.get()) {
                    const auto path = getOutputPath(base + ".ast");
                    reportDebug() << "emitAST >> "sv << path << std::endl;
                    std::ofstream out{ path };
                    driver.dump(out);
                    return EXIT_SUCCESS;
                }

                driver.emit(module);
            }

            return runIRPipeline(module, base);
        } else if(endswith(path, ".ir"sv)) {
            Module module;
            const auto target = TargetRegistry::get().selectTarget();
            module.setTarget(target.get());
            loadTAC(module, path);
            const auto base = path.substr(0, path.size() - 3);
            return runIRPipeline(module, base);
        }

        reportError() << "Unrecognized input"sv << std::endl;
        return EXIT_FAILURE;
    } catch(const std::exception& ex) {
        std::cerr << "Unexpected exception: "sv << ex.what() << std::endl;
    } catch(...) {
        std::cerr << "Unknown error"sv << std::endl;
    }
    return EXIT_FAILURE;
}

int main(int argc, char** argv) {
    auto& profiler = Profiler::get();
    const auto ret = mainImpl(argc, argv);
    if(ret == EXIT_SUCCESS) {
        profiler.printStatistics();
    }
    return ret;
}

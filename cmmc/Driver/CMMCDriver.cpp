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
#include <cmmc/Frontend/Driver.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/TAC.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <string>
#include <string_view>

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

CMMC_INIT_OPTIONS_BEGIN
version.setName("version", 'v').setDesc("print CMMC build information");
help.setName("help", 'h').setDesc("print help information");
emitAST.setName("emitAST", 'a');
emitIR.setName("emitIR", 'i');
strictMode.setName("strict", 's').setDesc("disable language extensions (SPL only)");
optimizationLevel.withDefault(3).setName("opt", 'O').setDesc("optimiaztion level [0-3]");
outputPath.setName("output", 'o').setDesc("path to the output file");
CMMC_INIT_OPTIONS_END

CMMC_NAMESPACE_END

static std::string getOutputPath(const std::string& defaultPath) {
    const auto& path = outputPath.get(false);
    return path.empty() ? defaultPath : path;
}

static int runIRPipeline(Module& module, const std::string& base) {
    const auto target = TargetRegistry::get().selectTarget();
    module.setTarget(target.get());
    const auto opt = PassManager::get(static_cast<OptimizationLevel>(optimizationLevel.get()));
    AnalysisPassManager analysis{ &module };
    opt->run(module, analysis);

    if(emitIR.get()) {
        const auto path = getOutputPath(base + ".ir2");
        reportDebug() << "emitIR >> " << path << std::endl;
        std::ofstream out{ path };
        module.dump(out);
        return EXIT_SUCCESS;
    }

    const auto emitTAC = (::target.get() == "tac");
    const auto path = getOutputPath(base + (emitTAC ? ".ir" : ".s"));
    reportDebug() << (emitTAC ? "emitTAC >> " : "emitASM >> ") << path << std::endl;

    std::ofstream out{ path };
    const auto machineModule = lowerToMachineModule(module);
    assert(machineModule->verify());
    target->emitAssembly(*machineModule, out);

    return EXIT_SUCCESS;
}

static bool endswith(const std::string& str, const std::string_view& ext) {
    if(str.size() < ext.size())
        return false;
    return str.substr(str.size() - ext.size()) == ext;
}

int main(int argc, char** argv) {
    int start = parseCommands(argc, argv);

    if(version.get()) {
        reportInfo() << "CMMC " CMMC_VERSION << std::endl;
        reportInfo() << "Build time: " << __TIME__ << " " << __DATE__ << std::endl;
        return EXIT_SUCCESS;
    }

    if(help.get()) {
        printHelpInfo();
        return EXIT_SUCCESS;
    }

    if(argc == start) {
        reportError() << "no input files" << std::endl;
        return EXIT_FAILURE;
    }

    if(argc - start != 1) {
        reportError() << "only one input file is accepted" << std::endl;
        return EXIT_FAILURE;
    }

    try {
        std::string path = argv[start];

        using namespace std::string_view_literals;

        if(endswith(path, ".spl"sv)) {
            const auto base = path.substr(0, path.size() - 4);
            Driver driver{ path, emitAST.get(), strictMode.get() };

            if(emitAST.get()) {
                const auto path = getOutputPath(base + ".ast");
                reportDebug() << "emitAST >> " << path << std::endl;
                std::ofstream out{ path };
                driver.dump(out);
                return EXIT_SUCCESS;
            }

            Module module;
            driver.emit(module);

            return runIRPipeline(module, base);
        } else if(endswith(path, ".ir"sv)) {
            Module module;
            loadTAC(module, path);
            const auto base = path.substr(0, path.size() - 3);
            return runIRPipeline(module, base);
        }

        reportError() << "Unrecognized input" << std::endl;
        return EXIT_FAILURE;
    } catch(const std::exception& ex) {
        reportFatal("Unexpected exception: " + std::string{ ex.what() });
    } catch(...) {
        reportFatal("Unknown error");
    }
}
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

// Mini driver for online judge

#include <cassert>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/ExecutionEngine/Interpreter.hpp>
#include <cmmc/Frontend/Driver.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <cmmc/Support/StaticReflection.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <optional>
#include <string>
#include <string_view>
#include <type_traits>
#include <variant>

using namespace cmmc;

CMMC_NAMESPACE_BEGIN

static_assert(!Config::debug);

Flag strictMode;               // NOLINT
StringOpt executeInput;        // NOLINT
IntegerOpt optimizationLevel;  // NOLINT
namespace mir {
    extern StringOpt targetName;  // NOLINT
}

std::optional<int> runMain(Module&, SimulationIOContext&, const std::string&) {
    return std::nullopt;
}
void verifyModuleExec(Module&, AnalysisPassManager&, const std::string_view&) {}

CMMC_NAMESPACE_END

static int runIRPipeline(Module& module, OptimizationLevel optLevel, const std::string& outputPath) {
    AnalysisPassManager analysis{ &module };
    const auto& target = module.getTarget();
    target.transformModuleBeforeOpt(module, analysis);
    analysis.invalidateModule();

    const auto opt = PassManager<Module>::get(optLevel);
    opt->run(module, analysis);

    std::ofstream out{ outputPath };
    const auto machineModule = mir::lowerToMachineModule(module, analysis, optLevel);
    target.emitAssembly(*machineModule, out, mir::RuntimeType::None);

    return EXIT_SUCCESS;
}

int main(int argc, char** argv) {
    strictMode.handle("false");

#include <cmmc/Driver/Target.hpp>

    if(argc != 5 && argc != 6) {
        reportInfo() << "CMMC " CMMC_VERSION << std::endl;
        reportInfo() << "Build time: " __TIME__ " " __DATE__ << std::endl;
        return EXIT_SUCCESS;
    }

    if(!(argv[2] == "-S"sv && argv[3] == "-o"sv && (argc != 6 || argv[5] == "-O1"sv))) {
        std::cerr << "Unexpected arguments for the mini driver"sv << std::endl;
        return EXIT_FAILURE;
    }

    try {
        std::string path = argv[1];
        std::string outputPath = argv[4];
        const auto opt = argc == 6;  // with -O1
        Module module;
        const auto target = mir::TargetRegistry::get().selectTarget();
        module.setTarget(target.get());

        {
            Driver driver{ path, FrontEndLang::SysY, false, false };
            driver.emit(module);
        }

        CMMC_UNUSED(opt);
        return runIRPipeline(module, OptimizationLevel::O3 /* opt ? OptimizationLevel::O3 : OptimizationLevel::O0 */, outputPath);
    } catch(const std::exception& ex) {
        std::cerr << "Unexpected exception: "sv << ex.what() << std::endl;
    } catch(...) {
        std::cerr << "Unknown error"sv << std::endl;
    }
    return EXIT_FAILURE;
}

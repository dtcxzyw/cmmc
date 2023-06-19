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

extern Flag debugTransform;           // NOLINT
static StringOpt referenceOutput;     // NOLINT
extern StringOpt executeInput;        // NOLINT
extern IntegerOpt skipCount;          // NOLINT
static StringOpt passFilter;          // NOLINT
static StringOpt testScript;          // NOLINT
extern IntegerOpt optimizationLevel;  // NOLINT

namespace mir {
    extern StringOpt targetName;  // NOLINT
}

extern uint32_t runCount;  // NOLINT

CMMC_INIT_OPTIONS_BEGIN
debugTransform.setName("debug-transform", 'd').setDesc("print transform pass result step-by-step");
referenceOutput.setName("reference-output", 'R').setDesc("reference output for debugging");
skipCount.withDefault(0)
    .setName("skip-transform-count", 'T')
    .setDesc("skip the correctness check for the first N transform runs");
passFilter.withDefault("").setName("pass-filter", 'f').setDesc("only do correctness check for specified passes");
testScript.withDefault("").setName("test-script", 'j').setDesc("test script for transform debugging");
CMMC_INIT_OPTIONS_END

std::optional<int> runMain(Module& module, SimulationIOContext& ctx, const std::string& filePath);
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
void verifyModuleExec(Module& module, AnalysisPassManager& analysis, const std::string_view& passName) {
    if(!passFilter.get().empty()) {
        if(passFilter.get() != passName)
            return;
    }

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

        if(mir::targetName.get() == "llvm" || mir::targetName.get() == "sim") {
            InputStream in{ executeInput.get() };
            OutputStream out{ tempOutput };
            SimulationIOContext ctx{ in, out };
            const auto ret = runMain(module, ctx, "unknown");
            if(ret) {
                retCode = ret.value() & 0xff;
            } else {
                std::cerr << " failed"sv << std::endl;
                DiagnosticsContext::get().attach<Reason>("runtime error").attach<Reason>(passName).reportFatal();
            }
        } else {
            if(testScript.get().empty())
                return;
            const auto tempAsmOutput = "/tmp/cmmctmp.S";
            std::ofstream out{ tempAsmOutput };
            const auto machineModule =
                mir::lowerToMachineModule(module, analysis, static_cast<OptimizationLevel>(optimizationLevel.get()));
            assert(machineModule->verify());
            auto& target = module.getTarget();
            target.emitAssembly(*machineModule, out, mir::RuntimeType::None);
            const auto cmd = testScript.get() + " " + tempAsmOutput + " " + executeInput.get() + " " + tempOutput;
            // std::cerr << '[' << cmd << ']' << std::endl;
            retCode = system(cmd.c_str()) & 0xff;
            // std::cerr << retCode << std::endl;
        }
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
        DiagnosticsContext::get().attach<Reason>("output mismatch").attach<Reason>(passName).reportFatal();
    }
}

CMMC_NAMESPACE_END

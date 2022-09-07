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

#include "cmmc/Frontend/Driver.hpp"
#include "cmmc/IR/Module.hpp"
#include "cmmc/IR/TAC.hpp"
#include "cmmc/Support/Options.hpp"
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <string>
#include <string_view>

using namespace cmmc;

static Flag emitAST;
static Flag version;
static Flag emitIR;
static Flag emitTAC;
static IntegerOpt optimizationLevel;
static StringOpt outputPath;

CMMC_INIT_OPTIONS_BEGIN
version.setName("version", 'v');
emitAST.setName("emitAST", 'a');
emitIR.setName("emitIR", 'i');
emitTAC.setName("emitTAC", 't');
optimizationLevel.withDefault(3).setName("opt", 'O').setDesc("Optimiaztion Level");
outputPath.setName("output", 'o').setDesc("path to the output file");
CMMC_INIT_OPTIONS_END

static std::string getOutputPath(const std::string& defaultPath) {
    return outputPath.get().empty() ? defaultPath : outputPath.get();
}

int runIRPipeline(Module& module, const std::string& base) {
    if(emitIR.get()) {
        const auto path = getOutputPath(base + ".ir2");
        std::cout << "emitIR >> " << path << std::endl;
        std::ofstream out{ path };
        module.dump(out);
        return EXIT_SUCCESS;
    }

    if(emitTAC.get()) {
        const auto path = getOutputPath(base + ".ir");
        std::cout << "emitTAC >> " << path << std::endl;
        std::ofstream out{ path };
        dumpTAC(module, out);
        return EXIT_SUCCESS;
    }

    const auto path = getOutputPath(base + ".s");
    std::cout << "emitASM >> " << path << std::endl;

    // TODO: transform pipeline

    // TODO: emit asm
    // std::ofstream out{ path };

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
        std::cout << "CMMC " CMMC_VERSION << std::endl;
        std::cout << "Build time: " << __TIME__ << " " << __DATE__ << std::endl;
        return EXIT_SUCCESS;
    }

    if(argc == start) {
        std::cerr << "no input files" << std::endl;
        return EXIT_FAILURE;
    }

    if(argc - start != 1) {
        std::cerr << "only one input file is accepted" << std::endl;
        return EXIT_FAILURE;
    }

    try {
        std::string path = argv[start];

        using namespace std::string_view_literals;

        if(endswith(path, ".spl"sv)) {
            const auto base = path.substr(0, path.size() - 4);
            Driver driver{ path };

            if(emitAST.get()) {
                const auto path = getOutputPath(base + ".ast");
                std::cout << "emitAST >> " << path << std::endl;
                std::ofstream out{ path };
                driver.dump(out);
                return EXIT_SUCCESS;
            }

            Module mod;
            driver.emit(mod);

            return runIRPipeline(mod, base);
        } else if(endswith(path, ".ir"sv)) {
            Module mod;
            loadTAC(mod, path);
            const auto base = path.substr(0, path.size() - 3);
            return runIRPipeline(mod, base);
        }

        std::cout << "Unrecognized input" << std::endl;

        return EXIT_FAILURE;
    } catch(const std::exception& ex) {
        std::cerr << "Exception: " << ex.what() << std::endl;
        return EXIT_FAILURE;
    } catch(...) {
        std::cerr << "Unknown error" << std::endl;
        return EXIT_FAILURE;
    }
}

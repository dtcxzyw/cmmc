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

#ifdef CMMC_WITH_LLVM_SUPPORT

#include <cmmc/Config.hpp>
#include <cmmc/ExecutionEngine/Interpreter.hpp>
#include <cmmc/IR/Attachments.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>
#include <iostream>
#include <llvm/ExecutionEngine/JITSymbol.h>
#include <llvm/ExecutionEngine/Orc/JITTargetMachineBuilder.h>
#include <llvm/ExecutionEngine/Orc/LLJIT.h>
#include <llvm/ExecutionEngine/Orc/ThreadSafeModule.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Verifier.h>
#include <llvm/Support/CodeGen.h>
#include <llvm/Support/Error.h>
#include <llvm/Support/Host.h>
#include <llvm/Support/TargetSelect.h>
#include <llvm/Target/TargetOptions.h>
#include <sys/time.h>

CMMC_NAMESPACE_BEGIN

void llvmTranslate(Module& module, llvm::Module& llvmMod);

static SimulationIOContext* globalIOCtx = nullptr;  // NOLINT

namespace spl {
    static int32_t read() {
        int32_t x;
        globalIOCtx->stdinStream.get("%d", x);
        return x;
    }
    static void write(int32_t x) {
        globalIOCtx->stdoutStream.put("%d ", x);
    }
}  // namespace spl

namespace sysy {
    static timeval timeStart, timeEnd;  // NOLINT
    static size_t recordIdx;            // NOLINT
    const auto sysyMaxRecordCount = 1024;
    struct Record final {
        int32_t lineStart, lineStop;
        int32_t h, m, s, us;
    };
    static std::array<Record, sysyMaxRecordCount> records;  // NOLINT

    static void start() {
        memset(&records, 0, sizeof(records));
        recordIdx = 1;
    }
    static void stop() {
        auto& total = records[0];
        int ret;
        for(size_t idx = 1; idx < recordIdx; idx++) {
            const auto& record = records[idx];
            ret = fprintf(stderr, "Timer@%04d-%04d: %dH-%dM-%dS-%dus\n", record.lineStart, record.lineStop, record.h, record.m,
                          record.s, record.us);
            total.us += record.us;
            total.s += record.s;
            total.us %= 1000000;
            total.m += record.m;
            total.s %= 60;
            total.h += record.h;
            total.m %= 60;
        }
        ret = fprintf(stderr, "TOTAL: %dH-%dM-%dS-%dus\n", total.h, total.m, total.s, total.us);
        CMMC_UNUSED(ret);
    }
    static void startTime(int lineno) {
        records[recordIdx].lineStart = lineno;
        gettimeofday(&timeStart, nullptr);
    }
    static void stopTime(int lineno) {
        gettimeofday(&timeEnd, nullptr);
        auto& record = records[recordIdx];
        record.lineStop = lineno;
        record.us += 1000000 * static_cast<int32_t>(timeEnd.tv_sec - timeStart.tv_sec) +
            static_cast<int32_t>(timeEnd.tv_usec - timeStart.tv_usec);
        record.s += record.us / 1000000;
        record.us %= 1000000;
        record.m += record.s / 60;
        record.s %= 60;
        record.h += record.m / 60;
        record.m %= 60;
        recordIdx++;
    }

    static int32_t getint() {
        int32_t x = 0;
        globalIOCtx->stdinStream.get("%d", x);
        return x;
    }
    static void putint(int32_t x) {
        globalIOCtx->stdoutStream.put("%d", x);
    }
    static int32_t getch() {
        char x = 0;
        globalIOCtx->stdinStream.get("%c", x);
        return x;
    }
    static void putch(int32_t x) {
        globalIOCtx->stdoutStream.put("%c", x);
    }
    static int32_t getarray(int32_t* x) {
        const auto cnt = getint();
        for(int32_t idx = 0; idx < cnt; ++idx)
            *(x++) = getint();
        return cnt;
    }
    static void putarray(int32_t cnt, const int32_t* x) {
        globalIOCtx->stdoutStream.put("%d:", cnt);
        for(int32_t idx = 0; idx < cnt; ++idx)
            globalIOCtx->stdoutStream.put(" %d", *(x++));
        globalIOCtx->stdoutStream.put("\n");
    }
    static float getfloat() {
        float x = 0.0F;
        globalIOCtx->stdinStream.get("%a", x);
        return x;
    }
    static void putfloat(float x) {
        globalIOCtx->stdoutStream.put("%a", x);
    }
    static int32_t getfarray(float* x) {
        const auto cnt = getint();
        for(int32_t idx = 0; idx < cnt; ++idx)
            x[idx] = getfloat();
        return cnt;
    }
    static void putfarray(int32_t cnt, const float* x) {
        globalIOCtx->stdoutStream.put("%d:", cnt);
        for(int32_t idx = 0; idx < cnt; ++idx)
            globalIOCtx->stdoutStream.put(" %a", x[idx]);
        globalIOCtx->stdoutStream.put("\n");
    }
}  // namespace sysy

std::variant<int, SimulationFailReason> llvmExecMain(Module& module, const std::string& srcPath, SimulationIOContext& ioCtx) {
    llvm::InitializeNativeTarget();
    llvm::InitializeNativeTargetAsmPrinter();
    llvm::InitializeNativeTargetAsmParser();
    llvm::InitializeNativeTargetDisassembler();

    auto context = std::make_unique<llvm::LLVMContext>();
    auto llvmMod = std::make_unique<llvm::Module>("CMMC IR Module", *context);
    llvmMod->setSourceFileName(srcPath);
    llvmTranslate(module, *llvmMod);

    if(llvm::verifyModule(*llvmMod, &llvm::errs())) {
        DiagnosticsContext::get().attach<ModuleAttachment>("cmmc IR", &module).reportFatal();
    }

    auto jitBuilder = std::make_unique<llvm::orc::JITTargetMachineBuilder>(llvm::Triple{ llvm::sys::getProcessTriple() });

    const auto cpu = llvm::sys::getHostCPUName();
    llvm::StringMap<bool> features;
    llvm::sys::getHostCPUFeatures(features);

    jitBuilder->setCPU(cpu.str());

    for(auto&& feature : features)
        jitBuilder->getFeatures().AddFeature(feature.first(), feature.second);

    // FIXME: incorrect fp opt
    jitBuilder->setCodeGenOptLevel(llvm::CodeGenOpt::Aggressive);  //-O3
    jitBuilder->setRelocationModel(llvm::Reloc::PIC_);
    jitBuilder->setCodeModel(llvm::CodeModel::Small);

    auto& options = jitBuilder->getOptions();
    options.UnsafeFPMath = false;
    options.NoInfsFPMath = false;
    options.NoNaNsFPMath = false;
    options.NoTrappingFPMath = true;
    options.NoSignedZerosFPMath = false;
    options.ApproxFuncFPMath = false;
    options.setFP32DenormalMode(llvm::DenormalMode::getIEEE());
    options.setFPDenormalMode(llvm::DenormalMode::getIEEE());
    options.AllowFPOpFusion = llvm::FPOpFusion::Strict;

    options.EnableAIXExtendedAltivecABI = true;
    options.HonorSignDependentRoundingFPMathOption = false;
    options.NoZerosInBSS = false;
    options.GuaranteedTailCallOpt = true;
    options.StackSymbolOrdering = true;
    options.EnableFastISel = false;
    options.EnableGlobalISel = false;
    options.GlobalISelAbort = llvm::GlobalISelAbortMode::DisableWithDiag;  // Fallback to SelectionDAG
    options.UseInitArray = false;
    options.DisableIntegratedAS = false;
    options.RelaxELFRelocations = true;
    options.FunctionSections = false;
    options.DataSections = false;
    options.IgnoreXCOFFVisibility = false;
    options.XCOFFTracebackTable = true;
    options.UniqueSectionNames = true;
    options.UniqueBasicBlockSectionNames = false;
    options.TrapUnreachable = false;
    options.NoTrapAfterNoreturn = false;
    options.TLSSize = 0;
    options.EmulatedTLS = false;
    options.ExplicitEmulatedTLS = false;
    options.EnableIPRA = true;
    options.EmitStackSizeSection = false;
    options.EnableMachineOutliner = false;
    options.EnableMachineFunctionSplitter = true;
    options.SupportsDefaultOutlining = false;
    options.EmitAddrsig = false;
    options.EmitCallSiteInfo = false;
    options.SupportsDebugEntryValues = false;
    options.EnableDebugEntryValues = false;
    options.ValueTrackingVariableLocations = false;
    options.ForceDwarfFrameSection = false;
    options.XRayOmitFunctionIndex = false;
    options.DebugStrictDwarf = false;
    options.Hotpatch = false;
    options.PPCGenScalarMASSEntries = false;
    options.JMCInstrument = false;
    options.ExceptionModel = llvm::ExceptionHandling::None;

    // TODO: optimize for O0
    // const auto targetMachine = llvm::cantFail(jitBuilder->createTargetMachine());

    auto jit = llvm::cantFail(llvm::orc::LLJITBuilder{}.setNumCompileThreads(0).setJITTargetMachineBuilder(*jitBuilder).create());

    auto& session = jit->getExecutionSession();

    constexpr auto flag = llvm::JITSymbolFlags::Callable | llvm::JITSymbolFlags::Exported | llvm::JITSymbolFlags::Absolute;

#define CMMC_NATIVE_FUNC(SYMBOL, NAME)                      \
    {                                                       \
        session.intern(#SYMBOL), llvm::JITEvaluatedSymbol { \
            llvm::pointerToJITTargetAddress(NAME), flag     \
        }                                                   \
    }

    llvm::orc::SymbolMap map = {
        // Spl runtime
        CMMC_NATIVE_FUNC(read, spl::read),
        CMMC_NATIVE_FUNC(write, spl::write),
        // SysY runtime
        CMMC_NATIVE_FUNC(getint, sysy::getint),
        CMMC_NATIVE_FUNC(putint, sysy::putint),
        CMMC_NATIVE_FUNC(getch, sysy::getch),
        CMMC_NATIVE_FUNC(putch, sysy::putch),
        CMMC_NATIVE_FUNC(getarray, sysy::getarray),
        CMMC_NATIVE_FUNC(putarray, sysy::putarray),
        CMMC_NATIVE_FUNC(getfloat, sysy::getfloat),
        CMMC_NATIVE_FUNC(putfloat, sysy::putfloat),
        CMMC_NATIVE_FUNC(getfarray, sysy::getfarray),
        CMMC_NATIVE_FUNC(putfarray, sysy::putfarray),
        CMMC_NATIVE_FUNC(starttime, sysy::startTime),
        CMMC_NATIVE_FUNC(stoptime, sysy::stopTime),
        // Memory operations
        CMMC_NATIVE_FUNC(memset, ::memset),
        CMMC_NATIVE_FUNC(memcpy, ::memcpy),
        CMMC_NATIVE_FUNC(memmove, ::memmove),
    };

#undef CMMC_NATIVE_FUNC
    if(auto err = jit->getMainJITDylib().define(std::make_unique<llvm::orc::AbsoluteSymbolsMaterializationUnit>(std::move(map))))
        [[unlikely]]
        DiagnosticsContext::get().attach<Reason>(llvm::toString(std::move(err))).reportFatal();

    llvmMod->setDataLayout(jit->getDataLayout());

    {
        auto err = jit->addIRModule(llvm::orc::ThreadSafeModule{ std::move(llvmMod), std::move(context) });
        if(err) [[unlikely]] {
            DiagnosticsContext::get().attach<Reason>(llvm::toString(std::move(err))).reportFatal();
        }
    }
    auto addr = jit->lookup("main");
    if(!addr)
        return SimulationFailReason::NoEntry;

    globalIOCtx = &ioCtx;

    using MainFunction = int();
    sysy::start();
    const auto entry = llvm::jitTargetAddressToFunction<MainFunction*>(addr->getValue());
    int ret = entry();
    sysy::stop();
    return ret;
}

CMMC_NAMESPACE_END
#endif

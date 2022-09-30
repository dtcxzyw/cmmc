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

#include <cmmc/CodeGen/MachineInst.hpp>
#include <cmmc/CodeGen/Register.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Target/MIPS/MIPSInst.hpp>
#include <memory>

CMMC_NAMESPACE_BEGIN

extern StringOpt targetMachine;

class MIPSDataLayout final : public DataLayout {
public:
    Endian getEndian() const noexcept override {
        return Endian::Little;
    }
    size_t getBuiltinAlignment(const Type* type) const noexcept override {
        assert(type->isPrimitive());
        if(type->isPointer())
            return getPointerSize();
        return type->getFixedSize();
    }
    size_t getPointerSize() const noexcept override {
        return 4;
    }
};

class MIPSInstInfo final : public TargetInstInfo {
public:
    const TargetInstClass& getInstClass(uint32_t instID) const override {
        reportNotImplemented();
    }
    bool hasSideEffect(MachineInst& inst) const noexcept override {
        reportNotImplemented();
    }
    bool isTerminator(MachineInst& inst) const noexcept override {
        reportNotImplemented();
    }
    bool isSupportedInstruction(InstructionID inst) const noexcept override {
        reportNotImplemented();
    }
    void emit(Instruction* inst, LoweringContext& ctx) const override {
        reportNotImplemented();
    }
    Register emitConstant(ConstantValue* value, LoweringContext& ctx) const override {
        reportNotImplemented();
    }

    /*
    const char* getTextualName(uint32_t idx) const noexcept {
        constexpr const char* name[] = {
            "zero", "at",  "v0",  "v1",  "a0",  "a1",  "a2",  "a3",   //
            "t0",   "t1",  "t2",  "t3",  "t4",  "t5",  "t6",  "t7",   //
            "s0",   "s1",  "s2",  "s3",  "s4",  "s5",  "s6",  "s7",   //
            "t8",   "t9",  "k0",  "k1",  "gp",  "sp",  "fp",  "ra",   //
            "f0",   "f1",  "f2",  "f3",  "f4",  "f5",  "f6",  "f7",   //
            "f8",   "f9",  "f10", "f11", "f12", "f13", "f14", "f15",  //
            "f16",  "f17", "f18", "f19", "f20", "f21", "f22", "f23",  //
            "f24",  "f25", "f26", "f27", "f28", "f29", "f30", "f31"   //
        };
        return name[idx];
    }
    */
};

class MIPSFrameInfo final : public TargetFrameInfo {
public:
    std::unique_ptr<TargetRegisterUsage> emitPrologue(MachineBasicBlock* block, FunctionType* func,
                                                      CallingConvention cc) const override {
        reportNotImplemented();
    }
    void emitEpilogue(MachineBasicBlock* block, FunctionType* func, CallingConvention cc,
                      TargetRegisterUsage& usage) const override {
        reportNotImplemented();
    }
};

// MIPS o32
class MIPSTarget final : public Target {
    std::unique_ptr<SubTarget> mSubTarget;
    MIPSDataLayout mDataLayout;
    MIPSInstInfo mInstInfo;
    MIPSFrameInfo mFrameInfo;

public:
    explicit MIPSTarget() {
        if(targetMachine.get() == "emulator")
            mSubTarget = std::make_unique<SimpleSubTarget>();
        else
            reportFatal("Unsupported target machine");
    }
    const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    const TargetInstInfo& getTargetInstInfo() const noexcept override {
        return mInstInfo;
    }
    const TargetFrameInfo& getTargetFrameInfo() const noexcept override {
        return mFrameInfo;
    }
    const SubTarget& getSubTarget() const noexcept override {
        return *mSubTarget;
    }
    void emitAssembly(MachineModule& module, std::ostream& out) const override;
};

CMMC_TARGET("mips", MIPSTarget);

void MIPSTarget::emitAssembly(MachineModule& module, std::ostream& out) const {}

CMMC_NAMESPACE_END

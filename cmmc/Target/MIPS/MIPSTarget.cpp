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
    size_t getAlignment(Type* type) const noexcept override {
        assert(type->isBuiltin());
        if(type->isPointer())
            return getPointerSize();
        return type->getFixedSize();
    }
    size_t getPointerSize() const noexcept override {
        return 4;
    }
};

class MIPSGPRClass final : public RegisterClass {
public:
    uint32_t count() const noexcept override {
        return 32;
    }
};

class MIPSFPRClass final : public RegisterClass {
public:
    uint32_t count() const noexcept override {
        return 32;
    }
};

class MIPSRegisterInfo final : public TargetRegisterInfo {
    MIPSGPRClass mGPR;
    MIPSFPRClass mFPR;

public:
    const RegisterClass& getRegisterClass(uint32_t idx) const noexcept {
        return idx < 32 ? static_cast<const RegisterClass&>(mGPR) : static_cast<const RegisterClass&>(mFPR);
    }

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
};

// MIPS o32
class MIPSTarget final : public Target {
    std::unique_ptr<SubTarget> mSubTarget;
    MIPSDataLayout mDataLayout;
    MIPSRegisterInfo mRegisterInfo;

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
    const TargetRegisterInfo& getTargetRegisterInfo() const noexcept override {
        return mRegisterInfo;
    }
    const TargetFrameInfo& getTargetFrameInfo() const noexcept override {
        reportUnreachable();
    }
    const SubTarget& getSubTarget() const noexcept override {
        return *mSubTarget;
    }
    std::unique_ptr<MachineModule> translateIR(Module& module) const override;
};

CMMC_TARGET("mips", MIPSTarget);

std::unique_ptr<MachineModule> MIPSTarget::translateIR(Module& module) const {
    return nullptr;
}

CMMC_NAMESPACE_END

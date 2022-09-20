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
#include <cmmc/Target/RISCV/RISCVInst.hpp>
#include <memory>

CMMC_NAMESPACE_BEGIN

extern StringOpt targetMachine;

class RISCVDataLayout final : public DataLayout {
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

class RISCVGPRClass final : public TargetRegisterClass {
public:
    uint32_t count() const noexcept override {
        return 32;
    }
};

class RISCVFPRClass final : public TargetRegisterClass {
public:
    uint32_t count() const noexcept override {
        return 32;
    }
};

class RISCVInstInfo final : public TargetInstInfo {
    RISCVGPRClass mGPR;
    RISCVFPRClass mFPR;

public:
    const TargetRegisterClass& getRegisterClass(Register reg) const override {
        return reg < 32 ? static_cast<const TargetRegisterClass&>(mGPR) : static_cast<const TargetRegisterClass&>(mFPR);
    }
    const TargetInstClass& getInstClass(uint32_t instID) const override {
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
};

// RISC-V lp32d
class RISCVTarget final : public Target {
    std::unique_ptr<SubTarget> mSubTarget;
    RISCVDataLayout mDataLayout;
    RISCVInstInfo mInstInfo;

public:
    explicit RISCVTarget() {
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
        reportUnreachable();
    }
    const SubTarget& getSubTarget() const noexcept override {
        return *mSubTarget;
    }
    void emitAssembly(MachineModule& module, std::ostream& out) const override;
};

CMMC_TARGET("riscv", RISCVTarget);

void RISCVTarget::emitAssembly(MachineModule& module, std::ostream& out) const {
    reportNotImplemented();
}

CMMC_NAMESPACE_END

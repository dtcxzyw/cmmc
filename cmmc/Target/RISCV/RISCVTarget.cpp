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
        return 8;
    }
};

class RISCVFrameInfo final : public TargetFrameInfo {
public:
};

// RISC-V lp32d
class RISCVTarget final : public Target {
    std::unique_ptr<SubTarget> mSubTarget;
    RISCVDataLayout mDataLayout;
    RISCVFrameInfo mFrameInfo;

public:
    explicit RISCVTarget() {
        if(targetMachine.get() == "emulator")
            mSubTarget = std::make_unique<SimpleSubTarget>();
        else
            DiagnosticsContext::get().attach<UnrecognizedInput>("target machine", targetMachine.get()).reportFatal();
    }
    const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    const LoweringInfo& getTargetLoweringInfo() const noexcept override {
        reportNotImplemented();
    }
    const TargetFrameInfo& getTargetFrameInfo() const noexcept override {
        return mFrameInfo;
    }
    const SubTarget& getSubTarget() const noexcept override {
        return *mSubTarget;
    }
    void emitAssembly(GMIRModule& module, std::ostream& out) const override;
};

CMMC_TARGET("riscv", RISCVTarget);

void RISCVTarget::emitAssembly(GMIRModule&, std::ostream&) const {
    reportNotImplemented();
}

CMMC_NAMESPACE_END

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

// Only be used by LLVM AOT/JIT backend

#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cstdint>
#include <memory>

CMMC_NAMESPACE_BEGIN

// Real target
extern StringOpt targetMachine;  // NOLINT

class LLVMDataLayout final : public DataLayout {
public:
    [[nodiscard]] Endian getEndian() const noexcept override {
        return Endian::Little;
    }
    size_t getBuiltinAlignment(const Type* type) const noexcept override {
        assert(type->isPrimitive());
        if(type->isPointer())
            return getPointerSize();
        return type->getFixedSize();
    }
    [[nodiscard]] size_t getPointerSize() const noexcept override {
        return sizeof(uintptr_t);
    }
    [[nodiscard]] size_t getCodeAlignment() const noexcept override {
        reportUnreachable(CMMC_LOCATION());
    }
};

class LLVMSubTarget final : public SimpleSubTarget {
public:
    [[nodiscard]] uint32_t getPhysicalRegisterCount(uint32_t) const override {
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] bool inlineMemOp(size_t size) const override {
        return size <= 256;
    }
};

class LLVMTarget final : public Target {
    std::unique_ptr<SubTarget> mSubTarget;
    LLVMDataLayout mDataLayout;

public:
    explicit LLVMTarget() {
        mSubTarget = std::make_unique<LLVMSubTarget>();
    }
    [[nodiscard]] const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    [[nodiscard]] const LoweringInfo& getTargetLoweringInfo() const noexcept override {
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] std::unique_ptr<TargetRegisterUsage> newRegisterUsage() const override {
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] const SubTarget& getSubTarget() const noexcept override {
        return *mSubTarget;
    }

    void legalizeFunc(GMIRFunction&) const override {
        reportUnreachable(CMMC_LOCATION());
    }
    void legalizeModuleBeforeCodeGen(Module&, AnalysisPassManager&) const override {
        reportUnreachable(CMMC_LOCATION());
    }
    void legalizeModuleBeforeOpt(Module& module, AnalysisPassManager& analysis) const override {
        CMMC_UNUSED(module);
        CMMC_UNUSED(analysis);
    }
    void emitAssembly(const GMIRModule&, std::ostream&) const override {
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] Operand getStackPointer() const noexcept override {
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] Operand getReturnAddress() const noexcept override {
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] size_t getStackPointerAlignment() const noexcept override {
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] bool isCallerSaved(const Operand&) const noexcept override {
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] bool isCalleeSaved(const Operand&) const noexcept override {
        reportUnreachable(CMMC_LOCATION());
    }
    [[nodiscard]] uint32_t getRegisterBitWidth(uint32_t) const noexcept override {
        reportUnreachable(CMMC_LOCATION());
    }
};

CMMC_TARGET("llvm", LLVMTarget);

CMMC_NAMESPACE_END

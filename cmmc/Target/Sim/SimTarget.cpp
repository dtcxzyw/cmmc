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

// Only be used by interpreter

#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cstdint>
#include <memory>

CMMC_NAMESPACE_BEGIN

extern StringOpt targetMachine;  // NOLINT

class SimDataLayout final : public DataLayout {
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
        reportUnreachable();
    }
};

class SimSubTarget final : public SimpleSubTarget {
public:
    [[nodiscard]] uint32_t getPhysicalRegisterCount(uint32_t) const override {
        reportUnreachable();
    }
    [[nodiscard]] bool inlineMemOp(size_t size) const override {
        return size <= 256;
    }
};

class SimTarget final : public Target {
    std::unique_ptr<SubTarget> mSubTarget;
    SimDataLayout mDataLayout;

public:
    explicit SimTarget() {
        mSubTarget = std::make_unique<SimSubTarget>();
    }
    [[nodiscard]] const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    [[nodiscard]] const LoweringInfo& getTargetLoweringInfo() const noexcept override {
        reportUnreachable();
    }
    [[nodiscard]] std::unique_ptr<TargetRegisterUsage> newRegisterUsage() const override {
        reportUnreachable();
    }
    [[nodiscard]] const SubTarget& getSubTarget() const noexcept override {
        return *mSubTarget;
    }

    void legalizeFunc(GMIRFunction&) const override {
        reportUnreachable();
    }
    void legalizeModuleBeforeCodeGen(Module&, AnalysisPassManager&) const override {
        reportUnreachable();
    }
    void legalizeModuleBeforeOpt(Module& module, AnalysisPassManager& analysis) const override {
        CMMC_UNUSED(module);
        CMMC_UNUSED(analysis);
    }
    void emitAssembly(const GMIRModule&, std::ostream&) const override {
        reportUnreachable();
    }
    [[nodiscard]] Operand getStackPointer() const noexcept override {
        reportUnreachable();
    }
    [[nodiscard]] Operand getReturnAddress() const noexcept override {
        reportUnreachable();
    }
    [[nodiscard]] size_t getStackPointerAlignment() const noexcept override {
        reportUnreachable();
    }
    [[nodiscard]] bool isCallerSaved(const Operand&) const noexcept override {
        reportUnreachable();
    }
    [[nodiscard]] bool isCalleeSaved(const Operand&) const noexcept override {
        reportUnreachable();
    }
    [[nodiscard]] uint32_t getRegisterBitWidth(uint32_t) const noexcept override {
        reportUnreachable();
    }
};

CMMC_TARGET("sim", SimTarget);

CMMC_NAMESPACE_END

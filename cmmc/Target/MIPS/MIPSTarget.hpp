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

// TAC Virtual Target
#pragma once
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>

CMMC_NAMESPACE_BEGIN

enum class MIPSIntrinsic {};
struct MIPSAddressSpace final : public AddressSpace {
    static constexpr uint32_t GPR = Custom + 0;
    static constexpr uint32_t FPR_S = Custom + 1;
    static constexpr uint32_t FPR_D = Custom + 2;
};

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

// MIPS o32
class MIPSTarget final : public Target {
    std::unique_ptr<SubTarget> mSubTarget;
    MIPSDataLayout mDataLayout;

public:
    explicit MIPSTarget();
    const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    const LoweringInfo& getTargetLoweringInfo() const noexcept override {
        reportNotImplemented();
    }
    std::unique_ptr<TargetRegisterUsage> newRegisterUsage() const override {
        reportNotImplemented();
    }
    const SubTarget& getSubTarget() const noexcept override {
        return *mSubTarget;
    }
    void legalizeModuleBeforeCodeGen(Module& module, AnalysisPassManager& analysis) const override;
    void legalizeFunc(GMIRFunction& func) const override;
    void emitAssembly(GMIRModule& module, std::ostream& out) const override;
};

CMMC_NAMESPACE_END

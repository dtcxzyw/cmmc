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
#include <memory>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

enum class TACIntrinsic { Read, Write, PushArg };
struct TACAddressSpace final : public AddressSpace {
    static constexpr uint32_t GPR = Custom + 0;
};

class TACDataLayout final : public DataLayout {
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

class TACLoweringInfo final : public LoweringInfo {
    String mUnused, mGPR, mConstant, mStack, mVReg;

public:
    TACLoweringInfo();
    Operand getZeroImpl(LoweringContext& ctx, const Type* type) const override;
    String getOperand(const Operand& operand) const override;
    std::string_view getIntrinsicName(uint32_t intrinsicID) const override;
    void lower(ReturnInst* inst, LoweringContext& ctx) const override;
    void lower(FunctionCallInst* inst, LoweringContext& ctx) const override;
    void lower(FMAInst* inst, LoweringContext& ctx) const override;
};

class TACSubTarget final : public SimpleSubTarget {
public:
    uint32_t getPhysicalRegisterCount(uint32_t addressSpace) const override;
    void peepholeOpt(GMIRFunction& func) const override;
    void postPeepholeOpt(GMIRFunction& func) const override;
};

class TACRegisterUsage final : public TargetRegisterUsage {
public:
    uint32_t classCount() const noexcept override;
    uint32_t estimateMigrationCost(uint32_t src, uint32_t dst) const override;
    uint32_t getAvailableRegisters(uint32_t src) const noexcept override;
};

class TACTarget final : public Target {
    TACSubTarget mSubTarget;
    TACDataLayout mDataLayout;
    TACLoweringInfo mLowerVisitor;

public:
    explicit TACTarget();
    const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    const TACLoweringInfo& getTargetLoweringInfo() const noexcept override {
        return mLowerVisitor;
    }
    std::unique_ptr<TargetRegisterUsage> newRegisterUsage() const override {
        return std::make_unique<TACRegisterUsage>();
    }
    bool builtinRA(GMIRFunction& mfunc) const override;
    const SubTarget& getSubTarget() const noexcept override {
        return mSubTarget;
    }

    void legalizeFunc(GMIRFunction& func) const override;
    void legalizeModuleBeforeCodeGen(Module& module, AnalysisPassManager& analysis) const override;
    void emitAssembly(GMIRModule& module, std::ostream& out) const override;
};

CMMC_NAMESPACE_END

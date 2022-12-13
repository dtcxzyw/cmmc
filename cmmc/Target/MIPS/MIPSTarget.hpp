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

#pragma once
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <memory>

CMMC_NAMESPACE_BEGIN

enum class MIPSIntrinsic { Fma, ConditionalMove };
struct MIPSAddressSpace final : public AddressSpace {
    static constexpr uint32_t GPR = Custom + 0;
    static constexpr uint32_t FPR_S = Custom + 1;
    static constexpr uint32_t FPR_D = Custom + 2;
    static constexpr uint32_t HILO = Custom + 3;
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

class MIPSLoweringInfo final : public LoweringInfo {
    String mUnused, mConstant, mStack, mVReg, mHi, mLo, mFPR;

public:
    MIPSLoweringInfo();
    void emitPrologue(LoweringContext& ctx, Function* func) const override;
    Operand getZeroImpl(LoweringContext& ctx, const Type* type) const override;
    String getOperand(const Operand& operand) const override;
    std::string_view getIntrinsicName(uint32_t intrinsicID) const override;
    void lower(ReturnInst* inst, LoweringContext& ctx) const override;
    void lower(FunctionCallInst* inst, LoweringContext& ctx) const override;
    void lower(FMAInst* inst, LoweringContext& ctx) const override;
};

class MIPSRegisterUsage final : public TargetRegisterUsage {
    uint32_t mGPR, mFPR;

public:
    MIPSRegisterUsage();
    void markAsUsed(const Operand& operand) override;
    void markAsDiscarded(const Operand& operand) override;
    Operand getFreeRegister(uint32_t src) override;
    uint32_t getRegisterClass(const Type* type) const override;
};

// MIPS o32
class MIPSTarget final : public Target {
    std::unique_ptr<SubTarget> mSubTarget;
    MIPSDataLayout mDataLayout;
    MIPSLoweringInfo mLoweringInfo;

public:
    explicit MIPSTarget();
    const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    const LoweringInfo& getTargetLoweringInfo() const noexcept override {
        return mLoweringInfo;
    }
    std::unique_ptr<TargetRegisterUsage> newRegisterUsage() const override {
        return std::make_unique<MIPSRegisterUsage>();
    }
    const SubTarget& getSubTarget() const noexcept override {
        return *mSubTarget;
    }
    void legalizeModuleBeforeCodeGen(Module& module, AnalysisPassManager& analysis) const override;
    void legalizeModuleBeforeOpt(Module& module, AnalysisPassManager& analysis) const override {
        CMMC_UNUSED(module);
        CMMC_UNUSED(analysis);
    }
    void legalizeFunc(GMIRFunction& func) const override;
    void emitAssembly(GMIRModule& module, std::ostream& out) const override;
    Operand getStackPointer() const noexcept override {
        return Operand{ MIPSAddressSpace::GPR, 29 };  // sp
    }
    Operand getReturnAddress() const noexcept override {
        return Operand{ MIPSAddressSpace::GPR, 31 };  // ra
    }
    size_t getStackPointerAlignment() const noexcept override {
        return 8U;  // 8-byte aligned
    }
    bool isCalleeSaved(const Operand& op) const noexcept override;
    bool isCallerSaved(const Operand& op) const noexcept override;
    uint32_t getRegisterBitWidth(uint32_t) const noexcept override {
        return 32U;
    }
};

CMMC_NAMESPACE_END

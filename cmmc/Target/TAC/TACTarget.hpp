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
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <memory>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

enum class TACIntrinsic { Read, Write, PushArg };
struct TACAddressSpace final : public AddressSpace {
    static constexpr uint32_t GPR = Custom + 0;  // NOLINT
};

class TACDataLayout final : public DataLayout {
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
        return 4;
    }
    [[nodiscard]] size_t getCodeAlignment() const noexcept override {
        return 4;
    }
};

class TACLoweringInfo final : public LoweringInfo {
    String mUnused, mGPR, mConstant, mStack, mVReg;

public:
    TACLoweringInfo();
    void emitPrologue(LoweringContext&, Function*) const override {}
    Operand getZeroImpl(LoweringContext& ctx, const Type* type) const override;
    [[nodiscard]] String getOperand(const Operand& operand) const override;
    [[nodiscard]] std::string_view getIntrinsicName(uint32_t intrinsicID) const override;
    void lower(ReturnInst* inst, LoweringContext& ctx) const override;
    void lower(FunctionCallInst* inst, LoweringContext& ctx) const override;
    void lower(FMAInst* inst, LoweringContext& ctx) const override;
    void lower(CompareInst* inst, LoweringContext& ctx) const override;
};

class TACSubTarget final : public SimpleSubTarget {
public:
    [[nodiscard]] uint32_t getPhysicalRegisterCount(uint32_t addressSpace) const override;
    void peepholeOpt(GMIRFunction& func) const override;
    void postPeepholeOpt(GMIRFunction& func) const override;
    [[nodiscard]] bool inlineMemOp(size_t size) const override {
        CMMC_UNUSED(size);
        return true;
    }
};

class TACTarget final : public Target {
    TACSubTarget mSubTarget;
    TACDataLayout mDataLayout;
    TACLoweringInfo mLowerVisitor;

public:
    explicit TACTarget();
    [[nodiscard]] const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    [[nodiscard]] const TACLoweringInfo& getTargetLoweringInfo() const noexcept override {
        return mLowerVisitor;
    }
    [[nodiscard]] std::unique_ptr<TargetRegisterUsage> newRegisterUsage() const override {
        reportUnreachable();
    }
    bool builtinRA(GMIRFunction& mfunc) const override;
    bool builtinSA(GMIRFunction& mfunc) const override;
    [[nodiscard]] const SubTarget& getSubTarget() const noexcept override {
        return mSubTarget;
    }
    [[nodiscard]] bool isNativeSupported(InstructionID inst) const noexcept override;
    void legalizeFunc(GMIRFunction& func) const override;
    void legalizeModuleBeforeCodeGen(Module& module, AnalysisPassManager& analysis) const override;
    void legalizeModuleBeforeOpt(Module& module, AnalysisPassManager& analysis) const override;
    void emitAssembly(const GMIRModule& module, std::ostream& out) const override;
    [[nodiscard]] Operand getStackPointer() const noexcept override {
        return unusedOperand;
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

CMMC_NAMESPACE_END

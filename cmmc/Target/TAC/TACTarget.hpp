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
#include <cmmc/CodeGen/Target.hpp>

CMMC_NAMESPACE_BEGIN

enum class TACInstAttr : uint32_t {
    FuseLoadStore0 = 1 << 0,
    FuseLoadStore1 = 1 << 1,
    FuseLoadStore2 = 1 << 2,

    WithImm0 = 1 << 3,
    WithImm1 = 1 << 4,
    WithImm2 = 1 << 5,

    CompareEqual = 1 << 6,
    CompareLess = 1 << 7,
    CompareReverse = 1 << 8,

    CmpEqual = CompareEqual,
    CmpNotEqual = CompareEqual | CompareReverse,
    CmpLessThan = CompareLess,
    CmpLessEqual = CompareLess | CompareEqual,
    CmpGreaterThan = CmpLessEqual | CompareReverse,
    CmpGreaterEqual = CmpLessThan | CompareReverse,
    CmpMask = CompareEqual | CompareLess | CompareReverse,

    FloatingPointOp = 1 << 9,
};

enum class TACInst : uint32_t {
    Load,
    Store,
    Read,
    Write,
    Return,
    Add,
    Sub,
    Mul,
    Div,
    PushArg,
    Call,
    Compare,
    Branch,
    BranchCompare,
    Copy,
    LoadAddress
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

class TACGPRClass final : public TargetRegisterClass {
public:
    uint32_t count() const noexcept override {
        return 1024;
    }
};

class TACInstInfo final : public TargetInstInfo {
    TACGPRClass mGPR;

    void emitBinaryOp(TACInst instID, Instruction* inst, LoweringContext& ctx) const;
    void emitBranch(const BranchTarget& target, LoweringContext& ctx) const;

public:
    const TargetRegisterClass& getRegisterClass(uint32_t idx) const noexcept override;
    const TargetInstClass& getInstClass(uint32_t instID) const override;
    bool isSupportedInstruction(InstructionID inst) const noexcept override;
    Register emitConstant(ConstantValue* value, LoweringContext& ctx) const override;
    void emit(Instruction* inst, LoweringContext& ctx) const override;
};

class TACFrameInfo final : public TargetFrameInfo {
public:
};

class TACSubTarget final : public SimpleSubTarget {
public:
    void peepholeOpt(MachineModule& module) const override;
    void postPeepholeOpt(MachineModule& module) const override;
};

// TAC Virtual Target
class TACTarget final : public Target {
    TACSubTarget mSubTarget;
    TACDataLayout mDataLayout;
    TACInstInfo mInstInfo;
    TACFrameInfo mFrameInfo;

public:
    explicit TACTarget();
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
        return mSubTarget;
    }

    void emitAssembly(MachineModule& module, std::ostream& out) const override;
};

CMMC_NAMESPACE_END

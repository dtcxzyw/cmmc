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

#include <cmmc/CodeGen/MachineModule.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <memory>

CMMC_NAMESPACE_BEGIN

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
    FAdd,
    FSub,
    FMul,
    FDiv,
    Call,
    BranchEqual,
    BranchNotEqual,
    BranchLessThan,
    BranchLessEqual,
    BranchGreaterThan,
    BranchGreaterEqual
};

extern StringOpt targetMachine;

class TACDataLayout final : public DataLayout {
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

class TACGPRClass final : public TargetRegisterClass {
public:
    uint32_t count() const noexcept override {
        return 1024;
    }
};

class TACInstInfo final : public TargetInstInfo {
    TACGPRClass mGPR;

public:
    const TargetRegisterClass& getRegisterClass(uint32_t idx) const noexcept override {
        return mGPR;
    }
    const TargetInstClass& getInstClass(uint32_t instID) const override {
        reportNotImplemented();
    }
    bool isSupportedInstruction(InstructionID inst) const noexcept override {
        // TODO
        return true;
    }
    void emit(Instruction* inst, LoweringContext& ctx) const override {
        switch(inst->getInstID()) {
            case InstructionID::Add: {
                break;
            }
            case InstructionID::Sub: {
                break;
            }

            default:
                reportUnreachable();
        }
    }
};

// TAC Virtual Target
class TACTarget final : public Target {
    std::unique_ptr<SubTarget> mSubTarget;
    TACDataLayout mDataLayout;
    TACInstInfo mInstInfo;

public:
    explicit TACTarget() {
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

CMMC_TARGET("tac", TACTarget);

void TACTarget::emitAssembly(MachineModule& module, std::ostream& out) const {}

CMMC_NAMESPACE_END

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

#include <cmmc/CodeGen/MachineInst.hpp>
#include <cmmc/CodeGen/Register.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cstdint>
#include <memory>

CMMC_NAMESPACE_BEGIN

extern StringOpt targetMachine;

class SimFrameInfo final : public TargetFrameInfo {
public:
    std::unique_ptr<TargetRegisterUsage> emitPrologue(MachineBasicBlock*, FunctionType*, CallingConvention) const override {
        reportUnreachable();
    }
    void emitEpilogue(MachineBasicBlock*, FunctionType*, CallingConvention, TargetRegisterUsage&) const override {
        reportUnreachable();
    }
};

class SimDataLayout final : public DataLayout {
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
        return sizeof(uintptr_t);
    }
};

class SimTarget final : public Target {
    std::unique_ptr<SubTarget> mSubTarget;
    SimDataLayout mDataLayout;
    SimFrameInfo mFrameInfo;

public:
    explicit SimTarget() {
        mSubTarget = std::make_unique<SimpleSubTarget>();
    }
    const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    const TargetInstInfo& getTargetInstInfo() const noexcept override {
        reportUnreachable();
    }
    const TargetFrameInfo& getTargetFrameInfo() const noexcept override {
        return mFrameInfo;
    }
    const SubTarget& getSubTarget() const noexcept override {
        return *mSubTarget;
    }
    void emitAssembly(MachineModule&, std::ostream&) const override {
        reportUnreachable();
    }
};

CMMC_TARGET("sim", SimTarget);

CMMC_NAMESPACE_END

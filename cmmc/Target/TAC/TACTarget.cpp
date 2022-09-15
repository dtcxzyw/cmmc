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
#include <memory>

CMMC_NAMESPACE_BEGIN

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

class TACGPRClass final : public RegisterClass {
public:
    uint32_t count() const noexcept override {
        return 1024;
    }
};

class TACRegisterInfo final : public TargetRegisterInfo {
    TACGPRClass mGPR;

public:
    const RegisterClass& getRegisterClass(uint32_t idx) const noexcept {
        return mGPR;
    }

    const char* getTextualName(uint32_t idx) const noexcept {
        return nullptr;
    }
};

// TAC
class TACTarget final : public Target {
    std::unique_ptr<SubTarget> mSubTarget;
    TACDataLayout mDataLayout;
    TACRegisterInfo mRegisterInfo;

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
    const TargetRegisterInfo& getTargetRegisterInfo() const noexcept override {
        return mRegisterInfo;
    }
    const TargetFrameInfo& getTargetFrameInfo() const noexcept override {
        reportUnreachable();
    }
    const SubTarget& getSubTarget() const noexcept override {
        return *mSubTarget;
    }
    std::unique_ptr<MachineModule> translateIR(Module& module) const override;
};

CMMC_TARGET("tac", TACTarget);

std::unique_ptr<MachineModule> TACTarget::translateIR(Module& module) const {
    return nullptr;
}

CMMC_NAMESPACE_END

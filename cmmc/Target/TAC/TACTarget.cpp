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

// Three-Address Code

#include <TAC/InstInfoDecl.hpp>
#include <TAC/ScheduleModelDecl.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cstdint>
#include <memory>

CMMC_MIR_NAMESPACE_BEGIN

extern StringOpt targetMachine;  // NOLINT

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
        return 0;
    }
};

class TACTarget final : public Target {
    TACDataLayout mDataLayout;

public:
    [[nodiscard]] const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    void emitPrologue(LoweringContext& ctx, MIRFunction& mfunc) const override {
        CMMC_UNUSED(ctx);
        CMMC_UNUSED(mfunc);
    }
    [[nodiscard]] const TargetScheduleModel& getScheduleModel() const noexcept override {
        return TAC::getTACScheduleModel();
    }
    [[nodiscard]] const TargetInstInfo& getInstInfo() const noexcept override {
        return TAC::getTACInstInfo();
    }
};

CMMC_TARGET("tac", TACTarget);

CMMC_MIR_NAMESPACE_END

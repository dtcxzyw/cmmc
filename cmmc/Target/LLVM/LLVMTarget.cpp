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

// Only be used by LLVM AOT/JIT backend

#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cstdint>
#include <memory>

CMMC_MIR_NAMESPACE_BEGIN

// Real target
extern StringOpt targetMachine;  // NOLINT

class LLVMDataLayout final : public DataLayout {
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
        reportUnreachable(CMMC_LOCATION());
    }
};

class LLVMTarget final : public Target {
    LLVMDataLayout mDataLayout;

public:
    [[nodiscard]] const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    [[nodiscard]] bool isLibCallSupported(CMMCLibCall libCall) const noexcept override {
        return libCall == CMMCLibCall::cacheLookup;
    }
};

CMMC_TARGET("llvm", LLVMTarget);

CMMC_MIR_NAMESPACE_END

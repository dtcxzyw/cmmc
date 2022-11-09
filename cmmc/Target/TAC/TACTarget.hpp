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
#include <cmmc/CodeGen/Target.hpp>

CMMC_NAMESPACE_BEGIN

enum class TACIntrinsic { Read, Write, PushArg };

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

class TACInstInfo final : public TargetInstInfo {
    void emitBranch(const BranchTarget& target, LoweringContext& ctx) const;

public:
};

class TACFrameInfo final : public TargetFrameInfo {
public:
};

class TACSubTarget final : public SimpleSubTarget {
public:
    void peepholeOpt(GMIRFunction& func) const override;
    void postPeepholeOpt(GMIRFunction& func) const override;
};

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

    void emitAssembly(GMIRModule& module, std::ostream& out) const override;
};

CMMC_NAMESPACE_END

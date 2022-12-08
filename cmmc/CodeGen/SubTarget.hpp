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
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cstdint>

CMMC_NAMESPACE_BEGIN

class SubTarget {
public:
    virtual ~SubTarget() = default;
    virtual uint32_t issueWidth() const noexcept = 0;
    virtual uint32_t mispredictPenalty() const noexcept = 0;
    virtual uint32_t microOpBufferSize() const noexcept = 0;
    virtual uint32_t getPhysicalRegisterCount(uint32_t addressSpace) const = 0;
    virtual uint32_t estimateMigrationCost(uint32_t src, uint32_t dst) const = 0;
    virtual void peepholeOpt(GMIRFunction& func) const {
        CMMC_UNUSED(func);
    }
    virtual void postPeepholeOpt(GMIRFunction& func) const {
        // rename regs
        CMMC_UNUSED(func);
    }
};

class SimpleSubTarget : public SubTarget {
public:
    uint32_t issueWidth() const noexcept final;
    uint32_t microOpBufferSize() const noexcept final;
    uint32_t mispredictPenalty() const noexcept final;
    uint32_t estimateMigrationCost(uint32_t src, uint32_t dst) const final;
};

CMMC_NAMESPACE_END

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

#include <cmath>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/RegisterInfo.hpp>
#include <cstdint>
#include <iostream>

CMMC_MIR_NAMESPACE_BEGIN

constexpr uint32_t maxRegisterCount = 60;

class RegisterSelector final {
    int64_t mFree;
    std::array<uint32_t, maxRegisterCount> mIdx2Reg;
    std::vector<uint32_t> mReg2Idx;

public:
    RegisterSelector(const std::vector<uint32_t>& list) {
        assert(list.size() <= maxRegisterCount);
        mFree = (static_cast<uint64_t>(1) << maxRegisterCount) - 1;
        for(uint32_t idx = 0; idx < list.size(); ++idx) {
            const auto reg = list[idx];
            mIdx2Reg[idx] = reg;
            if(reg >= mReg2Idx.size())
                mReg2Idx.resize(reg + 1);
            mReg2Idx[reg] = idx;
        }
    }
    void markAsDiscarded(uint32_t reg) {
        const auto mask = static_cast<int64_t>(1) << mReg2Idx[reg];
        assert((mFree & mask) == 0);
        mFree ^= mask;
    }
    void markAsUsed(uint32_t reg) {
        const auto mask = static_cast<int64_t>(1) << mReg2Idx[reg];
        assert((mFree & mask) == mask);
        mFree ^= mask;
    }
    [[nodiscard]] uint32_t getFreeRegister() const {
        if(mFree == 0)
            return invalidReg;
        return mIdx2Reg[static_cast<uint32_t>(__builtin_ctzll(static_cast<uint64_t>(mFree)))];
    }
};

MultiClassRegisterSelector::~MultiClassRegisterSelector() = default;
MultiClassRegisterSelector::MultiClassRegisterSelector(const TargetRegisterInfo& info) : mRegisterInfo{ info } {
    for(uint32_t idx = 0; idx < info.getAllocationClassCount(); ++idx) {
        mSelectors.push_back(std::make_unique<RegisterSelector>(info.getAllocationList(idx)));
    }
}
void MultiClassRegisterSelector::markAsDiscarded(MIROperand reg) {
    assert(isISAReg(reg.reg()));
    const auto classId = mRegisterInfo.getAllocationClass(reg.type());
    auto& selector = *mSelectors[classId];
    selector.markAsDiscarded(reg.reg());
}
void MultiClassRegisterSelector::markAsUsed(MIROperand reg) {
    assert(isISAReg(reg.reg()));
    const auto classId = mRegisterInfo.getAllocationClass(reg.type());
    auto& selector = *mSelectors[classId];
    selector.markAsUsed(reg.reg());
}
[[nodiscard]] MIROperand MultiClassRegisterSelector::getFreeRegister(OperandType type) {
    const auto classId = mRegisterInfo.getAllocationClass(type);
    const auto& selector = *mSelectors[classId];
    const auto reg = selector.getFreeRegister();
    return MIROperand::asISAReg(reg, mRegisterInfo.getCanonicalizedRegisterType(type));
}

CMMC_MIR_NAMESPACE_END

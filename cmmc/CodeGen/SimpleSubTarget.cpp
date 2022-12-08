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

#include <cmmc/CodeGen/SubTarget.hpp>

CMMC_NAMESPACE_BEGIN

uint32_t SimpleSubTarget::issueWidth() const noexcept {
    return 1;
}
uint32_t SimpleSubTarget::microOpBufferSize() const noexcept {
    return 0;  // in-order
}
uint32_t SimpleSubTarget::mispredictPenalty() const noexcept {
    return 0;
}
uint32_t SimpleSubTarget::estimateMigrationCost(uint32_t src, uint32_t dst) const {
    return src == dst ? 0U : 1U;
}

CMMC_NAMESPACE_END

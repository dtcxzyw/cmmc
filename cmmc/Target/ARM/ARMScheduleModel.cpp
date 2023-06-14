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

#include <ARM/ScheduleModelImpl.hpp>
#include <cmmc/Target/ARM/ARM.hpp>
#include <iostream>
#include <iterator>

CMMC_TARGET_NAMESPACE_BEGIN

bool ARMScheduleModel_cortex_a72::peepholeOpt(MIRFunction& func, const CodeGenContext& ctx) const {
    CMMC_UNUSED(func);
    CMMC_UNUSED(ctx);

    return false;
}

CMMC_TARGET_NAMESPACE_END


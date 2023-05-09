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

#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cmmc/Target/TAC/TACTarget.hpp>

CMMC_NAMESPACE_BEGIN

void TACSubTarget::peepholeOpt(GMIRFunction& func) const {
    applySSAPropagation(func);
}

void TACSubTarget::postPeepholeOpt(GMIRFunction&) const {}

CMMC_NAMESPACE_END

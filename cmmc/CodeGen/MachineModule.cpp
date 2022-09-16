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

#include <cmmc/CodeGen/MachineModule.hpp>
#include <cmmc/Support/Arena.hpp>

CMMC_NAMESPACE_BEGIN

MachineModule::MachineModule(const Target& target) : mTarget{ target } {
    Arena::setArena(Arena::Source::MC, &mArena);
}
bool MachineModule::verify() const {
    return false;
}

CMMC_NAMESPACE_END

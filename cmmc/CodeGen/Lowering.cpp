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
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Module.hpp>

CMMC_NAMESPACE_BEGIN

std::unique_ptr<MachineModule> lowerToMachineModule(Module& module) {
    auto& target = module.getTarget();

    // emit legal instructions/types using virtual registers
    auto machineModule = target.translateIR(module);

    // basic block level DAG scheduling

    // register allocation

    // stack location

    // peephole optimizations

    return machineModule;
}

CMMC_NAMESPACE_END

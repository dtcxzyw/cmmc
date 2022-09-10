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
#include "cmmc/CodeGen/MachineInst.hpp"
#include "cmmc/Support/Arena.hpp"
#include <memory>
#include <ostream>

CMMC_NAMESPACE_BEGIN

class MachineSymbol {
public:
    virtual ~MachineSymbol();
    // visibility
};

class MachineData {
public:
};

class MachineBasicBlock final {
public:
};

class MachineFunction final : public MachineSymbol {
public:
};

class MachineModule final {
    Arena mArena;
    std::vector<MachineSymbol*> mSymbols;

public:
    MachineModule();
    std::vector<MachineSymbol*>& symbols() noexcept {
        return mSymbols;
    }
    void emitAssembly(std::ostream& out) const;
    bool verify() const;
};

class Module;
std::unique_ptr<MachineModule> lowerToMachineModule(Module& module);

CMMC_NAMESPACE_END

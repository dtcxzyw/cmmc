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
#include <cmmc/CodeGen/MachineInst.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cstddef>
#include <memory>
#include <ostream>

CMMC_NAMESPACE_BEGIN

class MachineSymbol {
    String<Arena::Source::MC> mSymbol;

public:
    // visibility
    explicit MachineSymbol(String<Arena::Source::MC> symbol) : mSymbol{ std::move(symbol) } {}
    static constexpr auto arenaSource = Arena::Source::MC;
    virtual ~MachineSymbol() = default;
};

struct MachineData : public MachineSymbol {
    Vector<std::byte, ArenaAllocator<arenaSource, std::byte>> data;
    bool isReadOnly;

    MachineData(String<Arena::Source::MC> symbol, Vector<std::byte, ArenaAllocator<arenaSource, std::byte>> data, bool isReadOnly)
        : MachineSymbol{ std::move(symbol) }, data{ std::move(data) }, isReadOnly{ isReadOnly } {}
};

struct MachineBasicBlock final {
    Vector<MachineInst> instructions;
};
CMMC_ARENA_TRAIT(MachineBasicBlock, MC);

struct MachineFunction final : public MachineSymbol {
    Vector<MachineBasicBlock*> basicblocks;

    explicit MachineFunction(String<Arena::Source::MC> symbol) : MachineSymbol{ std::move(symbol) } {}
};

class Target;

class MachineModule final {
    Arena mArena;
    const Target& mTarget;
    std::vector<MachineSymbol*> mSymbols;

public:
    MachineModule(const Target& target);
    std::vector<MachineSymbol*>& symbols() noexcept {
        return mSymbols;
    }
    const Target& getTarget() const noexcept {
        return mTarget;
    }
    bool verify() const;
};

class Module;
std::unique_ptr<MachineModule> lowerToMachineModule(Module& module);

CMMC_NAMESPACE_END

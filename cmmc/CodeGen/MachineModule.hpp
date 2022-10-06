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
    String mSymbol;

public:
    // linkage
    explicit MachineSymbol(String symbol) : mSymbol{ std::move(symbol) } {}
    static constexpr auto arenaSource = Arena::Source::MC;
    virtual ~MachineSymbol() = default;
    const String& getSymbol() const noexcept {
        return mSymbol;
    }
};

struct MachineData : public MachineSymbol {
    Vector<std::byte, ArenaAllocator<arenaSource, std::byte>> data;
    bool isReadOnly;

    MachineData(String symbol, Vector<std::byte, ArenaAllocator<arenaSource, std::byte>> data, bool isReadOnly)
        : MachineSymbol{ std::move(symbol) }, data{ std::move(data) }, isReadOnly{ isReadOnly } {}
};

struct StackAllocation final {
    size_t allocation;
    size_t alignment;
};
CMMC_ARENA_TRAIT(StackAllocation, MC);

class MachineFunction;

struct MachineBasicBlock final {
    MachineFunction* func;
    List<MachineInst> instructions;
    Deque<StackAllocation*> stackAllocations;  // TODO: it should be temporary variable

    Vector<MachineBasicBlock*, ArenaAllocator<Arena::Source::MC, MachineBasicBlock*>> predecessors;
    Vector<MachineBasicBlock*, ArenaAllocator<Arena::Source::MC, MachineBasicBlock*>> successors;

    explicit MachineBasicBlock(MachineFunction* func) : func{ func } {}
};
CMMC_ARENA_TRAIT(MachineBasicBlock, MC);

struct MachineFunction final : public MachineSymbol {
    Vector<MachineBasicBlock*> basicblocks;

    explicit MachineFunction(String symbol) : MachineSymbol{ std::move(symbol) } {}
};

class Target;

class MachineModule final {
    Arena mArena;
    const Target& mTarget;
    std::vector<MachineSymbol*> mSymbols;

public:
    explicit MachineModule(const Target& target);
    std::vector<MachineSymbol*>& symbols() noexcept {
        return mSymbols;
    }
    const Target& getTarget() const noexcept {
        return mTarget;
    }
    bool verify() const;
};

CMMC_NAMESPACE_END

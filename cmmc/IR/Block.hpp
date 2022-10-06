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
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cstdint>
#include <ostream>

CMMC_NAMESPACE_BEGIN

class Function;

class BlockArgument final : public Value {
    Block* mBlock;
    String mLabel;

public:
    BlockArgument(Block* block, const Type* type) noexcept : Value{ type }, mBlock{ block } {}
    void dump(std::ostream& out) const override;
    void dumpAsOperand(std::ostream& out) const override;
    void setLabel(String label);
    const String& getLabel() const noexcept {
        return mLabel;
    }
    Block* getBlock() const noexcept override {
        return mBlock;
    }
};

class Block final {
    Function* mFunction;
    String mLabel;
    Deque<BlockArgument*> mArgs;
    List<Instruction*> mInstructions;

public:
    explicit Block(Function* function) : mFunction{ function } {}
    void relabel();
    void dump(std::ostream& out) const;
    bool verify(std::ostream& out) const;

    Instruction* getTerminator() const noexcept {
        return mInstructions.back();
    }

    const String& getLabel() const noexcept {
        return mLabel;
    }
    void setLabel(String label) {
        mLabel = std::move(label);
    }

    const Deque<BlockArgument*>& args() const noexcept {
        return mArgs;
    }
    BlockArgument* addArg(const Type* type);
    void removeArg(BlockArgument* arg);
    BlockArgument* getArg(uint32_t idx);

    List<Instruction*>& instructions() noexcept {
        return mInstructions;
    }
    Function* getFunction() const noexcept {
        return mFunction;
    }
    void setFunction(Function* func) noexcept {
        mFunction = func;
    }

    void dumpAsTarget(std::ostream& out) const;
    Block* clone(std::unordered_map<Value*, Value*>& replace) const;
};
CMMC_ARENA_TRAIT(Block, IR);

CMMC_NAMESPACE_END

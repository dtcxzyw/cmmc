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

#pragma once
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cstdint>
#include <ostream>

CMMC_NAMESPACE_BEGIN

class Function;

struct HighlightBlock final : public HighlightSelector {
    const Block* targetBlock;
    bool highlight(const Block* block) const noexcept override {
        return block == targetBlock;
    }
    bool highlight(const Instruction*) const noexcept override {
        return false;
    }
};

struct BlockTransformMetadata final {
    uint32_t rotateCount = 0;
    uint32_t unrollCount = 0;
    bool scalarBlock = false;
};

class Block final {
    Function* mFunction;
    String mLabel;
    uint32_t mBlockIdx;
    IntrusiveList<Instruction> mInstructions;
    BlockTransformMetadata mTransformMetadata;

public:
    explicit Block(Function* function) : mFunction{ function } {}
    void dump(std::ostream& out, const HighlightSelector& selector) const;
    void relabel(LabelAllocator& allocator) const;
    [[nodiscard]] uint32_t getIndex() const noexcept {
        return mBlockIdx;
    }
    void dumpLabeled(std::ostream& out, const HighlightSelector& selector) const;
    bool verify(std::ostream& out) const;
    BlockTransformMetadata& getTransformMetadata() noexcept {
        return mTransformMetadata;
    }

    [[nodiscard]] Instruction* getTerminator() const noexcept {
        return mInstructions.back();
    }

    [[nodiscard]] const String& getLabel() const noexcept {
        return mLabel;
    }
    void setLabel(String label, uint32_t idx = 0) {
        mLabel = label;
        mBlockIdx = idx;
    }

    IntrusiveList<Instruction>& instructions() noexcept {
        return mInstructions;
    }
    [[nodiscard]] Function* getFunction() const noexcept {
        return mFunction;
    }
    void setFunction(Function* func) noexcept {
        mFunction = func;
    }

    void dumpAsTarget(std::ostream& out) const;
    Block* clone(std::unordered_map<Value*, Value*>& replace, bool replaceAll) const;
};
CMMC_ARENA_TRAIT(Block, IR);

CMMC_NAMESPACE_END

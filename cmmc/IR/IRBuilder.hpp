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
#include <algorithm>
#include <cassert>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <ostream>
#include <type_traits>

CMMC_NAMESPACE_BEGIN

class IRBuilder {
    Function* mCurrentFunction;
    Block* mCurrentBlock;
    IntrusiveListIterator<Instruction> mInsertPoint;

    const Type* mIndexType;
    Value *mTrueValue, *mFalseValue, *mZeroIndex;

public:
    explicit IRBuilder(const mir::Target& target);
    IRBuilder(const mir::Target& target, Block* block);

    [[nodiscard]] Function* getCurrentFunction() const noexcept;
    void setCurrentFunction(Function* func) noexcept;
    [[nodiscard]] Block* getCurrentBlock() const;
    void setCurrentBlock(Block* block);
    void setInsertPoint(Block* block, IntrusiveListIterator<Instruction> insertPoint);
    void setInsertPoint(Block* block, Instruction* beforeInst);
    void nextInsertPoint();
    [[nodiscard]] IntrusiveListIterator<Instruction> getInsertPoint() const noexcept;

    template <typename T, typename... Args>
    auto makeOp(Args&&... args) {
        static_assert(!std::is_same_v<StackAllocInst, T> && !std::is_same_v<PhiInst, T>);
        auto inst = make<T>(std::forward<Args>(args)...);
        auto block = getCurrentBlock();
        inst->insertBefore(block, mInsertPoint);
        return inst;
    }

    StackAllocInst* createAlloc(const Type* type, size_t alignment);
    PhiInst* createPhi(const Type* type);

    Block* addBlock();

    [[nodiscard]] Value* getTrue() const noexcept;
    [[nodiscard]] Value* getFalse() const noexcept;
    [[nodiscard]] Value* getZeroIndex() const noexcept;
    [[nodiscard]] const Type* getIndexType() const noexcept;
};

CMMC_NAMESPACE_END

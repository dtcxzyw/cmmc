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

CMMC_NAMESPACE_BEGIN

class IRBuilder {
    Function* mCurrentFunction;
    Block* mCurrentBlock;
    List<Instruction*>::iterator mInsertPoint;

    const Type* mIndexType;
    Value *mTrueValue, *mFalseValue, *mZeroIndex;

public:
    explicit IRBuilder(const Target& target);
    IRBuilder(const Target& target, Block* block);

    Function* getCurrentFunction() const noexcept;
    void setCurrentFunction(Function* func) noexcept;
    Block* getCurrentBlock() const;
    void setCurrentBlock(Block* block);
    void setInsertPoint(Block* block, List<Instruction*>::iterator insertPoint);
    void setInsertPoint(Block* block, Instruction* beforeInst);
    void nextInsertPoint();
    List<Instruction*>::iterator getInsertPoint() const noexcept;

    template <typename T, typename... Args>
    auto makeOp(Args&&... args) {
        auto inst = make<T>(std::forward<Args>(args)...);
        auto block = getCurrentBlock();
        auto iter = block->instructions().insert(mInsertPoint, inst);
        mInsertPoint = std::next(iter);
        inst->setBlock(block);
        return inst;
    }

    Block* addBlock(const Vector<const Type*>& types);

    template <typename... Args>
    Block* addBlock(Args... types) {
        return addBlock({ types... });
    }

    Value* getTrue() const noexcept;
    Value* getFalse() const noexcept;
    Value* getZeroIndex() const noexcept;
    const Type* getIndexType() const noexcept;
};

CMMC_NAMESPACE_END

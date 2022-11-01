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
    IRBuilder();
    explicit IRBuilder(Block* block) : IRBuilder{} {
        setCurrentBlock(block);
    }

    Function* getCurrentFunction() const noexcept {
        return mCurrentFunction;
    }
    void setCurrentFunction(Function* func) noexcept {
        mCurrentFunction = func;
        mCurrentBlock = nullptr;
    }
    Block* getCurrentBlock() const {
        if(!mCurrentBlock)
            DiagnosticsContext::get().attach<Reason>("Dynamic initialization of global variable is not allowed").reportFatal();
        return mCurrentBlock;
    }
    void setCurrentBlock(Block* block) {
        mCurrentFunction = block ? block->getFunction() : nullptr;
        mCurrentBlock = block;
        if(block)
            mInsertPoint = mCurrentBlock->instructions().end();
    }
    void setInsertPoint(Block* block, List<Instruction*>::iterator insertPoint) {
        assert(block);
        setCurrentBlock(block);
        mInsertPoint = insertPoint;
    }
    void setInsertPoint(Block* block, Instruction* beforeInst) {
        assert(block);
        setCurrentBlock(block);
        assert(beforeInst);
        mInsertPoint = std::find(block->instructions().begin(), block->instructions().end(), beforeInst);
        assert(mInsertPoint != block->instructions().cend());
    }
    void nextInsertPoint() {
        ++mInsertPoint;
    }
    auto getInsertPoint() const noexcept {
        return mInsertPoint;
    }

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

    Value* getTrue() const noexcept {
        return mTrueValue;
    }
    Value* getFalse() const noexcept {
        return mFalseValue;
    }
    Value* getZeroIndex() const noexcept {
        return mZeroIndex;
    }
    const Type* getIndexType() const noexcept {
        return mIndexType;
    }
};

CMMC_NAMESPACE_END

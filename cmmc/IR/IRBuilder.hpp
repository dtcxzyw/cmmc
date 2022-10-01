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
#include <cassert>
#include <cmmc/IR/Block.hpp>
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

public:
    IRBuilder() : mCurrentFunction{ nullptr }, mCurrentBlock{ nullptr } {}
    explicit IRBuilder(Block* block) {
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
            reportFatal("Dynamic initialization of global variable is not allowed");
        return mCurrentBlock;
    }
    void setCurrentBlock(Block* block) {
        mCurrentFunction = block ? block->getFunction() : nullptr;
        mCurrentBlock = block;
    }

    template <typename T, typename... Args>
    Instruction* makeOp(Args&&... args) {
        auto inst = make<T>(std::forward<Args>(args)...);
        auto block = getCurrentBlock();
        block->instructions().push_back(inst);
        inst->setBlock(block);
        return inst;
    }

    Block* addBlock(const Vector<Type*>& types);

    template <typename... Args>
    Block* addBlock(Args... types) {
        return addBlock({ types... });
    }

    Value* getTrue() const;
    Value* getFalse() const;
    Value* getInteger(IntegerType* type, intmax_t value) const;
};

CMMC_NAMESPACE_END

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

#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Type.hpp>

CMMC_NAMESPACE_BEGIN

IRBuilder::IRBuilder() : mCurrentFunction{ nullptr }, mCurrentBlock{ nullptr } {
    mTrueValue = ConstantInteger::getTrue();
    mFalseValue = ConstantInteger::getFalse();
    mIndexType = IntegerType::get(32U);  // TODO: size_t, get from target
    mZeroIndex = ConstantInteger::get(mIndexType, 0);
}
Block* IRBuilder::addBlock(const Vector<const Type*>& types) {
    auto block = make<Block>(mCurrentFunction);
    for(auto type : types)
        block->addArg(type);
    block->setLabel(String::get("b"));
    mCurrentFunction->blocks().push_back(block);
    return block;
}

CMMC_NAMESPACE_END

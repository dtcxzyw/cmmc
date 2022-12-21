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

#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Type.hpp>

CMMC_NAMESPACE_BEGIN

IRBuilder::IRBuilder(const Target& target) : mCurrentFunction{ nullptr }, mCurrentBlock{ nullptr } {
    mTrueValue = ConstantInteger::getTrue();
    mFalseValue = ConstantInteger::getFalse();
    const auto& dataLayout = target.getDataLayout();
    mIndexType = IntegerType::get(static_cast<uint32_t>(dataLayout.getPointerSize() * 8));
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
IRBuilder::IRBuilder(const Target& target, Block* block) : IRBuilder{ target } {
    setCurrentBlock(block);
}

Function* IRBuilder::getCurrentFunction() const noexcept {
    return mCurrentFunction;
}
void IRBuilder::setCurrentFunction(Function* func) noexcept {
    mCurrentFunction = func;
    mCurrentBlock = nullptr;
}
Block* IRBuilder::getCurrentBlock() const {
    if(!mCurrentBlock)
        DiagnosticsContext::get().attach<Reason>("Dynamic initialization of global variable is not allowed").reportFatal();
    return mCurrentBlock;
}
void IRBuilder::setCurrentBlock(Block* block) {
    if(mCurrentBlock == block)
        return;
    mCurrentFunction = block ? block->getFunction() : nullptr;
    mCurrentBlock = block;
    if(block)
        mInsertPoint = mCurrentBlock->instructions().end();
}
void IRBuilder::setInsertPoint(Block* block, List<Instruction*>::iterator insertPoint) {
    assert(block);
    setCurrentBlock(block);
    mInsertPoint = insertPoint;
}
void IRBuilder::setInsertPoint(Block* block, Instruction* beforeInst) {
    assert(block);
    setCurrentBlock(block);
    assert(beforeInst);
    mInsertPoint = std::find(block->instructions().begin(), block->instructions().end(), beforeInst);
    assert(mInsertPoint != block->instructions().cend());
}
void IRBuilder::nextInsertPoint() {
    ++mInsertPoint;
}
List<Instruction*>::iterator IRBuilder::getInsertPoint() const noexcept {
    return mInsertPoint;
}
Value* IRBuilder::getTrue() const noexcept {
    return mTrueValue;
}
Value* IRBuilder::getFalse() const noexcept {
    return mFalseValue;
}
Value* IRBuilder::getZeroIndex() const noexcept {
    return mZeroIndex;
}
const Type* IRBuilder::getIndexType() const noexcept {
    return mIndexType;
}

CMMC_NAMESPACE_END

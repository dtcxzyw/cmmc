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
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>

CMMC_NAMESPACE_BEGIN

IRBuilder::IRBuilder(const Target& target)
    : mCurrentFunction{ nullptr }, mCurrentBlock{ nullptr }, mIndexType{ IntegerType::get(static_cast<uint32_t>(
                                                                 target.getDataLayout().getPointerSize() * 8)) },
      mTrueValue{ ConstantInteger::getTrue() }, mFalseValue{ ConstantInteger::getFalse() }, mZeroIndex{ ConstantInteger::get(
                                                                                                mIndexType, 0) } {}
Block* IRBuilder::addBlock() {
    auto block = make<Block>(mCurrentFunction);
    block->setLabel(String::get("b"));
    mCurrentFunction->blocks().push_back(block);
    return block;
}
IRBuilder::IRBuilder(const Target& target, Block* block) : IRBuilder{ target } {
    setCurrentBlock(block);
}
StackAllocInst* IRBuilder::createAlloc(const Type* type) {
    auto inst = make<StackAllocInst>(type);
    auto block = getCurrentBlock();
    const auto entry = getCurrentFunction()->entryBlock();
    if(block != entry) {
        entry->instructions().emplace_front(inst);
        inst->setBlock(entry);
    } else {
        auto iter = block->instructions().insert(mInsertPoint, inst);
        mInsertPoint = std::next(iter);
        inst->setBlock(block);
    }
    return inst;
}
PhiInst* IRBuilder::createPhi(const Type* type) {
    auto inst = make<PhiInst>(type);
    auto block = getCurrentBlock();
    if(mInsertPoint != block->instructions().cbegin() && (*std::prev(mInsertPoint))->getInstID() != InstructionID::Phi) {
        DiagnosticsContext::get().attach<Reason>("Cannot insert a phi instruction after non-phi instructions").reportFatal();
    }
    auto iter = block->instructions().insert(mInsertPoint, inst);
    mInsertPoint = std::next(iter);
    inst->setBlock(block);
    return inst;
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

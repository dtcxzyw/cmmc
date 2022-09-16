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

#include <algorithm>
#include <cmmc/IR/Block.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/LabelAllocator.hpp>

CMMC_NAMESPACE_BEGIN

void BlockArgument::dump(std::ostream& out) const {
    getType()->dumpName(out);
    out << " %" << mLabel;
}

void BlockArgument::setLabel(String<Arena::Source::IR> label) {
    mLabel = std::move(label);
}

void Block::dump(std::ostream& out) const {
    // relabel args and instructions
    LabelAllocator allocator;
    String<Arena::Source::IR> argBaseLabel{ "arg" };
    for(auto arg : mArgs)
        arg->setLabel(allocator.allocate(argBaseLabel));
    for(auto inst : mInstructions)
        if(inst->canbeOperand())
            inst->setLabel(allocator.allocate(inst->getLabel()));

    out << '^' << mLabel << '(';
    bool isFirst = true;
    for(auto arg : mArgs) {
        if(!isFirst)
            out << ", ";
        else
            isFirst = false;
        arg->dump(out);
    }
    out << "):" << std::endl;
    for(auto inst : mInstructions) {
        out << "    ";
        inst->dump(out);
        out << ';' << std::endl;
    }
}

bool Block::verify(std::ostream& out) const {
    // terminator

    if(mInstructions.empty() || !mInstructions.back()->isTerminator()) {
        out << "require a terminator";
        return false;
    }

    // topological ordering

    // per-instruction
    for(auto inst : mInstructions)
        if(!inst->verify(out))
            return false;

    return true;
}
BlockArgument* Block::getArg(uint32_t idx) {
    return mArgs[idx];
}

BlockArgument* Block::addArg(Type* type) {
    auto arg = make<BlockArgument>(this, type);
    mArgs.push_back(arg);
    return arg;
}
void Block::removeArg(BlockArgument* arg) {
    const auto iter = std::find(mArgs.begin(), mArgs.end(), arg);
    if(iter != mArgs.end()) {
        mArgs.erase(iter);
    } else {
        reportFatal("");
    }
}

void Block::dumpAsTarget(std::ostream& out) const {
    out << '^' << mLabel;
}

CMMC_NAMESPACE_END

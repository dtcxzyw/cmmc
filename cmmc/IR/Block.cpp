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
#include <cmmc/Config.hpp>
#include <cmmc/IR/Attachments.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

void BlockArgument::dump(std::ostream& out) const {
    dumpAsOperand(out);
}

void BlockArgument::dumpAsOperand(std::ostream& out) const {
    dumpPrefix(out);
    getType()->dumpName(out);
    out << " %"sv << mLabel;
}

void BlockArgument::setLabel(String label) {
    mLabel = std::move(label);
}

void Block::dump(std::ostream& out) const {
    // relabel args and instructions
    LabelAllocator allocator;
    auto argBaseLabel = String::get("arg");  // TODO: use default label
    for(auto arg : mArgs)
        arg->setLabel(allocator.allocate(argBaseLabel));
    for(auto inst : mInstructions)
        if(inst->canbeOperand())
            inst->setLabel(allocator.allocate(inst->getLabel()));

    out << '^' << mLabel << '(';
    bool isFirst = true;
    for(auto arg : mArgs) {
        if(!isFirst)
            out << ", "sv;
        else
            isFirst = false;
        arg->dump(out);
    }
    out << "):\n"sv;
    for(auto inst : mInstructions) {
        out << "    "sv;
        inst->dump(out);
        out << ";\n"sv;
    }
}

bool Block::verify(std::ostream& out) const {
    // terminator

    if(mInstructions.empty() || !mInstructions.back()->isTerminator()) {
        out << "require a terminator"sv;
        return false;
    }

    // ownership
    for(auto arg : mArgs)
        if(arg->getBlock() != this) {
            out << "bad ownership"sv;
            arg->dump(out);
            return false;
        }

    for(auto inst : mInstructions)
        if(inst->getBlock() != this) {
            out << "bad ownership"sv;
            inst->dump(out);
            return false;
        }

    // topological ordering
    std::unordered_set<Value*> definedValue;
    for(auto arg : mArgs) {
        definedValue.insert(arg);
    }
    for(auto inst : mInstructions) {
        if(inst->isTerminator() && inst != mInstructions.back()) {
            out << "the terminator must be in the end of a block"sv << std::endl;
            return false;
        }
        for(auto operand : inst->operands()) {
            if(!operand->isConstant() && !operand->isGlobal()) {
                if(!definedValue.count(operand)) {
                    out << "bad instruction order"sv << std::endl;
                    dump(out);
                    out << "this operand is required: "sv << std::endl;
                    operand->dump(out);
                    out << std::endl << "user: "sv << std::endl;
                    inst->dump(out);
                    out << std::endl;
                    return false;
                }
            }
        }
        definedValue.insert(inst);
    }

    // per-instruction
    for(auto inst : mInstructions)
        if(!inst->verify(out))
            return false;

    return true;
}
BlockArgument* Block::getArg(uint32_t idx) {
    return mArgs[idx];
}

BlockArgument* Block::addArg(const Type* type) {
    auto arg = make<BlockArgument>(this, type);
    mArgs.push_back(arg);
    return arg;
}
void Block::removeArg(BlockArgument* arg) {
    const auto iter = std::find(mArgs.begin(), mArgs.end(), arg);
    if(iter != mArgs.end()) {
        mArgs.erase(iter);
        if constexpr(Config::debug) {
            arg->setLabel(String::get("removed"));
        }
    } else {
        DiagnosticsContext::get().attach<ValueAttachment>("invalid block arg", arg).reportFatal();
    }
}

void Block::dumpAsTarget(std::ostream& out) const {
    out << '^' << mLabel;
}

Block* Block::clone(std::unordered_map<Value*, Value*>& replace) const {
    auto block = make<Block>(mFunction);
    block->setLabel(getLabel());

    for(auto arg : mArgs) {
        auto newArg = block->addArg(arg->getType());
        newArg->setLabel(arg->getLabel());
        replace.emplace(arg, newArg);
    }

    for(auto inst : mInstructions) {
        auto newInst = inst->clone();
        if(!newInst->isBranch()) {
            for(auto& operand : newInst->operands()) {
                if(operand->getBlock()) {
                    assert(replace.count(operand));
                    const auto newOperand = replace.at(operand);
                    operand = newOperand;
                }
            }
        } else {
            for(auto& operand : newInst->operands()) {
                if(auto srcBlock = operand->getBlock(); srcBlock == this) {
                    assert(replace.count(operand));
                    const auto newOperand = replace.at(operand);
                    newInst->replaceOperand(operand, newOperand);
                }
            }
        }

        newInst->setLabel(inst->getLabel());
        newInst->setBlock(block);
        replace.emplace(inst, newInst);
        block->mInstructions.push_back(newInst);
    }

    return block;
}

CMMC_NAMESPACE_END

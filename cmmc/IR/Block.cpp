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
#include <cmmc/Support/Options.hpp>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN
extern Flag uniqueLabel;  // NOLINT

void Block::dump(std::ostream& out) const {
    LabelAllocator allocator;
    relabel(allocator);
    dumpLabeled(out);
}

void Block::relabel(LabelAllocator& allocator) const {
    // relabel instructions
    for(auto inst : mInstructions)
        if(inst->canbeOperand())
            inst->setLabel(allocator.allocate(inst->getLabel()));
}

void Block::dumpLabeled(std::ostream& out) const {
    dumpAsTarget(out);
    out << ":\n";
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

    for(auto inst : mInstructions)
        if(inst->getBlock() != this) {
            out << "bad ownership"sv;
            inst->dump(out);
            return false;
        }

    // TODO: dominated?
    // topological ordering
    std::unordered_set<Value*> definedValue;
    for(auto inst : mInstructions) {
        if(inst->isTerminator() && inst != mInstructions.back()) {
            out << "the terminator must be in the end of a block"sv << std::endl;
            return false;
        }
        for(auto operand : inst->operands()) {
            if(!operand->isConstant() && !operand->isGlobal()) {
                if(!definedValue.count(operand)) {
                    out << "bad instruction order"sv << std::endl;
                    dumpLabeled(out);
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

void Block::dumpAsTarget(std::ostream& out) const {
    if(uniqueLabel.get()) {
        out << this << ' ';
    }
    out << '^' << mLabel;
}

Block* Block::clone(std::unordered_map<Value*, Value*>& replace) const {
    auto block = make<Block>(mFunction);
    block->setLabel(getLabel());

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

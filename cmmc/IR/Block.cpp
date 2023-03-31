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
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Support/Options.hpp>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN
extern Flag uniqueLabel;  // NOLINT

void Block::dump(std::ostream& out, const HighlightSelector& selector) const {
    LabelAllocator allocator;
    relabel(allocator);
    dumpLabeled(out, selector);
}

void Block::relabel(LabelAllocator& allocator) const {
    // relabel instructions
    for(auto inst : mInstructions)
        if(inst->canbeOperand())
            inst->setLabel(allocator.allocate(inst->getLabel()));
}

void Block::dumpLabeled(std::ostream& out, const HighlightSelector& selector) const {
    if(selector.highlight(this)) {
        out << "\033[1;33m";
    }
    dumpAsTarget(out);
    if(selector.highlight(this)) {
        out << "\033[0m";
    }
    out << ":\n";
    for(auto inst : mInstructions) {
        out << "    "sv;
        inst->dump(out, selector);
        out << ";\n"sv;
    }
}

bool Block::verify(std::ostream& out) const {
    // terminator

    if(mInstructions.empty() || !mInstructions.back()->isTerminator()) {
        out << "require a terminator"sv;
        return false;
    }

    for(auto inst : mInstructions) {
        if(inst->getBlock() != this) {
            out << "bad ownership "sv;
            inst->dump(out, Noop{});
            return false;
        }
        for(auto operand : inst->operands()) {
            if(auto block = operand->getBlock()) {
                if(block->getFunction() != getFunction()) {
                    out << "bad ownership "sv;
                    inst->dump(out, Noop{});
                    out << "\ninvalid operand "sv;
                    operand->dumpAsOperand(out);
                    return false;
                }
            }
        }
    }

    std::unordered_set<Value*> definedValue;
    for(auto inst : mInstructions) {
        if(inst->isTerminator() && inst != mInstructions.back()) {
            out << "the terminator must be in the end of a block"sv << std::endl;
            return false;
        }
        for(auto operand : inst->operands()) {
            if(operand->getBlock() == this && !operand->is<PhiInst>()) {
                if(!definedValue.count(operand)) {
                    out << "bad instruction order"sv << std::endl;
                    dumpLabeled(out, Noop{});
                    out << "this operand is required: "sv << std::endl;
                    operand->dump(out, Noop{});
                    out << std::endl << "user: "sv << std::endl;
                    inst->dump(out, Noop{});
                    out << std::endl;
                    return false;
                }
            }
        }
        definedValue.insert(inst);
    }

    // per-instruction
    for(auto inst : mInstructions)
        if(!inst->verify(out)) {
            out << "invalid inst "sv << std::endl;
            dump(out, HighlightInst{ inst });
            return false;
        }

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
        if(newInst->getInstID() != InstructionID::Phi) {
            for(auto& operand : newInst->operands()) {
                if(operand->getBlock() == this) {
                    const auto newOperand = replace.at(operand);
                    operand = newOperand;
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

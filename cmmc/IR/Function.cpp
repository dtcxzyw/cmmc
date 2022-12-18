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

#include <cmmc/IR/Function.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cstdint>
#include <string>
#include <string_view>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

void Function::dump(std::ostream& out) const {
    if(getLinkage() == Linkage::Internal)
        out << "internal "sv;
    out << "func @"sv << getSymbol();
    getType()->dump(out);
    if(!mAttr.empty()) {
        out << " { "sv;
#define HANDLE_ATTR(NAME)                      \
    if(mAttr.hasAttr(FunctionAttribute::NAME)) \
    out << #NAME " "sv

        HANDLE_ATTR(NoMemoryRead);
        HANDLE_ATTR(NoMemoryWrite);
        HANDLE_ATTR(NoSideEffect);
        HANDLE_ATTR(Stateless);
        HANDLE_ATTR(NoAlias);
        HANDLE_ATTR(NoReturn);
        HANDLE_ATTR(NoRecurse);
        HANDLE_ATTR(Entry);

#undef HANDLE_ATTR
        out << "}"sv;
    }

    // TODO: print CC

    if(mBlocks.empty()) {  // decl only
        out << ";\n"sv;
        return;
    }

    LabelAllocator allocator;
    for(auto block : mBlocks)
        block->setLabel(allocator.allocate(block->getLabel()));
    out << " {\n"sv;
    for(auto block : mBlocks)
        block->dump(out);
    out << "}\n"sv;
}

bool Function::verify(std::ostream& out) const {
    std::unordered_set<Value*> set;
    std::unordered_set<Block*> blocks;
    for(auto block : mBlocks) {
        if(block->getFunction() != this) {
            out << "bad ownership"sv << std::endl;
            return false;
        }
        for(auto inst : block->instructions())
            if(!set.insert(inst).second) {
                out << "unexpected copy of instruction "sv << inst << std::endl;
                inst->dump(out);
                return false;
            }
        blocks.insert(block);
    }
    for(auto block : mBlocks) {
        auto terminator = block->getTerminator();
        if(terminator->isBranch()) {
            const auto branch = terminator->as<ConditionalBranchInst>();
            auto& trueTarget = branch->getTrueTarget();
            auto& falseTarget = branch->getFalseTarget();
            if(!blocks.count(trueTarget.getTarget())) {
                out << "invalid use of deleted block ^"sv << trueTarget.getTarget()->getLabel() << std::endl;
                terminator->dump(out);
                return false;
            }
            if(falseTarget.getTarget() && !blocks.count(falseTarget.getTarget())) {
                out << "invalid use of deleted block ^"sv << falseTarget.getTarget()->getLabel() << std::endl;
                terminator->dump(out);
                return false;
            }
        }
        if(!block->verify(out))
            return false;
    }
    return true;
}

void Function::dumpCFG(std::ostream& out) const {
    out << "digraph "sv << getSymbol() << '{' << std::endl;
    std::unordered_map<Block*, std::string> ids;
    uint32_t id = 0;

    ;

    for(auto block : mBlocks) {
        ids[block] = "b" + std::to_string(++id);

        std::string_view shape = "ellipse"sv;
        std::string_view color = "black"sv;

        auto terminator = block->getTerminator();
        switch(terminator->getInstID()) {
            case InstructionID::Ret: {
                shape = "doublecircle"sv;
                color = "green"sv;
                break;
            }
            case InstructionID::Unreachable: {
                shape = "doublecircle"sv;
                color = "red"sv;
                break;
            }
            default:
                break;
        }
        if(block == entryBlock())
            shape = "diamond"sv;

        out << ids[block] << " [shape = "sv << shape << ", color = "sv << color << ", label = \""sv << block->getLabel()
            << "\"];"sv << std::endl;
    }

    for(auto block : mBlocks) {
        auto terminator = block->getTerminator();
        if(terminator->isBranch()) {
            auto branch = terminator->as<ConditionalBranchInst>();
            auto& trueTarget = branch->getTrueTarget();
            out << ids[block] << "->"sv << ids[trueTarget.getTarget()] << ';' << std::endl;
            auto& falseTarget = branch->getFalseTarget();
            if(falseTarget.getTarget())
                out << ids[block] << "->"sv << ids[falseTarget.getTarget()] << ';' << std::endl;
        }
    }

    out << "}\n"sv;
}

CMMC_NAMESPACE_END

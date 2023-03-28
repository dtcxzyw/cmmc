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
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cstdint>
#include <iostream>
#include <string>
#include <string_view>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

void FuncArgument::dump(std::ostream& out) const {
    dumpAsOperand(out);
}

void FuncArgument::dumpAsOperand(std::ostream& out) const {
    dumpPrefix(out);
    getType()->dumpName(out);
    out << " %"sv << mLabel;
}

void FuncArgument::setLabel(String label) {
    mLabel = label;
}
FuncArgument* Function::getArg(uint32_t idx) const {
    return mArgs[idx];
}

void Function::dump(std::ostream& out) const {
    if(getLinkage() == Linkage::Internal)
        out << "internal "sv;
    out << "func @"sv << getSymbol() << '(';

    LabelAllocator allocator;
    for(auto arg : mArgs)
        arg->setLabel(allocator.allocate(arg->getLabel()));

    bool isFirst = true;
    for(auto arg : mArgs) {
        if(!isFirst) {
            out << ", "sv;
        } else
            isFirst = false;
        arg->dumpAsOperand(out);
    }
    out << ") -> "sv;
    getType()->as<FunctionType>()->getRetType()->dumpName(out);

    if(!mAttr.empty()) {
        out << " { "sv;
        // NOLINTNEXTLINE
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

    for(auto block : mBlocks) {
        block->setLabel(allocator.allocate(block->getLabel()));
        block->relabel(allocator);
    }
    out << " {\n"sv;
    for(auto block : mBlocks)
        block->dumpLabeled(out);
    out << "}\n"sv;
}
FuncArgument* Function::addArg(const Type* type) {
    const auto arg = make<FuncArgument>(this, type);
    mArgs.push_back(arg);
    return arg;
}
bool Function::verify(std::ostream& out) const {
    if(mBlocks.empty())
        return true;

    std::unordered_set<Value*> set;
    std::unordered_set<Block*> blocks;
    for(auto block : mBlocks) {
        if(block->getFunction() != this) {
            out << "bad ownership"sv << std::endl;
            return false;
        }
        for(auto inst : block->instructions()) {
            if(inst->getInstID() == InstructionID::Alloc) {
                if(inst->getBlock() != entryBlock()) {
                    out << "Stack allocations should be in the entry block"sv << std::endl;
                    return false;
                }
            }
            if(!set.insert(inst).second) {
                out << "unexpected copy of instruction "sv << inst << std::endl;
                inst->dump(out);
                return false;
            }
        }
        blocks.insert(block);
    }
    for(auto block : mBlocks) {
        auto terminator = block->getTerminator();
        if(terminator->isBranch()) {
            const auto branch = terminator->as<BranchInst>();
            auto& trueTarget = branch->getTrueTarget();
            auto& falseTarget = branch->getFalseTarget();
            if(!blocks.count(trueTarget)) {
                out << "invalid use of deleted block "sv;
                trueTarget->dumpAsTarget(out);
                out << std::endl;
                terminator->dump(out);
                return false;
            }
            if(falseTarget && !blocks.count(falseTarget)) {
                out << "invalid use of deleted block "sv;
                falseTarget->dumpAsTarget(out);
                out << std::endl;
                terminator->dump(out);
                return false;
            }
        }
        if(!block->verify(out))
            return false;
    }
    std::unordered_set<Value*> insts;
    for(auto block : mBlocks)
        insts.insert(block->instructions().cbegin(), block->instructions().cend());
    for(auto block : mBlocks)
        for(auto inst : block->instructions())
            for(auto operand : inst->operands())
                if(operand->isInstruction() && !insts.count(operand)) {
                    out << "Invalid inst: ";
                    inst->dump(out);
                    out << "\nInvalid reference: ";
                    operand->dumpAsOperand(out);
                    out << "\n";
                    return false;
                }

    AnalysisPassManager analysis{ nullptr };
    // verify phi node
    const auto& cfg = analysis.get<CFGAnalysis>(const_cast<Function&>(*this));  // NOLINT

    for(auto block : mBlocks) {
        bool stopPhi = false;
        for(auto inst : block->instructions()) {
            if(inst->getInstID() == InstructionID::Phi) {
                if(stopPhi) {
                    out << "Phi nodes should be in the front of instructions." << std::endl;
                    return false;
                }
                const auto phi = inst->as<PhiInst>();
                auto& incomings = phi->incomings();
                auto& predecessors = cfg.predecessors(block);
                if(predecessors.size() != incomings.size() ||
                   !std::all_of(predecessors.cbegin(), predecessors.cend(), [&](Block* pred) { return incomings.count(pred); })) {
                    out << "Invalid phi node: ";
                    phi->dump(out);
                    out << "\nPredecessors:";
                    for(auto pred : predecessors) {
                        out << ' ';
                        pred->dumpAsTarget(out);
                    }
                    return false;
                }
            } else
                stopPhi = true;
        }
    }
    // verify dominate
    const auto& dom = analysis.get<DominateAnalysis>(const_cast<Function&>(*this));  // NOLINT
    std::unordered_set<Block*> reachableBlocks{ dom.blocks().cbegin(), dom.blocks().cend() };

    for(auto block : dom.blocks()) {
        for(auto inst : block->instructions()) {
            const auto checkDominate = [&](Block* blockA, Block* blockB) {
                if(blockA != blockB && reachableBlocks.count(blockB) && !dom.dominate(blockA, blockB)) {
                    block->dump(out);
                    out << "Invalid inst: ";
                    inst->dump(out);
                    out << "\nblock ";
                    blockA->dumpAsTarget(out);
                    out << " should dominate block ";
                    blockB->dumpAsTarget(out);
                    out << std::endl;
                    return false;
                }
                return true;
            };
            if(inst->getInstID() == InstructionID::Phi) {
                const auto phi = inst->as<PhiInst>();
                for(auto [pred, val] : phi->incomings()) {
                    if(auto depBlock = val->getBlock()) {
                        if(!checkDominate(depBlock, pred))
                            return false;
                    }
                }
            } else {
                for(auto operand : inst->operands()) {
                    if(auto depBlock = operand->getBlock()) {
                        if(!checkDominate(depBlock, block))
                            return false;
                    }
                }
            }
        }
    }
    return true;
}

void Function::dumpCFG(std::ostream& out) const {
    out << "digraph "sv << getSymbol() << '{' << std::endl;
    std::unordered_map<Block*, std::string> ids;
    uint32_t id = 0;

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

        out << ids[block] << " [shape = "sv << shape << ", color = "sv << color << R"(, label = ")" << block->getLabel()
            << R"("];)" << std::endl;
    }

    for(auto block : mBlocks) {
        auto terminator = block->getTerminator();
        if(terminator->isBranch()) {
            auto branch = terminator->as<BranchInst>();
            auto& trueTarget = branch->getTrueTarget();
            out << ids[block] << "->"sv << ids[trueTarget] << ';' << std::endl;
            auto& falseTarget = branch->getFalseTarget();
            if(falseTarget)
                out << ids[block] << "->"sv << ids[falseTarget] << ';' << std::endl;
        }
    }

    out << "}\n"sv;
}

CMMC_NAMESPACE_END

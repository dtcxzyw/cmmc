/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2023 CMMC Authors
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
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iostream>
#include <memory>
#include <string>
#include <string_view>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

void FuncArgument::dump(std::ostream& out, const HighlightSelector& selector) const {
    CMMC_UNUSED(selector);
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

Function::~Function() {
    DisableValueRefCheckScope scope{};
    for(auto block : mBlocks) {
        std::destroy_at(block);
    }
}
void Function::dump(std::ostream& out, const HighlightSelector& selector) const {
    if(getLinkage() == Linkage::Internal)
        out << "internal "sv;
    out << "func @"sv << getSymbol() << '(';

    LabelAllocator allocator;
    if(mBlocks.empty()) {
        auto& args = getType()->as<FunctionType>()->getArgTypes();
        bool isFirst = true;
        for(auto arg : args) {
            if(!isFirst) {
                out << ", "sv;
            } else
                isFirst = false;
            arg->dumpName(out);
        }
    } else {
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
        HANDLE_ATTR(Builtin);
        HANDLE_ATTR(LoopBody);

#undef HANDLE_ATTR
        out << "}"sv;
    }

    // TODO: print CC

    if(mBlocks.empty()) {  // decl only
        out << ";\n"sv;
        return;
    }

    uint32_t idx = 0;
    for(auto block : mBlocks) {
        block->setLabel(allocator.allocate(block->getLabel()), ++idx);
        block->relabel(allocator);
    }
    out << " {\n"sv;
    for(auto block : mBlocks)
        block->dumpLabeled(out, selector);
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
        bool stopAlloc = block != entryBlock();
        for(auto& inst : block->instructions()) {
            if(inst.getInstID() == InstructionID::Alloc) {
                if(inst.getBlock() != entryBlock() || stopAlloc) {
                    out << "Stack allocations should be in the front of entry block"sv << std::endl;
                    block->dump(out, HighlightInst{ &inst });
                    return false;
                }
            } else
                stopAlloc = true;
            if(!set.insert(&inst).second) {
                out << "unexpected copy of instruction "sv << &inst << std::endl;
                block->dump(out, HighlightInst{ &inst });
                return false;
            }
        }
        blocks.insert(block);
    }
    for(auto block : mBlocks) {
        auto terminator = block->getTerminator();
        if(terminator->isBranch()) {
            auto checkBlock = [&](Block* target) {
                if(!blocks.count(target)) {
                    out << "invalid use of deleted block "sv;
                    target->dumpAsTarget(out);
                    out << std::endl;
                    terminator->dump(out, Noop{});
                    return false;
                }
                return true;
            };

            if(terminator->getInstID() == InstructionID::Switch) {
                auto switchInst = terminator->as<SwitchInst>();
                for(auto [key, target] : switchInst->edges())
                    if(!checkBlock(target))
                        return false;
                if(!checkBlock(switchInst->defaultTarget()))
                    return false;
            } else {
                const auto branch = terminator->as<BranchInst>();
                auto& trueTarget = branch->getTrueTarget();
                auto& falseTarget = branch->getFalseTarget();
                if(!checkBlock(trueTarget))
                    return false;
                if(falseTarget && !checkBlock(falseTarget))
                    return false;
            }
        }
        if(!block->verify(out))
            return false;
    }
    std::unordered_set<Value*> insts;
    for(auto block : mBlocks)
        for(auto& inst : block->instructions())
            insts.insert(&inst);
    for(auto block : mBlocks)
        for(auto& inst : block->instructions())
            for(auto operand : inst.operands())
                if(operand->isInstruction() && !insts.count(operand)) {
                    out << "Invalid inst: ";
                    inst.dump(out, Noop{});
                    out << "\nInvalid reference: ";
                    operand->dumpAsOperand(out);
                    out << "\n";
                    return false;
                }

    AnalysisPassManager analysis{ nullptr };
    // verify phi node
    const auto& cfg = analysis.get<CFGAnalysis>(const_cast<Function&>(*this));       // NOLINT
    const auto& dom = analysis.get<DominateAnalysis>(const_cast<Function&>(*this));  // NOLINT

    for(auto block : dom.blocks()) {
        bool stopPhi = false;
        for(auto& inst : block->instructions()) {
            if(inst.getInstID() == InstructionID::Phi) {
                if(stopPhi) {
                    out << "Phi nodes should be in the front of instructions." << std::endl;
                    return false;
                }
                const auto phi = inst.as<PhiInst>();
                auto& incomings = phi->incomings();
                auto& predecessors = cfg.predecessors(block);
                if(!std::all_of(incomings.cbegin(), incomings.cend(),
                                [&](auto incoming) {
                                    return incoming.first->getFunction() == this &&
                                        std::find(predecessors.cbegin(), predecessors.cend(), incoming.first) !=
                                        predecessors.cend();
                                }) ||
                   !std::all_of(predecessors.cbegin(), predecessors.cend(),
                                [&](Block* pred) { return !dom.reachable(pred) || incomings.count(pred); })) {
                    out << "Invalid phi node: ";
                    phi->dump(out, Noop{});
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
    for(auto block : dom.blocks()) {
        for(auto& inst : block->instructions()) {
            const auto checkDominate = [&](Block* blockA, Block* blockB, bool strict) {
                if(blockA != blockB && (strict || dom.reachable(blockA)) && dom.reachable(blockB) &&
                   !dom.dominate(blockA, blockB)) {
                    block->dump(out, Noop{});
                    out << "Invalid inst: ";
                    inst.dump(out, Noop{});
                    out << "\nblock ";
                    blockA->dumpAsTarget(out);
                    out << " should dominate block ";
                    blockB->dumpAsTarget(out);
                    out << std::endl;
                    return false;
                }
                return true;
            };
            if(inst.getInstID() == InstructionID::Phi) {
                const auto phi = inst.as<PhiInst>();
                for(auto [pred, val] : phi->incomings()) {
                    if(auto depBlock = val->value->getBlock()) {
                        if(!checkDominate(depBlock, pred, false))  // depBlock can be unreachable
                            return false;
                    }
                }
            } else {
                for(auto operand : inst.operands()) {
                    if(auto depBlock = operand->getBlock()) {
                        if(!checkDominate(depBlock, block, true))  // depBlock must be reachable
                            return false;
                    }
                }
            }
        }
    }

    // verify user tracking
    std::unordered_map<Value*, std::vector<Instruction*>> users;
    for(auto block : mBlocks) {
        for(auto& inst : block->instructions()) {
            for(auto operand : inst.operands()) {
                if(operand->isInstruction()) {
                    users[operand].push_back(&inst);
                }
            }
        }
    }
    for(auto block : mBlocks) {
        for(auto& inst : block->instructions()) {
            std::vector<Instruction*> trackedUsers;
            for(auto user : inst.users()) {
                trackedUsers.push_back(user);
            }
            auto& realUsers = users[&inst];
            std::sort(trackedUsers.begin(), trackedUsers.end());
            std::sort(realUsers.begin(), realUsers.end());
            if(trackedUsers != realUsers) {
                out << "Invalid user list for ";
                inst.dumpInst(std::cerr);
                return false;
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
            applyForSuccessors(terminator,
                               [&](Block* target) { out << ids[block] << "->"sv << ids[target] << ';' << std::endl; });
        }
    }

    out << "}\n"sv;
}
void Function::updateTypeFromArgs() {
    const auto type = getType()->as<FunctionType>();
    Vector<const Type*> argTypes;
    argTypes.reserve(mArgs.size());
    for(auto arg : mArgs)
        argTypes.push_back(arg->getType());

    const auto newType = make<FunctionType>(type->getRetType(), std::move(argTypes));
    setType(newType);
}

CMMC_NAMESPACE_END

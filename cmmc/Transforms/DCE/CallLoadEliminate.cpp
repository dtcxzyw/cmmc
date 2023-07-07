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

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/PointerAddressSpaceAnalysis.hpp>
#include <cmmc/Analysis/SimpleValueAnalysis.hpp>
#include <cmmc/Analysis/StackAddressLeakAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iostream>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

struct InstructionHashForEliminate {
    size_t operator()(const Instruction* instruction) const noexcept {
        size_t hash = static_cast<size_t>(instruction->getInstID());
        for(Value* operand : instruction->operands()) {
            hash ^= reinterpret_cast<std::uintptr_t>(operand);
            hash = (hash << 1) ^ (hash >> 53);
        }
        return hash;
    }
};

struct InstructionEqualForEliminate {
    bool operator()(const Instruction* lhs, const Instruction* rhs) const noexcept {
        if(lhs->getInstID() != rhs->getInstID())
            return false;
        if(lhs->operands().size() != rhs->operands().size())
            return false;
        for(uint32_t i = 0; i < lhs->operands().size(); ++i) {
            if(lhs->getOperand(i) != rhs->getOperand(i))
                return false;
        }
        return true;
    }
};

class EliminateGeneric {
protected:
    const CFGAnalysisResult& CFGResult;
    const DominateAnalysisResult& dom;

    virtual bool hasSideEffect(Instruction* start, Instruction* end, Instruction* inst) = 0;
    virtual bool isCandidate(Instruction* inst) = 0;

    bool backtraceEliminable(Block* block, Instruction* start, Instruction* end, std::unordered_set<Block*>& visited) {
        if(visited.count(block))
            return true;
        visited.insert(block);
        // std::cerr << "Checking " << block->getLabel() << std::endl;

        if(block != start->getBlock())
            for(auto& predBlock : CFGResult.predecessors(block))
                if(!backtraceEliminable(predBlock, start, end, visited))
                    return false;

        for(auto iter = block->instructions().rbegin(); iter != block->instructions().rend(); ++iter) {
            Instruction* inst = &*iter;
            if(inst == start)
                return true;
            if(hasSideEffect(start, end, inst))
                return false;
        }
        return true;
    }

    bool runRange(std::vector<Instruction*>& list) {
        const auto& tryEliminate = [&](Instruction* lhs, Instruction* rhs) {
            // std::cerr << "Trying to eliminate:" << std::endl;
            // lhs->dumpInst(std::cerr << "  lhs: ");
            // std::cerr << ", (" << lhs->getBlock()->getLabel() << ")" << std::endl;
            // rhs->dumpInst(std::cerr << "  rhs: ");
            // std::cerr << ", (" << rhs->getBlock()->getLabel() << ")" << std::endl;

            if(!dom.dominate(lhs->getBlock(), rhs->getBlock())) {
                // std::cerr << "- Failed: not dominate" << std::endl;
                return false;
            }

            Block* block = rhs->getBlock();
            bool isBeforeEnd = false, foundStart = false;
            for(auto iter = block->instructions().rbegin(); iter != block->instructions().rend(); ++iter) {
                Instruction* inst = &*iter;
                if(inst == lhs) {
                    foundStart = true;
                    break;
                }
                if(isBeforeEnd && hasSideEffect(lhs, rhs, inst))
                    return false;
                if(!isBeforeEnd && inst == rhs)
                    isBeforeEnd = true;
            }

            if(foundStart && !isBeforeEnd)
                return false;

            if(!foundStart) {
                std::unordered_set<Block*> visited;
                for(auto& predBlock : CFGResult.predecessors(block))
                    if(!backtraceEliminable(predBlock, lhs, rhs, visited)) {
                        // std::cerr << "- Failed: not eliminable" << std::endl;
                        return false;
                    }
            }

            // eliminate rhs
            // std::cerr << "+ Eliminate success" << std::endl;
            rhs->replaceWith(lhs);
            return true;
        };

        for(auto iterL = list.begin(); iterL != list.end(); ++iterL) {
            for(auto iterR = std::next(iterL); iterR != list.end(); ++iterR) {
                if(tryEliminate(*iterL, *iterR)) {
                    list.erase(iterR);
                    return true;
                }
                if(tryEliminate(*iterR, *iterL)) {
                    list.erase(iterL);
                    return true;
                }
            }
        }

        return false;
    }

public:
    EliminateGeneric(const CFGAnalysisResult& CFGResult_, const DominateAnalysisResult& dom_)
        : CFGResult(CFGResult_), dom(dom_) {}

    bool run(Function& func) {
        // std::cerr << "Running on" << std::endl;
        // func.dump(std::cerr, Noop{});
        // func.dumpCFG(std::cerr);

        // LabelAllocator allocator;
        // for(auto block : func.blocks())
        //     block->relabel(allocator);

        std::unordered_multiset<Instruction*, InstructionHashForEliminate, InstructionEqualForEliminate> set;
        for(auto block : func.blocks())
            for(auto& inst : block->instructions())
                if(isCandidate(&inst))
                    set.insert(&inst);

        bool modified = false;
        for(auto it = set.begin(); it != set.end();) {
            auto [first, last] = set.equal_range(*it);
            if(first == last) {
                ++it;
                continue;
            }

            std::vector<Instruction*> list;
            std::copy(first, last, std::back_inserter(list));
            while(runRange(list))  // TODO: optimize iterative pair enumeration
                modified = true;

            it = last;
        }

        return modified;
    }
};

static bool isSafeCall(Instruction* inst) {
    assert(inst->getInstID() == InstructionID::Call);

    const auto callee = inst->lastOperand();
    if(auto func = dynamic_cast<Function*>(callee)) {
        if(!func->attr().hasAttr(FunctionAttribute::NoMemoryWrite) || !func->attr().hasAttr(FunctionAttribute::NoSideEffect))
            return false;
    } else
        return false;
    return true;
}

class CallEliminateImpl final : public EliminateGeneric {
protected:
    const AliasAnalysisResult& aliasSet;

    bool hasSideEffect(Instruction* start, Instruction* end, Instruction* inst) override {
        CMMC_UNUSED(start);
        CMMC_UNUSED(end);

        switch(inst->getInstID()) {
            case InstructionID::Store:
                return true;
            case InstructionID::Call:
                return !isSafeCall(inst);
            default:
                return false;
        }
    }

    bool isCandidate(Instruction* inst) override {
        return (inst->getInstID() == InstructionID::Call && isSafeCall(inst));
    }

public:
    CallEliminateImpl(const CFGAnalysisResult& CFGResult_, const DominateAnalysisResult& dom_,
                      const AliasAnalysisResult& aliasSet_)
        : EliminateGeneric(CFGResult_, dom_), aliasSet(aliasSet_) {}
};

class LoadEliminateImpl final : public EliminateGeneric {
protected:
    const AliasAnalysisResult& aliasSet;

    bool hasSideEffect(Instruction* start, Instruction* end, Instruction* inst) override {
        CMMC_UNUSED(start);
        CMMC_UNUSED(end);

        switch(inst->getInstID()) {
            case InstructionID::Store: {
                const auto storeAddr = inst->getOperand(0);
                return !aliasSet.isDistinct(storeAddr, start->getOperand(0));
            }
            case InstructionID::Call:
                return !isSafeCall(inst);
            default:
                return false;
        }
    }

    bool isCandidate(Instruction* inst) override {
        return inst->getInstID() == InstructionID::Load;
    }

public:
    LoadEliminateImpl(const CFGAnalysisResult& CFGResult_, const DominateAnalysisResult& dom_,
                      const AliasAnalysisResult& aliasSet_)
        : EliminateGeneric(CFGResult_, dom_), aliasSet(aliasSet_) {}
};

class CallEliminate final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& CFGResult = analysis.get<CFGAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        auto& aliasSet = analysis.get<AliasAnalysis>(func);

        CallEliminateImpl impl(CFGResult, dom, aliasSet);
        return impl.run(func);
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "CallEliminate"sv;
    }
};

class LoadEliminate final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& CFGResult = analysis.get<CFGAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        auto& aliasSet = analysis.get<AliasAnalysis>(func);

        LoadEliminateImpl impl(CFGResult, dom, aliasSet);
        return impl.run(func);
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoadEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(CallEliminate);
CMMC_TRANSFORM_PASS(LoadEliminate);

CMMC_NAMESPACE_END

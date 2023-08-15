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

// Utils before lowering

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/SCEVAnalysis.hpp>
#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/CodeGen/MultiplyByConstant.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/IntrusiveList.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <limits>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class DuplicateGEP final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;

        for(auto k = 0; k < 2; ++k)
            for(auto block : func.blocks()) {
                std::unordered_map<Instruction*, uint64_t> instId;
                const auto increment = std::numeric_limits<uint64_t>::max() / 2 / (block->instructions().size() + 2);
                uint64_t idx = increment;
                for(auto& inst : block->instructions()) {
                    instId[&inst] = idx;
                    idx += increment;
                }

                for(auto& inst : block->instructions()) {
                    if(inst.getInstID() == InstructionID::Load || inst.getInstID() == InstructionID::Store ||
                       inst.getInstID() == InstructionID::PtrCast || inst.getInstID() == InstructionID::AtomicAdd) {
                        const auto addr = inst.getOperand(0);
                        if(addr->isInstruction() && addr->getBlock() != block) {
                            const auto addrInst = addr->as<Instruction>();
                            if(addrInst->getInstID() != InstructionID::GetElementPtr &&
                               addrInst->getInstID() != InstructionID::PtrCast && addrInst->getInstID() != InstructionID::PtrAdd)
                                continue;

                            if(addrInst->getInstID() == InstructionID::PtrCast) {
                                if(!addrInst->getOperand(0)->is<GetElementPtrInst>())
                                    continue;
                            }

                            bool usedByPhi = false;
                            uint64_t minId = std::numeric_limits<uint64_t>::max();
                            Instruction* firstUse = nullptr;
                            for(auto user : addrInst->users()) {
                                if(user->getBlock() == block) {
                                    if(user->getInstID() == InstructionID::Phi) {
                                        usedByPhi = true;
                                        break;
                                    }
                                    auto id = instId.at(user);
                                    if(id < minId) {
                                        minId = id;
                                        firstUse = user;
                                    }
                                }
                            }

                            if(usedByPhi)
                                continue;

                            const auto dup = addrInst->clone();
                            dup->insertBefore(block, firstUse->asIterator());
                            const auto l = dup->asIterator() == block->instructions().begin() ?
                                0 :
                                instId.at(&*std::prev(dup->asIterator()));
                            const auto r = instId.at(firstUse);
                            instId[dup] = (l + r) / 2;
                            addrInst->replaceWithInBlock(block, dup);
                            modified = true;
                        }
                    }
                }
            }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "DuplicateGEP"sv;
    }
};

CMMC_TRANSFORM_PASS(DuplicateGEP);

class DuplicateCmp final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto block : func.blocks()) {
            const auto terminator = block->getTerminator();
            if(terminator->getInstID() == InstructionID::ConditionalBranch) {
                const auto cond = terminator->getOperand(0);
                if(cond->getBlock() && cond->getBlock() != block && cond->is<CompareInst>()) {
                    const auto condInst = cond->as<CompareInst>();
                    if(condInst->hasExactlyOneUse()) {
                        condInst->insertBefore(block, terminator->asIterator());
                        modified = true;
                    }
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "DuplicateCmp"sv;
    }
};

CMMC_TRANSFORM_PASS(DuplicateCmp);

class SDivWithPowerOf2 final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        bool modified = false;
        const auto i32 = IntegerType::get(32);
        for(auto block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                Value *v1, *v2, *one;
                if(inst.getType()->isSame(i32) &&
                   sdiv(any(v1), shl(capture(cint_(1), one), any(v2)))(MatchContext<Value>{ &inst })) {
                    if(inst.getOperand(1)->getBlock() == block)
                        continue;

                    IRBuilder builder{ analysis.module().getTarget() };
                    builder.setInsertPoint(block, inst.asIterator());

                    inst.mutableOperands()[1]->resetValue(builder.makeOp<BinaryInst>(InstructionID::Shl, one, v2));
                    modified = true;
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "SDivWithPowerOf2"sv;
    }
};

CMMC_TRANSFORM_PASS(SDivWithPowerOf2);

class SCEVGEP2Phi final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& dom = analysis.get<DominateAnalysis>(func);

        bool modified = false;
        std::vector<Block*> newBlocks;
        std::unordered_set<Instruction*> newGEPs;
        for(auto block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::GetElementPtr) {
                    if(newGEPs.count(&inst))
                        continue;

                    const auto idx = inst.arguments().back();
                    if(!idx->getType()->isInteger())
                        continue;
                    if(!idx->is<PhiInst>())
                        continue;

                    const auto idxPhi = idx->as<PhiInst>();
                    bool allInvariant = true;
                    for(auto operand : inst.operands()) {
                        if(operand == idxPhi)
                            continue;
                        if(operand->getBlock() &&
                           (operand->getBlock() == idxPhi->getBlock() ||
                            !dom.dominate(operand->getBlock(), idxPhi->getBlock()))) {
                            allInvariant = false;
                            break;
                        }
                    }
                    if(!allInvariant)
                        continue;

                    bool backedge = false;
                    for(auto& [pred, val] : idxPhi->incomings()) {
                        if(dom.dominate(idxPhi->getBlock(), pred)) {
                            Value *idxPhiVal = idxPhi, *inc;
                            if(add(exactly(idxPhiVal), any(inc))(MatchContext<Value>{ val->value })) {
                                backedge = true;
                                break;
                            }
                        }
                    }
                    if(!backedge)
                        continue;

                    const auto phi = make<PhiInst>(inst.getType());
                    std::vector<std::pair<Block*, Block*>> retargetWorkList;
                    for(auto& [pred, val] : idxPhi->incomings()) {
                        if(val->value == idxPhi) {
                            phi->addIncoming(pred, phi);
                            continue;
                        }

                        Value *inc, *idxPhiVal = idxPhi;
                        Instruction* newGep;
                        if(add(exactly(idxPhiVal), any(inc))(MatchContext<Value>{ val->value })) {
                            newGep = make<GetElementPtrInst>(phi, std::vector<Value*>{ inc });
                        } else {
                            newGep = inst.clone();
                            (*std::prev(newGep->mutableOperands().end(), 2))->resetValue(val->value);
                        }
                        newGEPs.insert(newGep);

                        phi->addIncoming(pred, newGep);
                        if(pred->getTerminator()->getInstID() == InstructionID::Branch) {
                            newGep->insertBefore(pred, std::prev(pred->instructions().end()));
                        } else {
                            const auto prebody = make<Block>(&func);
                            newGep->insertBefore(prebody, prebody->instructions().begin());
                            const auto terminator = make<BranchInst>(idxPhi->getBlock());
                            terminator->insertBefore(prebody, prebody->instructions().end());
                            newBlocks.push_back(prebody);
                            phi->addIncoming(prebody, newGep);

                            retargetWorkList.emplace_back(pred, prebody);
                            resetTarget(pred->getTerminator()->as<BranchInst>(), idxPhi->getBlock(), prebody);
                        }
                    }
                    phi->insertBefore(idxPhi->getBlock(), idxPhi->getBlock()->instructions().begin());
                    for(auto [pred, prebody] : retargetWorkList)
                        retargetBlock(idxPhi->getBlock(), pred, prebody);
                    inst.replaceWith(phi);

                    modified = true;
                }
            }
        }
        for(auto block : newBlocks)
            func.blocks().push_back(block);

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "SCEVGEP2Phi"sv;
    }
};

CMMC_TRANSFORM_PASS(SCEVGEP2Phi);

class CommonBaseOpt final : public TransformPass<Function> {
    static bool isFree(Block* block, Value* val, uint32_t& cost) {
        if(val->getBlock() != block)
            return true;
        const auto inst = val->as<Instruction>();
        switch(inst->getInstID()) {
            case InstructionID::Phi:
            case InstructionID::Alloc:
                return true;
            case InstructionID::Call:
            case InstructionID::Load:
                return false;
            default: {
                for(auto operand : inst->operands())
                    if(!isFree(block, operand, cost))
                        return false;
                ++cost;
                break;
            }
        }
        return true;
    }
    static Value* makeAvailableImpl(Block* block, Value* val, std::unordered_map<Value*, Value*>& cache,
                                    IntrusiveListIterator<Instruction>& insertPoint, bool& modified) {
        if(val->getBlock() != block)
            return val;
        const auto inst = val->as<Instruction>();
        if(inst->getInstID() == InstructionID::Phi)
            return val;
        if(inst->getInstID() == InstructionID::Alloc)
            return val;

        const auto newInst = inst->clone();
        for(auto& operand : newInst->mutableOperands())
            operand->resetValue(makeAvailable(block, operand->value, cache, insertPoint, modified));
        newInst->insertBefore(block, insertPoint);
        insertPoint = std::next(newInst->asIterator());
        return newInst;
    }
    static Value* makeAvailable(Block* block, Value* val, std::unordered_map<Value*, Value*>& cache,
                                IntrusiveListIterator<Instruction>& insertPoint, bool& modified) {
        if(auto iter = cache.find(val); iter != cache.end())
            return iter->second;
        return cache[val] = makeAvailableImpl(block, val, cache, insertPoint, modified);
    }
    static bool handleBlock(Block* block, const mir::Target& target, ReplaceMap& replace) {
        // std::cerr << "processing block ";
        // block->dumpAsTarget(std::cerr);
        // std::cerr << '\n';

        auto& dataLayout = target.getDataLayout();
        // u = v + w
        std::unordered_map<Value*, std::unordered_map<Value*, intptr_t>> graph;
        auto addEdge = [&](Value* v1, Value* v2, intptr_t w) {
            graph[v1][v2] = w;
            graph[v2][v1] = -w;
        };
        auto addToGraph = [&](Instruction* inst) {
            switch(inst->getInstID()) {
                case InstructionID::GetElementPtr: {
                    const auto [constant, offset] = inst->as<GetElementPtrInst>()->gatherOffsets(dataLayout);
                    if(offset.empty()) {
                        addEdge(inst, inst->lastOperand(), constant);
                    }
                    break;
                }
                // case InstructionID::PtrAdd: {
                //     addEdge(inst, inst->getOperand(0), inst->getOperand(1)->as<ConstantInteger>()->getSignExtended());
                //     break;
                // }
                // case InstructionID::PtrCast: {
                //     addEdge(inst, inst->getOperand(0), 0);
                //     break;
                // }
                default:
                    break;
            }
        };
        std::vector<Instruction*> gepInsts;
        for(auto& inst : block->instructions()) {
            if(inst.getType()->isPointer())
                addToGraph(&inst);
            if(inst.getInstID() == InstructionID::GetElementPtr)
                gepInsts.push_back(&inst);
        }
        uint32_t incBeg = 0;
        while(true) {
            bool updated = false;
            while(incBeg < gepInsts.size()) {
                const auto base = gepInsts[incBeg]->lastOperand();
                if(base->is<GetElementPtrInst>() && !graph.count(base)) {
                    updated = true;
                    addToGraph(base->as<Instruction>());
                    gepInsts.push_back(base->as<Instruction>());
                }
                ++incBeg;
            }
            for(uint32_t i = 0; i < gepInsts.size(); ++i)
                for(uint32_t j = i + 1; j < gepInsts.size(); ++j) {
                    const auto baseU = gepInsts[i]->lastOperand();
                    const auto baseV = gepInsts[j]->lastOperand();

                    const auto argU = gepInsts[i]->arguments();
                    const auto argV = gepInsts[j]->arguments();
                    if(argU.size() != argV.size())
                        continue;

                    bool equal = true;
                    for(auto it1 = argU.begin(), it2 = argV.begin(); it1 != argU.end(); ++it1, ++it2) {
                        if(*it1 != *it2) {
                            equal = false;
                            break;
                        }
                    }
                    if(!equal)
                        continue;

                    if(const auto it = graph[baseU].find(baseV); it != graph[baseU].end()) {
                        if(graph[gepInsts[i]].count(gepInsts[j]))
                            continue;
                        updated = true;
                        addEdge(gepInsts[i], gepInsts[j], it->second);
                    }
                }
            if(!updated)
                break;
        }
        if(graph.empty())
            return false;

        const auto [minOffset, maxOffset] = target.getInstInfo().getAddressingImmRange();
        std::unordered_set<Value*> visited;
        using Cluster = std::vector<std::pair<Value*, intmax_t>>;
        auto visit = [&](auto&& self, Value* u, Cluster& cluster, intptr_t offset) {
            if(visited.count(u))
                return;
            visited.insert(u);
            cluster.emplace_back(u, offset);
            for(auto [v, w] : graph[u])
                self(self, v, cluster, offset - w);
        };
        bool modified = false;
        for(auto& [u, e] : graph) {
            if(!visited.count(u)) {
                Cluster cluster;
                visit(visit, u, cluster, 0);
                if(cluster.size() <= 2)
                    continue;

                std::sort(cluster.begin(), cluster.end(), [](auto& lhs, auto& rhs) { return lhs.second < rhs.second; });
                // for(auto [ptr, offset] : cluster) {
                //     ptr->dumpAsOperand(std::cerr);
                //     std::cerr << ": " << offset << "\n";
                // }
                Value* pivot = nullptr;
                intptr_t requiredMin = std::numeric_limits<intptr_t>::max();
                intptr_t requiredMax = std::numeric_limits<intptr_t>::min();
                for(auto [k, v] : cluster)
                    if(k->getBlock() == block) {
                        requiredMin = std::min(requiredMin, v);
                        requiredMax = std::max(requiredMax, v);
                    }
                if(requiredMin > requiredMax)
                    continue;

                intptr_t base = 0;
                uint32_t bestCost = std::numeric_limits<uint32_t>::max();
                for(auto& [k, off] : cluster) {
                    if(requiredMin - off >= minOffset && requiredMax - off <= maxOffset) {
                        uint32_t cost = 0;
                        if(isFree(block, k, cost)) {
                            // k->dumpAsOperand(std::cerr);
                            // std::cerr << " costs " << cost << '\n';
                            if(cost < bestCost) {
                                bestCost = cost;
                                pivot = k;
                                base = off;
                            }
                        }
                    }
                }
                if(!pivot)
                    continue;

                auto insertPoint = block->instructions().begin();
                while(insertPoint->getInstID() == InstructionID::Alloc || insertPoint->getInstID() == InstructionID::Phi)
                    ++insertPoint;
                std::unordered_map<Value*, Value*> cache;
                const auto basePtr = makeAvailable(block, pivot, cache, insertPoint, modified);

                for(auto [k, off] : cluster) {
                    if(k->getBlock() != block)
                        continue;
                    if(k == pivot) {
                        modified = true;
                        replace.emplace(k, basePtr);
                        continue;
                    }
                    const auto offset = off - base;
                    const auto ptr = make<PtrAddInst>(basePtr, ConstantInteger::get(IntegerType::get(32), offset), k->getType());
                    ptr->insertBefore(block, insertPoint);
                    replace.emplace(k, ptr);
                    modified = true;
                }
            }
        }

        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        bool modified = false;
        ReplaceMap rep;
        for(auto block : func.blocks())
            modified |= handleBlock(block, analysis.module().getTarget(), rep);
        for(auto [k, v] : rep)
            k->as<Instruction>()->replaceWith(v);
        return modified;
    }
    [[nodiscard]] std::string_view name() const noexcept override {
        return "CommonBaseOpt"sv;
    }
};
CMMC_TRANSFORM_PASS(CommonBaseOpt);

CMMC_NAMESPACE_END

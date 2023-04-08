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
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <limits>
#include <queue>
#include <set>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

enum class StrongOrder { LessThan, Equal, GreaterThan };

template <typename T>
class StrongOrderingWrapper final : public T {
public:
    using CompareType = typename T::CompareType;

    template <typename... Args>
    explicit StrongOrderingWrapper(Args&&... args) : T{ std::forward<Args>(args)... } {}
    StrongOrderingWrapper(const StrongOrderingWrapper&) = delete;
    StrongOrderingWrapper(StrongOrderingWrapper&&) = delete;
    StrongOrderingWrapper& operator=(const StrongOrderingWrapper&) = delete;
    StrongOrderingWrapper& operator=(StrongOrderingWrapper&&) = delete;

    StrongOrder operator()(CompareType lhs, CompareType rhs) const {
        if(lhs == rhs)
            return StrongOrder::Equal;

#ifndef NDEBUG
        assert(T::operator()(lhs, lhs) == StrongOrder::Equal);
        assert(T::operator()(lhs, lhs) == StrongOrder::Equal);
        const auto r1 = T::operator()(lhs, rhs);
        const auto r2 = T::operator()(rhs, lhs);
        assert((r1 == StrongOrder::Equal && r2 == StrongOrder::Equal) ||
               (r1 == StrongOrder::LessThan && r2 == StrongOrder::GreaterThan) ||
               (r1 == StrongOrder::GreaterThan && r2 == StrongOrder::LessThan));
        return r1;
#else
        return T::operator()(lhs, rhs);
#endif
    }
};

class ConstantComp {
public:
    using CompareType = const ConstantValue*;
    StrongOrder operator()(CompareType lhs, CompareType rhs) const {
        const auto lhsRank = lhs->constantRank();
        const auto rhsRank = rhs->constantRank();
        if(lhsRank != rhsRank)
            return lhsRank < rhsRank ? StrongOrder::LessThan : StrongOrder::GreaterThan;
        const auto lhsSize = lhs->getType()->getFixedSize();
        const auto rhsSize = rhs->getType()->getFixedSize();
        if(lhsSize != rhsSize)
            return lhsSize < rhsSize ? StrongOrder::LessThan : StrongOrder::GreaterThan;
        if(lhs->isEqual(rhs))
            return StrongOrder::Equal;
        switch(lhsRank) {
            case ConstantRank::Integer:
                return lhs->as<ConstantInteger>()->getSignExtended() < rhs->as<ConstantInteger>()->getSignExtended() ?
                    StrongOrder::LessThan :
                    StrongOrder::GreaterThan;
            case ConstantRank::FloatingPoint:
                return lhs->as<ConstantFloatingPoint>()->getValue() < rhs->as<ConstantFloatingPoint>()->getValue() ?
                    StrongOrder::LessThan :
                    StrongOrder::GreaterThan;
            case ConstantRank::Offset:
                return lhs->as<ConstantOffset>()->index() < rhs->as<ConstantOffset>()->index() ? StrongOrder::LessThan :
                                                                                                 StrongOrder::GreaterThan;
            default:
                return StrongOrder::Equal;
        }
    }
};

class ExternalComp {
    std::unordered_map<const Value*, uint32_t> mIdx;
    uint32_t mCount = 0;

public:
    using CompareType = const Value*;

    explicit ExternalComp(Module& mod, Function& func) {
        // globals
        for(auto global : mod.globals())
            mIdx[global] = ++mCount;
        // arguments
        for(auto arg : func.args())
            mIdx[arg] = ++mCount;
        // constants
        std::vector<ConstantValue*> constants;
        for(auto block : func.blocks())
            for(auto inst : block->instructions())
                for(auto operand : inst->operands())
                    if(operand->isConstant()) {
                        constants.push_back(operand->as<ConstantValue>());
                    }
        std::sort(constants.begin(), constants.end());
        constants.erase(std::unique(constants.begin(), constants.end()), constants.end());
        std::sort(constants.begin(), constants.end(), [](const ConstantValue* lhs, const ConstantValue* rhs) {
            return StrongOrderingWrapper<ConstantComp>{}(lhs, rhs) == StrongOrder::LessThan;
        });
        for(auto constant : constants) {
            // constant->dumpAsOperand(std::cerr);
            // std::cerr << ' ';
            mIdx[constant] = ++mCount;
        }
        // std::cerr << '\n';
    }

    void addInst(Instruction* inst) {
        if(inst->canbeOperand())
            mIdx[inst] = ++mCount;
    }

    StrongOrder operator()(CompareType lhs, CompareType rhs) const {
        if(lhs == rhs)
            return StrongOrder::Equal;
        const auto lhsIdx = mIdx.at(lhs);
        const auto rhsIdx = mIdx.at(rhs);
        return lhsIdx < rhsIdx ? StrongOrder::LessThan : StrongOrder::GreaterThan;
    }
};

struct InstComp {
    StrongOrderingWrapper<ExternalComp>& externalComp;
    using CompareType = const Instruction*;

    StrongOrder operator()(CompareType lhs, CompareType rhs) const {
        if(lhs->getInstID() != rhs->getInstID())
            return lhs->getInstID() < rhs->getInstID() ? StrongOrder::LessThan : StrongOrder::GreaterThan;
        if(lhs->operands().size() != rhs->operands().size())
            return lhs->operands().size() < rhs->operands().size() ? StrongOrder::LessThan : StrongOrder::GreaterThan;
        for(auto lhsIter = lhs->operands().cbegin(), rhsIter = rhs->operands().cbegin(); lhsIter != lhs->operands().cend();
            ++lhsIter, ++rhsIter) {
            if(auto order = externalComp(*lhsIter, *rhsIter); order != StrongOrder::Equal) {
                return order;
            }
        }
        return StrongOrder::Equal;
    }
};

class BlockReorder final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& dom = analysis.get<DominateAnalysis>(func);
        bool modified = false;

        StrongOrderingWrapper<ExternalComp> comp{ analysis.module(), func };

        for(auto block : dom.blocks()) {
            auto& instructions = block->instructions();
            // allocate ID
            std::vector<Instruction*> sortedBlock;
            sortedBlock.reserve(instructions.size());

            std::vector<Instruction*> invMap(instructions.size());
            std::unordered_map<Instruction*, uint32_t> nodeMap;
            uint32_t count = 0;
            for(auto inst : instructions) {
                if(inst->getInstID() == InstructionID::Phi || inst->getInstID() == InstructionID::Alloc) {
                    sortedBlock.push_back(inst);
                    comp.addInst(inst);
                } else if(!inst->isTerminator()) {
                    nodeMap.emplace(inst, count);
                    invMap[count] = inst;
                    ++count;
                }
            }
            // construct dependency graph
            std::vector<std::vector<uint32_t>> dag(count);
            std::vector<uint32_t> degree(count);
            Instruction* lastInstWithSideEffects = nullptr;

            // v should be emitted before u
            auto addEdge = [&](uint32_t u, Instruction* vInst) {
                if(vInst->getInstID() == InstructionID::Phi || vInst->getInstID() == InstructionID::Alloc)
                    return;

                const auto v = nodeMap.at(vInst);
                ++degree[u];
                dag[v].push_back(u);
            };
            count = 0;
            for(auto inst : instructions) {
                if(inst->getInstID() == InstructionID::Phi || inst->getInstID() == InstructionID::Alloc || inst->isTerminator())
                    continue;
                const uint32_t idx = count++;
                if(!isNoSideEffectExpr(*inst)) {
                    if(lastInstWithSideEffects) {
                        addEdge(idx, lastInstWithSideEffects);
                    }
                    lastInstWithSideEffects = inst;
                }

                if(inst->getInstID() == InstructionID::Phi)
                    continue;

                for(auto operand : inst->operands()) {
                    if(operand->getBlock() == block)
                        addEdge(idx, operand->as<Instruction>());
                }
            }

            auto instComp = [&](uint32_t lhs, uint32_t rhs) -> bool {
                return StrongOrderingWrapper<InstComp>{ comp }(invMap[lhs], invMap[rhs]) == StrongOrder::GreaterThan;
            };
            std::priority_queue<uint32_t, std::vector<uint32_t>, decltype(instComp)> freeInst{ std::move(
                instComp) };  // degree = 0

            for(uint32_t idx = 0; idx < count; ++idx)
                if(degree[idx] == 0) {
                    freeInst.push(idx);
                }

            while(!freeInst.empty()) {
                const auto u = freeInst.top();
                freeInst.pop();

                const auto inst = invMap[u];
                comp.addInst(inst);
                sortedBlock.emplace_back(inst);
                for(auto v : dag[u])
                    if(--degree[v] == 0)
                        freeInst.push(v);
            }

            sortedBlock.push_back(instructions.back());
            assert(instructions.size() == sortedBlock.size());
            if(!std::equal(instructions.cbegin(), instructions.cend(), sortedBlock.cbegin()))
                modified = true;

            instructions = { sortedBlock.cbegin(), sortedBlock.cend() };
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "BlockReorder"sv;
    }
};

CMMC_TRANSFORM_PASS(BlockReorder);

CMMC_NAMESPACE_END

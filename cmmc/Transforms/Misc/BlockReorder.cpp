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
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
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
#include <vector>

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
        assert(T::operator()(rhs, rhs) == StrongOrder::Equal);
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

class TypeComp {
    std::unordered_map<const Type*, uint32_t> mIdx;
    StrongOrder compareType(const Type* lhs, const Type* rhs) const {
        const auto lhsRank = lhs->rank();
        const auto rhsRank = rhs->rank();
        if(lhsRank != rhsRank)
            return lhsRank < rhsRank ? StrongOrder::LessThan : StrongOrder::GreaterThan;
        if(lhs->isSame(rhs))
            return StrongOrder::Equal;
        switch(lhsRank) {
            case TypeRank::Integer:
                return lhs->as<IntegerType>()->getBitwidth() < rhs->as<IntegerType>()->getBitwidth() ? StrongOrder::LessThan :
                                                                                                       StrongOrder::GreaterThan;
            case TypeRank::FloatingPoint:
                return lhs->getFixedSize() < rhs->getFixedSize() ? StrongOrder::LessThan : StrongOrder::GreaterThan;
            case TypeRank::Pointer:
                return compareType(lhs->as<PointerType>()->getPointee(), rhs->as<PointerType>()->getPointee());
            case TypeRank::Array: {
                const auto lhsArray = lhs->as<ArrayType>();
                const auto rhsArray = rhs->as<ArrayType>();
                if(auto order = compareType(lhsArray->getElementType(), rhsArray->getElementType()); order != StrongOrder::Equal)
                    return order;
                return lhsArray->getElementCount() < rhsArray->getElementCount() ? StrongOrder::LessThan :
                                                                                   StrongOrder::GreaterThan;
            }
            case TypeRank::Struct: {
                const auto lhsStruct = lhs->as<StructType>();
                const auto rhsStruct = rhs->as<StructType>();
                if(lhsStruct->fields().size() != rhsStruct->fields().size())
                    return lhsStruct->fields().size() < rhsStruct->fields().size() ? StrongOrder::LessThan :
                                                                                     StrongOrder::GreaterThan;
                for(uint32_t idx = 0; idx < lhsStruct->fields().size(); ++idx) {
                    if(auto order = compareType(lhsStruct->fields()[idx].type, rhsStruct->fields()[idx].type);
                       order != StrongOrder::Equal) {
                        return order;
                    }
                }
                return StrongOrder::Equal;
            }
            case TypeRank::Function: {
                const auto lhsFunc = lhs->as<FunctionType>();
                const auto rhsFunc = rhs->as<FunctionType>();
                if(auto order = compareType(lhsFunc->getRetType(), rhsFunc->getRetType()); order != StrongOrder::Equal)
                    return order;
                if(lhsFunc->getArgTypes().size() != rhsFunc->getArgTypes().size())
                    return lhsFunc->getArgTypes().size() < rhsFunc->getArgTypes().size() ? StrongOrder::LessThan :
                                                                                           StrongOrder::GreaterThan;
                for(uint32_t idx = 0; idx < lhsFunc->getArgTypes().size(); ++idx) {
                    if(auto order = compareType(lhsFunc->getArgTypes()[idx], rhsFunc->getArgTypes()[idx]);
                       order != StrongOrder::Equal) {
                        return order;
                    }
                }
                return StrongOrder::Equal;
            }
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }

    void insertType(std::unordered_set<const Type*>& types, const Type* type) {
        if(!type)
            return;
        if(types.count(type))
            return;
        types.insert(type);
        if(type->isPointer()) {
            insertType(types, type->as<PointerType>()->getPointee());
        }
        if(type->isArray()) {
            insertType(types, type->as<ArrayType>()->getElementType());
        }
        if(type->isStruct()) {
            for(auto& field : type->as<StructType>()->fields())
                insertType(types, field.type);
        }
        if(type->isFunction()) {
            auto funcType = type->as<FunctionType>();
            insertType(types, funcType->getRetType());
            for(auto arg : funcType->getArgTypes())
                insertType(types, arg);
        }
    }

public:
    using CompareType = const Type*;
    explicit TypeComp(Function& func) {
        std::unordered_set<const Type*> types;
        auto funcType = func.getType()->as<FunctionType>();
        insertType(types, funcType);
        for(auto block : func.blocks()) {
            for(auto inst : block->instructions()) {
                insertType(types, inst->getType());
                for(auto operand : inst->operands())
                    insertType(types, operand->getType());
            }
        }
        std::vector<const Type*> sortedTypes{ types.cbegin(), types.cend() };
        std::stable_sort(sortedTypes.begin(), sortedTypes.end(),
                         [&](const Type* lhs, const Type* rhs) { return compareType(lhs, rhs) == StrongOrder::LessThan; });
        uint32_t idx = 0;
        for(auto type : sortedTypes) {
            // constant->dumpAsOperand(std::cerr);
            // std::cerr << ' ';
            mIdx[type] = ++idx;
        }
        // std::cerr << '\n';
    }

    StrongOrder operator()(CompareType lhs, CompareType rhs) const {
        if(lhs == rhs)
            return StrongOrder::Equal;
        const auto lhsIdx = mIdx.at(lhs);
        const auto rhsIdx = mIdx.at(rhs);
        return lhsIdx < rhsIdx ? StrongOrder::LessThan : StrongOrder::GreaterThan;
    }
};

struct ConstantComp {
    StrongOrderingWrapper<TypeComp>& typeComp;

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
            case ConstantRank::Offset: {
                const auto lhsOffset = lhs->as<ConstantOffset>();
                const auto rhsOffset = rhs->as<ConstantOffset>();
                if(lhsOffset->base() != rhsOffset->base()) {
                    if(auto ret = typeComp(lhsOffset->base(), rhsOffset->base()); ret != StrongOrder::Equal) {
                        return ret;
                    }
                }
                return lhsOffset->index() < rhsOffset->index() ? StrongOrder::LessThan : StrongOrder::GreaterThan;
            }
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

    explicit ExternalComp(Module& mod, Function& func, StrongOrderingWrapper<TypeComp>& typeComp) {
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
        StrongOrderingWrapper<ConstantComp> constantCmp{ typeComp };
        std::stable_sort(constants.begin(), constants.end(), [&](const ConstantValue* lhs, const ConstantValue* rhs) {
            return constantCmp(lhs, rhs) == StrongOrder::LessThan;
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
    StrongOrderingWrapper<TypeComp>& typeComp;
    StrongOrderingWrapper<ExternalComp>& externalComp;
    std::unordered_map<const Value*, uint32_t>& firstUse;
    using CompareType = const Instruction*;

    StrongOrder operator()(CompareType lhs, CompareType rhs) const {
        if(lhs->getInstID() != rhs->getInstID())
            return lhs->getInstID() < rhs->getInstID() ? StrongOrder::LessThan : StrongOrder::GreaterThan;
        if(lhs->isCompareOp() && rhs->isCompareOp()) {
            const auto lhsComp = lhs->as<CompareInst>();
            const auto rhsComp = rhs->as<CompareInst>();
            if(lhsComp->getOp() != rhsComp->getOp()) {
                return lhsComp->getOp() < rhsComp->getOp() ? StrongOrder::LessThan : StrongOrder::GreaterThan;
            }
        }
        if(auto order = typeComp(lhs->getType(), rhs->getType()); order != StrongOrder::Equal)
            return order;
        if(lhs->operands().size() != rhs->operands().size())
            return lhs->operands().size() < rhs->operands().size() ? StrongOrder::LessThan : StrongOrder::GreaterThan;
        for(auto lhsIter = lhs->operands().cbegin(), rhsIter = rhs->operands().cbegin(); lhsIter != lhs->operands().cend();
            ++lhsIter, ++rhsIter) {
            if(auto order = externalComp(*lhsIter, *rhsIter); order != StrongOrder::Equal) {
                return order;
            }
        }
        return firstUse.at(lhs) < firstUse.at(rhs) ? StrongOrder::LessThan : StrongOrder::GreaterThan;
    }
};

class BlockReorder final : public TransformPass<Function> {
    static bool sortOnce(Function& func, AnalysisPassManager& analysis,
                         const std::unordered_map<Block*, std::vector<Block*>>& preds) {
        auto& dom = analysis.get<DominateAnalysis>(func);
        bool modified = false;

        uint32_t usePos = 0;
        std::unordered_map<const Value*, uint32_t> firstUse;
        for(auto block : func.blocks()) {
            for(auto inst : block->instructions()) {
                for(auto operand : inst->operands()) {
                    if(operand->isInstruction()) {
                        firstUse.emplace(operand, usePos);
                        ++usePos;
                    }
                }
            }
        }

        StrongOrderingWrapper<TypeComp> typeComp{ func };
        StrongOrderingWrapper<ExternalComp> comp{ analysis.module(), func, typeComp };

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
                return InstComp{ typeComp, comp, firstUse }(invMap[lhs], invMap[rhs]) == StrongOrder::GreaterThan;
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
            if(!std::equal(instructions.cbegin(), instructions.cend(), sortedBlock.cbegin())) {
                modified = true;
                instructions = { sortedBlock.cbegin(), sortedBlock.cend() };
            }
        }

        /*
        for(auto block : dom.blocks()) {
            for(auto inst : block->instructions()) {
                switch(inst->getInstID()) {
                    case InstructionID::Add:
                        [[fallthrough]];
                    case InstructionID::Mul:
                        [[fallthrough]];
                    case InstructionID::And:
                        [[fallthrough]];
                    case InstructionID::Or:
                        [[fallthrough]];
                    case InstructionID::Xor: {
                        if(comp(inst->getOperand(0), inst->getOperand(1)) == StrongOrder::LessThan) {
                            std::swap(inst->operands()[0], inst->operands()[1]);
                            modified = true;
                        }
                        break;
                    }
                    case InstructionID::SCmp:
                        [[fallthrough]];
                    case InstructionID::UCmp:
                        [[fallthrough]];
                    case InstructionID::FCmp: {
                        if(auto op = inst->as<CompareInst>()->getOp(); (op == CompareOp::Equal || op == CompareOp::NotEqual) &&
                           comp(inst->getOperand(0), inst->getOperand(1)) == StrongOrder::LessThan) {
                            std::swap(inst->operands()[0], inst->operands()[1]);
                            modified = true;
                        }
                        break;
                    }
                    default:
                        break;
                }
            }
        }
        */

        CMMC_UNUSED(preds);
        // sort allocs and phis
        /*
        for(auto block : dom.blocks()) {
            std::vector<Instruction*> prefix;
            if(block == func.entryBlock()) {
                for(auto inst : block->instructions())
                    if(inst->getInstID() == InstructionID::Alloc)
                        prefix.push_back(inst);
                    else
                        break;
                std::sort(prefix.begin(), prefix.end(), [&](const Instruction* lhs, const Instruction* rhs) {
                    const auto lhsLabel = lhs->getLabel().prefix();
                    const auto rhsLabel = rhs->getLabel().prefix();
                    if(lhsLabel != rhsLabel)
                        return lhsLabel < rhsLabel;
                    if(auto order = typeComp(lhs->getType(), rhs->getType()); order != StrongOrder::Equal)
                        return order == StrongOrder::LessThan;
                    return firstUse.at(lhs) < firstUse.at(rhs);
                });
            } else {
                auto& predBlocks = preds.at(block);
                CMMC_UNUSED(predBlocks);
                for(auto inst : block->instructions())
                    if(inst->getInstID() == InstructionID::Phi)
                        prefix.push_back(inst);
                    else
                        break;
                std::sort(prefix.begin(), prefix.end(), [&](const Instruction* lhs, const Instruction* rhs) {
                    if(auto order = typeComp(lhs->getType(), rhs->getType()); order != StrongOrder::Equal)
                        return order == StrongOrder::LessThan;
                    auto& lhsIncomings = lhs->as<PhiInst>()->incomings();
                    auto& rhsIncomings = rhs->as<PhiInst>()->incomings();
                    for(auto pred : predBlocks)
                        if(auto order = comp(lhsIncomings.at(pred), rhsIncomings.at(pred)); order != StrongOrder::Equal)
                            return order == StrongOrder::LessThan;
                    return firstUse.at(lhs) < firstUse.at(rhs);
                });
            }
            if(!std::equal(prefix.cbegin(), prefix.cend(), block->instructions().cbegin())) {
                std::copy(prefix.cbegin(), prefix.cend(), block->instructions().begin());
                modified = true;
            }
        }
        */

        // func.dump(std::cerr, Noop{});

        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& cfg = analysis.get<CFGAnalysis>(func);

        bool modified = false;

        std::unordered_map<Block*, uint32_t> blockMap;
        uint32_t count = 0;
        for(auto block : func.blocks())
            blockMap.emplace(block, ++count);
        std::unordered_map<Block*, std::vector<Block*>> preds;
        for(auto block : func.blocks()) {
            auto pred = cfg.predecessors(block);
            std::sort(pred.begin(), pred.end(), [&](Block* lhs, Block* rhs) { return blockMap.at(lhs) < blockMap.at(rhs); });
            preds.emplace(block, std::move(pred));
        }

        modified = sortOnce(func, analysis, preds);
        // while(sortOnce(func, analysis, preds))
        //     modified = true;
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "BlockReorder"sv;
    }
};

CMMC_TRANSFORM_PASS(BlockReorder);

CMMC_NAMESPACE_END

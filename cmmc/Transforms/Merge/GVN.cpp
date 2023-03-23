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

// Global Value Numbering

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cstdint>
#include <unordered_map>
#include <unordered_set>
#include <utility>
#include <vector>

CMMC_NAMESPACE_BEGIN

struct GlobalInstHasher final {
    std::unordered_map<const Instruction*, size_t>& cachedHash;
    std::function<uint32_t(Value*)>& getNumber;
    size_t operator()(const Instruction* inst) const {
        if(const auto iter = cachedHash.find(inst); iter != cachedHash.cend())
            return iter->second;

        size_t hashValue = std::hash<InstructionID>{}(inst->getInstID());
        const auto& operands = inst->operands();
        for(auto operand : operands)
            hashValue = hashValue * 131 + std::hash<uint32_t>{}(getNumber(operand));
        hashValue = std::hash<size_t>{}(hashValue);
        cachedHash.emplace(inst, hashValue);
        return hashValue;
    }
};

struct GlobalInstEqual final {
    std::function<uint32_t(Value*)>& getNumber;
    bool operator()(const Instruction* lhs, const Instruction* rhs) const {
        if(!lhs->isEqual(rhs))
            return false;

        auto& lhsOperands = lhs->operands();
        auto& rhsOperands = rhs->operands();
        if(lhsOperands.size() != rhsOperands.size())
            return false;
        for(size_t idx = 0; idx < lhsOperands.size(); ++idx) {
            if(getNumber(lhsOperands[idx]) != getNumber(rhsOperands[idx]))
                return false;
        }
        return true;
    }
};

class GVN final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        // func.dump(std::cerr);

        const auto& dom = analysis.get<DominateAnalysis>(func);
        auto& target = analysis.module().getTarget();

        uint32_t allocateID = 0;
        std::unordered_map<Value*, uint32_t> valueNumber;
        const auto getValueNumber = [&](Value* value) {
            const auto iter = valueNumber.find(value);
            if(iter != valueNumber.cend())
                return iter->second;
            const auto id = allocateID++;
            valueNumber.emplace(value, id);
            /*
            value->dumpAsOperand(std::cerr);
            std::cerr << "->" << id << std::endl;
            */
            return id;
        };
        std::function<uint32_t(Value*)> getNumber;
        std::unordered_map<const Instruction*, size_t> cachedHash;
        /* FIXME: improve the performance of hash table?
        std::unordered_map<Instruction*, uint32_t, GlobalInstHasher, GlobalInstEqual> instNumber(
            0U, GlobalInstHasher{ cachedHash, getNumber }, GlobalInstEqual{ getNumber });

        const auto getInstNumber = [&](Instruction* inst) {
            if(auto iter = instNumber.find(inst); iter != instNumber.cend()) {
                return iter->second;
            }
            const auto id = allocateID++;
            instNumber.emplace(inst, id);
            return id;
        };*/

        GlobalInstHasher hasher{ cachedHash, getNumber };
        GlobalInstEqual equal{ getNumber };
        std::unordered_map<size_t, std::vector<std::pair<uint32_t, std::unordered_set<Instruction*>>>> instNumber;

        const auto getInstNumber = [&](Instruction* inst) {
            const auto hash = hasher(inst);
            auto& val = instNumber[hash];

            for(auto& [id, rhs] : val) {
                if(rhs.count(inst))
                    return id;
                if(equal(inst, *rhs.begin())) {
                    rhs.insert(inst);
                    return id;
                }
            }
            const auto id = allocateID++;
            val.emplace_back(id, std::unordered_set<Instruction*>{ inst });
            return id;
        };

        getNumber = [&](Value* value) -> uint32_t {
            const auto root = value;
            if(root->isInstruction()) {
                const auto inst = root->as<Instruction>();
                if(isNoSideEffectExpr(*inst))
                    return getInstNumber(inst);
            }

            return getValueNumber(root);
        };

        std::unordered_map<uint32_t, std::vector<Instruction*>> instructions;

        for(auto block : dom.blocks()) {
            for(auto inst : block->instructions()) {
                if(!isNoSideEffectExpr(*inst))
                    continue;

                const auto id = getInstNumber(inst);
                instructions[id].push_back(inst);
                /*
                inst->dump(std::cerr);
                std::cerr << "->" << id << std::endl;
                */
            }
        }

        bool modified = false;
        ReplaceMap replace;
        std::vector<Value*> operandMap(allocateID);
        for(auto [key, val] : valueNumber)
            operandMap[val] = key;

        for(uint32_t id = 0; id < allocateID; ++id) {
            const auto iter = instructions.find(id);
            if(iter == instructions.cend())
                continue;

            const auto& sameInstructions = iter->second;

            if(sameInstructions.size() == 1) {
                operandMap[id] = sameInstructions.front();
                continue;
            }

            Block* block = nullptr;
            for(auto inst : sameInstructions) {
                if(block == nullptr)
                    block = inst->getBlock();
                else {
                    block = dom.lca(block, inst->getBlock());
                }
            }

            Instruction* replaceInst = nullptr;
            for(auto inst : sameInstructions) {
                if(block == inst->getBlock()) {
                    replaceInst = inst;
                    break;
                }
            }

            // hoisting
            if(replaceInst == nullptr) {
                /*
                const auto inst = sameInstructions.front()->clone();
                for(auto& operand : inst->operands())
                    operand = operandMap[getNumber(operand)];
                auto& instructions = block->instructions();
                inst->setBlock(block);
                instructions.insert(std::prev(instructions.cend()), inst);
                replaceInst = inst;
                */
                // TODO: better strategy
                continue;  // disable hoisting
            }

            operandMap[id] = replaceInst;

            // Don't do GVN for comparison instructions if targeting TAC
            if(!target.isNativeSupported(replaceInst->getInstID()))
                continue;

            for(auto inst : sameInstructions) {
                if(replaceInst != inst) {
                    replace.emplace(inst, replaceInst);
                }
            }
        }

        for(auto block : func.blocks())
            modified |= replaceOperands(*block, replace);

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "GVN"sv;
    }
};

CMMC_TRANSFORM_PASS(GVN);

CMMC_NAMESPACE_END

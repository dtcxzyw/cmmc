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

// replace load with the last loaded/stored value
// ^entry(i32* %a, i32 %b):
//     store i32* %a with i32 0
//     i32 %c = load i32* %a;
//     ret i32 %c;
// ==>
// ^entry(i32* %a, i32* %b):
//     store i32* %a with i32 0
//     i32 %c = load i32* %a;
//     ret i32 0; // replace %c with 0

// PHI value:
// ^a(i1 %arg):
//     i32* %x = alloc i32;
//     cbr %arg, [^b i32* %x], [^c i32* %x];
// ^b(i32* %arg):
//     store i32* %arg with i32 1;
//     ubr [^d i32* %arg];
// ^c(i32* %arg):
//     store i32* %arg with i32 2;
//     ubr [^d i32* %arg];
// ^d(i32* %arg):
//     i32 %x = load i32* %arg;
// ==>
// ^a(i1 %arg):
//     i32* %x = alloc i32;
//     cbr %arg, [^b i32* %x], [^c i32* %x];
// ^b(i32* %arg):
//     store i32* %arg with i32 1;
//     ubr [^d i32 1];
// ^c(i32* %arg):
//     store i32* %arg with i32 2;
//     ubr [^d i32 2];
// ^d(i32 %x):
//

#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/SimpleValueAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <iostream>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

// TODO: time-consuming pass
// TODO: MemorySSA

class LoadReduce final : public TransformPass<Function> {
    static void runBlock(Block& block, SimpleValueAnalysis& valueAnalysis, ReplaceMap& replace) {
        for(auto inst : block.instructions()) {
            if(inst->getInstID() == InstructionID::Load)
                if(auto value = valueAnalysis.getLastValue(inst->getOperand(0)))
                    replace.emplace(inst, value);
            valueAnalysis.next(inst);
        }
    }

    static void runInterBlock(Function& func, AnalysisPassManager& analysis,
                              std::unordered_map<Block*, SimpleValueAnalysis>& valueAnalysis, ReplaceMap& replace) {
        const auto& cfg = analysis.get<CFGAnalysis>(func);
        const auto& alias = analysis.get<AliasAnalysis>(func);
        const auto& module = analysis.module();

        std::vector<Block*> blocks{ func.blocks().begin(), func.blocks().end() };
        for(auto block : blocks) {
            std::vector<Instruction*> loadInsts;
            std::vector<Value*> storePointers;
            for(auto inst : block->instructions()) {
                if(inst->getInstID() == InstructionID::Load) {
                    auto ptr = inst->getOperand(0);
                    if(ptr->isInstruction() && ptr->getBlock() == block)  // GEP-based load reduce is not supported
                        continue;
                    bool mayBeOverrided = false;
                    for(auto storePtr : storePointers) {
                        if(!alias.isDistinct(storePtr, ptr)) {
                            mayBeOverrided = true;
                            break;
                        }
                    }

                    if(!mayBeOverrided)
                        loadInsts.push_back(inst);
                } else if(inst->getInstID() == InstructionID::Store) {
                    auto ptr = inst->getOperand(0);
                    storePointers.push_back(ptr);
                } else if(inst->getInstID() == InstructionID::Call) {
                    const auto callee = inst->operands().back();
                    if(const auto calleeFunc = dynamic_cast<Function*>(callee)) {
                        if(calleeFunc->attr().hasAttr(FunctionAttribute::NoMemoryWrite))
                            continue;
                    }
                    break;  // may store before load
                }
            }
            if(loadInsts.empty())
                continue;
            auto& predecessors = cfg.predecessors(block);
            if(predecessors.empty())
                continue;

            std::unordered_map<Instruction*, std::unordered_map<Block*, Value*>> reuseValues;
            for(auto pred : predecessors) {
                const auto& lut = valueAnalysis.at(pred);
                for(auto inst : loadInsts) {
                    auto ptr = inst->getOperand(0);
                    if(auto val = lut.getLastValue(ptr)) {
                        if(const auto load = dynamic_cast<LoadInst*>(val)) {
                            // Deferred load is better than reusing the value of this load!
                            bool used = false;
                            for(auto user : load->users()) {
                                if(user->getBlock() != load->getBlock())
                                    continue;
                                if(user->isTerminator())
                                    continue;
                                used = true;
                                break;
                            }
                            if(!used)
                                continue;
                        }
                        reuseValues[inst].emplace(pred, val);
                    }
                }
            }

            if(reuseValues.empty())
                continue;

            std::vector<PhiInst*> phiList;
            phiList.reserve(reuseValues.size());
            for(auto& [inst, vals] : reuseValues) {
                const auto phi = make<PhiInst>(inst->getType());
                phi->setBlock(block);
                replace.emplace(inst, phi);
                phiList.push_back(phi);
            }

            for(auto pred : predecessors) {
                bool shouldCreateIndirectBlock = false;
                for(auto& [inst, vals] : reuseValues) {
                    CMMC_UNUSED(inst);
                    if(!vals.count(pred)) {
                        shouldCreateIndirectBlock = true;
                        break;
                    }
                }
                Block* indirectBlock = shouldCreateIndirectBlock ? createIndirectBlock(module, func, pred, block) : pred;

                for(auto& [inst, vals] : reuseValues) {
                    const auto phi = replace.at(inst)->as<PhiInst>();
                    if(auto iter = vals.find(pred); iter != vals.cend()) {
                        phi->addIncoming(indirectBlock, iter->second);
                    } else {
                        auto ptr = inst->getOperand(0);
                        auto load = make<LoadInst>(ptr);
                        load->setBlock(indirectBlock);
                        indirectBlock->instructions().push_front(load);
                        phi->addIncoming(indirectBlock, load);
                    }
                }
            }

            block->instructions().insert(block->instructions().cbegin(), phiList.cbegin(), phiList.cend());
            analysis.invalidateFunc(func);
            return;
        }
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& alias = analysis.get<AliasAnalysis>(func);

        std::unordered_map<Block*, SimpleValueAnalysis> valueAnalysis;
        bool modified = false;
        // intra-block
        for(auto block : func.blocks()) {
            const auto iter = valueAnalysis.emplace(block, SimpleValueAnalysis{ block, alias }).first;
            ReplaceMap replace;
            runBlock(*block, iter->second, replace);
            modified |= replaceOperands(func, replace);
        }
        // inter-block
        ReplaceMap replace;
        runInterBlock(func, analysis, valueAnalysis, replace);
        // TODO: handle cross blockchain reusing, e.g., test_3_r03.spl
        modified |= replaceOperands(func, replace);
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoadReduce"sv;
    }
};

CMMC_TRANSFORM_PASS(LoadReduce);

CMMC_NAMESPACE_END

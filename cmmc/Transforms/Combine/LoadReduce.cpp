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
#include <cmmc/Analysis/BlockArgumentAnalysis.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/SimpleValueAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class LoadReduce final : public TransformPass<Function> {
    bool runBlock(Block& block, SimpleValueAnalysis& valueAnalysis) const {
        ReplaceMap replace;
        for(auto inst : block.instructions()) {
            if(inst->getInstID() == InstructionID::Load)
                if(auto value = valueAnalysis.getLastValue(inst->getOperand(0)))
                    replace.emplace(inst, value);
            valueAnalysis.next(inst);
        }

        return replaceOperands(block, replace);
    }

    bool runInterBlock(Function& func, AnalysisPassManager& analysis,
                       std::unordered_map<Block*, SimpleValueAnalysis>& valueAnalysis) const {
        const auto& blockArgMap = analysis.get<BlockArgumentAnalysis>(func);
        const auto& cfg = analysis.get<CFGAnalysis>(func);
        const auto& alias = analysis.get<AliasAnalysis>(func);
        const auto& module = analysis.module();

        bool modified = false;
        std::vector<Block*> blocks{ func.blocks().begin(), func.blocks().end() };
        for(auto block : blocks) {
            std::vector<Instruction*> loadInsts;
            std::vector<Value*> storePointers;
            for(auto inst : block->instructions()) {
                if(inst->getInstID() == InstructionID::Load) {
                    auto ptr = blockArgMap.queryRoot(inst->getOperand(0));
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
                    auto ptr = blockArgMap.queryRoot(inst->getOperand(0));
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

            std::unordered_map<Instruction*, std::unordered_map<BranchTarget*, Value*>> reuseValues;
            for(auto [pred, target] : predecessors) {
                const auto& lut = valueAnalysis.at(pred);
                for(auto inst : loadInsts) {
                    auto ptr = inst->getOperand(0);
                    if(const auto arg = dynamic_cast<BlockArgument*>(ptr))
                        ptr = target->getOperand(arg);
                    if(auto val = lut.getLastValue(ptr)) {
                        if(const auto load = dynamic_cast<LoadInst*>(val)) {
                            // Deferred load is better than reusing this load !
                            bool used = false;
                            for(auto user : load->getBlock()->instructions()) {
                                if(user->isTerminator())
                                    continue;
                                if(user->hasOperand(load)) {
                                    used = true;
                                }
                            }
                            if(!used)
                                continue;
                        }
                        reuseValues[inst].emplace(target, val);
                    }
                }
            }

            if(reuseValues.empty())
                continue;

            modified = true;

            for(auto [pred, target] : predecessors) {
                const auto branch = pred->getTerminator()->as<ConditionalBranchInst>();
                const auto [indirectBranch, indirectTarget] = createIndirectBlock(module, func, *target);
                const auto indirectBlock = indirectBranch->getBlock();
                auto args = target->getArgs();
                auto indirectArgs = indirectTarget->getArgs();

                for(auto& [inst, vals] : reuseValues) {
                    if(auto iter = vals.find(target); iter != vals.cend()) {
                        args.push_back(iter->second);
                        indirectArgs.push_back(indirectBlock->addArg(iter->second->getType()));
                    } else {
                        auto ptr = inst->getOperand(0);
                        if(const auto arg = dynamic_cast<BlockArgument*>(ptr))
                            ptr = indirectTarget->getOperand(arg);
                        auto load = make<LoadInst>(ptr);
                        load->setBlock(indirectBlock);
                        indirectBlock->instructions().push_front(load);
                        indirectArgs.push_back(load);
                    }
                }

                branch->updateTargetArgs(*target, args);
                indirectBranch->updateTargetArgs(*indirectTarget, indirectArgs);
            }

            ReplaceMap replace;
            for(auto& [inst, vals] : reuseValues) {
                CMMC_UNUSED(vals);
                const auto arg = block->addArg(inst->getType());
                replace.emplace(inst, arg);
            }
            replaceOperands(*block, replace);
        }

        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& alias = analysis.get<AliasAnalysis>(func);
        const auto& blockArgMap = analysis.get<BlockArgumentAnalysis>(func);

        std::unordered_map<Block*, SimpleValueAnalysis> valueAnalysis;
        bool modified = false;
        // intra-block
        for(auto block : func.blocks()) {
            const auto iter = valueAnalysis.emplace(block, SimpleValueAnalysis{ block, alias, blockArgMap }).first;
            modified |= runBlock(*block, iter->second);
        }
        // inter-block
        modified |= runInterBlock(func, analysis, valueAnalysis);
        // TODO: handle cross blockchain reusing, e.g., test_3_r03.spl
        return modified;
    }

    std::string_view name() const noexcept override {
        return "LoadReduce"sv;
    }
};

CMMC_TRANSFORM_PASS(LoadReduce);

CMMC_NAMESPACE_END

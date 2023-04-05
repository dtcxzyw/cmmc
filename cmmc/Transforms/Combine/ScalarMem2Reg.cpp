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

#include <chrono>
#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/StackAddressLeakAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

// global inter-block mem2reg, working with LoadReduce

CMMC_NAMESPACE_BEGIN

class ScalarMem2Reg final : public TransformPass<Function> {
    static void applyMem2Reg(IRBuilder& builder, Function& func, const AliasAnalysisResult& alias, StackAllocInst* alloc,
                             const StackAddressLeakAnalysisResult& leak, ReplaceMap& replace) {
        const auto valueType = alloc->getType()->as<PointerType>()->getPointee();
        Value* undef = make<UndefinedValue>(valueType);
        if(valueType->isPointer())
            const_cast<AliasAnalysisResult&>(alias).addValue(undef, {});  // NOLINT

        std::unordered_map<Block*, PhiInst*> phiNodes;
        for(auto block : func.blocks()) {
            if(block == func.entryBlock())
                continue;
            builder.setInsertPoint(block, block->instructions().begin());
            const auto phi = builder.createPhi(valueType);
            phiNodes.emplace(block, phi);
        }

        for(auto block : func.blocks()) {
            Value* value = (block == func.entryBlock() ? undef : phiNodes.at(block));

            const auto update = [&, insertBlock = block, storeAddr = alloc](Instruction* pos, bool after) {
                builder.setInsertPoint(insertBlock, pos);
                if(after)
                    builder.nextInsertPoint();
                value = builder.makeOp<LoadInst>(storeAddr);
                if(value->getType()->isPointer())
                    const_cast<AliasAnalysisResult&>(alias).addValue(value, {});  // NOLINT
            };

            std::vector<Instruction*> instructionList{ block->instructions().cbegin(), block->instructions().cend() };
            bool stop = false;
            for(auto inst : instructionList) {
                if(stop)
                    break;
                switch(inst->getInstID()) {
                    case InstructionID::Load: {
                        if(inst->getOperand(0) == alloc)
                            replace.emplace(inst, value);
                    } break;
                    case InstructionID::Store: {
                        const auto storeAddr = inst->getOperand(0);
                        if(storeAddr == alloc) {
                            value = inst->getOperand(1);
                        } else if(!alias.isDistinct(storeAddr, alloc)) {
                            update(inst, true);
                        }
                    } break;
                    case InstructionID::Call: {
                        if(leak.mayModify(inst, alloc))
                            update(inst, true);
                    } break;
                    case InstructionID::Branch:
                        [[fallthrough]];
                    case InstructionID::ConditionalBranch: {
                        const auto branch = inst->as<BranchInst>();
                        applyForSuccessors(branch,
                                           [&](Block* targetBlock) { phiNodes.at(targetBlock)->addIncoming(block, value); });
                    } break;
                    default:
                        break;
                }
            }
        }
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& alias = analysis.get<AliasAnalysis>(func);
        const auto& leak = analysis.get<StackAddressLeakAnalysis>(func);

        std::vector<StackAllocInst*> interested;
        for(auto inst : func.entryBlock()->instructions()) {
            if(inst->getInstID() == InstructionID::Alloc) {
                auto alloc = inst->as<StackAllocInst>();
                if(alloc->getType()->as<PointerType>()->getPointee()->isPrimitive()) {
                    interested.push_back(alloc);
                }
            } else
                break;
        }

        if(interested.empty())
            return false;

        // FIXME: don't create phi nodes in all blocks
        using namespace std::chrono_literals;
        constexpr auto timeBudget = 10ms;
        const auto deadline = Clock::now() + timeBudget;

        IRBuilder builder{ analysis.module().getTarget() };
        ReplaceMap replace;
        for(auto alloc : interested) {
            applyMem2Reg(builder, func, alias, alloc, leak, replace);
            if(Clock::now() > deadline)
                break;
        }
        replaceOperands(func, replace);
        return true;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ScalarMem2Reg"sv;
    }
};

CMMC_TRANSFORM_PASS(ScalarMem2Reg);

CMMC_NAMESPACE_END

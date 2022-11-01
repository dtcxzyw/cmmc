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

#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/BlockArgumentAnalysis.hpp>
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
    void applyMem2Reg(Function& func, const AliasAnalysisResult& alias, const BlockArgumentAnalysisResult& blockArgMap,
                      StackAllocInst* alloc) const {
        std::unordered_map<Block*, Value*> todo;
        todo.emplace(alloc->getBlock(), alloc);
        for(auto block : func.blocks()) {
            for(auto arg : block->args())
                if(blockArgMap.queryRoot(arg) == alloc) {
                    todo.emplace(block, arg);
                    break;
                }
        }

        const auto root = alloc->getBlock();
        const auto valueType = alloc->getType()->as<PointerType>()->getPointee();
        const auto undef = make<UndefinedValue>(valueType);

        for(auto [block, addr] : todo) {
            Value* value = nullptr;
            if(block != root) {
                value = block->addArg(valueType);
            } else {
                value = undef;
            }

            const auto update = [&, insertBlock = block, storeAddr = addr](Instruction* pos, bool after) {
                IRBuilder builder;
                builder.setInsertPoint(insertBlock, pos);
                if(after)
                    builder.nextInsertPoint();
                value = builder.makeOp<LoadInst>(storeAddr);
            };

            ReplaceMap replace;
            bool start = block != root;
            std::vector<Instruction*> instructionList{ block->instructions().cbegin(), block->instructions().cend() };
            bool stop = false;
            for(auto inst : instructionList) {
                if(stop)
                    break;
                if(start) {
                    switch(inst->getInstID()) {
                        case InstructionID::Load: {
                            if(blockArgMap.queryRoot(inst->getOperand(0)) == alloc)
                                replace.emplace(inst, value);
                        } break;
                        case InstructionID::Store: {
                            const auto addr = blockArgMap.queryRoot(inst->getOperand(0));
                            if(addr == alloc) {
                                value = inst->getOperand(1);
                            } else if(!alias.isDistinct(addr, alloc)) {
                                update(inst, true);
                            }
                        } break;
                        case InstructionID::Call: {
                            const auto callee = inst->operands().back();
                            bool modified = true;
                            // TODO: check address leak
                            if(auto func = dynamic_cast<Function*>(callee)) {
                                if(func->attr().hasAttr(FunctionAttribute::NoMemoryWrite)) {
                                    modified = false;
                                }
                            }

                            if(modified)
                                update(inst, true);
                        } break;
                        case InstructionID::Free: {
                            const auto ptr = inst->getOperand(0);
                            if(blockArgMap.queryRoot(ptr) == alloc) {
                                stop = true;
                            }
                        } break;
                        case InstructionID::Branch:
                            [[fallthrough]];
                        case InstructionID::ConditionalBranch: {
                            const auto branch = inst->as<ConditionalBranchInst>();
                            auto handleTarget = [&](BranchTarget& target) {
                                const auto targetBlock = target.getTarget();
                                if(!todo.count(targetBlock) || targetBlock == root)
                                    return;
                                auto args = target.getArgs();
                                args.push_back(value);
                                branch->updateTargetArgs(target, std::move(args));
                            };
                            handleTarget(branch->getTrueTarget());
                            handleTarget(branch->getFalseTarget());
                        } break;
                        default:
                            break;
                    }

                } else if(inst == alloc) {
                    start = true;
                }
            }

            replaceOperands(*block, replace);
        }
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& blockArgMap = analysis.get<BlockArgumentAnalysis>(func);
        const auto& alias = analysis.get<AliasAnalysis>(func);

        std::vector<StackAllocInst*> interested;
        for(auto block : func.blocks()) {
            for(auto inst : block->instructions()) {
                if(inst->getInstID() == InstructionID::Alloc) {
                    auto alloc = inst->as<StackAllocInst>();
                    if(alloc->getType()->as<PointerType>()->getPointee()->isPrimitive()) {
                        interested.push_back(alloc);
                    }
                }
            }
        }

        bool modified = false;
        for(auto alloc : interested) {
            applyMem2Reg(func, alias, blockArgMap, alloc);
            modified = true;
        }
        return modified;
    }

    std::string_view name() const noexcept override {
        using namespace std::string_view_literals;
        return "ScalarMem2Reg"sv;
    }
};

CMMC_TRANSFORM_PASS(ScalarMem2Reg);

CMMC_NAMESPACE_END

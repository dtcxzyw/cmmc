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

// func add(int a, int b) -> int:
// entry(int a, int b):
//     int c = a + b;
//     return c;
// func main() -> int:
// entry():
//     return add(1, 2);
// ==>
// func add(int a, int b) -> int:
// entry(int a, int b):
//     int c = a + b;
//     return c;
// func main() -> int:
// entry():
//     return 3;

#include <algorithm>
#include <cmmc/IR/Block.hpp>
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

CMMC_NAMESPACE_BEGIN

class FuncInlining final : public TransformPass<Function> {
    static bool shouldInline(Function& func) {
        // TODO: use better heuristic?
        return func.attr().hasAttr(FunctionAttribute::NoRecurse);
    }

    static void applyInline(Block* block, IntrusiveListIterator<Instruction> call, Function* caller, Function* callee) {
        auto& callerBlocks = block->getFunction()->blocks();
        auto iter = std::find(callerBlocks.begin(), callerBlocks.end(), block);
        auto& callRet = *call;
        auto sinkBlock = splitBlock(callerBlocks, iter, call);
        auto insertPoint = std::next(iter);
        std::unordered_map<Block*, Block*> replace;
        ReplaceMap targetReplace;
        Block* entryBlock = nullptr;
        {
            auto& arguments = (*call).mutableOperands();
            auto& parameters = callee->args();
            for(size_t idx = 0; idx < parameters.size(); ++idx) {
                targetReplace.emplace(parameters[idx], arguments[idx]->value);
            }
        }
        std::vector<PhiInst*> phiNodes;
        for(auto subBlock : callee->blocks()) {
            auto newBlock = subBlock->clone(targetReplace);
            if(subBlock == callee->entryBlock())
                entryBlock = newBlock;

            newBlock->setFunction(caller);
            callerBlocks.insert(insertPoint, newBlock);
            replace.emplace(subBlock, newBlock);
            for(auto& inst : newBlock->instructions()) {
                if(inst.getInstID() == InstructionID::Phi) {
                    phiNodes.push_back(inst.as<PhiInst>());
                } else
                    break;
            }
        }

        // replace call with unconditional branch
        {
            assert(entryBlock);
            auto branch = make<BranchInst>(entryBlock);
            auto& instructions = block->instructions();
            instructions.pop_back();
            branch->insertBefore(block, instructions.end());
        }
        // fix allocs
        const auto callerEntry = caller->entryBlock();
        // FIXME
        reportNotImplemented(CMMC_LOCATION());
        entryBlock->instructions().remove_if([&](Instruction* inst) {
            if(inst->getInstID() == InstructionID::Alloc) {
                inst->insertBefore(callerEntry, callerEntry->instructions().begin());
                return true;
            }
            return false;
        });
        // fix terminators
        PhiInst* retValue = nullptr;
        auto retType = callRet.getType();
        if(!retType->isVoid()) {
            retValue = make<PhiInst>(retType);
            retValue->insertBefore(sinkBlock, sinkBlock->instructions().begin());
            targetReplace.emplace(&callRet, retValue);
        }

        for(auto [oldBlock, newBlock] : replace) {
            for(auto phi : phiNodes)
                if(phi->incomings().count(oldBlock))
                    phi->replaceSource(oldBlock, newBlock);

            auto terminator = newBlock->getTerminator();
            switch(terminator->getInstID()) {
                case InstructionID::Ret: {
                    auto branch = make<BranchInst>(sinkBlock);
                    auto& insts = newBlock->instructions();
                    insts.pop_back();
                    branch->insertBefore(newBlock, insts.end());
                    if(!retType->isVoid()) {
                        retValue->addIncoming(newBlock, terminator->getOperand(0));
                    }
                    break;
                }
                case InstructionID::Branch:
                    [[fallthrough]];
                case InstructionID::ConditionalBranch: {
                    auto branch = terminator->as<BranchInst>();
                    auto& trueTarget = branch->getTrueTarget();
                    trueTarget = replace.at(trueTarget);

                    auto& falseTarget = branch->getFalseTarget();
                    if(falseTarget)
                        falseTarget = replace.at(falseTarget);
                    break;
                }
                default:
                    break;
            }
        }
        replaceOperands(*caller, targetReplace);

        // fix phi nodes: block -> sinkBlock
        const auto terminator = sinkBlock->getTerminator();
        if(terminator->isBranch()) {
            const auto branch = terminator->as<BranchInst>();

            auto handleTarget = [&](Block* target) {
                for(auto& inst : target->instructions()) {
                    if(inst.getInstID() == InstructionID::Phi) {
                        inst.as<PhiInst>()->replaceSource(block, sinkBlock);
                    } else
                        break;
                }
            };

            handleTarget(branch->getTrueTarget());
            if(branch->getFalseTarget() && branch->getFalseTarget() != branch->getTrueTarget())
                handleTarget(branch->getFalseTarget());
        }
    }

    static bool tryInline(Function& func) {
        for(auto block : func.blocks()) {
            auto& insts = block->instructions();
            for(auto iter = insts.begin(); iter != insts.end(); ++iter) {
                auto& inst = *iter;
                if(inst.getInstID() == InstructionID::Call) {
                    const auto callee = inst.operands().back();
                    if(auto calleeFunc = dynamic_cast<Function*>(callee)) {
                        if(!calleeFunc->blocks().empty() && shouldInline(*calleeFunc)) {
                            applyInline(block, iter, &func, calleeFunc);
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        while(tryInline(func)) {
            modified = true;
            /*
            func.dump(std::cerr, Noop{});
            if(!func.verify(std::cerr)) {
                reportUnreachable(CMMC_LOCATION());
            }
            */
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "FuncInlining"sv;
    }
};

CMMC_TRANSFORM_PASS(FuncInlining);

CMMC_NAMESPACE_END

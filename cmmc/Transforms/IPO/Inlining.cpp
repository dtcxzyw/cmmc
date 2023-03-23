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
#include <queue>
#include <unordered_map>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class FuncInlining final : public TransformPass<Function> {
    static bool shouldInline(Function& func) {
        // TODO: use better heuristic?
        return func.attr().hasAttr(FunctionAttribute::NoRecurse);
    }

    static void applyInline(Block* block, List<Instruction*>::iterator call, Function* caller, Function* callee) {
        auto& callerBlocks = block->getFunction()->blocks();
        auto iter = std::find(callerBlocks.begin(), callerBlocks.end(), block);
        const auto callRet = *call;
        CMMC_UNUSED(callRet);
        auto sinkBlock = splitBlock(callerBlocks, iter, call);
        auto insertPoint = std::next(iter);
        std::unordered_map<Block*, Block*> replace;
        ReplaceMap targetReplace;
        Block* entryBlock = nullptr;
        for(auto subBlock : callee->blocks()) {
            auto newBlock = subBlock->clone(targetReplace);
            if(subBlock == callee->entryBlock())
                entryBlock = newBlock;

            newBlock->setFunction(caller);
            callerBlocks.insert(insertPoint, newBlock);
            replace.emplace(subBlock, newBlock);
        }

        // replace call with unconditional branch
        {
            assert(entryBlock);
            auto& operands = (*call)->operands();
            CMMC_UNUSED(operands);
            reportUnreachable(CMMC_LOCATION());
            auto branch = make<BranchInst>(entryBlock);
            branch->setBlock(block);
            block->instructions().back() = branch;
        }
        // fix terminators
        for(auto [oldBlock, newBlock] : replace) {
            CMMC_UNUSED(oldBlock);
            auto terminator = newBlock->getTerminator();
            switch(terminator->getInstID()) {
                case InstructionID::Ret: {
                    auto branch = make<BranchInst>(sinkBlock);
                    branch->setBlock(newBlock);
                    newBlock->instructions().back() = branch;
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
        reportNotImplemented(CMMC_LOCATION());
        /*
        // fix references to return value
        auto retType = callRet->getType();
        if(!retType->isVoid()) {
            auto arg = sinkBlock->addArg(retType);
            for(auto inst : sinkBlock->instructions()) {
                inst->replaceOperand(callRet, arg);
            }
        }
        */
    }

    static bool tryInline(Function& func) {
        for(auto block : func.blocks()) {
            auto& insts = block->instructions();
            for(auto iter = insts.begin(); iter != insts.end(); ++iter) {
                auto inst = *iter;
                if(inst->getInstID() == InstructionID::Call) {
                    const auto callee = inst->operands().back();
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
        while(tryInline(func))
            modified = true;
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "FuncInlining"sv;
    }
};

CMMC_TRANSFORM_PASS(FuncInlining);

CMMC_NAMESPACE_END

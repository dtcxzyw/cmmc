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

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

class UnifyReturn final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        if(func.attr().hasAttr(FunctionAttribute::NoReturn))
            return false;
        if(func.blocks().size() == 1)
            return false;
        std::vector<Instruction*> rets;
        for(auto block : func.blocks()) {
            if(block->getTerminator()->getInstID() == InstructionID::Ret) {
                rets.push_back(block->getTerminator());
            }
        }
        if(rets.size() <= 1)
            return false;
        IRBuilder builder{ analysis.module().getTarget() };
        builder.setCurrentFunction(&func);
        const auto exitBlock = builder.addBlock();
        builder.setCurrentBlock(exitBlock);
        PhiInst* retValue = nullptr;
        if(auto retType = func.getType()->as<FunctionType>()->getRetType(); !retType->isVoid()) {
            retValue = builder.createPhi(retType);
        }
        for(auto ret : rets) {
            const auto block = ret->getBlock();
            if(retValue) {
                retValue->addIncoming(block, ret->getOperand(0));
            }
            auto& instructions = block->instructions();
            instructions.pop_back();
            const auto branch = make<BranchInst>(exitBlock);
            branch->setBlock(block);
            instructions.push_back(branch);
        }

        if(retValue) {
            builder.makeOp<ReturnInst>(retValue);
        } else {
            builder.makeOp<ReturnInst>();
        }

        return true;
    }
    [[nodiscard]] std::string_view name() const noexcept override {
        return "UnifyReturn"sv;
    }
};

CMMC_TRANSFORM_PASS(UnifyReturn);

CMMC_NAMESPACE_END

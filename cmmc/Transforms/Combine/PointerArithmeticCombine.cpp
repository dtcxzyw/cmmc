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

// a * b + a * c -> a * (b + c)
// a - a -> 0
// a == a -> 1
// etc.

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/BlockArgumentAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

// TODO: inttoptr (ptrtoint a) -> a (same size)
// TODO: ptrtoint (inttoptr a) -> a (same size)
// TODO: ptrcast (ptrcast a) -> ptrcast a

class PointerArithmeticCombine final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& target = analysis.module().getTarget();
        const auto& dataLayout = target.getDataLayout();

        bool modified = false;
        for(auto block : func.blocks()) {
            ReplaceMap replaceMap;

            auto& instructions = block->instructions();
            for(auto iter = instructions.begin(); iter != instructions.end();) {
                const auto inst = *iter;
                const auto next = std::next(iter);
                MatchContext<Value> ctx{ inst, nullptr };

                Value* p;
                intmax_t c;

                // inttoptr (add (ptrtoint p), c) -> gep p, c
                if(int2ptr(add(ptr2int(any(p)), int_(c)))(ctx)) {
                    // TODO: support more structures
                    const auto pointee = p->getType()->as<PointerType>()->getPointee();
                    if(pointee->isArray()) {
                        const auto srcArray = pointee->as<ArrayType>();
                        const auto elementType = srcArray->getElementType();
                        if(elementType->isSame(inst->getType()->as<PointerType>()->getPointee())) {
                            const auto elementSize = static_cast<intmax_t>(elementType->getSize(dataLayout));

                            if(c % elementSize == 0) {
                                const auto idx = c / elementSize;

                                IRBuilder builder{ target };
                                builder.setInsertPoint(block, iter);

                                const auto gep = builder.makeOp<GetElementPtrInst>(
                                    p,
                                    Vector<Value*>{ builder.getZeroIndex(), ConstantInteger::get(builder.getIndexType(), idx) });

                                replaceMap.emplace(inst, gep);
                            }
                        }
                    }
                }

                iter = next;
            }

            if(!replaceMap.empty()) {
                modified = true;
                replaceOperands(*block, replaceMap);
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "PointerArithmeticCombine"sv;
    }
};

CMMC_TRANSFORM_PASS(PointerArithmeticCombine);

CMMC_NAMESPACE_END

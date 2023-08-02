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

#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <queue>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class SCEVGEPPhi final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& dom = analysis.get<DominateAnalysis>(func);
        bool modified = false;

        for(auto block : func.blocks()) {
            auto& instructions = block->instructions();
            std::vector<GetElementPtrInst*> newGEPs;
            for(auto iter = instructions.begin(); iter != instructions.end(); ++iter) {
                auto& inst = *iter;
                if(inst.getInstID() == InstructionID::Phi) {
                    if(!inst.getType()->isPointer())
                        continue;
                    Value* base = nullptr;
                    for(auto& [pred, val] : inst.as<PhiInst>()->incomings()) {
                        if(dom.dominate(pred, block) && pred != block) {
                            base = val->value;
                        }
                    }
                    if(!base)
                        continue;

                    std::vector<std::pair<Block*, Value*>> newIncomings;
                    const Type* sharedType = nullptr;
                    bool valid = true;
                    for(auto& [pred, val] : inst.as<PhiInst>()->incomings()) {
                        if(val->value == base) {
                            newIncomings.emplace_back(pred, nullptr);
                            continue;
                        }
                        if(val->value->is<GetElementPtrInst>()) {
                            const auto gep = val->value->as<GetElementPtrInst>();
                            if(gep->lastOperand() == base) {
                                const auto idx = gep->getOperand(0);
                                newIncomings.emplace_back(pred, idx);
                                const auto t = idx->getType();
                                if(sharedType) {
                                    if(sharedType != t) {
                                        valid = false;
                                        break;
                                    }
                                } else
                                    sharedType = t;
                                continue;
                            }
                        }

                        valid = false;
                        break;
                    }
                    if(!valid)
                        continue;

                    if(!sharedType)
                        sharedType = IntegerType::get(32);

                    auto idx = make<PhiInst>(sharedType);
                    idx->insertBefore(block, inst.asIterator());
                    for(auto [pred, val] : newIncomings) {
                        if(val)
                            idx->addIncoming(pred, val);
                        else
                            idx->addIncoming(pred, ConstantInteger::get(sharedType, 0));
                    }
                    const auto gep = make<GetElementPtrInst>(base, std::vector<Value*>{ idx });
                    newGEPs.push_back(gep);
                    inst.replaceWith(gep);
                    modified = true;
                } else {
                    for(auto gep : newGEPs)
                        gep->insertBefore(block, iter);
                    break;
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "SCEVGEPPhi"sv;
    }
};

CMMC_TRANSFORM_PASS(SCEVGEPPhi);

CMMC_NAMESPACE_END

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
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <queue>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class GEPDecompose final : public TransformPass<Function> {
    static bool isUsedByGEP(Value* val) {
        if(auto track = dynamic_cast<TrackableValue*>(val)) {
            for(auto user : track->users()) {
                if(user->getInstID() == InstructionID::GetElementPtr)
                    return true;
            }
        }
        return false;
    }

    static bool decompose(Value* val, Value*& base, Value*& off, Instruction& inst, const DominateAnalysisResult& dom) {
        MatchContext<Value> matchCtx{ val };
        Value *v1, *v2;
        intmax_t i1, i2;
        if(oneUse(mul(oneUse(add(any(v1), int_(i1))), capture(int_(i2), v2)))(matchCtx)) {
            const auto mul = make<BinaryInst>(InstructionID::Mul, v1, v2);
            mul->insertBefore(inst.getBlock(), inst.asIterator());
            base = mul;
            off = ConstantInteger::get(val->getType(), i1 * i2);
            return true;
        }
        if(add(any(v1), any(v2))(matchCtx)) {
            if(v1->getBlock() && v2->getBlock() && v1->getBlock() != v2->getBlock()) {
                if(dom.dominate(v1->getBlock(), v2->getBlock())) {
                    base = v1;
                    off = v2;
                    return true;
                }
                if(dom.dominate(v2->getBlock(), v1->getBlock())) {
                    base = v2;
                    off = v1;
                    return true;
                }
            }
            if(v2->isConstant() && isUsedByGEP(v1)) {
                base = v1;
                off = v2;
                return true;
            }
            if(v1->isConstant() && isUsedByGEP(v2)) {
                base = v2;
                off = v1;
                return true;
            }
        }
        return false;
    }
    static bool runBlock(Block& block, const DominateAnalysisResult& dom) {
        bool modified = false;

        for(auto& inst : block.instructions()) {
            if(inst.getInstID() != InstructionID::GetElementPtr)
                continue;
            const auto lastIdx = inst.arguments().back();
            Value *base, *off;
            if(decompose(lastIdx, base, off, inst, dom)) {
                const auto commonBase = inst.clone();
                commonBase->insertBefore(&block, inst.asIterator());
                commonBase->mutableOperands()[commonBase->mutableOperands().size() - 2]->resetValue(base);
                const auto offset = make<GetElementPtrInst>(commonBase, std::vector<Value*>{ off });
                offset->insertBefore(&block, inst.asIterator());
                inst.replaceWith(offset);
                modified = true;
            }
        }

        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& dom = analysis.get<DominateAnalysis>(func);
        bool modified = false;
        for(auto block : func.blocks())
            modified |= runBlock(*block, dom);

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "GEPDecompose"sv;
    }
};

CMMC_TRANSFORM_PASS(GEPDecompose);

CMMC_NAMESPACE_END

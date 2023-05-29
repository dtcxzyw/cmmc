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

// eliminate unreachable blocks
// ^entry():
//     call () -> void @exit(i32 0); // no return call
//     ret i32 0;
// ==>
// ^entry():
//     call () -> void @exit(i32 0); // no return call
//     unreachable;

#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <queue>

CMMC_NAMESPACE_BEGIN

class NoReturnCallEliminate final : public TransformPass<Function> {
public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto block : func.blocks()) {
            auto& insts = block->instructions();
            for(auto iter = insts.begin(); iter != insts.end(); ++iter) {
                auto& inst = *iter;
                if(inst.getInstID() == InstructionID::Call) {
                    const auto callee = inst.operands().back();
                    if(auto calleeFunc = dynamic_cast<Function*>(callee);
                       calleeFunc && calleeFunc->attr().hasAttr(FunctionAttribute::NoReturn)) {
                        insts.erase(std::next(iter), insts.end());
                        auto newTerminator = make<UnreachableInst>();
                        newTerminator->insertBefore(block, block->instructions().end());
                        modified = true;
                        break;
                    }
                }
            }
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "NoReturnCallEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(NoReturnCallEliminate);

CMMC_NAMESPACE_END

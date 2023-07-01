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

// internal int @a;
// internal func @foo() -> i32;
// func @main() -> i32 {
// ^entry():
//     ret i32 0;
// }
// =>
// func @main() -> i32 {
// ^entry():
//     ret i32 0;
// }

#include <algorithm>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cstdint>
#include <memory>
#include <queue>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

class GlobalZeroEliminate final : public TransformPass<Module> {
    static bool clear(ConstantArray*& arr) {
        const auto subType = arr->getType()->as<ArrayType>()->getElementType();
        bool modified = false;
        auto& sub = arr->values();
        if(subType->isArray()) {
            for(auto& subArr : sub) {
                auto ptr = subArr->as<ConstantArray>();
                modified |= clear(ptr);
            }
            while(!sub.empty() && sub.back()->as<ConstantArray>()->values().empty()) {
                sub.pop_back();
                modified = true;
            }
        } else if(subType->isInteger()) {
            while(!sub.empty() && sub.back()->as<ConstantInteger>()->getZeroExtended() == 0) {
                sub.pop_back();
                modified = true;
            }
        }
        if(sub.empty()) {
            arr = nullptr;
            modified = true;
        }
        return modified;
    }

public:
    bool run(Module& mod, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto global : mod.globals()) {
            if(auto var = dynamic_cast<GlobalVariable*>(global)) {
                if(!var->getType()->as<PointerType>()->getPointee()->isArray())
                    continue;
                if(var->initialValue()) {
                    auto initialValue = var->initialValue()->as<ConstantArray>();
                    modified |= clear(initialValue);
                    if(!initialValue) {
                        var->setInitialValue(nullptr);
                        modified = true;
                    }
                }
            }
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "GlobalZeroEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(GlobalZeroEliminate);

CMMC_NAMESPACE_END

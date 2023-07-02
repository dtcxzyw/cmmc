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

#include <algorithm>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iostream>
#include <memory>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class LargeLocal2Global final : public TransformPass<Module> {
    static constexpr size_t threshold = 1024;

public:
    bool run(Module& mod, AnalysisPassManager&) const override {
        Function* entryFunc = nullptr;

        for(auto global : mod.globals()) {
            // global->dumpAsOperand(std::cerr);
            // std::cerr << '\n';
            if(auto func = dynamic_cast<Function*>(global)) {
                if(func->blocks().empty())
                    continue;
                if(func->attr().hasAttr(FunctionAttribute::Entry)) {
                    assert(!entryFunc);
                    entryFunc = func;
                }
            }
        }

        if(!entryFunc)
            return false;

        std::vector<Instruction*> allocas;
        for(auto& inst : entryFunc->entryBlock()->instructions()) {
            if(inst.getInstID() == InstructionID::Alloc) {
                auto type = inst.getType()->as<PointerType>()->getPointee();
                if(type->getSize(mod.getTarget().getDataLayout()) >= threshold) {
                    allocas.push_back(&inst);
                }
            } else {
                break;
            }
        }
        if(allocas.empty())
            return false;

        for(auto alloca : allocas) {
            // TODO: assign a unique name?
            auto global = make<GlobalVariable>(alloca->getLabel(), alloca->getType()->as<PointerType>()->getPointee());
            global->setLinkage(Linkage::Internal);
            mod.globals().push_back(global);
            alloca->replaceWith(global);
            entryFunc->entryBlock()->instructions().erase(alloca->asNode());
        }

        return true;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LargeLocal2Global"sv;
    }
};

CMMC_TRANSFORM_PASS(LargeLocal2Global);

CMMC_NAMESPACE_END

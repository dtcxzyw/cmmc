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
#include <cstdint>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class DeadArgEliminate final : public TransformPass<Module> {
    static void removeUnusedArgs(Function* func, const std::vector<uint32_t>& removedIdx) {
        for(auto user : func->users()) {
            auto call = user->as<FunctionCallInst>();
            auto& mutableOperands = call->mutableOperands();
            // in reverse order
            for(auto idx : removedIdx)
                mutableOperands.erase(mutableOperands.begin() + idx);
        }
    }

public:
    bool run(Module& mod, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto global : mod.globals()) {
            if(global->isFunction()) {
                const auto func = global->as<Function>();
                if(func->blocks().empty())
                    continue;
                if(func->getLinkage() == Linkage::Global)
                    continue;

                auto& args = func->args();
                uint32_t idx = 0;
                std::vector<uint32_t> removedIdx;
                args.erase(std::remove_if(args.begin(), args.end(),
                                          [&](FuncArgument* arg) {
                                              const auto id = idx++;
                                              if(!arg->isUsed()) {
                                                  removedIdx.push_back(id);
                                                  return true;
                                              }
                                              return false;
                                          }),
                           args.end());
                if(!removedIdx.empty()) {
                    func->updateTypeFromArgs();
                    std::reverse(removedIdx.begin(), removedIdx.end());
                    removeUnusedArgs(func, removedIdx);
                    modified = true;
                }
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "DeadArgEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(DeadArgEliminate);

CMMC_NAMESPACE_END

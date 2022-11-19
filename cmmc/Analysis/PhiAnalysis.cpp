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

#include <algorithm>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/PhiAnalysis.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <iostream>
#include <unordered_set>
#include <variant>

CMMC_NAMESPACE_BEGIN

const std::variant<Value*, PhiNode>& PhiAnalysisResult::query(BlockArgument* arg) const {
    assert(mPhiNodes.count(arg));
    return mPhiNodes.find(arg)->second;
}

PhiAnalysisResult PhiAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    auto& cfg = analysis.get<CFGAnalysis>(func);
    auto& dom = analysis.get<DominateAnalysis>(func);

    std::unordered_map<BlockArgument*, std::variant<Value*, PhiNode>> ret;

    for(auto block : func.blocks()) {
        for(uint32_t idx = 0; idx < block->args().size(); ++idx) {
            const auto arg = block->getArg(idx);
            PhiNode phiNode;
            for(auto [predBlock, predTarget] : cfg.predecessors(block)) {
                const auto provided = predTarget->getArgs()[idx];
                const auto inst = predBlock->getTerminator()->as<ConditionalBranchInst>();
                phiNode.push_back(PhiEdge{ predTarget, inst, provided });
            }
            ret[arg] = std::move(phiNode);
        }
    }

    const auto dumpValueWithBlock = [](Value* value) {
        if(value->getBlock()) {
            value->getBlock()->dumpAsTarget(std::cerr);
            std::cerr << ".";
        }
        value->dumpAsOperand(std::cerr);
    };
    CMMC_UNUSED(dumpValueWithBlock);
    const auto dumpCurrentSet = [&] {
        for(auto& [arg, val] : ret) {
            dumpValueWithBlock(arg);

            std::cerr << " -> ";
            if(auto phiPtr = std::get_if<PhiNode>(&val)) {
                auto& phi = *phiPtr;
                for(auto [from, inst, value] : phi) {
                    CMMC_UNUSED(from);
                    CMMC_UNUSED(inst);
                    std::cerr << " [";
                    inst->getBlock()->dumpAsTarget(std::cerr);
                    std::cerr << " ";
                    dumpValueWithBlock(value);

                    std::cerr << "] ";
                }
            } else {
                const auto value = std::get<Value*>(val);
                dumpValueWithBlock(value);
            }
            std::cerr << std::endl;
        }
    };
    CMMC_UNUSED(dumpCurrentSet);

    // merge
    while(true) {
        bool modified = false;

        // merge phi node
        for(auto& [arg, val] : ret) {
            CMMC_UNUSED(arg);
            if(auto phiPtr = std::get_if<PhiNode>(&val)) {
                auto& phi = *phiPtr;
                if(phi.empty())
                    continue;

                auto uniqueVal = phi.front().value;
                if(uniqueVal->isConstant()) {
                    const auto uniqueConstVal = uniqueVal->as<ConstantValue>();
                    for(uint32_t idx = 1; idx < phi.size(); ++idx)
                        if(!(phi[idx].value->isConstant() && phi[idx].value->as<ConstantValue>()->isEqual(uniqueConstVal))) {
                            uniqueVal = nullptr;
                            break;
                        }
                } else {
                    if(std::any_of(phi.begin(), phi.end(), [&](const PhiEdge& edge) { return uniqueVal != edge.value; })) {
                        uniqueVal = nullptr;
                    }
                }
                if(uniqueVal)
                    val = uniqueVal;
            }
        }

        std::unordered_set<Value*> visited;
        auto convergeTo = [&](auto&& self, Value* val, BlockArgument* target) {
            if(val == target)
                return true;
            if(visited.count(val))
                return false;
            visited.insert(val);
            if(auto arg = dynamic_cast<BlockArgument*>(val)) {
                const auto& phi = ret.find(arg)->second;
                if(auto phiPtr = std::get_if<PhiNode>(&phi)) {
                    if(phiPtr->empty())  // undetermined
                        return false;

                    for(auto [from, inst, rhs] : *phiPtr) {
                        CMMC_UNUSED(from);
                        CMMC_UNUSED(inst);
                        if(!rhs)
                            continue;
                        if(!self(self, rhs, target))
                            return false;
                    }
                    return true;
                } else {
                    return self(self, std::get<Value*>(phi), target);
                }
            }
            return false;
        };

        const auto findRoot = [&](BlockArgument* argSrc, BlockArgument* arg, bool allowNull) -> Value* {
            auto block = argSrc->getBlock();
            bool dominate = dom.dominate(arg->getBlock(), block);

            const auto& val = ret.find(arg)->second;
            if(auto valPtr = std::get_if<Value*>(&val)) {
                assert(*valPtr);
                if(!(*valPtr)->is<BlockArgument>() || dominate)
                    return *valPtr;
            }

            if(allowNull) {
                visited.clear();
                if(convergeTo(convergeTo, arg, argSrc))
                    return nullptr;
            }

            return arg;
        };

        // lifting
        auto tryLift = [&](BlockArgument* arg, Value*& valRef, bool allowNull) {
            auto oldVal = valRef;
            if(auto argVal = dynamic_cast<BlockArgument*>(valRef)) {
                valRef = findRoot(arg, argVal, allowNull);
                if(valRef != oldVal)
                    modified = true;
            }
        };

        for(auto& [arg, val] : ret) {
            if(auto phiPtr = std::get_if<PhiNode>(&val)) {
                for(auto& [from, inst, valRef] : *phiPtr) {
                    CMMC_UNUSED(from);
                    CMMC_UNUSED(inst);
                    tryLift(arg, valRef, true);
                }
                phiPtr->erase(
                    std::remove_if(phiPtr->begin(), phiPtr->end(), [](const PhiEdge& edge) { return edge.value == nullptr; }),
                    phiPtr->end());
            } else {
                auto& valRef = std::get<Value*>(val);
                tryLift(arg, valRef, false);
            }
        }

        if(!modified)
            break;
    }

    /*
    func.dump(std::cerr);
    func.dumpCFG(std::cerr);
    dumpCurrentSet();
    */

    return PhiAnalysisResult{ std::move(ret) };
}

CMMC_NAMESPACE_END

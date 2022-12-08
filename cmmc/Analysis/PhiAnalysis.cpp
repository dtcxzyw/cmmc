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

#include "cmmc/Config.hpp"
#include "cmmc/IR/Block.hpp"
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
            std::variant<Value*, PhiNode> phiNode = nullptr;
            for(auto [predBlock, predTarget] : cfg.predecessors(block)) {
                const auto provided = predTarget->getArgs()[idx];
                if(auto vals = std::get_if<PhiNode>(&phiNode))
                    vals->push_back(provided);
                else {
                    const auto prevVal = std::get<Value*>(phiNode);
                    if(prevVal == nullptr)
                        phiNode = provided;
                    else if(prevVal != provided)
                        phiNode = PhiNode{ prevVal, provided };
                }
            }
            if(const auto ptr = std::get_if<Value*>(&phiNode); ptr && *ptr == nullptr)
                phiNode = PhiNode{};
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
                for(auto value : phi) {
                    std::cerr << " [";
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

    std::unordered_set<BlockArgument*> toMerge;
    for(auto& [arg, val] : ret) {
        if(std::holds_alternative<PhiNode>(val))
            toMerge.insert(arg);
    }

    std::list<BlockArgument*> toLift;
    for(auto block : dom.blocks()) {
        for(auto arg : block->args())
            toLift.push_back(arg);
    }

    // merge
    while(true) {
        bool modified = false;

        // merge phi node
        std::vector<BlockArgument*> deferred;
        for(auto arg : toMerge) {
            auto& val = ret[arg];
            if(auto phiPtr = std::get_if<PhiNode>(&val)) {
                auto& phi = *phiPtr;
                if(phi.empty()) {
                    deferred.push_back(arg);
                    continue;
                }

                auto uniqueVal = phi.front();
                if(uniqueVal->isConstant()) {
                    const auto uniqueConstVal = uniqueVal->as<ConstantValue>();
                    for(uint32_t idx = 1; idx < phi.size(); ++idx)
                        if(!(phi[idx]->isConstant() && phi[idx]->as<ConstantValue>()->isEqual(uniqueConstVal))) {
                            uniqueVal = nullptr;
                            break;
                        }
                } else {
                    if(std::any_of(phi.begin(), phi.end(), [&](const Value* edge) { return uniqueVal != edge; })) {
                        uniqueVal = nullptr;
                    }
                }

                if(uniqueVal) {
                    val = uniqueVal;
                    modified = true;
                    deferred.push_back(arg);
                }
            } else
                deferred.push_back(arg);
        }

        for(auto arg : deferred)
            toMerge.erase(arg);

        std::unordered_set<Value*> visited;
        auto convergeTo = [&](auto&& self, Value* val, BlockArgument* target, uint32_t depth) {
            if(val == target)
                return true;

            if(depth > 3)
                return false;

            if(visited.count(val))
                return false;
            visited.insert(val);
            if(auto arg = dynamic_cast<BlockArgument*>(val)) {
                const auto& phi = ret.find(arg)->second;
                if(auto phiPtr = std::get_if<PhiNode>(&phi)) {
                    if(phiPtr->empty())  // undetermined
                        return false;

                    for(auto rhs : *phiPtr) {
                        if(!rhs)
                            continue;
                        if(!self(self, rhs, target, depth + 1))
                            return false;
                    }
                    return true;
                } else {
                    return self(self, std::get<Value*>(phi), target, depth + 1);
                }
            }
            return false;
        };

        const auto findRoot = [&](BlockArgument* argSrc, BlockArgument* arg, bool checkCycle) -> Value* {
            const auto& val = ret.find(arg)->second;
            if(auto valPtr = std::get_if<Value*>(&val)) {
                assert(*valPtr);
                if(!(*valPtr)->is<BlockArgument>() || dom.dominate(arg->getBlock(), argSrc->getBlock()))
                    return *valPtr;
            }

            if(checkCycle) {
                visited.clear();
                if(convergeTo(convergeTo, arg, argSrc, 0))
                    return nullptr;
            }

            return arg;
        };

        // lifting
        auto tryLift = [&](BlockArgument* arg, Value*& valRef, bool checkCycle) -> bool {
            auto oldVal = valRef;
            if(auto argVal = dynamic_cast<BlockArgument*>(valRef)) {
                valRef = findRoot(arg, argVal, checkCycle);
                if(valRef != oldVal)
                    modified = true;
                return false;
            }
            return true;
        };

        toLift.remove_if([&](BlockArgument* arg) {
            auto& val = ret[arg];
            if(auto phiPtr = std::get_if<PhiNode>(&val)) {
                bool allStable = true;
                for(auto& valRef : *phiPtr) {
                    allStable &= tryLift(arg, valRef, true);
                }
                phiPtr->erase(std::remove(phiPtr->begin(), phiPtr->end(), nullptr), phiPtr->end());
                return allStable;
            } else {
                auto& valRef = std::get<Value*>(val);
                return tryLift(arg, valRef, false);
            }
        });

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

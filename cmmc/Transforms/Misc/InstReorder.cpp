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
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <limits>
#include <map>
#include <queue>
#include <set>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

class InstReorder final : public TransformPass<Function> {

    // minimize number of live values
    // schedule instructions bottom-up
    static bool reorderBlock(Block* block) {
        // build DAG
        std::unordered_map<Instruction*, std::unordered_set<Instruction*>> pred;
        std::unordered_map<Instruction*, std::unordered_set<Instruction*>> uses;
        std::unordered_map<Value*, std::unordered_set<Instruction*>> usesOfOuter;
        std::unordered_map<Instruction*, uint32_t> degrees;
        Instruction* latesetLocked = nullptr;
        auto addDep = [&](Instruction* u, Instruction* v) {
            if(pred[u].insert(v).second)
                ++degrees[v];
        };
        uint32_t idCount = 0;
        std::unordered_map<Instruction*, uint32_t> instId;
        std::vector<Instruction*> instMap;
        instMap.reserve(block->instructions().size());
        Instruction* latestPhiOrAlloc = nullptr;
        for(auto& inst : block->instructions()) {
            instId[&inst] = idCount++;
            instMap.push_back(&inst);

            if(!isMovableExpr(inst, false)) {
                if(latesetLocked)
                    addDep(&inst, latesetLocked);
                latesetLocked = &inst;
            }

            if(inst.getInstID() == InstructionID::Phi || inst.getInstID() == InstructionID::Alloc) {
                latestPhiOrAlloc = &inst;
                continue;
            }
            if(latestPhiOrAlloc) {
                addDep(&inst, latestPhiOrAlloc);
            }
            for(auto operand : inst.operands()) {
                if(operand->getBlock() == block) {
                    addDep(&inst, operand->as<Instruction>());
                    uses[operand->as<Instruction>()].insert(&inst);
                } else if(operand->isInstruction() || operand->isArgument()) {
                    usesOfOuter[operand].insert(&inst);
                }
            }
        }

        // calc weight

        std::unordered_map<Instruction*, double> weight;
        for(auto& [val, usesOfVal] : usesOfOuter) {
            CMMC_UNUSED(val);
            double w = 1.0;
            if(val->isArgument()) {
                uint32_t idx = 1;
                for(auto arg : block->getFunction()->args()) {
                    if(arg == val) {
                        break;
                    }
                    ++idx;
                }
                w -= 0.1 * static_cast<double>(idx) / static_cast<double>(block->getFunction()->args().size());
            }
            for(auto use : usesOfVal)
                weight[use] += w;
        }
        for(auto& inst : block->instructions()) {
            auto& w = weight[&inst];
            w += 1.0;
            if(inst.getInstID() == InstructionID::Call) {
                w += 1000.0;
            }
            for(auto use : uses[&inst]) {
                weight[use] += w;
            }
            // bool constantLifetime = false;
            // for(auto user : inst.users()) {
            //     if(user->getBlock() != block) {
            //         constantLifetime = true;  // used by outer, latest use = inf
            //         break;
            //     }
            //     if(user->getInstID() == InstructionID::Phi) {
            //         constantLifetime = true;  // used by next phi, latest use = inf
            //         break;
            //     }
            // }
            // if(constantLifetime) {
            //     w += 1e10;
            // }

            // inst.dumpInst(std::cerr);
            // std::cerr << " -> " << w << std::endl;
        }

        // reorder
        std::priority_queue<std::pair<double, uint32_t>> q;
        std::vector<Instruction*> order;
        order.reserve(block->instructions().size());

        for(auto& inst : block->instructions()) {
            if(degrees[&inst] == 0 && !inst.isTerminator()) {
                addDep(block->getTerminator(), &inst);
            }
        }
        q.emplace(0.0, instId.at(block->getTerminator()));

        while(!q.empty()) {
            const auto u = q.top().second;
            q.pop();

            order.push_back(instMap[u]);

            for(auto v : pred[instMap[u]]) {
                if(--degrees[v] == 0)
                    q.emplace(-weight[v], instId.at(v));
            }
        }

        assert(order.size() == instMap.size());
        std::reverse(order.begin(), order.end());

        if(order == instMap)
            return false;

        for(auto& inst : block->instructions()) {
            block->instructions().erase(inst.asNode(), false);
        }
        for(auto inst : order) {
            block->instructions().insert(block->instructions().end(), inst->asNode());
        }

        return true;
    }

    // static bool hoist(Block* block) {
    //     uint64_t instIdCount = 1;
    //     const auto increment = (std::numeric_limits<uint64_t>::max() / 2) / (block->instructions().size() + 1);
    //     std::unordered_map<Instruction*, uint64_t> instID;
    //     Instruction* latestAllocOrPhi = nullptr;
    //     bool modified = false;

    //     auto& instructions = block->instructions();
    //     for(auto& inst : instructions) {
    //         instID[&inst] = instIdCount;
    //         instIdCount += increment;
    //         if(inst.getInstID() == InstructionID::Alloc || inst.getInstID() == InstructionID::Phi)
    //             latestAllocOrPhi = &inst;
    //     }

    //     for(auto iter = instructions.begin(); iter != instructions.end();) {
    //         auto& inst = *iter;
    //         auto next = std::next(iter);

    //         if(isMovableExpr(inst, false)) {
    //             uint64_t maxId = 0;
    //             Instruction* dep = nullptr;
    //             for(auto operand : inst.operands()) {
    //                 if(operand->getBlock() != block)
    //                     continue;
    //                 if(auto it = instID.find(operand->as<Instruction>()); it != instID.end()) {
    //                     if(it->second > maxId) {
    //                         maxId = it->second;
    //                         dep = it->first;
    //                     }
    //                 }
    //             }
    //             if(dep && (dep->getInstID() == InstructionID::Alloc || dep->getInstID() == InstructionID::Phi))
    //                 dep = latestAllocOrPhi;
    //             if(dep && std::next(dep->asIterator()) != iter->asIterator()) {
    //                 inst.insertBefore(block, std::next(dep->asIterator()));
    //                 const auto l = instID.at(dep);
    //                 const auto r = instID.at(&*std::next(inst.asIterator()));
    //                 assert(r >= l + 2);
    //                 instID[&inst] = (l + r) / 2;
    //                 modified = true;
    //             }
    //         }

    //         iter = next;
    //     }

    //     return modified;
    // }

    // static bool sink(Block* block) {
    //     uint64_t instIdCount = 1;
    //     const auto increment = (std::numeric_limits<uint64_t>::max() / 2) / (block->instructions().size() + 1);
    //     std::unordered_map<Instruction*, uint64_t> instID;
    //     bool modified = false;

    //     auto& instructions = block->instructions();
    //     for(auto& inst : instructions) {
    //         instID[&inst] = instIdCount;
    //         instIdCount += increment;
    //     }

    //     for(auto iter = instructions.rbegin(); iter != instructions.rend();) {
    //         auto& inst = *iter;
    //         auto next = std::next(iter);

    //         if(isMovableExpr(inst, false) && inst.getInstID() == InstructionID::GetElementPtr) {
    //             uint64_t minId = std::numeric_limits<uint64_t>::max();
    //             Instruction* succ = nullptr;
    //             for(auto user : inst.users()) {
    //                 if(user->getBlock() != block || user->getInstID() == InstructionID::Phi)
    //                     continue;
    //                 if(auto it = instID.find(user->as<Instruction>()); it != instID.end()) {
    //                     if(it->second < minId) {
    //                         minId = it->second;
    //                         succ = it->first;
    //                     }
    //                 }
    //             }

    //             if(succ && std::prev(succ->asIterator()) != inst.asIterator()) {
    //                 inst.insertBefore(block, succ->asIterator());
    //                 const auto l = instID.at(&*std::prev(inst.asIterator()));
    //                 const auto r = instID.at(succ);
    //                 assert(r >= l + 2);
    //                 instID[&inst] = (l + r) / 2;
    //                 modified = true;
    //             }
    //         }

    //         iter = next;
    //     }

    //     return modified;
    // }

    static bool rearrangeCommutative(Function& func) {
        std::unordered_map<Value*, uint32_t> order;
        uint32_t idCnt = 0;
        for(auto arg : func.args())
            order[arg] = ++idCnt;
        for(auto block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                order[&inst] = ++idCnt;
            }
        }
        auto getOrder = [&](Value* val) {
            if(auto iter = order.find(val); iter != order.end()) {
                return iter->second;
            }
            return std::numeric_limits<uint32_t>::max();
        };
        bool modified = false;
        for(auto block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                bool isCommutative = false;
                switch(inst.getInstID()) {
                    case InstructionID::Add:
                    case InstructionID::Mul:
                    case InstructionID::And:
                    case InstructionID::Or:
                    case InstructionID::Xor:
                    case InstructionID::ICmp:
                    case InstructionID::SMax:
                    case InstructionID::SMin: {
                        isCommutative = true;
                        break;
                    }
                    default:
                        break;
                }

                if(isCommutative) {
                    auto& lhs = inst.mutableOperands()[0];
                    auto& rhs = inst.mutableOperands()[1];
                    if(lhs->value == rhs->value)
                        continue;
                    if(getOrder(lhs->value) > getOrder(rhs->value)) {
                        std::swap(lhs, rhs);
                        if(inst.getInstID() == InstructionID::ICmp) {
                            const auto cmp = inst.as<CompareInst>();
                            cmp->setOp(getReversedOp(cmp->getOp()));
                        }
                        modified = true;
                    }
                }
            }
        }
        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;

        // func.dump(std::cerr, Noop{});
        for(auto block : func.blocks()) {
            modified |= reorderBlock(block);
        }
        modified |= rearrangeCommutative(func);
        // func.dump(std::cerr, Noop{});

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "InstReorder"sv;
    }
};

CMMC_TRANSFORM_PASS(InstReorder);

CMMC_NAMESPACE_END

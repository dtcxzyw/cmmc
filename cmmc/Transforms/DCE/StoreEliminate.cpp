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

// int* a = alloc int;
// store a with 10;
// no user
// store a with 20;
// ==>
// int* a = alloc int;

#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/PointerAddressSpaceAnalysis.hpp>
#include <cmmc/Analysis/PointerBaseAnalysis.hpp>
#include <cmmc/Analysis/SimpleValueAnalysis.hpp>
#include <cmmc/Analysis/StackAddressLeakAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

// TODO: time-consuming pass
// TODO: MemorySSA
constexpr uint32_t maxLookaheadCount = 100;

class StoreEliminate final : public TransformPass<Function> {
    static bool isInvisible(Value* addr, Block& block, const AliasAnalysisResult& aliasSet, const DominateAnalysisResult& dom,
                            const PointerAddressSpaceAnalysisResult& addressSpace, Instruction* store,
                            std::unordered_set<Block*>& visited, const StackAddressLeakAnalysisResult& leak,
                            uint32_t& lookaheadCount) {
        if(!store) {
            if(visited.count(&block))
                return true;
            visited.emplace(&block);
        }

        bool isAfterStore = store == nullptr;
        // FIXME: start from store
        for(auto& inst : block.instructions()) {
            if(++lookaheadCount >= maxLookaheadCount) {
                return false;
            }
            if(isAfterStore) {
                if(inst.isBranch()) {
                    // TODO: leak querying by block
                    const auto branch = inst.as<BranchInst>();
                    const auto trueTarget = branch->getTrueTarget();
                    const auto falseTarget = branch->getFalseTarget();
                    auto handleTarget = [&](Block* target) {
                        if(addr->getBlock()) {
                            // addr may be changed
                            if(addr->getBlock() == target || !dom.dominate(addr->getBlock(), target))
                                return false;
                        }
                        return isInvisible(addr, *target, aliasSet, dom, addressSpace, nullptr, visited, leak, lookaheadCount);
                    };
                    if(!handleTarget(trueTarget))
                        return false;
                    if(falseTarget && trueTarget != falseTarget && !handleTarget(falseTarget))
                        return false;
                } else if(inst.getInstID() == InstructionID::Call) {
                    // TODO: store gep?
                    if(addr->isInstruction() && addr->as<Instruction>()->getInstID() == InstructionID::Alloc) {
                        if(leak.mayRead(&inst, addr) || leak.mayModify(&inst, addr))
                            return false;
                    } else {
                        const auto callee = inst.lastOperand();
                        if(auto func = dynamic_cast<Function*>(callee)) {
                            if(!func->attr().hasAttr(FunctionAttribute::NoMemoryRead))
                                return false;
                        } else
                            return false;
                    }
                } else if(inst.getInstID() == InstructionID::Store) {
                    const auto storeAddr = inst.getOperand(0);
                    const auto storeValue = inst.getOperand(1);

                    if(storeValue->getType()->isPointer() && !aliasSet.isDistinct(addr, storeValue))
                        return false;

                    // overrided
                    if(storeAddr == addr) {
                        break;
                    }
                    if(!aliasSet.isDistinct(addr, storeAddr)) {
                        return false;
                    }
                } else if(inst.isTerminator()) {
                    return addressSpace.mustBe(addr, AddressSpaceType::InternalStack);
                } else if(inst.getInstID() == InstructionID::Load) {
                    const auto loadAddr = inst.getOperand(0);
                    if(loadAddr->getType()->isPointer() && !aliasSet.isDistinct(addr, loadAddr))
                        return false;
                }
            } else if(&inst == store) {
                isAfterStore = true;
            }
        }
        return true;
    }

    static bool runOnBlock(Block& block, const AliasAnalysisResult& aliasSet, const DominateAnalysisResult& dom,
                           const PointerAddressSpaceAnalysisResult& addressSpace, const StackAddressLeakAnalysisResult& leak,
                           const PointerBaseAnalysisResult& pointerBase) {
        auto& insts = block.instructions();
        const auto size = insts.size();
        insts.remove_if([&](Instruction* inst) {
            if(inst->getInstID() != InstructionID::Store)
                return false;
            const auto addr = inst->getOperand(0);
            std::unordered_set<Block*> visited;
            uint32_t lookaheadCount = 0;
            return isInvisible(addr, block, aliasSet, dom, addressSpace, inst, visited, leak, lookaheadCount);
        });
        // remove self assign
        SimpleValueAnalysis valueAnalysis{ &block, aliasSet, pointerBase };
        std::unordered_set<Instruction*> removeList;
        for(auto& inst : insts) {
            if(inst.getInstID() == InstructionID::Store) {
                const auto pointer = inst.getOperand(0);
                const auto val = inst.getOperand(1);
                if(valueAnalysis.getLastValue(pointer) == val) {
                    removeList.insert(&inst);
                }
            }
            valueAnalysis.next(&inst);
        }
        insts.remove_if([&](Instruction* inst) { return removeList.count(inst); });
        return insts.size() != size;
    }

    static bool removeStoreOnlyAlloca(Function& func, const PointerBaseAnalysisResult& pointerBase) {
        std::unordered_map<Value*, std::vector<Instruction*>> interested;
        for(auto block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::Store) {
                    auto storeAddr = inst.getOperand(0);
                    auto base = pointerBase.lookup(storeAddr);
                    if(!base)
                        continue;
                    if(auto alloca = dynamic_cast<StackAllocInst*>(base)) {
                        interested[alloca].push_back(&inst);
                    }
                }
            }
        }

        for(auto block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::Store) {
                    if(inst.getOperand(1)->getType()->isPointer())
                        interested.erase(inst.getOperand(1));
                } else if(inst.getInstID() == InstructionID::GetElementPtr) {
                    const auto base = pointerBase.lookup(&inst);
                    if(base && interested.count(base))
                        for(auto user : inst.users())
                            if(user->getInstID() != InstructionID::Store && user->getInstID() != InstructionID::GetElementPtr) {
                                interested.erase(base);
                                break;
                            }
                } else {
                    for(auto operand : inst.operands())
                        if(operand->getType()->isPointer())
                            interested.erase(operand);
                }
            }
        }

        if(interested.empty())
            return false;
        std::unordered_map<Block*, std::unordered_set<Value*>> deletedInstructions;

        for(auto& [alloca, deletedInsts] : interested) {
            // deletedInstructions[alloca->getBlock()].insert(alloca);
            for(auto inst : deletedInsts)
                deletedInstructions[inst->getBlock()].insert(inst);
            std::vector<Instruction*> empty;
            deletedInsts.swap(empty);
        }

        for(auto& [block, insts] : deletedInstructions) {
            if(block == func.entryBlock())
                continue;
            auto& instsRef = insts;
            block->instructions().remove_if([&](Instruction* inst) { return instsRef.count(inst); });
        }
        if(auto iter = deletedInstructions.find(func.entryBlock()); iter != deletedInstructions.end()) {
            auto& instsRef = iter->second;
            iter->first->instructions().remove_if([&](Instruction* inst) { return instsRef.count(inst); });
        }
        return true;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& aliasSet = analysis.get<AliasAnalysis>(func);
        auto& addressSpace = analysis.get<PointerAddressSpaceAnalysis>(func);
        auto& leak = analysis.get<StackAddressLeakAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        auto& pointerBase = analysis.get<PointerBaseAnalysis>(func);

        bool modified = removeStoreOnlyAlloca(func, pointerBase);
        for(auto block : func.blocks()) {
            modified |= runOnBlock(*block, aliasSet, dom, addressSpace, leak, pointerBase);
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "StoreEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(StoreEliminate);

CMMC_NAMESPACE_END

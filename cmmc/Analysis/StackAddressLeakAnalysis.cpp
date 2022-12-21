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

#include <cmmc/Analysis/BlockArgumentAnalysis.hpp>
#include <cmmc/Analysis/PointerAddressSpaceAnalysis.hpp>
#include <cmmc/Analysis/StackAddressLeakAnalysis.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

bool StackAddressLeakAnalysisResult::mayModify(Instruction* callInst, Value* alloc) const {
    if(auto iter = mModifyingCalls.find(alloc); iter != mModifyingCalls.cend())
        return iter->second.count(callInst);
    return false;
}

StackAddressLeakAnalysisResult StackAddressLeakAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    auto& address = analysis.get<PointerAddressSpaceAnalysis>(func);
    auto& blockArgMap = analysis.get<BlockArgumentAnalysis>(func);

    std::vector<Value*> allocs;
    std::vector<Instruction*> calls;
    bool unknownLeak = false;  // TODO: handling leak by store?

    for(auto block : func.blocks()) {
        for(auto inst : block->instructions()) {
            switch(inst->getInstID()) {
                case InstructionID::Call: {
                    auto callee = inst->operands().back();
                    if(auto func = dynamic_cast<Function*>(callee)) {
                        if(func->attr().hasAttr(FunctionAttribute::NoMemoryWrite))
                            break;
                    }
                    calls.push_back(inst);
                } break;
                case InstructionID::Alloc:
                    allocs.push_back(inst);
                    break;
                case InstructionID::Store:
                    if(auto storeValue = inst->getOperand(1);
                       storeValue->getType()->isPointer() && address.mayBe(storeValue, AddressSpaceType::InternalStack)) {
                        unknownLeak = true;
                    }
                    break;
                case InstructionID::PtrToInt:
                    unknownLeak = true;
                    break;
                default:
                    break;
            }
        }
    }

    std::unordered_map<Value*, std::unordered_set<Instruction*>> modifyingCalls;
    for(auto call : calls) {
        for(auto operand : call->operands()) {
            if(operand->getType()->isPointer()) {
                if(auto alloc = blockArgMap.queryRoot(operand); alloc->isInstruction()) {
                    auto allocInst = alloc->as<Instruction>();
                    if(allocInst->getInstID() == InstructionID::Alloc) {
                        modifyingCalls[allocInst].insert(call);
                    } else {
                        if(address.mayBe(allocInst, AddressSpaceType::InternalStack)) {
                            unknownLeak = true;
                            break;
                        }
                    }
                }
            }
        }

        if(unknownLeak)
            break;
    }

    if(unknownLeak) {
        std::unordered_set<Instruction*> callSet{ calls.begin(), calls.end() };
        for(auto alloc : allocs) {
            modifyingCalls[alloc] = callSet;
        }
    }

    return StackAddressLeakAnalysisResult{ std::move(modifyingCalls) };
}

CMMC_NAMESPACE_END

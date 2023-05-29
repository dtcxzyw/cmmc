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
bool StackAddressLeakAnalysisResult::mayRead(Instruction* callInst, Value* alloc) const {
    if(auto iter = mReadingCalls.find(alloc); iter != mReadingCalls.cend())
        return iter->second.count(callInst);
    return false;
}

StackAddressLeakAnalysisResult StackAddressLeakAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    auto& address = analysis.get<PointerAddressSpaceAnalysis>(func);

    std::vector<Value*> allocs;
    std::vector<Instruction*> writeCalls, readCalls;
    bool unknownLeakWrite = false, unknownLeakRead = false;  // TODO: handling leak by store?

    for(auto block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            switch(inst.getInstID()) {
                case InstructionID::Call: {
                    auto callee = inst.operands().back();
                    bool noWrite = false, noRead = false;
                    if(auto calleeFunc = dynamic_cast<Function*>(callee)) {
                        if(calleeFunc->attr().hasAttr(FunctionAttribute::NoMemoryWrite))
                            noWrite = true;
                    }
                    if(auto calleeFunc = dynamic_cast<Function*>(callee)) {
                        if(calleeFunc->attr().hasAttr(FunctionAttribute::NoMemoryRead))
                            noRead = true;
                    }
                    if(!noWrite)
                        writeCalls.push_back(&inst);
                    if(!noRead)
                        readCalls.push_back(&inst);
                } break;
                case InstructionID::Alloc:
                    allocs.push_back(&inst);
                    break;
                case InstructionID::Store:
                    if(auto storeValue = inst.getOperand(1);
                       storeValue->getType()->isPointer() && address.mayBe(storeValue, AddressSpaceType::InternalStack)) {
                        unknownLeakWrite = unknownLeakRead = true;
                    }
                    break;
                case InstructionID::PtrToInt:
                    unknownLeakWrite = unknownLeakRead = true;
                    break;
                default:
                    break;
            }
        }
    }

    std::unordered_map<Value*, std::unordered_set<Instruction*>> modifyingCalls, readingCalls;
    for(auto call : writeCalls) {
        for(auto operand : call->operands()) {
            if(operand->getType()->isPointer()) {
                if(auto alloc = operand; alloc->isInstruction()) {
                    auto allocInst = alloc->as<Instruction>();
                    if(allocInst->getInstID() == InstructionID::Alloc) {
                        modifyingCalls[allocInst].insert(call);
                    } else {
                        if(address.mayBe(allocInst, AddressSpaceType::InternalStack)) {
                            unknownLeakWrite = true;
                            break;
                        }
                    }
                }
            }
        }

        if(unknownLeakWrite)
            break;
    }
    for(auto call : readCalls) {
        for(auto operand : call->operands()) {
            if(operand->getType()->isPointer()) {
                if(auto alloc = operand; alloc->isInstruction()) {
                    auto allocInst = alloc->as<Instruction>();
                    if(allocInst->getInstID() == InstructionID::Alloc) {
                        readingCalls[allocInst].insert(call);
                    } else {
                        if(address.mayBe(allocInst, AddressSpaceType::InternalStack)) {
                            unknownLeakRead = true;
                            break;
                        }
                    }
                }
            }
        }

        if(unknownLeakRead)
            break;
    }

    if(unknownLeakWrite) {
        std::unordered_set<Instruction*> callSet{ writeCalls.begin(), writeCalls.end() };
        for(auto alloc : allocs) {
            modifyingCalls[alloc] = callSet;
        }
    }

    if(unknownLeakRead) {
        std::unordered_set<Instruction*> callSet{ readCalls.begin(), readCalls.end() };
        for(auto alloc : allocs) {
            readingCalls[alloc] = callSet;
        }
    }

    return StackAddressLeakAnalysisResult{ std::move(modifyingCalls), std::move(readingCalls) };
}

CMMC_NAMESPACE_END

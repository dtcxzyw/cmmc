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

#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/PointerAddressSpaceAnalysis.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>

CMMC_NAMESPACE_BEGIN

void PointerAddressSpaceAnalysisResult::addTag(Value* ptr, AddressSpaceType space) {
    assert(!isTagged(ptr));
    mMappings.emplace(ptr, space);
}
bool PointerAddressSpaceAnalysisResult::isTagged(Value* ptr) const {
    return mMappings.count(ptr);
}
AddressSpaceType PointerAddressSpaceAnalysisResult::getAddressSpace(Value* ptr) const {
    return mMappings.at(ptr);
}
bool PointerAddressSpaceAnalysisResult::mayBe(Value* ptr, AddressSpaceType space) const {
    const auto iter = mMappings.find(ptr);
    if(iter != mMappings.cend()) {
        return static_cast<uint32_t>(iter->second) & static_cast<uint32_t>(space);
    }
    return true;
}
bool PointerAddressSpaceAnalysisResult::mustBe(Value* ptr, AddressSpaceType space) const {
    const auto iter = mMappings.find(ptr);
    if(iter != mMappings.cend())
        return iter->second == space;
    return false;
}

PointerAddressSpaceAnalysisResult PointerAddressSpaceAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    auto& dom = analysis.get<DominateAnalysis>(func);
    PointerAddressSpaceAnalysisResult result;

    while(true) {
        bool modified = false;

        auto inheritFrom = [&](Value* src, Value* dst) {
            if(result.isTagged(src)) {
                result.addTag(dst, result.getAddressSpace(src));
                modified = true;
            }
        };
        for(auto block : dom.blocks()) {
            // FIXME
            /*
            for(auto arg : block->args()) {
                if(!arg->getType()->isPointer() || result.isTagged(arg))
                    continue;
                if(const auto target = blockArgRef.query(arg); target)
                    inheritFrom(target, arg);
                else {
                    // TODO: mixed tag
                }
            }*/

            for(auto& inst : block->instructions()) {
                if(!inst.getType()->isPointer() || result.isTagged(&inst))
                    continue;
                switch(inst.getInstID()) {
                    // TODO: value analysis
                    case InstructionID::Load: {
                        break;
                    }
                    case InstructionID::Call: {
                        break;
                    }
                    case InstructionID::Select: {
                        const auto lhs = inst.getOperand(1);
                        const auto rhs = inst.getOperand(2);
                        if(result.isTagged(lhs) && result.isTagged(rhs)) {
                            const auto spaceLhs = result.getAddressSpace(lhs);
                            const auto spaceRhs = result.getAddressSpace(rhs);
                            if(spaceLhs == spaceRhs)
                                result.addTag(&inst, spaceLhs);
                        }
                        break;
                    }
                    case InstructionID::Alloc: {
                        result.addTag(&inst, AddressSpaceType::InternalStack);
                        break;
                    }
                    case InstructionID::GetElementPtr: {
                        const auto base = inst.lastOperand();
                        inheritFrom(base, &inst);
                        break;
                    }
                    case InstructionID::PtrCast: {
                        inheritFrom(inst.getOperand(0), &inst);
                        break;
                    }
                    case InstructionID::IntToPtr: {
                        break;
                    }
                    case InstructionID::Phi: {
                        bool allTagged = true;
                        AddressSpaceType space = AddressSpaceType::InternalStack;
                        for(auto ptr : inst.operands()) {
                            if(!result.isTagged(ptr) || result.getAddressSpace(ptr) != space) {
                                allTagged = false;
                                break;
                            }
                        }
                        if(allTagged)
                            result.addTag(&inst, space);
                        break;
                    }
                    case InstructionID::PtrAdd: {
                        inheritFrom(inst.getOperand(0), &inst);
                        break;
                    }
                    case InstructionID::FunctionPtr: {
                        break;
                    }
                    default: {
                        block->dump(reportError() << "unimplemented inst "sv, HighlightInst{ &inst });
                        reportNotImplemented(CMMC_LOCATION());
                    }
                }
            }
        }

        if(!modified)
            break;
    }
    return result;
}

CMMC_NAMESPACE_END

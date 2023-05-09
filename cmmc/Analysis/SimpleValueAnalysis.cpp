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

#include <cmmc/Analysis/SimpleValueAnalysis.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

SimpleValueAnalysis::SimpleValueAnalysis(Block* block, const AliasAnalysisResult& aliasSet) : mAliasSet{ aliasSet } {
    std::vector<Value*> args;
    for(auto arg : block->getFunction()->args()) {
        if(arg->getType()->isPointer()) {
            args.push_back(arg);
        }
    }

    bool allDistinct = true;

    for(uint32_t idx1 = 0; idx1 < args.size(); ++idx1) {
        for(uint32_t idx2 = idx1 + 1; idx2 < args.size(); ++idx2) {
            if(!aliasSet.isDistinct(args[idx1], args[idx2])) {
                allDistinct = false;
                break;
            }
        }
        if(!allDistinct)
            break;
    }

    if(allDistinct) {
        for(auto arg : args)
            mBasePointer.emplace(arg, arg);
    } else {
        for(auto arg : args)
            mBasePointer.emplace(arg, nullptr);
    }

    const auto entryBlock = block->getFunction()->entryBlock();
    for(auto inst : entryBlock->instructions()) {
        if(inst->getInstID() == InstructionID::Alloc) {
            mBasePointer.emplace(inst, inst);
        } else
            break;
    }
}

static Value* extractConstant(ConstantValue* initialValue, GetElementPtrInst* inst, uint32_t index) {
    if(initialValue) {
        if(index + 1 >= inst->operands().size()) {
            return initialValue;
        }
        auto arr = dynamic_cast<ConstantArray*>(initialValue);
        if(!arr)
            return nullptr;
        const auto operand = inst->getOperand(index);
        MatchContext<Value> matchCtx{ operand, nullptr };
        uintmax_t idx;
        if(uint_(idx)(matchCtx)) {
            auto& values = arr->values();
            if(idx < values.size()) {
                return extractConstant(values[idx], inst, index + 1);
            }
            return extractConstant(nullptr, inst, index + 1);
        }
        return nullptr;
    }

    const auto pointee = inst->getType()->as<PointerType>()->getPointee();
    if(pointee->isInteger()) {
        return ConstantInteger::get(pointee, 0);
    }
    if(pointee->isFloatingPoint()) {
        return make<ConstantFloatingPoint>(pointee, 0.0);
    }
    reportUnreachable(CMMC_LOCATION());
}

void SimpleValueAnalysis::next(Instruction* inst) {
    // inst->dump(std::cerr);
    // std::cerr << std::endl;

    const auto invalidate = [&](std::unordered_map<Value*, Value*>& lastValue, Value* addr) {
        std::vector<Value*> outdated;
        for(auto [ptr, val] : lastValue) {
            CMMC_UNUSED(val);
            if(ptr != addr && !mAliasSet.isDistinct(ptr, addr))
                outdated.push_back(ptr);
        }
        for(auto key : outdated) {
            /*
            std::cerr << "invalidate ";
            key->dumpAsOperand(std::cerr);
            std::cerr << " -> ";
            if(lastValue[key])
                lastValue[key]->dumpAsOperand(std::cerr);
            std::cerr << std::endl;
            */
            lastValue.erase(key);
        }
    };
    const auto replace = [&](std::unordered_map<Value*, Value*>& lastValue, Value* addr, Value* val, bool forceReplace) {
        auto& ref = lastValue[addr];
        if(!forceReplace && ref)
            return;

        ref = val;
    };

    const auto update = [&](Value* base, Value* addr, Value* val, bool forceReplace) {
        if(base == nullptr) {
            for(auto& [rhsBase, values] : mLastValue) {
                if(rhsBase != nullptr && mAliasSet.isDistinct(rhsBase, addr))
                    continue;
                invalidate(values, addr);
            }
            replace(mLastValue[nullptr], addr, val, forceReplace);
        } else {
            auto& lastValue = mLastValue[base];
            invalidate(lastValue, addr);
            invalidate(mLastValue[nullptr], addr);
            replace(lastValue, addr, val, forceReplace);
        }
    };

    // globals
    for(auto operand : inst->operands())
        if(operand->isGlobal() && operand->getType()->isPointer()) {
            mBasePointer.emplace(operand, operand);
            // read-only globals
            const auto var = operand->as<GlobalVariable>();
            if(var->attr().hasAttr(GlobalVariableAttribute::ReadOnly) && var->initialValue()) {
                mLastValue[operand].emplace(operand, var->initialValue());
            }
        }

    switch(inst->getInstID()) {
        case InstructionID::Load: {
            assert(!inst->getType()->isArray());
            const auto addr = inst->getOperand(0);
            const auto base = mBasePointer.find(addr);
            if(base != mBasePointer.cend())
                update(base->second, addr, inst, false);

            if(inst->getType()->isPointer())
                mBasePointer.emplace(inst, nullptr);
        } break;
        case InstructionID::Store: {
            const auto addr = inst->getOperand(0);
            const auto base = mBasePointer.find(addr);
            if(base != mBasePointer.cend())
                update(base->second, addr, inst->getOperand(1), true);
            else
                mLastValue.clear();  // discard all cached values
        } break;
        case InstructionID::Call: {
            const auto callee = inst->operands().back();
            if(auto func = dynamic_cast<Function*>(callee)) {
                if(!func->attr().hasAttr(FunctionAttribute::NoMemoryWrite))
                    mLastValue.clear();  // discard all cached values
            } else {
                mLastValue.clear();  // discard all cached values
            }
        } break;
        case InstructionID::GetElementPtr: {
            const auto root = inst->operands().back();
            if(const auto iter = mBasePointer.find(root); iter != mBasePointer.cend())
                mBasePointer.emplace(inst, iter->second);
            else
                mBasePointer.emplace(inst, nullptr);
            MatchContext<Value> matchCtx{ inst->getOperand(0), nullptr };
            if(inst->getType()->as<PointerType>()->getPointee()->isPrimitive() && cuint_(0)(matchCtx)) {
                if(const auto globalVar = dynamic_cast<GlobalVariable*>(root);
                   globalVar && globalVar->attr().hasAttr(GlobalVariableAttribute::ReadOnly)) {
                    const auto initialValue = globalVar->initialValue();
                    auto value = extractConstant(initialValue, inst->as<GetElementPtrInst>(), 1);
                    if(value) {
                        auto& lastValue = mLastValue[mBasePointer[inst]];
                        lastValue[inst] = value;
                    }
                }
            }
        } break;
        default: {
            if(inst->getType()->isPointer())
                mBasePointer.emplace(inst, nullptr);
        } break;
    }
}

Value* SimpleValueAnalysis::getLastValue(Value* pointer) const {
    const auto iter = mBasePointer.find(pointer);
    if(iter == mBasePointer.cend())
        return nullptr;
    const auto it = mLastValue.find(iter->second);
    if(it == mLastValue.cend())
        return nullptr;
    const auto val = it->second.find(pointer);
    return val == it->second.cend() ? nullptr : val->second;
}

CMMC_NAMESPACE_END

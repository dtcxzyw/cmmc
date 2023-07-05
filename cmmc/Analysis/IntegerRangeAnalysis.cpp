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

#include <cmmc/Analysis/IntegerRangeAnalysis.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cstdint>
#include <limits>
#include <optional>
#include <queue>

CMMC_NAMESPACE_BEGIN

IntegerRange::IntegerRange(ConstantInteger* integer) {
    assert(integer->getType()->as<IntegerType>()->getBitwidth() == 32);
    const auto sval = integer->getSignExtended();
    const auto zval = integer->getZeroExtended();
    setUnsignedRange(zval, zval);
    setSignedRange(sval, sval);
    setKnownBits(static_cast<uint32_t>(~zval), static_cast<uint32_t>(zval));
}

IntegerRange IntegerRangeAnalysisResult::query(Value* val) const {
    if(auto cint = dynamic_cast<ConstantInteger*>(val))
        return IntegerRange(cint);
    if(auto iter = mRanges.find(val); iter != mRanges.cend())
        return iter->second;
    return IntegerRange{};
}

IntegerRangeAnalysisResult IntegerRangeAnalysis::run(Function& func, AnalysisPassManager&) {
    std::unordered_map<Value*, IntegerRange> ret;

    constexpr uint32_t maxEnqueueCount = 32;
    std::unordered_map<Value*, uint32_t> enqueueCount;
    std::unordered_set<Instruction*> inQueue;
    std::queue<Instruction*> q;
    const auto i32 = IntegerType::get(32);
    for(auto block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            if(inst.getType()->isSame(i32)) {
                ret[&inst] = IntegerRange{};
                q.push(&inst);
                inQueue.insert(&inst);
            }
        }
    }

    auto getRange = [&](Value* val) {
        if(auto cint = dynamic_cast<ConstantInteger*>(val))
            return IntegerRange(cint);
        if(auto iter = ret.find(val); iter != ret.cend())
            return iter->second;
        return IntegerRange{};
    };
    auto update = [&](Instruction* inst, const IntegerRange& newRange) {
        auto& range = ret[inst];
        const auto intersection = range.intersectSet(newRange);
        if(range != intersection) {
            range = intersection;
            for(auto user : inst->users()) {
                if(user->getType()->isSame(i32) && !inQueue.count(user) && ++enqueueCount[user] < maxEnqueueCount) {
                    q.push(user);
                    inQueue.insert(user);
                }
            }
        }
    };

    // TODO: gep range hint

    while(!q.empty()) {
        auto* inst = q.front();
        q.pop();
        inQueue.erase(inst);
        auto getOperandRange = [&](uint32_t idx) { return getRange(inst->getOperand(idx)); };

        switch(inst->getInstID()) {
            case InstructionID::Add: {
                update(inst, getOperandRange(0) + getOperandRange(1));
                break;
            }
            case InstructionID::Sub: {
                update(inst, getOperandRange(0) - getOperandRange(1));
                break;
            }
            case InstructionID::Mul: {
                update(inst, getOperandRange(0) * getOperandRange(1));
                break;
            }
            case InstructionID::SDiv: {
                update(inst, getOperandRange(0).sdiv(getOperandRange(1)));
                break;
            }
            case InstructionID::UDiv: {
                update(inst, getOperandRange(0).udiv(getOperandRange(1)));
                break;
            }
            case InstructionID::SRem: {
                update(inst, getOperandRange(0).srem(getOperandRange(1)));
                break;
            }
            case InstructionID::URem: {
                update(inst, getOperandRange(0).urem(getOperandRange(1)));
                break;
            }
            case InstructionID::And: {
                update(inst, getOperandRange(0) & getOperandRange(1));
                break;
            }
            case InstructionID::Or: {
                update(inst, getOperandRange(0) | getOperandRange(1));
                break;
            }
            case InstructionID::Xor: {
                update(inst, getOperandRange(0) ^ getOperandRange(1));
                break;
            }
            case InstructionID::Shl: {
                update(inst, getOperandRange(0).shl(getOperandRange(1)));
                break;
            }
            case InstructionID::LShr: {
                update(inst, getOperandRange(0).lshr(getOperandRange(1)));
                break;
            }
            case InstructionID::AShr: {
                update(inst, getOperandRange(0).ashr(getOperandRange(1)));
                break;
            }
            case InstructionID::SMax: {
                update(inst, getOperandRange(0).smax(getOperandRange(1)));
                break;
            }
            case InstructionID::SMin: {
                update(inst, getOperandRange(0).smin(getOperandRange(1)));
                break;
            }
            case InstructionID::Abs: {
                update(inst, getOperandRange(0).abs());
                break;
            }
            case InstructionID::Neg: {
                update(inst, getOperandRange(0).neg());
                break;
            }
            case InstructionID::Select: {
                update(inst, getOperandRange(1).unionSet(getOperandRange(2)));
                break;
            }
            case InstructionID::Phi: {
                std::optional<IntegerRange> range;
                for(auto operand : inst->operands()) {
                    const auto subRange = getRange(operand);
                    if(range)
                        *range = range->unionSet(subRange);
                    else
                        range = subRange;
                }

                if(range.has_value())
                    update(inst, *range);

                break;
            }
            case InstructionID::SignedTrunc:
            case InstructionID::UnsignedTrunc: {
                update(inst, getOperandRange(0));
                break;
            }
            case InstructionID::SExt: {
                const auto width = inst->getOperand(0)->getType()->as<IntegerType>()->getBitwidth();
                const auto maxv = (1LL << (width - 1)) - 1;
                const auto minv = -maxv - 1;
                IntegerRange range;
                range.setSignedRange(minv, maxv);
                range.sync();

                update(inst, range);
                break;
            }
            case InstructionID::ZExt: {
                const auto width = inst->getOperand(0)->getType()->as<IntegerType>()->getBitwidth();
                const auto maxv = (1ULL << width) - 1;
                IntegerRange range;
                range.setUnsignedRange(0, maxv);
                range.sync();

                update(inst, range);
                break;
            }
            default:
                break;
        }
    }

    return IntegerRangeAnalysisResult{ std::move(ret) };
}

CMMC_NAMESPACE_END

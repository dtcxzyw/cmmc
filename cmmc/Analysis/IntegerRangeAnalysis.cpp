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
#include <cmmc/Analysis/IntegerRange.hpp>
#include <cmmc/Analysis/IntegerRangeAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cstdint>
#include <iostream>
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

IntegerRange IntegerRangeAnalysisResult::query(Value* val, const DominateAnalysisResult& dom, Instruction* ctx,
                                               uint32_t depth) const {
    if(auto cint = dynamic_cast<ConstantInteger*>(val))
        return IntegerRange(cint);
    IntegerRange range;
    if(auto iter = mRanges.find(val); iter != mRanges.cend()) {
        range = iter->second;
    }
    if(ctx && ctx->getBlock() != val->getBlock()) {
        if(auto iter = mContextualRanges.find(val); iter != mContextualRanges.cend()) {
            auto& ranges = iter->second;
            if(ranges.size() <= depth) {
                for(auto& [block, r] : ranges) {
                    if(dom.dominate(block, ctx->getBlock())) {
                        range = range.intersectSet(r);
                    }
                }
            } else {
                auto block = ctx->getBlock();
                for(uint32_t k = 0; k < depth; ++k) {
                    if(auto it = ranges.find(block); it != ranges.end())
                        range = range.intersectSet(it->second);
                    block = dom.parent(block);
                    if(!block)
                        continue;
                }
            }
        }
    }
    return range;
}

IntegerRangeAnalysisResult IntegerRangeAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    auto& dom = analysis.get<DominateAnalysis>(func);
    IntegerRangeAnalysisResult ret;
    auto& ranges = ret.storage();
    auto& contextualRanges = ret.contextualStorage();

    constexpr uint32_t maxEnqueueCount = 32;
    std::unordered_map<Value*, uint32_t> enqueueCount;
    std::unordered_set<Instruction*> inQueue;
    std::queue<Instruction*> q;
    const auto i32 = IntegerType::get(32);
    for(auto block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            if(inst.getType()->isSame(i32)) {
                ranges[&inst] = IntegerRange{};
            }
            q.push(&inst);
            inQueue.insert(&inst);
        }
    }

    constexpr uint32_t depth = 8;
    auto getRange = [&](Value* val, Instruction* ctx) { return ret.query(val, dom, ctx, depth); };
    auto update = [&](Instruction* inst, const IntegerRange& newRange) {
        if(!inst->getType()->isSame(i32))
            return;
        auto& range = ranges[inst];

        // inst->dumpInst(std::cerr);
        // std::cerr << " -> \n";
        // newRange.print(std::cerr);

        const auto intersection = range.intersectSet(newRange);
        if(range != intersection) {
            range = intersection;
            for(auto user : inst->users()) {
                if(!inQueue.count(user) && ++enqueueCount[user] < maxEnqueueCount) {
                    q.push(user);
                    inQueue.insert(user);
                }
            }
        }
    };

    auto updateContextual = [&](Value* value, const Instruction* ctx, const IntegerRange& newRange) {
        if(!value->getType()->isSame(i32))
            return;
        if(!value->is<TrackableValue>())
            return;
        const auto block = ctx->getBlock();
        if(value->getBlock() == block) {
            update(value->as<Instruction>(), newRange);
            return;
        }

        auto& range = contextualRanges[value][block];
        const auto intersection = range.intersectSet(newRange);
        if(range != intersection) {
            range = intersection;
            const auto trackedValue = value->as<TrackableValue>();
            for(auto user : trackedValue->users()) {
                if(dom.dominate(block, user->getBlock()) && !inQueue.count(user) && ++enqueueCount[user] < maxEnqueueCount) {
                    q.push(user);
                    inQueue.insert(user);
                }
            }
        }
    };

    while(!q.empty()) {
        auto* inst = q.front();
        q.pop();
        inQueue.erase(inst);

        auto getOperandRange = [&](uint32_t idx) { return getRange(inst->getOperand(idx), inst); };

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
                // TODO: contextual
                break;
            }
            case InstructionID::UDiv: {
                update(inst, getOperandRange(0).udiv(getOperandRange(1)));
                // TODO: contextual
                break;
            }
            case InstructionID::SRem: {
                update(inst, getOperandRange(0).srem(getOperandRange(1)));
                // TODO: contextual
                if(getOperandRange(1).isPositive() && getRange(inst, inst).isNonNegative()) {
                    updateContextual(inst->getOperand(0), inst, IntegerRange::getNonNegative());
                }
                break;
            }
            case InstructionID::URem: {
                update(inst, getOperandRange(0).urem(getOperandRange(1)));
                // TODO: contextual
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
                    const auto subRange = getRange(operand, inst);
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
            case InstructionID::GetElementPtr: {
                auto type = inst->lastOperand()->getType();
                for(auto arg : inst->arguments()) {
                    if(arg->getType()->isInteger() && type->isArray() && !arg->isConstant()) {
                        IntegerRange range;
                        const auto arrType = type->as<ArrayType>();
                        const auto size = arrType->getElementCount();
                        range.setSignedRange(static_cast<int32_t>(0), static_cast<int32_t>(size - 1));
                        range.setUnsignedRange(static_cast<uint32_t>(0), static_cast<uint32_t>(size - 1));
                        range.sync();

                        for(auto user : inst->users())
                            if(user->getInstID() == InstructionID::Load || user->getInstID() == InstructionID::Store)
                                updateContextual(arg, user, range);
                    }

                    if(type->isPointer()) {
                        type = type->as<PointerType>()->getPointee();
                    } else if(type->isArray()) {
                        type = type->as<ArrayType>()->getElementType();
                    } else {
                        const auto offset = arg->as<ConstantOffset>();
                        type = offset->base()->fields()[offset->index()].type;
                    }
                }
                break;
            }
            default:
                break;
        }
    }

    return ret;
}

CMMC_NAMESPACE_END

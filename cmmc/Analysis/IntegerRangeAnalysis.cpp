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

#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/IntegerRange.hpp>
#include <cmmc/Analysis/IntegerRangeAnalysis.hpp>
#include <cmmc/Analysis/SCEVAnalysis.hpp>
#include <cmmc/Analysis/SCEVExpr.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
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
    if(ctx) {
        if(auto iter = mInstContextualRanges.find(val); iter != mInstContextualRanges.cend()) {
            auto& ranges = iter->second;
            if(auto it = ranges.find(ctx); it != ranges.end())
                range = range.intersectSet(it->second);
        }
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
    auto& cfg = analysis.get<CFGAnalysis>(func);
    auto& scev = analysis.get<SCEVAnalysis>(func);
    IntegerRangeAnalysisResult ret;
    auto& ranges = ret.storage();
    auto& contextualRanges = ret.contextualStorage();
    auto& instContextualRanges = ret.instContextualStorage();

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

    auto updateContextual = [&](Value* value, Block* ctxBlock, const IntegerRange& newRange) {
        if(!value->getType()->isSame(i32))
            return;
        if(newRange.isFull())
            return;
        if(!value->is<TrackableValue>())
            return;
        if(value->getBlock() == ctxBlock) {
            update(value->as<Instruction>(), newRange);
            return;
        }

        // value->dump(std::cerr, Noop{});
        // std::cerr << " -> \n";
        // newRange.print(std::cerr);

        auto& range = contextualRanges[value][ctxBlock];
        const auto intersection = range.intersectSet(newRange);
        if(range != intersection) {
            range = intersection;
            const auto trackedValue = value->as<TrackableValue>();
            for(auto user : trackedValue->users()) {
                if(dom.dominate(ctxBlock, user->getBlock()) && !inQueue.count(user) && ++enqueueCount[user] < maxEnqueueCount) {
                    q.push(user);
                    inQueue.insert(user);
                }
            }
        }
    };

    auto updateInstContextual = [&](Value* value, Instruction* ctx, const IntegerRange& newRange) {
        // std::cerr << "ctx: ";
        // ctx->dumpInst(std::cerr);
        // std::cerr << ' ';
        // value->dumpAsOperand(std::cerr);
        // std::cerr << " -> \n";
        // newRange.print(std::cerr);

        auto& range = instContextualRanges[value][ctx];
        const auto intersection = range.intersectSet(newRange);
        if(range != intersection) {
            range = intersection;
            if(!inQueue.count(ctx) && ++enqueueCount[ctx] < maxEnqueueCount) {
                q.push(ctx);
                inQueue.insert(ctx);
            }
        }
    };

    while(!q.empty()) {
        auto* inst = q.front();
        q.pop();
        inQueue.erase(inst);

        if(auto scevInfo = scev.query(inst)) {
            // auto getLoopTripCount = [&](const Loop* loop) -> std::optional<IntegerRange> {
            //     if(loop->step == 1) {
            //         return getRange(loop->bound, inst) - getRange(loop->initial, inst);
            //     }
            //     return std::nullopt;
            // };

            switch(scevInfo->instID) {
                case SCEVInstID::Constant: {
                    update(inst, IntegerRange{ scevInfo->constant });
                    break;
                }
                case SCEVInstID::AddRec: {
                    // FIXME
                    // if(scevInfo->operands.size() == 2 && scevInfo->loop) {
                    //     const auto initial = scevInfo->operands[0];
                    //     const auto step = scevInfo->operands[1];
                    //     // FIXME
                    //     if(initial->instID == SCEVInstID::Constant && step->instID == SCEVInstID::Constant) {
                    //         if(auto range = getLoopTripCount(scevInfo->loop); range.has_value()) {
                    //             const auto end = IntegerRange{ initial->constant } + IntegerRange{ step->constant } * *range;
                    //             if(end.isNoSignedOverflow()) {
                    //                 auto addRecRange = IntegerRange{ initial->constant }.unionSet(end);
                    //                 addRecRange.setKnownBits(0, 0);
                    //                 addRecRange.setUnsignedRange(0, std::numeric_limits<uint32_t>::max());
                    //                 addRecRange.sync();

                    //                 inst->dumpInst(std::cerr);
                    //                 std::cerr << " ->\n";
                    //                 addRecRange.print(std::cerr);
                    //                 std::cerr << '\n';
                    //                 update(inst, addRecRange);
                    //             }
                    //         }
                    //     }
                    // }
                    if(scevInfo->operands.size() == 2) {
                        const auto initial = scevInfo->operands[0];
                        const auto step = scevInfo->operands[1];
                        if(initial->instID == SCEVInstID::Constant && step->instID == SCEVInstID::Constant &&
                           (std::abs(step->constant) < maxStep) &&
                           (std::numeric_limits<int32_t>::min() <= initial->constant &&
                            initial->constant <= std::numeric_limits<int32_t>::max())) {
                            IntegerRange addRecRange;
                            if(step->constant > 0)
                                addRecRange.setSignedRange(initial->constant, std::numeric_limits<int32_t>::max());
                            else
                                addRecRange.setSignedRange(std::numeric_limits<int32_t>::min(), initial->constant);
                            addRecRange.sync();

                            // inst->dumpInst(std::cerr);
                            // std::cerr << " ->\n";
                            // addRecRange.print(std::cerr);
                            // std::cerr << '\n';
                            update(inst, addRecRange);
                        }
                    }
                    break;
                }
            }
        }

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
                // if(getOperandRange(1).isPositive()) {
                //     if(getRange(inst, inst).isNonNegative()) {
                //         IntegerRange range;
                //         range.setSignedRange(1 - getOperandRange(1).maxSignedValue(), std::numeric_limits<int32_t>::max());
                //         range.sync();
                //         updateContextual(inst->getOperand(0), inst->getBlock(), range);
                //     } else if(getRange(inst, inst).isPositive()) {
                //         IntegerRange range;
                //         range.setSignedRange(getOperandRange(1).minSignedValue(), std::numeric_limits<int32_t>::max());
                //         range.sync();
                //         updateContextual(inst->getOperand(0), inst->getBlock(), range);
                //     }
                // }
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
                    updateContextual(inst->getOperand(0), inst->getBlock(), IntegerRange::getNonNegative());
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
                                updateContextual(arg, user->getBlock(), range);
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
            case InstructionID::Call: {
                if(inst->getType()->isSame(i32)) {
                    const auto& name = inst->lastOperand()->as<Function>()->getSymbol();
                    if(name.prefix() == "getch") {
                        IntegerRange r;
                        r.setSignedRange(-1, 127);
                        r.sync();
                        update(inst, r);
                    } else if(name.prefix() == "getarray" || name.prefix() == "getfarray") {
                        update(inst, IntegerRange::getNonNegative());
                    } else if(name.prefix() == "putarray" || name.prefix() == "putfarray") {
                        updateContextual(inst->getOperand(0), inst->getBlock(), IntegerRange::getNonNegative());
                    }
                }
                break;
            }
            case InstructionID::ICmp: {
                const auto setCompareContextual = [&](Value* lhs, Value* rhs, CompareOp op, auto updateFunc) {
                    const auto lhsRange = getRange(lhs, inst);
                    const auto rhsRange = getRange(rhs, inst);

                    switch(op) {
                        case CompareOp::ICmpEqual: {
                            updateFunc(lhs, rhsRange);
                            updateFunc(rhs, lhsRange);
                            break;
                        }
                        case CompareOp::ICmpNotEqual: {
                            break;
                        }
                        case CompareOp::ICmpSignedLessThan: {
                            IntegerRange lhsNewRange;
                            lhsNewRange.setSignedRange(std::numeric_limits<int32_t>::min(), rhsRange.maxSignedValue() - 1);
                            lhsNewRange.sync();
                            updateFunc(lhs, lhsNewRange);

                            IntegerRange rhsNewRange;
                            rhsNewRange.setSignedRange(lhsRange.minSignedValue() + 1, std::numeric_limits<int32_t>::max());
                            rhsNewRange.sync();
                            updateFunc(rhs, rhsNewRange);
                            break;
                        }
                        case CompareOp::ICmpSignedLessEqual: {
                            IntegerRange lhsNewRange;
                            lhsNewRange.setSignedRange(std::numeric_limits<int32_t>::min(), rhsRange.maxSignedValue());
                            lhsNewRange.sync();
                            updateFunc(lhs, lhsNewRange);

                            IntegerRange rhsNewRange;
                            rhsNewRange.setSignedRange(lhsRange.minSignedValue(), std::numeric_limits<int32_t>::max());
                            rhsNewRange.sync();
                            updateFunc(rhs, rhsNewRange);
                            break;
                        }
                        case CompareOp::ICmpSignedGreaterThan: {
                            IntegerRange lhsNewRange;
                            lhsNewRange.setSignedRange(rhsRange.minSignedValue() + 1, std::numeric_limits<int32_t>::max());
                            lhsNewRange.sync();
                            updateFunc(lhs, lhsNewRange);

                            IntegerRange rhsNewRange;
                            rhsNewRange.setSignedRange(std::numeric_limits<int32_t>::min(), lhsRange.maxSignedValue() - 1);
                            rhsNewRange.sync();
                            updateFunc(rhs, rhsNewRange);
                            break;
                        }
                        case CompareOp::ICmpSignedGreaterEqual: {
                            IntegerRange lhsNewRange;
                            lhsNewRange.setSignedRange(rhsRange.minSignedValue(), std::numeric_limits<int32_t>::max());
                            lhsNewRange.sync();
                            updateFunc(lhs, lhsNewRange);

                            IntegerRange rhsNewRange;
                            rhsNewRange.setSignedRange(std::numeric_limits<int32_t>::min(), lhsRange.maxSignedValue());
                            rhsNewRange.sync();
                            updateFunc(rhs, rhsNewRange);
                            break;
                        }
                        case CompareOp::ICmpUnsignedLessThan: {
                            IntegerRange lhsNewRange;
                            lhsNewRange.setUnsignedRange(std::numeric_limits<uint32_t>::min(), rhsRange.maxUnsignedValue() - 1);
                            lhsNewRange.sync();
                            updateFunc(lhs, lhsNewRange);

                            IntegerRange rhsNewRange;
                            rhsNewRange.setUnsignedRange(lhsRange.minUnsignedValue() + 1, std::numeric_limits<uint32_t>::max());
                            rhsNewRange.sync();
                            updateFunc(rhs, rhsNewRange);
                            break;
                        }
                        case CompareOp::ICmpUnsignedLessEqual: {
                            IntegerRange lhsNewRange;
                            lhsNewRange.setUnsignedRange(std::numeric_limits<uint32_t>::min(), rhsRange.maxUnsignedValue());
                            lhsNewRange.sync();
                            updateFunc(lhs, lhsNewRange);

                            IntegerRange rhsNewRange;
                            rhsNewRange.setUnsignedRange(lhsRange.minUnsignedValue(), std::numeric_limits<uint32_t>::max());
                            rhsNewRange.sync();
                            updateFunc(rhs, rhsNewRange);
                            break;
                        }
                        case CompareOp::ICmpUnsignedGreaterThan: {
                            IntegerRange lhsNewRange;
                            lhsNewRange.setUnsignedRange(rhsRange.minUnsignedValue() + 1, std::numeric_limits<uint32_t>::max());
                            lhsNewRange.sync();
                            updateFunc(lhs, lhsNewRange);

                            IntegerRange rhsNewRange;
                            rhsNewRange.setUnsignedRange(std::numeric_limits<uint32_t>::min(), lhsRange.maxUnsignedValue() - 1);
                            rhsNewRange.sync();
                            updateFunc(rhs, rhsNewRange);
                            break;
                        }
                        case CompareOp::ICmpUnsignedGreaterEqual: {
                            IntegerRange lhsNewRange;
                            lhsNewRange.setUnsignedRange(rhsRange.minUnsignedValue(), std::numeric_limits<uint32_t>::max());
                            lhsNewRange.sync();
                            updateFunc(lhs, lhsNewRange);

                            IntegerRange rhsNewRange;
                            rhsNewRange.setUnsignedRange(std::numeric_limits<uint32_t>::min(), lhsRange.maxUnsignedValue());
                            rhsNewRange.sync();
                            updateFunc(rhs, rhsNewRange);
                            break;
                        }
                        default:
                            reportUnreachable(CMMC_LOCATION());
                    }
                };

                const auto op = inst->as<CompareInst>()->getOp();

                for(auto user : inst->users()) {
                    if(user->getInstID() == InstructionID::ConditionalBranch) {
                        const auto branch = user->as<BranchInst>();
                        const auto trueTarget = branch->getTrueTarget();
                        const auto falseTarget = branch->getFalseTarget();
                        if(trueTarget == falseTarget)
                            continue;

                        const auto block = branch->getBlock();
                        if(block != trueTarget && dom.dominate(block, trueTarget) && cfg.predecessors(trueTarget).size() == 1) {
                            setCompareContextual(
                                inst->getOperand(0), inst->getOperand(1), op,
                                [&](Value* val, const IntegerRange& newRange) { updateContextual(val, trueTarget, newRange); });
                        }
                        if(block != falseTarget && dom.dominate(block, falseTarget) &&
                           cfg.predecessors(falseTarget).size() == 1) {
                            setCompareContextual(
                                inst->getOperand(0), inst->getOperand(1), getInvertedOp(op),
                                [&](Value* val, const IntegerRange& newRange) { updateContextual(val, falseTarget, newRange); });
                        }
                    } else if(user->getInstID() == InstructionID::Select && user->getOperand(0) == inst &&
                              user->getType()->isSame(i32)) {
                        const auto trueVal = user->getOperand(1);
                        const auto falseVal = user->getOperand(2);
                        if(trueVal == falseVal)
                            continue;
                        auto updateSelectInstContextual = [&](Value* baseVal, Value* val, const IntegerRange& newRange) {
                            Value* v2;
                            MatchContext<Value> ctx{ baseVal };
                            if(baseVal == val)
                                updateInstContextual(baseVal, user, newRange);
                            else if(add(exactly(val), any(v2))(ctx)) {
                                updateInstContextual(baseVal, user, newRange + getRange(v2, user));
                            } else if(sub(exactly(val), any(v2))(ctx)) {
                                updateInstContextual(baseVal, user, newRange - getRange(v2, user));
                            } else if(sub(any(v2), exactly(val))(ctx)) {
                                updateInstContextual(baseVal, user, getRange(v2, user) - newRange);
                            }
                        };

                        setCompareContextual(inst->getOperand(0), inst->getOperand(1), op,
                                             [&](Value* val, const IntegerRange& newRange) {
                                                 updateSelectInstContextual(trueVal, val, newRange);
                                             });
                        setCompareContextual(inst->getOperand(0), inst->getOperand(1), getInvertedOp(op),
                                             [&](Value* val, const IntegerRange& newRange) {
                                                 updateSelectInstContextual(falseVal, val, newRange);
                                             });
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

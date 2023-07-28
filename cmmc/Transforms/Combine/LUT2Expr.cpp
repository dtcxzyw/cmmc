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

#include <cmmc/Analysis/AliasAnalysis.hpp>
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/PointerBaseAnalysis.hpp>
#include <cmmc/Analysis/SimpleValueAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/StaticReflection.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iostream>
#include <optional>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

enum class LUTExprType {
    Unknown = 0,
    Constant,  // lut[i] = lut[0]
    Identity,  // lut[i] = i
    Shl,       // lut[i] = lut[0] << i
    Add,       // lut[i] = lut[0] + i
    Sub,       // lut[i] = lut[0] - i
    Dirty
};

struct LUTStorage final {
    std::unordered_map<uint32_t, Value*> idxMap;
    LUTExprType type = LUTExprType::Dirty;

    static bool matchConstant(const std::unordered_map<uint32_t, Value*>& lut) {
        auto common = lut.begin()->second;
        for(auto [k, v] : lut) {
            CMMC_UNUSED(k);
            if(common != v)
                return false;
        }
        return true;
    }

    static bool matchIdentity(const std::unordered_map<uint32_t, intmax_t>& lut) {
        for(auto [k, v] : lut) {
            if(static_cast<intmax_t>(k) != v)
                return false;
        }
        return true;
    }

    static bool matchShl(const std::unordered_map<uint32_t, intmax_t>& lut) {
        const auto base = lut.at(0);
        for(auto [k, v] : lut) {
            if(v != (base << k))
                return false;
        }

        return true;
    }

    static bool matchAdd(const std::unordered_map<uint32_t, intmax_t>& lut) {
        const auto base = lut.at(0);
        for(auto [k, v] : lut) {
            if(v != base + static_cast<intmax_t>(k))
                return false;
        }

        return true;
    }

    static bool matchSub(const std::unordered_map<uint32_t, intmax_t>& lut) {
        const auto base = lut.at(0);
        for(auto [k, v] : lut) {
            if(v != base - static_cast<intmax_t>(k))
                return false;
        }

        return true;
    }

    void invalidate() {
        type = LUTExprType::Dirty;
    }

    LUTExprType matchExpr() {
        if(idxMap.empty())
            return LUTExprType::Unknown;

        if(matchConstant(idxMap))
            return LUTExprType::Constant;

        std::unordered_map<uint32_t, intmax_t> lutVal;
        for(auto [k, v] : idxMap)
            if(v->is<ConstantInteger>()) {
                lutVal[k] = v->as<ConstantInteger>()->getSignExtended();
            } else
                return LUTExprType::Unknown;

        if(matchIdentity(lutVal))
            return LUTExprType::Identity;

        if(matchAdd(lutVal))
            return LUTExprType::Add;

        if(matchSub(lutVal))
            return LUTExprType::Sub;

        if(matchShl(lutVal))
            return LUTExprType::Shl;

        return LUTExprType::Unknown;
    }

    LUTExprType query(uint32_t size) {
        if(idxMap.size() != size)
            return LUTExprType::Unknown;
        if(type == LUTExprType::Dirty) {
            type = matchExpr();
        }
        return type;
    }
};

class LUT2Expr final : public TransformPass<Function> {
    static std::optional<intmax_t> getConstantIndex(const Value* addr) {
        if(addr->is<GlobalVariable>())
            return 0;
        if(addr->is<GetElementPtrInst>()) {
            const auto gep = addr->as<GetElementPtrInst>();
            if(gep->operands().size() == 2) {
                const auto idx = gep->getOperand(0);
                if(idx->is<ConstantInteger>()) {
                    const auto base = gep->getOperand(1);
                    if(auto baseIndex = getConstantIndex(base))
                        return *baseIndex + static_cast<intmax_t>(idx->as<ConstantInteger>()->getSignExtended());
                }
            } else {
                const auto idx = gep->arguments().back();
                if(idx->is<ConstantInteger>())
                    return static_cast<intmax_t>(idx->as<ConstantInteger>()->getSignExtended());
            }
        }

        return std::nullopt;
    }

    static std::optional<Value*> getDynamicIndex(const Value* addr, intmax_t& offset) {
        if(addr->is<GetElementPtrInst>()) {
            const auto gep = addr->as<GetElementPtrInst>();
            if(gep->operands().size() == 2) {
                const auto idx = gep->getOperand(0);
                const auto base = gep->getOperand(1);
                if(!idx->isConstant()) {
                    if(auto baseIndex = getConstantIndex(base)) {
                        if(*baseIndex == 0)
                            return idx;
                    }
                } else {
                    offset += static_cast<intmax_t>(idx->as<ConstantInteger>()->getSignExtended());
                    if(auto index = getDynamicIndex(base, offset); index.has_value())
                        return index;
                }
            } else {
                const auto idx = gep->arguments().back();
                if(!idx->isConstant())
                    return idx;
            }
        }

        return std::nullopt;
    }

    static Value* buildPattern(LUTExprType pattern, Value* base, Value* index, IRBuilder& builder) {
        switch(pattern) {
            case LUTExprType::Constant:
                return base;
            case LUTExprType::Identity:
                return index;
            case LUTExprType::Shl:
                return builder.makeOp<BinaryInst>(InstructionID::Shl, base, index);
            case LUTExprType::Add:
                return builder.makeOp<BinaryInst>(InstructionID::Add, index, base);
            case LUTExprType::Sub:
                return builder.makeOp<BinaryInst>(InstructionID::Sub, base, index);
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }

    using LUT = std::unordered_map<Value*, LUTStorage>;
    static bool runBlock(Block* block, const PointerBaseAnalysisResult& base, const std::unordered_map<Value*, uint32_t>& lutAddr,
                         IRBuilder& builder, LUT& lut) {
        bool modified = false;
        for(auto& inst : block->instructions()) {
            if(inst.getInstID() == InstructionID::Load) {
                const auto addr = inst.getOperand(0);
                const auto baseAddr = base.lookup(addr);

                if(auto iter = lut.find(baseAddr); iter != lut.end()) {
                    auto& lutVal = iter->second;
                    auto pattern = lutVal.query(lutAddr.at(baseAddr));
                    if(pattern == LUTExprType::Unknown)
                        continue;
                    // std::cerr << enumName(pattern) << '\n';

                    intmax_t offset = 0;
                    auto index = getDynamicIndex(addr, offset);
                    if(index.has_value() && *index) {
                        builder.setInsertPoint(block, &inst);
                        const auto baseVal = lutVal.idxMap.at(0);
                        if(!baseVal->getType()->isSame((*index)->getType()))
                            continue;

                        if(offset != 0) {
                            index = builder.makeOp<BinaryInst>(InstructionID::Add, *index,
                                                               ConstantInteger::get((*index)->getType(), offset));
                        }

                        if(auto val = buildPattern(pattern, baseVal, *index, builder)) {
                            inst.replaceWith(val);
                            modified = true;
                        }
                    }
                }
            } else if(inst.getInstID() == InstructionID::Store) {
                const auto addr = inst.getOperand(0);
                const auto val = inst.getOperand(1);

                const auto baseAddr = base.lookup(addr);
                if(!baseAddr) {
                    // TODO: use alias analysis?
                    lut.clear();
                } else if(lutAddr.count(baseAddr)) {
                    const auto index = getConstantIndex(addr);
                    if(index.has_value()) {
                        auto& ref = lut[baseAddr];
                        ref.idxMap[static_cast<uint32_t>(*index)] = val;
                        ref.invalidate();
                    } else
                        lut.erase(baseAddr);
                }
            } else if(inst.getInstID() == InstructionID::Call) {
                const auto callee = inst.lastOperand();
                if(!callee->as<Function>()->attr().hasAttr(FunctionAttribute::NoMemoryWrite))
                    lut.clear();
            }
        }

        return modified;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        std::unordered_map<Value*, uint32_t> lutAddr;

        auto isPotentialLUT = [](const Type* type) -> std::optional<uint32_t> {
            if(!type->isPointer())
                return std::nullopt;
            auto pointee = type->as<PointerType>()->getPointee();
            if(!pointee->isArray())
                return std::nullopt;
            const auto array = pointee->as<ArrayType>();
            if(array->getElementCount() <= 1024U && array->getElementType()->isInteger()) {
                return array->getElementCount();
            }
            return std::nullopt;
        };

        // for(auto global : analysis.module().globals()) {
        //     if(!global->isFunction()) {
        //         bool usedByFunc = false;
        //         for(auto user : global->users())
        //             if(user->getBlock()->getFunction() == &func) {
        //                 usedByFunc = true;
        //                 break;
        //             }
        //         if(!usedByFunc)
        //             continue;

        //         if(isPotentialLUT(global->getType())) {
        //             lutAddr.insert(global);
        //         }
        //     }
        // }
        for(auto& inst : func.entryBlock()->instructions()) {
            if(inst.getInstID() == InstructionID::Alloc) {
                if(auto size = isPotentialLUT(inst.getType()))
                    lutAddr.emplace(&inst, *size);
            } else
                break;
        }

        if(lutAddr.empty())
            return false;

        auto& pointerBase = analysis.get<PointerBaseAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        auto& cfg = analysis.get<CFGAnalysis>(func);

        IRBuilder builder{ analysis.module().getTarget() };
        std::unordered_map<Block*, LUT> lutCache;
        bool modified = false;
        for(auto block : dom.blocks()) {
            auto& lut = lutCache[block];

            const auto parent = dom.parent(block);
            if(parent && !lutCache[parent].empty()) {
                bool otherPred = false;
                for(auto pred : cfg.predecessors(block))
                    if(pred != parent && pred != block) {
                        otherPred = true;
                        break;
                    }

                if(!otherPred) {
                    lut = lutCache[parent];
                    for(auto& inst : block->instructions()) {
                        switch(inst.getInstID()) {
                            case InstructionID::Call: {
                                auto callee = inst.lastOperand()->as<Function>();
                                if(!callee->attr().hasAttr(FunctionAttribute::NoMemoryWrite))
                                    lut.clear();
                                break;
                            }
                            case InstructionID::Store: {
                                const auto base = pointerBase.lookup(inst.getOperand(0));
                                if(base) {
                                    lut.erase(base);
                                } else
                                    lut.clear();
                                break;
                            }
                            default:
                                break;
                        }
                        if(lut.empty())
                            break;
                    }

                    // block->dumpAsTarget(std::cerr);
                    // std::cerr << " initial size " << lut.size() << std::endl;
                }
            }

            modified |= runBlock(block, pointerBase, lutAddr, builder, lut);
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LUT2Expr"sv;
    }
};

CMMC_TRANSFORM_PASS(LUT2Expr);

CMMC_NAMESPACE_END

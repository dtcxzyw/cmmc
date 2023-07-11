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

class LUT2Expr final : public TransformPass<Function> {
    static Value* matchConstant(const std::unordered_map<uint32_t, Value*>& lut) {
        auto common = lut.begin()->second;
        for(auto [k, v] : lut) {
            CMMC_UNUSED(k);
            if(common != v)
                return nullptr;
        }
        return common;
    }

    static Value* matchIdentity(const std::unordered_map<uint32_t, intmax_t>& lut, Value* index, const Type* type) {
        if(index->getType() != type)
            return nullptr;
        for(auto [k, v] : lut) {
            if(static_cast<intmax_t>(k) != v)
                return nullptr;
        }
        return index;
    }

    static Value* matchShl(const std::unordered_map<uint32_t, intmax_t>& lut, Value* index, const Type* type,
                           IRBuilder& builder) {
        if(index->getType() != type)
            return nullptr;
        const auto base = lut.at(0);
        for(auto [k, v] : lut) {
            if(v != (base << k))
                return nullptr;
        }

        return builder.makeOp<BinaryInst>(InstructionID::Shl, ConstantInteger::get(index->getType(), base), index);
    }

    static Value* matchAdd(const std::unordered_map<uint32_t, intmax_t>& lut, Value* index, const Type* type,
                           IRBuilder& builder) {
        if(index->getType() != type)
            return nullptr;
        const auto base = lut.at(0);
        for(auto [k, v] : lut) {
            if(v != base + static_cast<intmax_t>(k))
                return nullptr;
        }

        return builder.makeOp<BinaryInst>(InstructionID::Add, ConstantInteger::get(index->getType(), base), index);
    }

    static Value* matchSub(const std::unordered_map<uint32_t, intmax_t>& lut, Value* index, const Type* type,
                           IRBuilder& builder) {
        if(index->getType() != type)
            return nullptr;
        const auto base = lut.at(0);
        for(auto [k, v] : lut) {
            if(v != base - static_cast<intmax_t>(k))
                return nullptr;
        }

        return builder.makeOp<BinaryInst>(InstructionID::Sub, ConstantInteger::get(index->getType(), base), index);
    }

    static Value* matchPattern(const std::unordered_map<uint32_t, Value*>& lut, Value* index, const Type* type,
                               IRBuilder& builder) {
        assert(!lut.empty());
        if(auto val = matchConstant(lut)) {
            return val;
        }

        std::unordered_map<uint32_t, intmax_t> lutVal;
        for(auto [k, v] : lut)
            if(v->is<ConstantInteger>()) {
                lutVal[k] = v->as<ConstantInteger>()->getSignExtended();
            } else
                return nullptr;

        if(auto val = matchIdentity(lutVal, index, type))
            return val;

        if(auto val = matchAdd(lutVal, index, type, builder))
            return val;

        if(auto val = matchSub(lutVal, index, type, builder))
            return val;

        if(auto val = matchShl(lutVal, index, type, builder))
            return val;

        return nullptr;
    }

    static std::optional<uint32_t> getConstantIndex(const Value* addr) {
        if(addr->is<GlobalVariable>())
            return 0;
        if(addr->is<GetElementPtrInst>()) {
            const auto gep = addr->as<GetElementPtrInst>();
            if(gep->operands().size() == 2) {
                const auto idx = gep->getOperand(0);
                if(idx->is<ConstantInteger>()) {
                    const auto base = gep->getOperand(1);
                    if(auto baseIndex = getConstantIndex(base))
                        return *baseIndex + static_cast<uint32_t>(idx->as<ConstantInteger>()->getZeroExtended());
                }
            } else {
                const auto idx = gep->arguments().back();
                if(idx->is<ConstantInteger>())
                    return static_cast<uint32_t>(idx->as<ConstantInteger>()->getZeroExtended());
            }
        }

        return std::nullopt;
    }

    static std::optional<Value*> getDynamicIndex(const Value* addr) {
        if(addr->is<GetElementPtrInst>()) {
            const auto gep = addr->as<GetElementPtrInst>();
            if(gep->operands().size() == 2) {
                const auto idx = gep->getOperand(0);
                if(!idx->isConstant()) {
                    const auto base = gep->getOperand(1);
                    if(auto baseIndex = getConstantIndex(base)) {
                        if(*baseIndex == 0)
                            return idx;
                    }
                }
            } else {
                const auto idx = gep->arguments().back();
                if(!idx->isConstant())
                    return idx;
            }
        }

        return std::nullopt;
    }

    static bool runBlock(Block* block, const PointerBaseAnalysisResult& base, const std::unordered_map<Value*, uint32_t>& lutAddr,
                         IRBuilder& builder) {
        std::unordered_map<Value*, std::unordered_map<uint32_t, Value*>> lut;

        bool modified = false;
        for(auto& inst : block->instructions()) {
            if(inst.getInstID() == InstructionID::Load) {
                const auto addr = inst.getOperand(0);
                const auto baseAddr = base.lookup(addr);

                if(auto iter = lut.find(baseAddr); iter != lut.end()) {
                    const auto& lutVal = iter->second;
                    if(lutVal.size() != lutAddr.at(baseAddr))
                        continue;
                    const auto index = getDynamicIndex(addr);
                    if(index.has_value()) {
                        builder.setInsertPoint(block, &inst);
                        if(auto val = matchPattern(lutVal, *index, inst.getType(), builder)) {
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
                        lut[baseAddr][*index] = val;
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

        IRBuilder builder{ analysis.module().getTarget() };
        bool modified = false;
        for(auto block : func.blocks()) {
            modified |= runBlock(block, pointerBase, lutAddr, builder);
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LUT2Expr"sv;
    }
};

CMMC_TRANSFORM_PASS(LUT2Expr);

CMMC_NAMESPACE_END

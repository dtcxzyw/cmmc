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

#include <algorithm>
#include <cmmc/Analysis/BlockTripCountEstimation.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/PointerBaseAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <vector>

CMMC_NAMESPACE_BEGIN

class Relayout final : public TransformPass<Module> {
    // square only
    static bool isArray2D(const Type* t) {
        if(!t->isArray())
            return false;
        const auto subArr = t->as<ArrayType>()->getElementType();
        const auto dim1 = t->as<ArrayType>()->getElementCount();
        if(!subArr->isArray())
            return false;
        if(!subArr->as<ArrayType>()->getElementType()->isPrimitive())
            return false;
        const auto dim2 = subArr->as<ArrayType>()->getElementCount();
        return dim1 == dim2;
    }

    static bool findPhi(Value* val, PhiInst*& idx) {
        if(val->is<PhiInst>()) {
            idx = val->as<PhiInst>();
            return true;
        }
        intmax_t i1;
        MatchContext<Value> matchCtx{ val };
        if(add(phi(idx), int_(i1))(matchCtx))
            return true;
        if(mul(phi(idx), int_(i1))(matchCtx))
            return true;
        if(add(mul(phi(idx), int_(i1)), int_(i1))(matchCtx))
            return true;
        return false;
    }
    static void analysisAccessPattern(Value* ptr, PhiInst*& idx1, PhiInst*& idx2) {
        if(!ptr->is<GetElementPtrInst>())
            return;
        auto gep = ptr->as<GetElementPtrInst>();
        const auto base = gep->lastOperand();
        const auto lastIdx = gep->arguments().back();
        if(!findPhi(lastIdx, idx2 ? idx1 : idx2))
            return;
        analysisAccessPattern(base, idx1, idx2);
    }

    static void collectAccessPatterns(std::unordered_map<GlobalVariable*, std::pair<double, double>>& access, Function* func,
                                      AnalysisPassManager& analysis) {
        auto& freq = analysis.get<BlockTripCountEstimation>(*func);
        if(!freq.isAvailable())
            return;

        auto& dom = analysis.get<DominateAnalysis>(*func);
        auto& pointerBase = analysis.get<PointerBaseAnalysis>(*func);
        for(auto block : func->blocks()) {
            const auto blockFreq = freq.query(block);
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::Load || inst.getInstID() == InstructionID::Store ||
                   inst.getInstID() == InstructionID::AtomicAdd) {
                    const auto ptr = inst.getOperand(0);
                    const auto base = pointerBase.lookup(ptr);
                    if(!base || !base->isGlobal())
                        continue;

                    if(auto iter = access.find(base->as<GlobalVariable>()); iter != access.end()) {
                        auto& [x, y] = iter->second;
                        PhiInst *idx1 = nullptr, *idx2 = nullptr;
                        // access A[idx1][idx2]
                        analysisAccessPattern(ptr, idx1, idx2);
                        // std::cerr << "analysis ";
                        // ptr->dumpAsOperand(std::cerr);
                        // std::cerr << " [";
                        // if(idx1)
                        //     idx1->dumpAsOperand(std::cerr);
                        // else
                        //     std::cerr << "unknown";
                        // std::cerr << "][";
                        // if(idx2)
                        //     idx2->dumpAsOperand(std::cerr);
                        // else
                        //     std::cerr << "unknown";
                        // std::cerr << "]\n";

                        if(idx1 && idx2) {
                            if(dom.dominate(idx2->getBlock(), idx1->getBlock()))
                                y += blockFreq;
                            else
                                x += blockFreq;
                        }
                    }
                }
            }
        }
    }

    static void trace(IRBuilder& builder, GetElementPtrInst* gep, Value*& idx1, Value*& idx2, int32_t dim) {
        if(dim <= 0)
            return;
        auto addIdx = [&](int32_t d, Value* val) {
            if(val->is<ConstantInteger>() && val->as<ConstantInteger>()->getSignExtended() == 0)
                return;
            auto& idx = d == 2 ? idx2 : idx1;
            if(idx)
                idx = builder.makeOp<BinaryInst>(InstructionID::Add, val, idx);
            else
                idx = val;
        };

        if(gep->operands().size() == 2) {
            const auto idx = gep->getOperand(0);
            const auto base = gep->getOperand(1);
            addIdx(dim, idx);
            if(base->is<GetElementPtrInst>())
                trace(builder, base->as<GetElementPtrInst>(), idx1, idx2, dim);
        } else if(gep->operands().size() == 3) {
            const auto offset = gep->getOperand(0);
            const auto idx = gep->getOperand(1);
            const auto base = gep->getOperand(2);
            addIdx(dim, idx);
            addIdx(dim - 1, offset);
            if(base->is<GetElementPtrInst>())
                trace(builder, base->as<GetElementPtrInst>(), idx1, idx2, dim - 1);
        }
    }

    static void applyTranspose(Module& mod, AnalysisPassManager& analysis, GlobalVariable* var) {
        for(auto global : mod.globals()) {
            if(!global->isFunction())
                continue;
            const auto func = global->as<Function>();
            if(func->blocks().empty())
                continue;

            auto& pointerBase = analysis.get<PointerBaseAnalysis>(*func);
            for(auto block : func->blocks()) {
                for(auto& inst : block->instructions()) {
                    if(inst.getType()->isPointer() && inst.getInstID() != InstructionID::FunctionPtr) {
                        const auto base = pointerBase.lookup(&inst);
                        if(base == var && inst.getType()->as<PointerType>()->getPointee()->isPrimitive()) {
                            switch(inst.getInstID()) {
                                case InstructionID::GetElementPtr: {
                                    IRBuilder builder{ analysis.module().getTarget() };
                                    builder.setInsertPoint(block, inst.asIterator());
                                    Value *idx1 = nullptr, *idx2 = nullptr;
                                    trace(builder, inst.as<GetElementPtrInst>(), idx1, idx2, 2);
                                    const auto zero = ConstantInteger::get(idx1->getType(), 0);
                                    Value* newPtr1 = builder.makeOp<GetElementPtrInst>(var, std::vector<Value*>{ zero, idx2 });
                                    Value* newPtr2 =
                                        builder.makeOp<GetElementPtrInst>(newPtr1, std::vector<Value*>{ zero, idx1 });
                                    inst.replaceWith(newPtr2);
                                } break;
                                default:
                                    break;
                            }
                        }
                    }
                }
            }
        }
    }

public:
    bool run(Module& mod, AnalysisPassManager& analysis) const override {
        std::unordered_map<GlobalVariable*, std::pair<double, double>> todo;
        std::unordered_set<Value*> unsupportedAddressing;
        for(auto global : mod.globals()) {
            if(!global->isFunction()) {
                const auto var = global->as<GlobalVariable>();
                if(var->attr().hasAttr(GlobalVariableAttribute::Flexible) && !var->initialValue()) {
                    if(var->attr().hasAttr(GlobalVariableAttribute::Transposed))
                        continue;
                    const auto type = var->getType()->as<PointerType>()->getPointee();
                    if(isArray2D(type))
                        todo.emplace(var, std::pair<double, double>{ 0, 0 });
                }
            } else {
                const auto func = global->as<Function>();
                if(func->blocks().empty())
                    continue;
                auto& pointerBase = analysis.get<PointerBaseAnalysis>(*func);
                for(auto block : func->blocks()) {
                    for(auto& inst : block->instructions()) {
                        if(inst.getType()->isPointer() && inst.getInstID() != InstructionID::FunctionPtr) {
                            const auto base = pointerBase.lookup(&inst);
                            if(!base || !(base->is<StackAllocInst>() || base->isGlobal()))
                                return false;
                            if(inst.getInstID() == InstructionID::Phi || inst.getInstID() == InstructionID::Select)
                                unsupportedAddressing.insert(base);
                        }
                    }
                }
            }
        }

        for(auto key : unsupportedAddressing)
            if(key->isGlobal())
                todo.erase(key->as<GlobalVariable>());

        if(todo.empty())
            return false;

        for(auto global : mod.globals()) {
            if(!global->isFunction())
                continue;
            const auto func = global->as<Function>();
            if(func->blocks().empty())
                continue;

            collectAccessPatterns(todo, func, analysis);
        }
        bool modified = false;

        for(auto& [var, score] : todo) {
            const auto [normal, transposed] = score;
            // var->dumpAsOperand(std::cerr);
            // std::cerr << " : " << normal << " " << transposed << "\n";
            if(normal * 4 + 1e-8 < transposed) {
                var->attr().addAttr(GlobalVariableAttribute::Transposed);
                applyTranspose(mod, analysis, var);
                modified = true;
            }
        }

        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "Relayout"sv;
    }
};

CMMC_TRANSFORM_PASS(Relayout);

class RelayoutFuncLevel final : public TransformPass<Function> {
public:
    bool run(Function&, AnalysisPassManager& analysis) const override {
        auto& mod = analysis.module();
        Relayout relayout;
        if(relayout.run(mod, analysis)) {
            analysis.invalidateModule();
            return true;
        }
        return false;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "RelayoutFuncLevel"sv;
    }
};

CMMC_TRANSFORM_PASS(RelayoutFuncLevel);

CMMC_NAMESPACE_END

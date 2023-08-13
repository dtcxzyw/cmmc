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
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/Analysis/PointerBaseAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Bits.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Tune.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <limits>

CMMC_NAMESPACE_BEGIN

class LoopParallel final : public TransformPass<Function> {
    static Function* lookupParallelFor(Module& mod) {
        for(auto global : mod.globals())
            if(global->getSymbol() == "cmmcParallelFor")
                return global->as<Function>();
        const auto i32 = IntegerType::get(32);
        const auto parallelForType =
            make<FunctionType>(VoidType::get(), Vector<const Type*>{ i32, i32, PointerType::get(IntegerType::get(8)) });
        const auto func = make<Function>(String::get("cmmcParallelFor"), parallelForType);
        func->attr().addAttr(FunctionAttribute::NoRecurse);
        func->setLinkage(Linkage::Internal);
        mod.add(func);
        return func;
    }
    static Function* lookupReduceAddI32(Module& mod) {
        for(auto global : mod.globals())
            if(global->getSymbol() == "cmmcReduceAddI32")
                return global->as<Function>();
        const auto i32 = IntegerType::get(32);
        const auto i32ptr = PointerType::get(i32);
        const auto reduceType = make<FunctionType>(VoidType::get(), Vector<const Type*>{ i32ptr, i32 });
        const auto func = make<Function>(String::get("cmmcReduceAddI32"), reduceType);
        func->attr().addAttr(FunctionAttribute::NoRecurse);
        func->setLinkage(Linkage::Internal);
        mod.add(func);
        return func;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        if(!analysis.module().getTarget().isLibCallSupported(mir::CMMCLibCall::parallelFor))
            return false;
        if(func.attr().hasAttr(FunctionAttribute::LoopBody))
            return false;
        if(func.attr().hasAttr(FunctionAttribute::ParallelBody))
            return false;
        if(!queryTuneOpt("loop_parallel", 1))
            return false;

        auto& pointerBase = analysis.get<PointerBaseAnalysis>(func);
        auto& loopInfo = analysis.get<LoopAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        auto& cfg = analysis.get<CFGAnalysis>(func);
        auto& mod = analysis.module();

        bool modified = false;
        for(auto& loop : loopInfo.loops) {
            if(loop.step != 1)
                continue;

            LoopBodyInfo bodyInfo;
            if(!extractLoopBody(func, loop, dom, cfg, mod,
                                /*independent*/ true,
                                /*pointer base*/ &pointerBase,
                                /*allow innermost*/ true,
                                /*allow innerloop*/ true,
                                /*only addrec*/ true,
                                /*estimate block size*/ true,
                                /*ret*/ &bodyInfo))
                continue;
            const auto parallelFor = lookupParallelFor(mod);
            Function* reduceAddI32 = nullptr;
            if(bodyInfo.rec)
                reduceAddI32 = lookupReduceAddI32(mod);

            bodyInfo.indvar->removeSource(bodyInfo.loop);
            if(bodyInfo.rec)
                bodyInfo.rec->removeSource(bodyInfo.loop);

            auto getUniqueID = [&] {
                auto base = String::get("cmmc_parallel_body_");
                for(int32_t id = 0;; ++id) {
                    const auto name = base.withID(id);
                    bool used = false;
                    for(auto global : mod.globals()) {
                        if(global->getSymbol() == name) {
                            used = true;
                            break;
                        }
                    }
                    if(!used)
                        return name;
                }
            };
            auto getUniqueIDStorage = [&] {
                auto base = String::get("cmmc_parallel_body_payload_");
                for(int32_t id = 0;; ++id) {
                    const auto name = base.withID(id);
                    bool used = false;
                    for(auto global : mod.globals()) {
                        if(global->getSymbol() == name) {
                            used = true;
                            break;
                        }
                    }
                    if(!used)
                        return name;
                }
            };
            auto funcType = make<FunctionType>(VoidType::get(), Vector<const Type*>{});
            const auto bodyFunc = make<Function>(getUniqueID(), funcType);
            bodyFunc->setLinkage(Linkage::Internal);
            bodyFunc->attr().addAttr(FunctionAttribute::NoRecurse).addAttr(FunctionAttribute::ParallelBody);
            mod.add(bodyFunc);

            auto& dataLayout = mod.getTarget().getDataLayout();

            std::vector<std::pair<Value*, size_t>> payload;
            size_t totalSize = 0;
            size_t maxAlignment = 0;
            Value* givOffset = nullptr;
            const auto i32 = IntegerType::get(32);
            for(auto param : bodyInfo.recNext->arguments()) {
                if(param == bodyInfo.indvar)
                    continue;

                const auto align = param->getType()->getAlignment(dataLayout);
                const auto size = param->getType()->getSize(dataLayout);
                totalSize = (totalSize + align - 1) / align * align;
                maxAlignment = std::max(maxAlignment, align);
                if(param == bodyInfo.rec)
                    givOffset = ConstantInteger::get(i32, static_cast<intmax_t>(totalSize));
                else
                    payload.emplace_back(param, totalSize);
                totalSize += size;
            }

            const auto payloadStorage =
                make<GlobalVariable>(getUniqueIDStorage(), make<ArrayType>(IntegerType::get(8), static_cast<uint32_t>(totalSize)),
                                     std::max(dataLayout.getStorageAlignment(), maxAlignment));
            payloadStorage->setLinkage(Linkage::Internal);
            mod.add(payloadStorage);

            IRBuilder builder{ mod.getTarget() };
            builder.setCurrentFunction(bodyFunc);

            const auto beg = bodyFunc->addArg(i32);
            const auto end = bodyFunc->addArg(i32);
            const auto entry = builder.addBlock();
            const auto subLoop = builder.addBlock();
            const auto exit = builder.addBlock();
            builder.setCurrentBlock(entry);
            const auto bodyExec = bodyInfo.recNext->clone();
            const auto indVar = make<PhiInst>(i32);
            indVar->addIncoming(entry, beg);
            const auto giv = (bodyInfo.rec ? make<PhiInst>(bodyInfo.rec->getType()) : nullptr);
            for(auto& operand : bodyExec->mutableOperands()) {
                if(operand->value == bodyInfo.indvar) {
                    operand->resetValue(indVar);
                } else if(operand->value == bodyInfo.rec) {
                    operand->resetValue(giv);
                } else {
                    for(auto& [param, offset] : payload) {
                        if(operand->value == param) {
                            const auto ptr = builder.makeOp<PtrAddInst>(payloadStorage,
                                                                        ConstantInteger::get(i32, static_cast<intmax_t>(offset)),
                                                                        PointerType::get(param->getType()));
                            const auto val = builder.makeOp<LoadInst>(ptr);
                            operand->resetValue(val);
                            break;
                        }
                    }
                }
            }
            builder.makeOp<BranchInst>(subLoop);
            indVar->insertBefore(subLoop, subLoop->instructions().end());
            if(giv) {
                giv->insertBefore(subLoop, subLoop->instructions().end());
                giv->addIncoming(entry, ConstantInteger::get(i32, 0));
                giv->addIncoming(subLoop, bodyExec);
            }
            bodyExec->insertBefore(subLoop, subLoop->instructions().end());
            builder.setCurrentBlock(subLoop);
            const auto next = builder.makeOp<BinaryInst>(InstructionID::Add, indVar, ConstantInteger::get(i32, 1));
            indVar->addIncoming(subLoop, next);
            const auto cond = builder.makeOp<CompareInst>(InstructionID::ICmp, CompareOp::ICmpSignedLessThan, next, end);
            builder.makeOp<BranchInst>(cond, defaultLoopProb, subLoop, exit);
            builder.setCurrentBlock(exit);
            if(giv) {
                const auto ptr = builder.makeOp<PtrAddInst>(payloadStorage, givOffset, PointerType::get(i32));
                builder.makeOp<FunctionCallInst>(reduceAddI32, std::vector<Value*>{ ptr, bodyExec });
            }
            builder.makeOp<ReturnInst>();

            builder.setInsertPoint(bodyInfo.loop, bodyInfo.recNext);
            Value* givPtr = nullptr;
            if(giv) {
                givPtr = builder.makeOp<PtrAddInst>(payloadStorage, givOffset, PointerType::get(i32));
                builder.makeOp<StoreInst>(givPtr, bodyInfo.rec);
            }
            for(auto [k, v] : payload) {
                const auto ptr = builder.makeOp<PtrAddInst>(payloadStorage, ConstantInteger::get(i32, static_cast<intmax_t>(v)),
                                                            PointerType::get(k->getType()));
                builder.makeOp<StoreInst>(ptr, k);
            }

            builder.makeOp<FunctionCallInst>(
                parallelFor,
                std::vector<Value*>{ bodyInfo.indvar, bodyInfo.bound,
                                     builder.makeOp<FunctionPtrInst>(bodyFunc, PointerType::get(IntegerType::get(8))) });
            if(giv) {
                const auto val = builder.makeOp<LoadInst>(givPtr);
                bodyInfo.recNext->replaceWith(val);
            }
            bodyInfo.loop->instructions().erase(bodyInfo.recNext->asIterator(), bodyInfo.loop->instructions().end());
            builder.setCurrentBlock(bodyInfo.loop);
            builder.makeOp<BranchInst>(bodyInfo.exit);

            // bodyFunc->dump(std::cerr, Noop{});
            // if(!bodyFunc->verify(std::cerr))
            //     reportUnreachable(CMMC_LOCATION());
            // const auto loopExec = bodyInfo.recNext->lastOperand();
            // loopExec->dump(std::cerr, Noop{});

            modified = true;
            break;
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopParallel"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopParallel);

CMMC_NAMESPACE_END

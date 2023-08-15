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
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/Analysis/IntegerRangeAnalysis.hpp>
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
#include <cmmc/Support/Options.hpp>
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

Flag enableParallel;

CMMC_INIT_OPTIONS_BEGIN

enableParallel.withDefault(false).setName("enable-parallel", 'E').setDesc("enable parallel");

CMMC_INIT_OPTIONS_END

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

    static bool isConstant(Value* val) {
        if(val->isConstant() || val->isGlobal())
            return true;
        if(val->isInstruction()) {
            auto inst = val->as<Instruction>();
            if(!isMovableExpr(*inst, false))
                return false;
            for(auto opreand : inst->operands()) {
                if(!isConstant(opreand))
                    return false;
            }
            return true;
        }
        return false;
    }

    static Value* expandConstant(Value* val, IRBuilder& builder) {
        if(val->isConstant() || val->isGlobal())
            return val;
        if(val->isInstruction()) {
            auto inst = val->as<Instruction>()->clone();
            for(auto& operand : inst->mutableOperands())
                operand->resetValue(expandConstant(operand->value, builder));
            const auto point = builder.getInsertPoint();
            const auto block = builder.getCurrentBlock();
            inst->insertBefore(block, point);
            return inst;
        }
        reportUnreachable(CMMC_LOCATION());
    }

    static bool runImpl(Function& func, AnalysisPassManager& analysis) {
        // func.dumpCFG(std::cerr);

        auto& pointerBase = analysis.get<PointerBaseAnalysis>(func);
        auto& rangeInfo = analysis.get<IntegerRangeAnalysis>(func);
        auto& loopInfo = analysis.get<LoopAnalysis>(func);
        auto& dom = analysis.get<DominateAnalysis>(func);
        auto& cfg = analysis.get<CFGAnalysis>(func);
        auto& mod = analysis.module();

        auto loops = loopInfo.loops;
        std::sort(loops.begin(), loops.end(),
                  [&](Loop& lhs, Loop& rhs) { return dom.getIndex(lhs.header) < dom.getIndex(rhs.header); });

        bool modified = false;
        for(auto& loop : loops) {
            // std::cerr << "processing ";
            // loop.header->dumpAsTarget(std::cerr);
            // std::cerr << " <-> ";
            // loop.latch->dumpAsTarget(std::cerr);
            // std::cerr << "\n";

            if(loop.step != 1)
                continue;

            auto initialRange = rangeInfo.query(loop.initial, dom, nullptr, 5);
            const auto isAligned = (initialRange.knownZeros() & 3) == 3;
            auto boundRange = rangeInfo.query(loop.bound, dom, nullptr, 5);
            const auto needSubLoop = (boundRange - initialRange).maxSignedValue() < 400;

            // std::cerr << "collect\n";
            LoopBodyInfo bodyInfo;
            if(!extractLoopBody(func, loop, dom, cfg, mod,
                                /*independent*/ true,
                                /*pointer base*/ &pointerBase,
                                /*allow innermost*/ true,
                                /*allow innerloop*/ true,
                                /*only addrec*/ true,
                                /*estimate block size*/ false,
                                /*need sub-loop*/ needSubLoop,
                                /*ret*/ &bodyInfo))
                continue;
            // func.dump(std::cerr, Noop{});
            // std::cerr << "modify\n";

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
            if(isAligned)
                bodyFunc->attr().addAttr(FunctionAttribute::AlignedParallelBody);
            mod.add(bodyFunc);

            auto& dataLayout = mod.getTarget().getDataLayout();

            std::vector<std::pair<Value*, size_t>> payload;
            size_t totalSize = 0;
            size_t maxAlignment = 0;
            Value* givOffset = nullptr;
            const auto i32 = IntegerType::get(32);
            std::unordered_set<Value*> insertedParam;
            auto addArgument = [&](Value* param) {
                if(param == bodyInfo.indvar)
                    return;
                if(isConstant(param))
                    return;
                if(param == bodyInfo.rec && !bodyInfo.recUsedByOuter && !bodyInfo.recUsedByInner)
                    return;

                if(!insertedParam.insert(param).second)
                    return;
                const auto align = param->getType()->getAlignment(dataLayout);
                const auto size = param->getType()->getSize(dataLayout);
                totalSize = (totalSize + align - 1) / align * align;
                maxAlignment = std::max(maxAlignment, align);
                if(param == bodyInfo.rec)
                    givOffset = ConstantInteger::get(i32, static_cast<intmax_t>(totalSize));
                else
                    payload.emplace_back(param, totalSize);
                totalSize += size;
            };
            for(auto param : bodyInfo.recNext->arguments())
                addArgument(param);
            if(bodyInfo.recInnerStep)
                addArgument(bodyInfo.recInnerStep);

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
            auto remapArgument = [&](ValueRef* operand) {
                if(operand->value == bodyInfo.indvar) {
                    operand->resetValue(indVar);
                } else if(operand->value == bodyInfo.rec) {
                    operand->resetValue(giv);
                } else {
                    if(isConstant(operand->value)) {
                        operand->resetValue(expandConstant(operand->value, builder));
                        builder.setCurrentBlock(entry);
                    } else {
                        bool replaced = false;
                        for(auto& [param, offset] : payload) {
                            if(operand->value == param) {
                                const auto ptr = builder.makeOp<PtrAddInst>(
                                    payloadStorage, ConstantInteger::get(i32, static_cast<intmax_t>(offset)),
                                    PointerType::get(param->getType()));
                                const auto val = builder.makeOp<LoadInst>(ptr);
                                operand->resetValue(val);
                                replaced = true;
                                break;
                            }
                        }
                        if(!replaced)
                            reportUnreachable(CMMC_LOCATION());
                    }
                }
            };
            for(auto& operand : bodyExec->mutableOperands())
                remapArgument(operand.get());

            indVar->insertBefore(subLoop, subLoop->instructions().end());
            if(giv) {
                giv->insertBefore(subLoop, subLoop->instructions().end());
                if(bodyInfo.recUsedByInner) {
                    const auto ptr = builder.makeOp<PtrAddInst>(payloadStorage, givOffset, PointerType::get(i32));
                    const auto initial = builder.makeOp<LoadInst>(ptr);
                    const auto step = bodyInfo.recInnerStep;
                    const auto offset = builder.makeOp<BinaryInst>(InstructionID::Mul, beg, step);
                    builder.setInsertPoint(entry, offset->asIterator());
                    remapArgument(offset->mutableOperands().back().get());
                    builder.setCurrentBlock(entry);
                    const auto realInitial = builder.makeOp<BinaryInst>(InstructionID::Add, initial, offset);
                    giv->addIncoming(entry, realInitial);
                } else
                    giv->addIncoming(entry, ConstantInteger::get(i32, 0));
                giv->addIncoming(subLoop, bodyExec);
            }
            builder.makeOp<BranchInst>(subLoop);

            bodyExec->insertBefore(subLoop, subLoop->instructions().end());
            builder.setCurrentBlock(subLoop);
            const auto next = builder.makeOp<BinaryInst>(InstructionID::Add, indVar, ConstantInteger::get(i32, 1));
            indVar->addIncoming(subLoop, next);
            const auto cond = builder.makeOp<CompareInst>(InstructionID::ICmp, CompareOp::ICmpSignedLessThan, next, end);
            builder.makeOp<BranchInst>(cond, defaultLoopProb, subLoop, exit);
            builder.setCurrentBlock(exit);
            if(giv && bodyInfo.recUsedByOuter) {
                const auto ptr = builder.makeOp<PtrAddInst>(payloadStorage, givOffset, PointerType::get(i32));
                builder.makeOp<FunctionCallInst>(reduceAddI32, std::vector<Value*>{ ptr, bodyExec });
            }
            builder.makeOp<ReturnInst>();

            builder.setInsertPoint(bodyInfo.loop, bodyInfo.recNext);
            Value* givPtr = nullptr;
            if(giv && (bodyInfo.recUsedByOuter || bodyInfo.recUsedByInner)) {
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
            if(giv && bodyInfo.recUsedByOuter) {
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

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        if(!analysis.module().getTarget().isLibCallSupported(mir::CMMCLibCall::parallelFor))
            return false;
        if(func.attr().hasAttr(FunctionAttribute::LoopBody))
            return false;
        if(func.attr().hasAttr(FunctionAttribute::ParallelBody))
            return false;
        // FIXME
        if(!func.attr().hasAttr(FunctionAttribute::Entry))
            return false;
        if(!enableParallel.get())
            return false;
        if(!queryTuneOpt("loop_parallel", 1))
            return false;

        bool modified = false;
        while(runImpl(func, analysis)) {
            modified = true;
            analysis.invalidateFunc(func);
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "LoopParallel"sv;
    }
};

CMMC_TRANSFORM_PASS(LoopParallel);

CMMC_NAMESPACE_END

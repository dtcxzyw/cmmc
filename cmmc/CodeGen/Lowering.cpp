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
#include <cassert>
#include <cmmc/Analysis/BlockTripCountEstimation.hpp>
#include <cmmc/Analysis/CallGraphSCC.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/ISelInfo.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Config.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Bits.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cmmc/Support/Graph.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cstdint>
#include <cstring>
#include <deque>
#include <iostream>
#include <memory>
#include <optional>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <variant>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

Flag debugISel;

CMMC_INIT_OPTIONS_BEGIN
debugISel.setName("debug-isel", 'I').setDesc("disable all codegen optimizations to debug lowering/ISel/RA/SA/Legalization");
CMMC_INIT_OPTIONS_END

static OperandType getOperandType(const Type* type, OperandType ptrType) {
    if(type->isPointer()) {
        return ptrType;
    }
    if(type->isInteger()) {
        switch(type->as<IntegerType>()->getBitwidth()) {
            case 1:
                return OperandType::Bool;
            case 8:
                return OperandType::Int8;
            case 16:
                return OperandType::Int16;
            case 32:
                return OperandType::Int32;
            case 64:
                return OperandType::Int64;
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }
    if(type->isFloatingPoint()) {
        if(type->as<FloatingPointType>()->getFixedSize() == sizeof(float)) {
            return OperandType::Float32;
        }
        reportNotImplemented(CMMC_LOCATION());
    }
    reportUnreachable(CMMC_LOCATION());
}
LoweringContext::LoweringContext(MIRModule& module, CodeGenContext& codeGenCtx,
                                 std::unordered_map<Block*, MIRBasicBlock*>& blockMap,
                                 std::unordered_map<GlobalValue*, MIRGlobal*>& globalMap,
                                 FloatingPointConstantPool& fpConstantPool, std::unordered_map<Value*, MIROperand>& valueMap)
    : mModule{ module }, mDataLayout{ module.getTarget().getDataLayout() }, mCodeGenCtx{ codeGenCtx }, mBlockMap{ blockMap },
      mGlobalMap{ globalMap }, mFPConstantPool{ fpConstantPool }, mValueMap{ valueMap }, mCurrentBasicBlock{ nullptr } {
    const auto ptrSize = module.getTarget().getDataLayout().getPointerSize();
    if(ptrSize == 4)
        mPtrType = OperandType::Int32;
    else if(ptrSize == 8)
        mPtrType = OperandType::Int64;
    else
        reportUnreachable(CMMC_LOCATION());
}
MIRModule& LoweringContext::getModule() const noexcept {
    return mModule;
}
MIRBasicBlock* LoweringContext::mapBlock(Block* block) const {
    return mBlockMap.at(block);
}
MIROperand FloatingPointConstantPool::getFPConstant(class LoweringContext& ctx, const ConstantFloatingPoint* val) {
    assert(val->getType()->as<FloatingPointType>()->getFixedSize() == sizeof(float));
    const auto fpVal = static_cast<float>(val->getValue());
    uint32_t rep;
    memcpy(&rep, &fpVal, sizeof(float));               // TODO: endianness?
    const auto it = mFloatingPointConstant.find(rep);  // TODO: for zero: copy from gpr
    uint32_t offset;
    if(it != mFloatingPointConstant.cend()) {
        offset = it->second;
    } else {
        if(!mFloatingPointConstantPool) {
            auto storage =
                std::make_unique<MIRDataStorage>(String::get("__cmmc_fp_constant_pool"), MIRDataStorage::Storage{}, true);
            mFloatingPointConstantPool = storage.get();
            auto pool = std::make_unique<MIRGlobal>(Linkage::Internal, sizeof(float), std::move(storage));
            ctx.getModule().globals().push_back(std::move(pool));
        }
        offset = mFloatingPointConstant[rep] = mFloatingPointConstantPool->appendWord(rep) * sizeof(float);
    }

    const auto ptrType = ctx.getPtrType();
    const auto base = ctx.newVReg(ptrType);
    ctx.emitInst(
        MIRInst{ InstLoadGlobalAddress }.setOperand<0>(base).setOperand<1>(MIROperand::asReloc(mFloatingPointConstantPool)));
    const auto addr = ctx.newVReg(ptrType);
    ctx.emitInst(MIRInst{ InstAdd }.setOperand<0>(addr).setOperand<1>(base).setOperand<2>(MIROperand::asImm(offset, ptrType)));
    const auto dst = ctx.newVReg(val->getType());
    ctx.emitInst(MIRInst{ InstLoad }.setOperand<0>(dst).setOperand<1>(addr));
    return dst;
}
MIROperand LoweringContext::mapOperand(Value* operand) {
    const auto iter = mValueMap.find(operand);
    if(iter != mValueMap.cend())
        return iter->second;
    if(operand->isGlobal()) {
        const auto ptr = newVReg(getPtrType());
        emitInst(MIRInst{ InstLoadGlobalAddress }.setOperand<0>(ptr).setOperand<1>(
            MIROperand::asReloc(mGlobalMap.at(operand->as<GlobalValue>())->reloc.get())));
        return ptr;
    }
    if(!operand->isConstant()) {
        operand->dump(reportError() << "undefined operand "sv, Noop{});
        reportUnreachable(CMMC_LOCATION());
    }
    // constant
    // NOTICE: loaded constant cannot be cached
    const auto operandType = getOperandType(operand->getType(), mPtrType);
    if(operand->getType()->isFloatingPoint()) {
        const auto fpv = operand->as<ConstantFloatingPoint>();
        if(auto fp = mCodeGenCtx.iselInfo.materializeFPConstant(fpv, *this); !fp.isUnused())
            return fp;
        return mFPConstantPool.getFPConstant(*this, fpv);
    }
    // FIXME: detect undef by caller
    if(operand->isUndefined()) {
        return MIROperand::asImm(0, operandType);
    }
    return MIROperand::asImm(operand->as<ConstantInteger>()->getSignExtended(), operandType);
}
void LoweringContext::setCurrentBasicBlock(MIRBasicBlock* block) noexcept {
    mCurrentBasicBlock = block;
}
MIRGlobal* LoweringContext::mapGlobal(GlobalValue* global) const {
    return mGlobalMap.at(global);
}
static String getBlockLabel(CodeGenContext& ctx) {
    return String::get("label").withID(static_cast<int32_t>(ctx.nextId()));
}
MIRBasicBlock* LoweringContext::addBlockAfter(double blockTripCount) {
    auto& blocks = mCurrentBasicBlock->getFunction()->blocks();
    auto iter = std::find_if(blocks.cbegin(), blocks.cend(), [&](auto& block) { return block.get() == mCurrentBasicBlock; });
    assert(iter != blocks.cend());
    const auto ret = blocks.insert(
        std::next(iter),
        std::make_unique<MIRBasicBlock>(getBlockLabel(mCodeGenCtx), mCurrentBasicBlock->getFunction(), blockTripCount));
    return ret->get();
}
void LoweringContext::addOperand(Value* value, MIROperand reg) {
    if(mValueMap.count(value))
        reportUnreachable(CMMC_LOCATION());
    mValueMap.emplace(value, reg);
}

static void lowerInst(Instruction* inst, LoweringContext& ctx);
static void lowerToMachineFunction(MIRFunction& mfunc, Function* func, CodeGenContext& codeGenCtx, MIRModule& machineModule,
                                   std::unordered_map<GlobalValue*, MIRGlobal*>& globalMap,
                                   FloatingPointConstantPool& fpConstantPool, AnalysisPassManager& analysis) {
    auto& blockTripCount = analysis.get<BlockTripCountEstimation>(*func);

    std::unordered_map<Block*, MIRBasicBlock*> blockMap;
    std::unordered_map<Value*, MIROperand> valueMap;
    std::unordered_map<Value*, MIROperand> storageMap;
    LoweringContext ctx{ machineModule, codeGenCtx, blockMap, globalMap, fpConstantPool, valueMap };

    auto& target = machineModule.getTarget();
    auto& dataLayout = target.getDataLayout();
    auto& dom = analysis.get<DominateAnalysis>(*func);

    for(auto block : dom.blocks()) {
        const auto tripCount = blockTripCount.isAvailable() ? blockTripCount.query(block) : 1.0;
        mfunc.blocks().push_back(std::make_unique<MIRBasicBlock>(getBlockLabel(codeGenCtx), &mfunc, tripCount));
        auto& mblock = mfunc.blocks().back();
        blockMap.emplace(block, mblock.get());
        for(auto& inst : block->instructions()) {
            if(inst.getInstID() == InstructionID::Phi) {
                auto vreg = ctx.newVReg(inst.getType());
                ctx.addOperand(&inst, vreg);
            }
        }
    }

    {
        ctx.setCurrentBasicBlock(blockMap.at(func->entryBlock()));
        for(auto& inst : func->entryBlock()->instructions()) {
            if(inst.getInstID() == InstructionID::Alloc) {
                const auto type = inst.getType()->as<PointerType>()->getPointee();
                const auto storage =
                    mfunc.addStackObject(codeGenCtx, static_cast<uint32_t>(type->getSize(dataLayout)),
                                         static_cast<uint32_t>(type->getAlignment(dataLayout)), 0, StackObjectUsage::Local);
                storageMap.emplace(&inst, storage);
                const auto addr = ctx.newVReg(ctx.getPtrType());
                ctx.emitInst(MIRInst{ InstLoadStackObjectAddr }.setOperand<0>(addr).setOperand<1>(storage));
                ctx.addOperand(&inst, addr);
            } else
                break;
        }
    }

    {
        auto& args = mfunc.args();
        for(auto arg : func->args()) {
            auto vreg = ctx.newVReg(arg->getType());
            ctx.addOperand(arg, vreg);
            args.push_back(vreg);
        }
        ctx.setCurrentBasicBlock(mfunc.blocks().front().get());
        codeGenCtx.frameInfo.emitPrologue(mfunc, ctx);
    }

    for(auto block : dom.blocks()) {
        auto mblock = blockMap[block];
        ctx.setCurrentBasicBlock(mblock);
        for(auto& inst : block->instructions()) {
            lowerInst(&inst, ctx);
        }
    }

    /*
    if constexpr(Config::debug) {
        func->dump(std::cerr, Noop{});
        std::cerr << '\n';
        mfunc.dump(std::cerr, target);
    }
    */
}

// TODO: move to runCodeGenPipeline?
static void lowerToMachineModule(MIRModule& machineModule, Module& module, AnalysisPassManager& analysis,
                                 OptimizationLevel optLevel) {
    auto& globals = machineModule.globals();
    const auto& dataLayout = module.getTarget().getDataLayout();

    std::unordered_map<GlobalValue*, MIRGlobal*> globalMap;
    FloatingPointConstantPool fpConstantPool;

    for(auto global : module.globals()) {
        if(global->isFunction()) {
            auto func = global->as<Function>();
            if(func->blocks().empty()) {
                String symbol = func->getSymbol();
                switch(func->getIntrinsic()) {
                    case Intrinsic::memcpy:
                        symbol = String::get("memcpy"sv);
                        break;
                    case Intrinsic::memset:
                        symbol = String::get("memset"sv);
                        break;
                    default:
                        break;
                }
                // SysY runtime alias
                if(symbol.prefix() == "starttime"sv) {
                    symbol = String::get("_sysy_starttime");
                } else if(symbol.prefix() == "stoptime"sv) {
                    symbol = String::get("_sysy_stoptime");
                }
                globals.push_back(std::make_unique<MIRGlobal>(func->getLinkage(), dataLayout.getCodeAlignment(),
                                                              std::make_unique<MIRFunction>(symbol)));  // external symbol
            } else {
                globals.push_back(std::make_unique<MIRGlobal>(func->getLinkage(), dataLayout.getCodeAlignment(),
                                                              std::make_unique<MIRFunction>(func->getSymbol())));
            }
        } else {
            const auto var = global->as<GlobalVariable>();
            const auto type = var->getType()->as<PointerType>()->getPointee();
            const auto alignment = type->getAlignment(dataLayout);
            const auto size = type->getSize(dataLayout);
            if(auto initialValue = var->initialValue()) {
                const auto readOnly = var->attr().hasAttr(GlobalVariableAttribute::ReadOnly);
                MIRDataStorage::Storage data;

                const auto expand = [&](auto&& self, Value* val) -> void {
                    const auto valType = val->getType();
                    if(valType->isArray()) {
                        const auto arrayType = valType->as<ArrayType>();
                        const auto& values = val->as<ConstantArray>()->values();
                        for(auto sub : values) {
                            self(self, sub);
                        }
                        const auto remCount = arrayType->getElementCount() - values.size();
                        if(remCount) {
                            const auto remSize = arrayType->getElementType()->getSize(dataLayout) * remCount;
                            // zero
                            data.push_back(static_cast<size_t>(remSize));
                        }
                    } else if(valType->isInteger()) {
                        const auto value = val->as<ConstantInteger>()->getZeroExtended();
                        if(valType->getFixedSize() == sizeof(uint32_t)) {
                            data.push_back(static_cast<uint32_t>(value));
                        } else if(valType->getFixedSize() == sizeof(uint8_t)) {
                            data.push_back(static_cast<std::byte>(value));
                        } else
                            reportNotImplemented(CMMC_LOCATION());
                    } else if(valType->isFloatingPoint()) {
                        const auto value = val->as<ConstantFloatingPoint>()->getValue();
                        if(valType->getFixedSize() == sizeof(float)) {
                            const auto fpv = static_cast<float>(value);
                            const void* ptr = &fpv;
                            data.push_back(*static_cast<const uint32_t*>(ptr));
                        } else
                            reportNotImplemented(CMMC_LOCATION());
                    } else
                        reportUnreachable(CMMC_LOCATION());
                };
                expand(expand, initialValue);

                // data/rodata
                globals.emplace_back(std::make_unique<MIRGlobal>(
                    global->getLinkage(), alignment,
                    std::make_unique<MIRDataStorage>(global->getSymbol(), std::move(data), readOnly)));
            } else {
                // bss
                globals.emplace_back(std::make_unique<MIRGlobal>(global->getLinkage(), alignment,
                                                                 std::make_unique<MIRZeroStorage>(global->getSymbol(), size)));
            }
        }
        globalMap.emplace(global, globals.back().get());
    }

    auto& target = module.getTarget();

    {
        Stage stage{ "Pre-lowering legalization"sv };
        target.transformModuleBeforeCodeGen(module, analysis);
        analysis.invalidateModule();
    }

    CodeGenContext ctx{ target,
                        target.getScheduleModel(),
                        target.getDataLayout(),
                        target.getInstInfo(),
                        target.getISelInfo(),
                        target.getFrameInfo(),
                        target.getRegisterInfo(),
                        MIRFlags{} };

    auto dumpFunc = [&](const MIRFunction& func) { func.dump(std::cerr, ctx); };
    CMMC_UNUSED(dumpFunc);

    const auto& cgscc = analysis.get<CallGraphSCCAnalysis>();
    IPRAUsageCache infoIPRA;

    const auto hasCall = [](Function* func) {
        for(auto block : func->blocks())
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::Call)
                    return true;
            }
        return false;
    };

    for(auto func : cgscc.getOrder()) {
        ctx.flags = MIRFlags{};
        // func->dump(std::cerr, Noop{});

        const auto symbol = globalMap.at(func);
        if(func->blocks().empty()) {  // external
            if(ctx.registerInfo)
                target.addExternalFuncIPRAInfo(symbol->reloc.get(), infoIPRA);
            continue;
        }

        auto& mfunc = dynamic_cast<MIRFunction&>(*symbol->reloc);
        {
            // Stage 1: lower to Generic MIR
            Stage stage{ "lower to generic insts"sv };
            lowerToMachineFunction(mfunc, func, ctx, machineModule, globalMap, fpConstantPool, analysis);
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
        }
        {
            // Stage 2: instruction selection
            Stage stage{ "Instruction selection"sv };
            ISelContext iselCtx{ ctx };
            iselCtx.runISel(mfunc);
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
        }
        // Stage 3: register coalescing
        if(optLevel >= OptimizationLevel::O1 && !debugISel.get()) {
            Stage stage{ "Register coalescing"sv };
            registerCoalescing(mfunc, ctx);
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
        }

        // Stage 4: peephole opt
        if(optLevel >= OptimizationLevel::O1 && !debugISel.get()) {
            Stage stage{ "Peephole optimization"sv };
            ctx.scheduleModel.peepholeOpt(mfunc, ctx);
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
            while(genericPeepholeOpt(mfunc, ctx))
                ;
            //  dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
        }

        // Pre-RA legalization
        {
            // Stage 6: Pre-RA legalization
            Stage stage{ "Pre-RA legalization"sv };
            preRALegalizeFunc(mfunc, ctx);
            ctx.flags.inSSAForm = false;
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
        }

        // Stage 6: Pre-RA scheduling, minimize register pressure
        if(ctx.registerInfo && optLevel >= OptimizationLevel::O2 && !debugISel.get()) {
            Stage stage{ "Pre-RA scheduling"sv };
            schedule(mfunc, ctx, true);
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
        }
        // Stage 7: register allocation
        if(ctx.registerInfo) {
            Stage stage{ "Register allocation"sv };
            assignRegisters(mfunc, ctx, infoIPRA);  // vr -> GPR/FPR/Stack
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
        }
        // Stage 8: legalize stack objects, stack -> sp
        if(ctx.registerInfo) {
            Stage stage{ "Stack object allocation"sv };
            allocateStackObjects(mfunc, ctx, hasCall(func), optLevel);
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
        }
        // Stage 9: post-RA scheduling, minimize latency
        // TODO: after post legalization?
        if(ctx.registerInfo && optLevel >= OptimizationLevel::O3 && !debugISel.get()) {
            Stage stage{ "Post-RA scheduling"sv };
            schedule(mfunc, ctx, false);
            assert(mfunc.verify(std::cerr, ctx));
        }
        // Stage 5: ICF & Tail duplication
        if(optLevel >= OptimizationLevel::O2 && !debugISel.get()) {
            Stage stage{ "ICF & Tail duplication"sv };
            // tail duplication as the small block inliner does in CMMC IR
            tailDuplication(mfunc, ctx);
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
            identicalCodeFolding(mfunc, ctx);
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
            while(genericPeepholeOpt(mfunc, ctx))
                ;
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
        }
        // Stage 10: code layout opt
        if(optLevel >= OptimizationLevel::O2 && !debugISel.get()) {
            Stage stage{ "Code layout optimization"sv };
            simplifyCFGWithUniqueTerminator(mfunc, ctx);
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
            optimizeBlockLayout(mfunc, ctx);
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
        }
        // TODO: basic block alignment
        // Stage 11: post peephole opt
        if(optLevel >= OptimizationLevel::O1 && !debugISel.get()) {
            Stage stage{ "Post peephole optimization"sv };
            ctx.scheduleModel.postPeepholeOpt(mfunc, ctx);
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
        }
        // Stage 12: remove unreachable block/continuous goto/unused label/peephold
        if(optLevel >= OptimizationLevel::O1 && !debugISel.get()) {
            Stage stage{ "CFG Simplification"sv };
            simplifyCFG(mfunc, ctx);
            ctx.flags.endsWithTerminator = false;
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
        } else
            ctx.flags.endsWithTerminator = false;
        {
            // Stage 13: post legalization
            Stage stage{ "Post legalization"sv };
            postLegalizeFunc(mfunc, ctx);
            // dumpFunc(mfunc);
            assert(mfunc.verify(std::cerr, ctx));
        }

        // add to IPRA cache
        if(ctx.registerInfo)
            infoIPRA.add(ctx, symbol->reloc.get(), mfunc);
    }
}

std::unique_ptr<MIRModule> lowerToMachineModule(Module& module, AnalysisPassManager& analysis, OptimizationLevel optLevel) {
    Stage stage{ "lower to MIR"sv };

    auto& target = module.getTarget();
    auto machineModule = std::make_unique<MIRModule>(target);
    lowerToMachineModule(*machineModule, module, analysis, optLevel);
    // machineModule->dump(std::cerr);
    return machineModule;
}

static void lower(BinaryInst* inst, LoweringContext& ctx) {
    const auto id = [instID = inst->getInstID()] {
        switch(instID) {
            case InstructionID::Add:
                return InstAdd;
            case InstructionID::Sub:
                return InstSub;
            case InstructionID::Mul:
                return InstMul;
            case InstructionID::SDiv:
                return InstSDiv;
            case InstructionID::UDiv:
                return InstUDiv;
            case InstructionID::SRem:
                return InstSRem;
            case InstructionID::URem:
                return InstURem;
            case InstructionID::And:
                return InstAnd;
            case InstructionID::Or:
                return InstOr;
            case InstructionID::Xor:
                return InstXor;
            case InstructionID::Shl:
                return InstShl;
            case InstructionID::LShr:
                return InstLShr;
            case InstructionID::AShr:
                return InstAShr;
            case InstructionID::FAdd:
                return InstFAdd;
            case InstructionID::FSub:
                return InstFSub;
            case InstructionID::FMul:
                return InstFMul;
            case InstructionID::FDiv:
                return InstFDiv;
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }();
    const auto ret = ctx.newVReg(inst->getType());
    ctx.emitInst(MIRInst{ id }
                     .setOperand<0>(ret)
                     .setOperand<1>(ctx.mapOperand(inst->getOperand(0)))
                     .setOperand<2>(ctx.mapOperand(inst->getOperand(1))));
    ctx.addOperand(inst, ret);
}
static void lower(CompareInst* inst, LoweringContext& ctx) {
    const auto id = [instID = inst->getInstID()] {
        switch(instID) {
            case InstructionID::FCmp:
                return InstFCmp;
            case InstructionID::UCmp:
                return InstUCmp;
            case InstructionID::SCmp:
                return InstSCmp;
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }();

    const auto ret = ctx.newVReg(inst->getType());
    ctx.emitInst(MIRInst{ id }
                     .setOperand<0>(ret)
                     .setOperand<1>(ctx.mapOperand(inst->getOperand(0)))
                     .setOperand<2>(ctx.mapOperand(inst->getOperand(1)))
                     .setOperand<3>(MIROperand::asImm(inst->getOp(), OperandType::Special)));
    ctx.addOperand(inst, ret);
}
static void lower(UnaryInst* inst, LoweringContext& ctx) {
    const auto id = [instID = inst->getInstID()] {
        switch(instID) {
            case InstructionID::Neg:
                return InstNeg;
            case InstructionID::FNeg:
                return InstFNeg;
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }();

    const auto ret = ctx.newVReg(inst->getType());
    ctx.emitInst(MIRInst{ id }.setOperand<0>(ret).setOperand<1>(ctx.mapOperand(inst->getOperand(0))));
    ctx.addOperand(inst, ret);
}
static void lower(CastInst* inst, LoweringContext& ctx) {
    const auto src = ctx.mapOperand(inst->getOperand(0));
    const auto dst = ctx.newVReg(inst->getType());

    const auto id = [instID = inst->getInstID()] {
        switch(instID) {
            case InstructionID::ZExt:
                return InstZExt;
            case InstructionID::SExt:
                return InstSExt;
            case InstructionID::Bitcast:
                return InstCopy;
            case InstructionID::Trunc:
                return InstTrunc;
            case InstructionID::F2U:
                return InstF2U;
            case InstructionID::F2S:
                return InstF2S;
            case InstructionID::U2F:
                return InstU2F;
            case InstructionID::S2F:
                return InstS2F;
            case InstructionID::FCast:
                [[fallthrough]];
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }();

    ctx.emitInst(MIRInst{ id }.setOperand<0>(dst).setOperand<1>(src));
    ctx.addOperand(inst, dst);
}
static void lower(LoadInst* inst, LoweringContext& ctx) {
    const auto ret = ctx.newVReg(inst->getType());
    const auto ptr = ctx.mapOperand(inst->getOperand(0));
    ctx.emitInst(MIRInst{ InstLoad }.setOperand<0>(ret).setOperand<1>(ptr));
    ctx.addOperand(inst, ret);
}
static void lower(StoreInst* inst, LoweringContext& ctx) {
    ctx.emitInst(MIRInst{ InstStore }
                     .setOperand<0>(ctx.mapOperand(inst->getOperand(0)))
                     .setOperand<1>(ctx.mapOperand(inst->getOperand(1))));
}
static void emitBranch(Block* dstBlock, Block* srcBlock, LoweringContext& ctx) {
    std::vector<Value*> dst;
    std::vector<Value*> src;
    std::unordered_set<Value*> needStagingRegister;

    for(auto& inst : dstBlock->instructions()) {
        if(inst.getInstID() == InstructionID::Phi) {
            const auto phi = inst.as<PhiInst>();
            const auto val = phi->incomings().at(srcBlock)->value;
            src.push_back(val);
            if(val->is<PhiInst>() && val->getBlock() == dstBlock) {
                needStagingRegister.insert(val);
            }
            dst.push_back(phi);
        } else
            break;
    }

    if(!src.empty()) {
        // setup phi values
        // calcuates the best order and create temporary variables for args

        std::unordered_map<Value*, uint32_t> nodeMap;
        for(uint32_t idx = 0; idx < dst.size(); ++idx)
            nodeMap.emplace(dst[idx], idx);

        Graph graph(dst.size());  // direct copy graph
        for(size_t idx = 0; idx < dst.size(); ++idx) {
            const auto arg = src[idx];
            if(auto iter = nodeMap.find(arg); iter != nodeMap.cend()) {
                // copy b to a -> a should be resetted before b
                graph[idx].push_back(iter->second);
            }
        }

        const auto [ccnt, col] = calcSCC(graph);
        std::vector<std::unordered_set<NodeIndex>> dag(ccnt);
        std::vector<std::vector<NodeIndex>> groups(ccnt);
        std::vector<uint32_t> in(ccnt);
        for(uint32_t u = 0; u < graph.size(); ++u) {
            const auto cu = col[u];
            groups[cu].push_back(u);
            for(auto v : graph[u]) {
                const auto cv = col[v];
                if(cu != cv && dag[cu].emplace(cv).second) {
                    ++in[cv];
                }
            }
        }

        std::queue<uint32_t> q;
        for(uint32_t u = 0; u < ccnt; ++u)
            if(in[u] == 0)
                q.push(u);
        std::vector<uint32_t> order;
        order.reserve(graph.size());
        while(!q.empty()) {
            const auto u = q.front();
            q.pop();

            const auto& group = groups[u];
            order.insert(order.end(), group.cbegin(), group.cend());

            for(auto v : dag[u]) {
                if(--in[v] == 0) {
                    q.push(v);
                }
            }
        }

        assert(order.size() == dst.size());

        std::unordered_map<Value*, MIROperand> dirtyRegRemapping;

        for(size_t i = 0; i < dst.size(); ++i) {
            const auto idx = order[i];
            MIROperand arg;
            if(auto iter = dirtyRegRemapping.find(src[idx]); iter != dirtyRegRemapping.cend()) {
                arg = iter->second;  // use copy
            } else
                arg = ctx.mapOperand(src[idx]);
            const auto dstArg = ctx.mapOperand(dst[idx]);

            if(arg == dstArg)
                continue;  // identical copy

            const auto type = src[idx]->getType();

            // create copy
            if(needStagingRegister.count(dst[idx])) {
                const auto intermediate = ctx.newVReg(type);
                ctx.emitCopy(intermediate, dstArg);  // NOLINT
                dirtyRegRemapping.emplace(dst[idx], intermediate);
            }

            // apply reset
            ctx.emitCopy(dstArg, arg);
        }
    }
    const auto dstMBlock = ctx.mapBlock(dstBlock);
    ctx.emitInst(MIRInst{ InstJump }.setOperand<0>(MIROperand::asReloc(dstMBlock)));
}
static void lower(BranchInst* inst, LoweringContext& ctx) {
    const auto srcBlock = inst->getBlock();
    const auto emitCondBranch = [&](const MIROperand& lhs, const MIROperand& rhs, uint32_t instID, CompareOp op) {
        // beqz %cond, else_label
        // then_label:
        // ...
        // else_label:
        // ...
        //

        const auto curBlock = ctx.getCurrentBasicBlock();

        const auto thenPrepareBlock = ctx.addBlockAfter(ctx.mapBlock(inst->getTrueTarget())->getTripCount());
        ctx.setCurrentBasicBlock(thenPrepareBlock);
        const auto elsePrepareBlock = ctx.addBlockAfter(ctx.mapBlock(inst->getFalseTarget())->getTripCount());
        ctx.setCurrentBasicBlock(curBlock);

        const auto cond = ctx.newVReg(inst->getOperand(0)->getType());
        ctx.emitInst(MIRInst{ instID }.setOperand<0>(cond).setOperand<1>(lhs).setOperand<2>(rhs).setOperand<3>(
            MIROperand::asImm(op, OperandType::Special)));
        ctx.emitInst(MIRInst{ InstBranch }
                         .setOperand<0>(cond)
                         .setOperand<1>(MIROperand::asReloc(elsePrepareBlock))
                         .setOperand<2>(MIROperand::asProb(1.0 - inst->getBranchProb())));

        ctx.setCurrentBasicBlock(thenPrepareBlock);
        emitBranch(inst->getTrueTarget(), srcBlock, ctx);

        ctx.setCurrentBasicBlock(elsePrepareBlock);
        emitBranch(inst->getFalseTarget(), srcBlock, ctx);
    };
    if(inst->getInstID() == InstructionID::Branch) {
        emitBranch(inst->getTrueTarget(), srcBlock, ctx);
    } else if(auto condInst = dynamic_cast<CompareInst*>(inst->getOperand(0))) {
        const auto id = [instID = condInst->getInstID()] {
            switch(instID) {
                case InstructionID::UCmp:
                    return InstUCmp;
                case InstructionID::SCmp:
                    return InstSCmp;
                case InstructionID::FCmp:
                    return InstFCmp;
                default:
                    reportUnreachable(CMMC_LOCATION());
            }
        }();

        emitCondBranch(ctx.mapOperand(condInst->getOperand(0)), ctx.mapOperand(condInst->getOperand(1)), id,
                       getInvertedOp(condInst->getOp()));
    } else {
        // beqz %cond, false_label
        const auto cond = ctx.mapOperand(inst->getOperand(0));
        emitCondBranch(cond, MIROperand::asImm(0, cond.type()), InstSCmp, CompareOp::Equal);
    }
}
static void lower(UnreachableInst*, LoweringContext& ctx) {
    ctx.emitInst(MIRInst{ InstUnreachable });
}
static void lower(SelectInst* inst, LoweringContext& ctx) {
    const auto ret = ctx.newVReg(inst->getType());
    ctx.emitInst(MIRInst{ InstSelect }
                     .setOperand<0>(ret)
                     .setOperand<1>(ctx.mapOperand(inst->getOperand(0)))
                     .setOperand<2>(ctx.mapOperand(inst->getOperand(1)))
                     .setOperand<3>(ctx.mapOperand(inst->getOperand(2))));
    ctx.addOperand(inst, ret);
}
static void lower(GetElementPtrInst* inst, LoweringContext& ctx) {
    const auto [constantOffset, offsets] = inst->gatherOffsets(ctx.getDataLayout());
    const auto indexType = inst->operands().front()->getType();  // must be index type
    const auto base = ctx.mapOperand(inst->lastOperand());
    const auto useShl = ctx.getCodeGenContext().target.isNativeSupported(InstructionID::Shl);

    auto ptr = base;
    for(auto [size, index] : offsets) {
        const auto idx = ctx.mapOperand(index);
        const auto off = ctx.newVReg(indexType);
        if(size == 1) {
            ctx.emitCopy(off, idx);
        } else {
            // TODO: expand mul to (x<<c1) +/- (x<<c2)
            if(useShl && isPowerOf2(size)) {
                ctx.emitInst(MIRInst{ InstShl }.setOperand<0>(off).setOperand<1>(idx).setOperand<2>(
                    MIROperand::asImm(ilog2(size), ctx.getPtrType())));
            } else
                ctx.emitInst(MIRInst{ InstMul }.setOperand<0>(off).setOperand<1>(idx).setOperand<2>(
                    MIROperand::asImm(size, ctx.getPtrType())));
        }
        auto newPtr = ctx.newVReg(ctx.getPtrType());  // SSA form
        ctx.emitInst(MIRInst{ InstAdd }.setOperand<0>(newPtr).setOperand<1>(ptr).setOperand<2>(off));
        ptr = newPtr;
    }
    if(constantOffset != 0) {
        auto newPtr = ctx.newVReg(ctx.getPtrType());
        ctx.emitInst(MIRInst{ InstAdd }.setOperand<0>(newPtr).setOperand<1>(ptr).setOperand<2>(
            MIROperand::asImm(constantOffset, ctx.getPtrType())));
        ptr = newPtr;
    }
    ctx.addOperand(inst, ptr);
}
static void lower(PtrCastInst* inst, LoweringContext& ctx) {
    ctx.addOperand(inst, ctx.mapOperand(inst->getOperand(0)));
}
static void lower(PtrToIntInst* inst, LoweringContext& ctx) {
    ctx.addOperand(inst, ctx.mapOperand(inst->getOperand(0)));
}
static void lower(IntToPtrInst* inst, LoweringContext& ctx) {
    ctx.addOperand(inst, ctx.mapOperand(inst->getOperand(0)));
}
static void lower(ReturnInst* inst, LoweringContext& ctx) {
    ctx.getCodeGenContext().frameInfo.emitReturn(inst, ctx);
}
static void lower(FunctionCallInst* inst, LoweringContext& ctx) {
    ctx.getCodeGenContext().frameInfo.emitCall(inst, ctx);
}
static void lowerInst(Instruction* inst, LoweringContext& ctx) {
    switch(inst->getInstID()) {
        case InstructionID::Add:
            [[fallthrough]];
        case InstructionID::Sub:
            [[fallthrough]];
        case InstructionID::Mul:
            [[fallthrough]];
        case InstructionID::SDiv:
            [[fallthrough]];
        case InstructionID::UDiv:
            [[fallthrough]];
        case InstructionID::SRem:
            [[fallthrough]];
        case InstructionID::URem:
            [[fallthrough]];
        case InstructionID::And:
            [[fallthrough]];
        case InstructionID::Or:
            [[fallthrough]];
        case InstructionID::Xor:
            [[fallthrough]];
        case InstructionID::Shl:
            [[fallthrough]];
        case InstructionID::LShr:
            [[fallthrough]];
        case InstructionID::AShr:
            [[fallthrough]];
        case InstructionID::FAdd:
            [[fallthrough]];
        case InstructionID::FSub:
            [[fallthrough]];
        case InstructionID::FMul:
            [[fallthrough]];
        case InstructionID::FDiv:
            lower(inst->as<BinaryInst>(), ctx);
            break;
        case InstructionID::Neg:
            [[fallthrough]];
        case InstructionID::FNeg:
            lower(inst->as<UnaryInst>(), ctx);
            break;
        case InstructionID::SCmp:
            [[fallthrough]];
        case InstructionID::UCmp:
            [[fallthrough]];
        case InstructionID::FCmp:
            lower(inst->as<CompareInst>(), ctx);
            break;
        case InstructionID::Ret:
            lower(inst->as<ReturnInst>(), ctx);
            break;
        case InstructionID::Branch:
            [[fallthrough]];
        case InstructionID::ConditionalBranch:
            lower(inst->as<BranchInst>(), ctx);
            break;
        case InstructionID::Unreachable:
            lower(inst->as<UnreachableInst>(), ctx);
            break;
        case InstructionID::Load:
            lower(inst->as<LoadInst>(), ctx);
            break;
        case InstructionID::Store:
            lower(inst->as<StoreInst>(), ctx);
            break;
        case InstructionID::SExt:
            [[fallthrough]];
        case InstructionID::ZExt:
            [[fallthrough]];
        case InstructionID::Trunc:
            [[fallthrough]];
        case InstructionID::Bitcast:
            [[fallthrough]];
        case InstructionID::F2U:
            [[fallthrough]];
        case InstructionID::F2S:
            [[fallthrough]];
        case InstructionID::U2F:
            [[fallthrough]];
        case InstructionID::S2F:
            [[fallthrough]];
        case InstructionID::FCast:
            lower(inst->as<CastInst>(), ctx);
            break;
        case InstructionID::Alloc:
            break;
        case InstructionID::GetElementPtr:
            lower(inst->as<GetElementPtrInst>(), ctx);
            break;
        case InstructionID::PtrCast:
            lower(inst->as<PtrCastInst>(), ctx);
            break;
        case InstructionID::PtrToInt:
            lower(inst->as<PtrToIntInst>(), ctx);
            break;
        case InstructionID::IntToPtr:
            lower(inst->as<IntToPtrInst>(), ctx);
            break;
        case InstructionID::Select:
            lower(inst->as<SelectInst>(), ctx);
            break;
        case InstructionID::Call:
            lower(inst->as<FunctionCallInst>(), ctx);
            break;
        case InstructionID::Phi:  // noop
            break;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

MIROperand LoweringContext::newVReg(const Type* type) {
    return MIROperand::asVReg(mCodeGenCtx.nextId(), getOperandType(type, mPtrType));
}
MIROperand LoweringContext::newVReg(OperandType type) {
    return MIROperand::asVReg(mCodeGenCtx.nextId(), type);
}
void LoweringContext::emitInst(const MIRInst& inst) {
    auto& insts = mCurrentBasicBlock->instructions();
    insts.emplace_back(inst);
}

void LoweringContext::emitCopy(const MIROperand& dst, const MIROperand& src) {
    auto inst = MIRInst{ selectCopyOpcode(dst, src) }.setOperand<0>(dst).setOperand<1>(src);
    emitInst(inst);
    if constexpr(Config::debug) {
        auto& instInfo = mCodeGenCtx.instInfo.getInstInfo(inst);
        CMMC_UNUSED(instInfo);
        assert(instInfo.verify(inst, mCodeGenCtx));
    }
}
CMMC_MIR_NAMESPACE_END

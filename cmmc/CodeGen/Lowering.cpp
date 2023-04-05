/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2022 Yingwei Zheng and Bingzhen Wang
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
#include <cmmc/Analysis/StackLifetimeAnalysis.hpp>
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
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
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cmmc/Support/Graph.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cstdint>
#include <deque>
#include <iostream>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <variant>
#include <vector>

CMMC_NAMESPACE_BEGIN

Operand LoweringContext::getZero(const Type* type) {
    const auto iter = mZeros.find(type);
    if(iter != mZeros.cend())
        return iter->second;
    const auto zero = mModule.target.getTargetLoweringInfo().getZeroImpl(*this, type);
    return mZeros.emplace(type, zero).first->second;
}

LoweringContext::LoweringContext(GMIRModule& module, std::unordered_map<Block*, GMIRBasicBlock*>& blockMap,
                                 std::unordered_map<GlobalValue*, GMIRSymbol*>& globalMap,
                                 std::unordered_map<Value*, Operand>& valueMap, TemporaryPools& pools)
    : mModule{ module }, mDataLayout{ module.target.getDataLayout() }, mBlockMap{ blockMap },
      mGlobalMap{ globalMap }, mValueMap{ valueMap }, mPools{ pools }, mCurrentBasicBlock{ nullptr } {}

VirtualRegPool& LoweringContext::getAllocationPool(uint32_t addressSpace) noexcept {
    assert(addressSpace < std::size(mPools.pools));
    return mPools.pools[addressSpace];
}
GMIRModule& LoweringContext::getModule() const noexcept {
    return mModule;
}
GMIRBasicBlock* LoweringContext::mapBlock(Block* block) const {
    return mBlockMap.at(block);
}
Operand LoweringContext::mapOperand(Value* operand) {
    const auto iter = mValueMap.find(operand);
    if(iter != mValueMap.cend())
        return iter->second;
    if(operand->isGlobal()) {
        // la
        const auto ptr = getAllocationPool(AddressSpace::VirtualReg).allocate(operand->getType());
        emitInst<GlobalAddressMInst>(ptr, mGlobalMap.at(operand->as<GlobalValue>()));
        return ptr;
    }
    if(!operand->isConstant()) {
        operand->dump(reportError() << "undefined operand "sv, Noop{});
        reportUnreachable(CMMC_LOCATION());
    }
    // constant
    Operand reg = unusedOperand;
    // TODO: create constant for integers
    if(operand->getType()->isFloatingPoint()) {
        // create constant for fp
        reg = getAllocationPool(AddressSpace::VirtualReg).allocate(operand->getType());
        emitInst<ConstantMInst>(reg, operand->as<ConstantFloatingPoint>()->getValue());
    } else {
        auto& pool = getAllocationPool(AddressSpace::Constant);
        reg = pool.allocate(operand->getType());
        pool.getMetadata(reg) = operand;
    }
    mValueMap.emplace(operand, reg);
    return reg;
}
void LoweringContext::setCurrentBasicBlock(GMIRBasicBlock* block) noexcept {
    mCurrentBasicBlock = block;
}
GMIRSymbol* LoweringContext::mapGlobal(GlobalValue* global) const {
    return mGlobalMap.at(global);
}
GMIRBasicBlock* LoweringContext::addBlockAfter(double blockTripCount) {
    auto& blocks = mCurrentBasicBlock->getFunction()->blocks();
    auto iter = std::find_if(blocks.cbegin(), blocks.cend(), [&](auto& block) { return block.get() == mCurrentBasicBlock; });
    assert(iter != blocks.cend());
    const auto ret =
        blocks.insert(std::next(iter), std::make_unique<GMIRBasicBlock>(mCurrentBasicBlock->getFunction(), blockTripCount));
    (*ret)->usedStackObjects() = mCurrentBasicBlock->usedStackObjects();  // inherit stack object usage
    return ret->get();
}
void LoweringContext::addOperand(Value* value, Operand reg) {
    if(mValueMap.count(value))
        reportUnreachable(CMMC_LOCATION());
    mValueMap.emplace(value, reg);
}

static void lowerToMachineFunction(GMIRFunction& mfunc, Function* func, GMIRModule& machineModule,
                                   std::unordered_map<GlobalValue*, GMIRSymbol*>& globalMap, AnalysisPassManager& analysis) {
    auto& stackLifetime = analysis.get<StackLifetimeAnalysis>(*func);
    auto& blockTripCount = analysis.get<BlockTripCountEstimation>(*func);

    std::unordered_map<Block*, GMIRBasicBlock*> blockMap;
    std::unordered_map<Value*, Operand> valueMap;
    std::unordered_map<Value*, Operand> storageMap;
    LoweringContext ctx{ machineModule, blockMap, globalMap, valueMap, mfunc.pools() };

    auto& vregPool = ctx.getAllocationPool(AddressSpace::VirtualReg);
    auto& stackPool = ctx.getAllocationPool(AddressSpace::Stack);
    auto& target = machineModule.target;
    auto& dataLayout = target.getDataLayout();
    auto& info = target.getTargetLoweringInfo();
    auto& dom = analysis.get<DominateAnalysis>(*func);

    for(auto block : dom.blocks()) {
        const auto tripCount = blockTripCount.isAvailable() ? blockTripCount.query(block) : 1.0;
        mfunc.blocks().push_back(std::make_unique<GMIRBasicBlock>(&mfunc, tripCount));
        auto mblock = mfunc.blocks().back().get();
        blockMap.emplace(block, mblock);
        for(auto inst : block->instructions()) {
            if(inst->getInstID() == InstructionID::Phi) {
                auto vreg = vregPool.allocate(inst->getType());
                ctx.addOperand(inst, vreg);
            }
        }
    }

    {
        ctx.setCurrentBasicBlock(blockMap.at(func->entryBlock()));
        for(auto inst : func->entryBlock()->instructions()) {
            if(inst->getInstID() == InstructionID::Alloc) {
                const auto type = inst->getType()->as<PointerType>()->getPointee();
                const auto storage = stackPool.allocate(type);
                stackPool.getMetadata(storage) = inst;
                storageMap.emplace(inst, storage);
                const auto addr = vregPool.allocate(inst->getType());
                ctx.emitInst<CopyMInst>(storage, false, 0, addr, false, 0, static_cast<uint32_t>(dataLayout.getPointerSize()),
                                        false);
                ctx.addOperand(inst, addr);
            } else
                break;
        }
    }

    {
        auto& parameters = mfunc.parameters();
        for(auto arg : func->args()) {
            auto vreg = vregPool.allocate(arg->getType());
            ctx.addOperand(arg, vreg);
            parameters.push_back(vreg);
        }
        ctx.setCurrentBasicBlock(mfunc.blocks().front().get());
        info.emitPrologue(ctx, func);
    }

    for(auto block : dom.blocks()) {
        auto mblock = blockMap[block];
        ctx.setCurrentBasicBlock(mblock);
        const auto& stackUsage = stackLifetime.getUsedAllocas(block);
        for(auto alloca : stackUsage)
            mblock->usedStackObjects().insert(storageMap.at(alloca));
        for(auto inst : block->instructions()) {
            info.lowerInst(inst, ctx);
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

static void lowerToMachineModule(GMIRModule& machineModule, Module& module, AnalysisPassManager& analysis,
                                 OptimizationLevel optLevel) {
    auto& symbols = machineModule.symbols;
    const auto& dataLayout = module.getTarget().getDataLayout();

    std::unordered_map<GlobalValue*, GMIRSymbol*> globalMap;

    for(auto global : module.globals()) {
        if(global->isFunction()) {
            auto func = global->as<Function>();
            if(func->blocks().empty()) {
                String symbol = func->getSymbol();
                switch(func->getIntrinsic()) {
                    case Intrinsic::memcpy:
                        symbol = String::get("memcpy"sv);
                        break;
                    case Intrinsic::memmove:
                        symbol = String::get("memmove"sv);
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
                symbols.push_back(GMIRSymbol{ symbol, func->getLinkage(), dataLayout.getCodeAlignment(), std::monostate{} });
            } else {
                symbols.push_back(
                    GMIRSymbol{ func->getSymbol(), func->getLinkage(), dataLayout.getCodeAlignment(), GMIRFunction{} });
            }
        } else {
            const auto var = global->as<GlobalVariable>();
            const auto type = var->getType()->as<PointerType>()->getPointee();
            const auto alignment = type->getAlignment(dataLayout);
            const auto size = type->getSize(dataLayout);
            if(auto initialValue = var->initialValue()) {
                const auto readOnly = var->attr().hasAttr(GlobalVariableAttribute::ReadOnly);
                GMIRDataStorage::Storage data;

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
                symbols.emplace_back(GMIRSymbol{ global->getSymbol(), global->getLinkage(), alignment,
                                                 GMIRDataStorage{ std::move(data), readOnly } });
            } else {
                // bss
                symbols.emplace_back(GMIRSymbol{ global->getSymbol(), global->getLinkage(), alignment, GMIRZeroStorage{ size } });
            }
        }
        globalMap.emplace(global, &symbols.back());
    }

    auto& target = module.getTarget();
    auto& subTarget = target.getSubTarget();

    {
        Stage stage{ "Pre-lowering legalization"sv };
        target.legalizeModuleBeforeCodeGen(module, analysis);
        analysis.invalidateModule();
    }

    auto dumpFunc = [&](const GMIRFunction& func) { func.dump(std::cerr, target); };
    CMMC_UNUSED(dumpFunc);

    const auto& cgscc = analysis.get<CallGraphSCCAnalysis>();
    IPRAUsageCache infoIPRA;

    const auto hasCall = [](Function* func) {
        for(auto block : func->blocks())
            for(auto inst : block->instructions()) {
                if(inst->getInstID() == InstructionID::Call)
                    return true;
            }
        return false;
    };

    for(auto func : cgscc.getOrder()) {
        // func->dump(std::cerr, Noop{});

        const auto symbol = globalMap.at(func);
        if(func->blocks().empty()) {  // external
            target.addExternalFuncIPRAInfo(symbol, infoIPRA);
            continue;
        }

        auto& mfunc = std::get<GMIRFunction>(symbol->def);
        {
            // Stage 1: instruction selection
            Stage stage{ "Instruction selection"sv };
            lowerToMachineFunction(mfunc, func, machineModule, globalMap, analysis);
            assert(mfunc.verify(std::cerr, true));
        }
        {
            // Stage 2: clean up unused insts
            Stage stage{ "Clean up unused instructions"sv };
            removeUnusedInsts(mfunc);
            assert(mfunc.verify(std::cerr, true));
        }
        // Stage 3: register coalescing
        if(optLevel >= OptimizationLevel::O1) {
            Stage stage{ "Register coalescing"sv };
            // registerCoalescing(mfunc, operandMap);
            assert(mfunc.verify(std::cerr, true));
        }
        {
            // Stage 3: legalize
            Stage stage{ "Legalization"sv };
            target.legalizeFunc(mfunc);
            assert(mfunc.verify(std::cerr, true));
        }
        // Stage 4: peephole opt
        if(optLevel >= OptimizationLevel::O1) {
            Stage stage{ "Peephole optimization"sv };
            subTarget.peepholeOpt(mfunc);
            assert(mfunc.verify(std::cerr, true));
            while(genericPeepholeOpt(mfunc, target))
                ;
            assert(mfunc.verify(std::cerr, true));
        }
        // Stage 5: ICF & Tail duplication
        if(optLevel >= OptimizationLevel::O2) {
            Stage stage{ "ICF & Tail duplication"sv };
            // tail duplication as the small block inliner does in CMMC IR
            tailDuplication(mfunc);
            assert(mfunc.verify(std::cerr, true));
            identicalCodeFolding(mfunc);
            assert(mfunc.verify(std::cerr, true));

            subTarget.peepholeOpt(mfunc);
            assert(mfunc.verify(std::cerr, true));
            while(genericPeepholeOpt(mfunc, target))
                ;
            assert(mfunc.verify(std::cerr, true));
        }
        // Stage 6: pre-RA scheduling, minimize register pressure
        if(optLevel >= OptimizationLevel::O2) {
            Stage stage{ "Pre-RA scheduling"sv };
            schedule(mfunc, target, true);
            assert(mfunc.verify(std::cerr, true));
        }
        // Stage 7: register allocation
        bool useBuiltinRA = false;
        {
            Stage stage{ "Register allocation"sv };
            if(!target.builtinRA(mfunc))
                assignRegisters(mfunc, target, infoIPRA);  // vr -> GPR/FPR/Stack
            else
                useBuiltinRA = true;
            assert(mfunc.verify(std::cerr, true));
        }
        // Stage 8: legalize stack objects, stack -> sp
        {
            Stage stage{ "Stack object allocation"sv };
            if(!target.builtinSA(mfunc))
                allocateStackObjects(mfunc, target, hasCall(func), optLevel);
            assert(mfunc.verify(std::cerr, true));
        }
        // Stage 9: post-RA scheduling, minimize latency
        if(optLevel >= OptimizationLevel::O3) {
            Stage stage{ "Post-RA scheduling"sv };
            schedule(mfunc, target, false);
            assert(mfunc.verify(std::cerr, true));
        }
        // Stage 10: code layout opt
        if(optLevel >= OptimizationLevel::O2) {
            Stage stage{ "Code layout optimization"sv };
            simplifyCFGWithUniqueTerminator(mfunc);
            optimizeBlockLayout(mfunc, target);
            assert(mfunc.verify(std::cerr, true));
        }
        // Stage 11: post peephole opt
        if(optLevel >= OptimizationLevel::O1) {
            Stage stage{ "Post peephole optimization"sv };
            subTarget.postPeepholeOpt(mfunc);
            assert(mfunc.verify(std::cerr, true));
        }
        // Stage 12: remove unreachable block/continuous goto/unused label/peephold
        if(optLevel >= OptimizationLevel::O1) {
            Stage stage{ "CFG Simplification"sv };
            simplifyCFG(mfunc, target);
            assert(mfunc.verify(std::cerr, false));
        }
        {
            // Stage 13: post legalization
            Stage stage{ "Post legalization"sv };
            target.postLegalizeFunc(mfunc);
            assert(mfunc.verify(std::cerr, false));
        }

        // add to IPRA cache
        if(!useBuiltinRA)
            infoIPRA.add(target, symbol, mfunc);
    }

    // TODO: apply HFSort
}

std::unique_ptr<GMIRModule> lowerToMachineModule(Module& module, AnalysisPassManager& analysis, OptimizationLevel optLevel) {
    Stage stage{ "lower to GMIR"sv };

    auto& target = module.getTarget();
    auto machineModule = std::make_unique<GMIRModule>(target);
    lowerToMachineModule(*machineModule, module, analysis, optLevel);
    // machineModule->dump(std::cerr);
    return machineModule;
}

void LoweringInfo::lowerInst(Instruction* inst, LoweringContext& ctx) const {
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
void LoweringInfo::lower(BinaryInst* inst, LoweringContext& ctx) const {
    const auto id = [instID = inst->getInstID()] {
        switch(instID) {
            case InstructionID::Add:
                return GMIRInstID::Add;
            case InstructionID::Sub:
                return GMIRInstID::Sub;
            case InstructionID::Mul:
                return GMIRInstID::Mul;
            case InstructionID::SDiv:
                return GMIRInstID::SDiv;
            case InstructionID::UDiv:
                return GMIRInstID::UDiv;
            case InstructionID::SRem:
                return GMIRInstID::SRem;
            case InstructionID::URem:
                return GMIRInstID::URem;
            case InstructionID::And:
                return GMIRInstID::And;
            case InstructionID::Or:
                return GMIRInstID::Or;
            case InstructionID::Xor:
                return GMIRInstID::Xor;
            case InstructionID::Shl:
                return GMIRInstID::Shl;
            case InstructionID::LShr:
                return GMIRInstID::LShr;
            case InstructionID::AShr:
                return GMIRInstID::AShr;
            case InstructionID::FAdd:
                return GMIRInstID::FAdd;
            case InstructionID::FSub:
                return GMIRInstID::FSub;
            case InstructionID::FMul:
                return GMIRInstID::FMul;
            case InstructionID::FDiv:
                return GMIRInstID::FDiv;
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }();
    const auto ret = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    ctx.emitInst<BinaryArithmeticMInst>(id, ctx.mapOperand(inst->getOperand(0)), ctx.mapOperand(inst->getOperand(1)), ret);
    ctx.addOperand(inst, ret);
}
void LoweringInfo::lower(CompareInst* inst, LoweringContext& ctx) const {
    const auto id = [instID = inst->getInstID()] {
        switch(instID) {
            case InstructionID::FCmp:
                return GMIRInstID::FCmp;
            case InstructionID::UCmp:
                return GMIRInstID::UCmp;
            case InstructionID::SCmp:
                return GMIRInstID::SCmp;
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }();

    const auto ret = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    ctx.emitInst<CompareMInst>(id, inst->getOp(), ctx.mapOperand(inst->getOperand(0)), ctx.mapOperand(inst->getOperand(1)), ret);
    ctx.addOperand(inst, ret);
}
void LoweringInfo::lower(UnaryInst* inst, LoweringContext& ctx) const {
    const auto id = [instID = inst->getInstID()] {
        switch(instID) {
            case InstructionID::Neg:
                return GMIRInstID::Neg;
            case InstructionID::FNeg:
                return GMIRInstID::FNeg;
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }();

    const auto ret = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    ctx.emitInst<UnaryArithmeticMInst>(id, ctx.mapOperand(inst->getOperand(0)), ret);
    ctx.addOperand(inst, ret);
}
void LoweringInfo::lower(CastInst* inst, LoweringContext& ctx) const {
    const auto src = ctx.mapOperand(inst->getOperand(0));
    const auto dst = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    auto& constant = ctx.getAllocationPool(AddressSpace::Constant);

    switch(inst->getInstID()) {
        case InstructionID::ZExt: {
            const auto mask = constant.allocate(inst->getType());
            constant.getMetadata(mask) = ConstantInteger::get(
                inst->getType(),
                static_cast<intmax_t>((1ULL << inst->getOperand(0)->getType()->as<IntegerType>()->getBitwidth()) - 1));
            ctx.emitInst<BinaryArithmeticMInst>(GMIRInstID::And, src, mask, dst);
            break;
        }
        case InstructionID::SExt:
            [[fallthrough]];
        case InstructionID::Bitcast: {
            ctx.emitInst<CopyMInst>(src, false, 0, dst, false, 0, static_cast<uint32_t>(inst->getType()->getFixedSize()), false);
            break;
        }
        case InstructionID::Trunc:
            reportNotImplemented(CMMC_LOCATION());
        case InstructionID::F2U: {
            ctx.emitInst<UnaryArithmeticMInst>(GMIRInstID::F2U, src, dst);
            break;
        }
        case InstructionID::F2S: {
            ctx.emitInst<UnaryArithmeticMInst>(GMIRInstID::F2S, src, dst);
            break;
        }
        case InstructionID::U2F: {
            ctx.emitInst<UnaryArithmeticMInst>(GMIRInstID::U2F, src, dst);
            break;
        }
        case InstructionID::S2F: {
            ctx.emitInst<UnaryArithmeticMInst>(GMIRInstID::S2F, src, dst);
            break;
        }
        case InstructionID::FCast:
            [[fallthrough]];
        default:
            reportUnreachable(CMMC_LOCATION());
    }
    ctx.addOperand(inst, dst);
}
void LoweringInfo::lower(LoadInst* inst, LoweringContext& ctx) const {
    const auto ret = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    const auto size = inst->getType()->getSize(ctx.getDataLayout());
    ctx.emitInst<CopyMInst>(ctx.mapOperand(inst->getOperand(0)), true, 0, ret, false, 0, static_cast<uint32_t>(size), false);
    ctx.addOperand(inst, ret);
}
void LoweringInfo::lower(StoreInst* inst, LoweringContext& ctx) const {
    const auto val = inst->getOperand(1);
    const auto size = val->getType()->getSize(ctx.getDataLayout());
    ctx.emitInst<CopyMInst>(ctx.mapOperand(val), false, 0, ctx.mapOperand(inst->getOperand(0)), true, 0,
                            static_cast<uint32_t>(size), false);
}
static void emitBranch(Block* dstBlock, Block* srcBlock, LoweringContext& ctx) {
    auto& dataLayout = ctx.getDataLayout();
    std::vector<Value*> src;
    std::vector<Value*> dst;

    for(auto inst : dstBlock->instructions()) {
        if(inst->getInstID() == InstructionID::Phi) {
            const auto phi = inst->as<PhiInst>();
            src.push_back(phi->incomings().at(srcBlock));
            dst.push_back(phi);
        } else
            break;
    }

    if(!src.empty()) {
        // setup arguments
        if(srcBlock == dstBlock) {
            // self-loop
            auto& vreg = ctx.getAllocationPool(AddressSpace::VirtualReg);
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

            std::unordered_map<Value*, Operand> dirtyRegRemapping;

            for(size_t i = 0; i < dst.size(); ++i) {
                const auto idx = order[i];
                auto arg = unusedOperand;
                if(auto iter = dirtyRegRemapping.find(src[idx]); iter != dirtyRegRemapping.cend()) {
                    arg = iter->second;  // use copy
                } else
                    arg = ctx.mapOperand(src[idx]);
                const auto dstArg = ctx.mapOperand(dst[idx]);

                if(arg == dstArg)
                    continue;  // identical copy

                const auto type = src[idx]->getType();
                const auto size = type->getSize(dataLayout);

                // create copy
                const auto intermediate = vreg.allocate(type);
                ctx.emitInst<CopyMInst>(dstArg, false, 0, intermediate, false, 0, static_cast<uint32_t>(size), false);
                dirtyRegRemapping.emplace(dst[idx], intermediate);

                // apply reset
                ctx.emitInst<CopyMInst>(arg, false, 0, dstArg, false, 0, static_cast<uint32_t>(size), false);
            }
        } else {
            for(size_t idx = 0; idx < dst.size(); ++idx) {
                const auto arg = ctx.mapOperand(src[idx]);
                const auto dstArg = ctx.mapOperand(dst[idx]);
                const auto size = src[idx]->getType()->getSize(dataLayout);
                ctx.emitInst<CopyMInst>(arg, false, 0, dstArg, false, 0, static_cast<uint32_t>(size), false);
            }
        }
    }
    const auto dstMBlock = ctx.mapBlock(dstBlock);
    ctx.emitInst<BranchMInst>(dstMBlock);
}
void LoweringInfo::lower(BranchInst* inst, LoweringContext& ctx) const {
    const auto srcBlock = inst->getBlock();
    const auto emitCondBranch = [&](const Operand& lhs, const Operand& rhs, GMIRInstID instID, CompareOp op) {
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

        ctx.emitInst<BranchCompareMInst>(instID, lhs, rhs, op, 1.0 - inst->getBranchProb(), elsePrepareBlock);

        ctx.setCurrentBasicBlock(thenPrepareBlock);
        emitBranch(inst->getTrueTarget(), srcBlock, ctx);

        ctx.setCurrentBasicBlock(elsePrepareBlock);
        emitBranch(inst->getFalseTarget(), srcBlock, ctx);
    };
    if(inst->getInstID() == InstructionID::Branch) {
        emitBranch(inst->getTrueTarget(), srcBlock, ctx);
    } else if(auto condInst = dynamic_cast<CompareInst*>(inst->getOperand(0)); condInst && isFusible(inst, condInst)) {
        const auto id = [instID = condInst->getInstID()] {
            switch(instID) {
                case InstructionID::UCmp:
                    return GMIRInstID::UCmp;
                case InstructionID::SCmp:
                    return GMIRInstID::SCmp;
                case InstructionID::FCmp:
                    return GMIRInstID::FCmp;
                default:
                    reportUnreachable(CMMC_LOCATION());
            }
        }();

        emitCondBranch(ctx.mapOperand(condInst->getOperand(0)), ctx.mapOperand(condInst->getOperand(1)), id,
                       getInvertedOp(condInst->getOp()));
    } else {
        // beqz %cond, false_label
        const auto cond = ctx.mapOperand(inst->getOperand(0));
        emitCondBranch(cond, ctx.getZero(IntegerType::get(1)), GMIRInstID::SCmp, CompareOp::Equal);
    }
}
void LoweringInfo::lower(UnreachableInst*, LoweringContext& ctx) const {
    ctx.emitInst<UnreachableMInst>();
}
void LoweringInfo::lower(SelectInst* inst, LoweringContext& ctx) const {
    // c = x ? y : z;
    // ->
    // c = z;
    // beqz x BB2
    // BB1:
    // c = y;
    // b BB2
    // BB2:
    // ...

    const auto curBlock = ctx.getCurrentBasicBlock();
    const auto ret = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    const auto size = static_cast<uint32_t>(inst->getType()->getSize(ctx.getDataLayout()));

    ctx.emitInst<CopyMInst>(ctx.mapOperand(inst->getOperand(2)), false, 0, ret, false, 0, size, false);
    const auto next = ctx.addBlockAfter(curBlock->getTripCount() * defaultSelectProb);
    ctx.setCurrentBasicBlock(next);
    const auto target = ctx.addBlockAfter(curBlock->getTripCount());

    ctx.setCurrentBasicBlock(curBlock);
    ctx.emitInst<BranchCompareMInst>(GMIRInstID::SCmp, ctx.mapOperand(inst->getOperand(0)), ctx.getZero(IntegerType::get(1)),
                                     CompareOp::Equal, defaultSelectProb, target);
    ctx.setCurrentBasicBlock(next);
    ctx.emitInst<CopyMInst>(ctx.mapOperand(inst->getOperand(1)), false, 0, ret, false, 0, size, false);
    ctx.emitInst<BranchMInst>(target);

    ctx.setCurrentBasicBlock(target);
    ctx.addOperand(inst, ret);
}
void LoweringInfo::lower(GetElementPtrInst* inst, LoweringContext& ctx) const {
    const auto [constantOffset, offsets] = inst->gatherOffsets(ctx.getDataLayout());
    auto& vreg = ctx.getAllocationPool(AddressSpace::VirtualReg);
    auto& constant = ctx.getAllocationPool(AddressSpace::Constant);
    const auto indexType = inst->operands().front()->getType();  // must be index type
    auto ptr = vreg.allocate(indexType);
    const auto base = ctx.mapOperand(inst->operands().back());

    if(constantOffset != 0) {
        const auto baseOffset = constant.allocate(indexType);
        constant.getMetadata(baseOffset) = ConstantInteger::get(indexType, static_cast<intmax_t>(constantOffset));
        ctx.emitInst<BinaryArithmeticMInst>(GMIRInstID::Add, base, baseOffset, ptr);
    } else {
        const auto& dataLayout = ctx.getDataLayout();
        ctx.emitInst<CopyMInst>(base, false, 0, ptr, false, 0, static_cast<uint32_t>(dataLayout.getPointerSize()), false);
    }
    for(auto [size, index] : offsets) {
        const auto idx = ctx.mapOperand(index);
        const auto off = vreg.allocate(indexType);
        const auto sizeConstant = constant.allocate(indexType);
        constant.getMetadata(sizeConstant) = ConstantInteger::get(indexType, static_cast<intmax_t>(size));
        ctx.emitInst<BinaryArithmeticMInst>(GMIRInstID::Mul, idx, sizeConstant, off);
        ctx.emitInst<BinaryArithmeticMInst>(GMIRInstID::Add, ptr, off, ptr);
    }
    ctx.addOperand(inst, ptr);
}
void LoweringInfo::lower(PtrCastInst* inst, LoweringContext& ctx) const {
    ctx.addOperand(inst, ctx.mapOperand(inst->getOperand(0)));
}
void LoweringInfo::lower(PtrToIntInst* inst, LoweringContext& ctx) const {
    ctx.addOperand(inst, ctx.mapOperand(inst->getOperand(0)));
}
void LoweringInfo::lower(IntToPtrInst* inst, LoweringContext& ctx) const {
    ctx.addOperand(inst, ctx.mapOperand(inst->getOperand(0)));
}

CMMC_NAMESPACE_END

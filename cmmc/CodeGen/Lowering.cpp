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

#include <cassert>
#include <cmmc/Analysis/BlockArgumentAnalysis.hpp>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Config.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <iostream>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

Operand LoweringContext::getZero(const Type* type) {
    const auto iter = mZeros.find(type);
    if(iter != mZeros.cend())
        return iter->second;
    const auto zero = mModule.target.getTargetLoweringVisitor().getZeroImpl(*this, type);
    return mZeros.emplace(type, zero).first->second;
}

LoweringContext::LoweringContext(GMIRModule& module, std::unordered_map<Block*, GMIRBasicBlock*>& blockMap,
                                 std::unordered_map<GlobalValue*, GMIRSymbol*>& globalMap,
                                 std::unordered_map<BlockArgument*, Operand>& blockArgs,
                                 std::unordered_map<Value*, Operand>& valueMap, TemporaryPools& pools)
    : mModule{ module }, mBlockMap{ blockMap }, mGlobalMap{ globalMap },
      mBlockArgs{ blockArgs }, mValueMap{ valueMap }, mPools{ pools }, mCurrentBasicBlock{ nullptr } {}

VirtualRegPool& LoweringContext::getAllocationPool(uint32_t addressSpace) noexcept {
    assert(addressSpace < std::size(mPools.pools));
    return mPools.pools[addressSpace];
}
GMIRModule& LoweringContext::getModule() const noexcept {
    return mModule;
}
GMIRBasicBlock* LoweringContext::mapBlock(Block* block) const {
    assert(mBlockMap.count(block));
    return mBlockMap.find(block)->second;
}
Operand LoweringContext::mapBlockArg(BlockArgument* arg) const {
    return mBlockArgs.find(arg)->second;
}
Operand LoweringContext::mapOperand(Value* operand) {
    const auto iter = mValueMap.find(operand);
    if(iter != mValueMap.cend())
        return iter->second;
    if(operand->isGlobal()) {
        // la
        reportNotImplemented();
    }
    if(!operand->isConstant()) {
        operand->dump(reportError() << "undefined operand ");
        reportUnreachable();
    }
    auto& pool = getAllocationPool(AddressSpace::Constant);
    const auto reg = pool.allocate(operand->getType());
    pool.getMetadata(reg) = operand;
    mValueMap.emplace(operand, reg);
    return reg;
}
void LoweringContext::setCurrentBasicBlock(GMIRBasicBlock* block) noexcept {
    mCurrentBasicBlock = block;
}
GMIRSymbol* LoweringContext::mapGlobal(GlobalValue* global) const {
    assert(mGlobalMap.count(global));
    return mGlobalMap.find(global)->second;
}
GMIRBasicBlock* LoweringContext::addBlockAfter() {
    auto& blocks = mCurrentBasicBlock->getFunction()->blocks();
    auto iter = std::find_if(blocks.cbegin(), blocks.cend(), [&](auto& block) { return &block == mCurrentBasicBlock; });
    assert(iter != blocks.cend());
    const auto ret = blocks.insert(std::next(iter), GMIRBasicBlock{ mCurrentBasicBlock->getFunction() });
    return &*ret;
}
void LoweringContext::addOperand(Value* value, Operand reg) {
    mValueMap.emplace(value, reg);
}
static void lowerToMachineFunction(GMIRFunction& mfunc, Function* func, GMIRModule& machineModule,
                                   std::unordered_map<GlobalValue*, GMIRSymbol*>& globalMap) {
    std::unordered_map<Block*, GMIRBasicBlock*> blockMap;
    std::unordered_map<BlockArgument*, Operand> blockArgMap;
    std::unordered_map<Value*, Operand> valueMap;
    LoweringContext ctx{ machineModule, blockMap, globalMap, blockArgMap, valueMap, mfunc.pools() };

    for(auto block : func->blocks()) {
        mfunc.blocks().push_back(GMIRBasicBlock{ &mfunc });
        auto mblock = &mfunc.blocks().back();
        blockMap.emplace(block, mblock);

        for(auto arg : block->args()) {
            const auto reg = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(arg->getType());
            blockArgMap[arg] = reg;
            valueMap[arg] = reg;
        }
    }

    auto& target = machineModule.target;

    auto& visitor = target.getTargetLoweringVisitor();

    for(auto block : func->blocks()) {
        auto mblock = blockMap[block];
        ctx.setCurrentBasicBlock(mblock);
        for(auto inst : block->instructions()) {
            visitor.lowerInst(inst, ctx);
        }
    }
}

void optimizeBlockLayout(GMIRFunction& func, const Target& target);
void schedule(GMIRFunction& func, const Target& target);
void allocateStackObjects(GMIRFunction& func, const Target& target);

static void lowerToMachineModule(GMIRModule& machineModule, const Module& module, AnalysisPassManager& analysis) {
    CMMC_UNUSED(analysis);  // TODO: life-time analysis for stack objects
    auto& symbols = machineModule.symbols;

    std::unordered_map<GlobalValue*, GMIRSymbol*> globalMap;

    for(auto global : module.globals()) {
        if(global->isFunction()) {
            auto func = global->as<Function>();
            if(func->blocks().empty()) {
                // TODO: external func
            } else {
                symbols.push_back(GMIRSymbol{ func->getSymbol(), func->getLinkage(),
                                              GMIRFunction{ static_cast<uint32_t>(func->entryBlock()->args().size()) } });
                globalMap.emplace(func, &symbols.back());
            }
        } else {
            reportNotImplemented();
        }
    }

    auto& target = module.getTarget();
    auto& subTarget = target.getSubTarget();

    auto dumpFunc = [&](const GMIRFunction& func) { func.dump(std::cerr, target); };

    for(auto [gv, symbol] : globalMap) {
        if(!gv->isFunction())
            continue;
        auto func = gv->as<Function>();
        auto& mfunc = std::get<GMIRFunction>(symbol->def);
        // Stage 1: instruction selection
        lowerToMachineFunction(mfunc, func, machineModule, globalMap);
        std::cerr << ".global " << symbol->symbol;
        dumpFunc(mfunc);
        std::cerr << "================" << std::endl;
        // Stage 2: legalize
        // TODO: types/ops/constants
        // Stage 3: fuse copy
        // TODO
        // Stage 4: fuse cmp & branch
        // TODO
        // Stage 5: peephole opt
        subTarget.peepholeOpt(mfunc);
        // Stage 5: basic-block-level DAG scheduling
        schedule(mfunc, target);
        // Stage 6: register allocation
        assignRegisters(mfunc, *func, target);
        // Stage 7: legalize stack objects
        allocateStackObjects(mfunc, target);
        // Stage 8: post scheduling
        schedule(mfunc, target);
        // Stage 9: post peephole opt
        subTarget.postPeepholeOpt(mfunc);
        // Stage 10: code layout opt
        optimizeBlockLayout(mfunc, target);
    }
    // Stage 11: global code layout opt
    // TODO: merge functions
}

std::unique_ptr<GMIRModule> lowerToMachineModule(Module& module, AnalysisPassManager& analysis) {
    Stage stage{ "lower to MIR" };

    auto& target = module.getTarget();
    auto machineModule = std::make_unique<GMIRModule>(target);
    lowerToMachineModule(*machineModule, module, analysis);
    // assert(machineModule->verify());
    return machineModule;
}

void LoweringVisitor::lowerInst(Instruction* inst, LoweringContext& ctx) const {
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
            lower(inst->as<ConditionalBranchInst>(), ctx);
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
            lower(inst->as<StackAllocInst>(), ctx);
            break;
        case InstructionID::Free:
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
        default:
            reportUnreachable();
    }
}
void LoweringVisitor::lower(BinaryInst* inst, LoweringContext& ctx) const {
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
                reportUnreachable();
        }
    }();
    const auto ret = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    ctx.emitInst<BinaryArithmeticMIInst>(id, ctx.mapOperand(inst->getOperand(0)), ctx.mapOperand(inst->getOperand(1)), ret);
    ctx.addOperand(inst, ret);
}
void LoweringVisitor::lower(CompareInst* inst, LoweringContext& ctx) const {
    const auto id = [instID = inst->getInstID()] {
        switch(instID) {
            case InstructionID::FCmp:
                return GMIRInstID::FCmp;
            case InstructionID::UCmp:
                return GMIRInstID::UCmp;
            case InstructionID::SCmp:
                return GMIRInstID::SCmp;
            default:
                reportUnreachable();
        }
    }();

    const auto ret = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    ctx.emitInst<CompareMInst>(id, inst->getOp(), ctx.mapOperand(inst->getOperand(0)), ctx.mapOperand(inst->getOperand(1)), ret);
    ctx.addOperand(inst, ret);
}
void LoweringVisitor::lower(UnaryInst* inst, LoweringContext& ctx) const {
    const auto id = [instID = inst->getInstID()] {
        switch(instID) {
            case InstructionID::Neg:
                return GMIRInstID::Neg;
            case InstructionID::FNeg:
                return GMIRInstID::FNeg;
            default:
                reportUnreachable();
        }
    }();

    const auto ret = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    ctx.emitInst<UnaryArithmeticMIInst>(id, ctx.mapOperand(inst->getOperand(0)), ret);
    ctx.addOperand(inst, ret);
}
void LoweringVisitor::lower(CastInst* inst, LoweringContext& ctx) const {
    CMMC_UNUSED(inst);
    CMMC_UNUSED(ctx);
    reportNotImplemented();
}
void LoweringVisitor::lower(LoadInst* inst, LoweringContext& ctx) const {
    const auto ret = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    ctx.emitInst<CopyMInst>(ctx.mapOperand(inst->getOperand(0)), true, 0, ret, false, 0);
    ctx.addOperand(inst, ret);
}
void LoweringVisitor::lower(StoreInst* inst, LoweringContext& ctx) const {
    ctx.emitInst<CopyMInst>(ctx.mapOperand(inst->getOperand(1)), false, 0, ctx.mapOperand(inst->getOperand(0)), true, 0);
}
static void emitBranch(const BranchTarget& target, LoweringContext& ctx) {
    const auto dstBlock = target.getTarget();
    auto& dst = dstBlock->args();
    auto& src = target.getArgs();
    for(size_t idx = 0; idx < dst.size(); ++idx) {
        const auto arg = ctx.mapOperand(src[idx]);
        ctx.emitInst<CopyMInst>(arg, false, 0, ctx.mapBlockArg(dst[idx]), false, 0);
    }
    const auto dstMBlock = ctx.mapBlock(dstBlock);
    ctx.emitInst<BranchMInst>(dstMBlock);
}
void LoweringVisitor::lower(ConditionalBranchInst* inst, LoweringContext& ctx) const {
    if(inst->getInstID() == InstructionID::Branch) {
        emitBranch(inst->getTrueTarget(), ctx);
    } else {
        const auto cond = ctx.mapOperand(inst->getOperand(0));
        // bnez %cond, false_label
        const auto falsePrepareBlock = ctx.addBlockAfter();
        ctx.emitInst<BranchCompareMInst>(GMIRInstID::SCmp, cond, ctx.getZero(IntegerType::get(1)), CompareOp::NotEqual,
                                         falsePrepareBlock);
        emitBranch(inst->getTrueTarget(), ctx);

        ctx.setCurrentBasicBlock(falsePrepareBlock);
        emitBranch(inst->getFalseTarget(), ctx);
    }
}
void LoweringVisitor::lower(UnreachableInst*, LoweringContext& ctx) const {
    ctx.emitInst<UnreachableMInst>();
}
void LoweringVisitor::lower(SelectInst* inst, LoweringContext& ctx) const {
    // c = x ? y : z;
    // ->
    // c = z;
    // beqz x BB
    // c = y;
    // BB:
    const auto ret = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    ctx.emitInst<CopyMInst>(ctx.mapOperand(inst->getOperand(2)), false, 0, ret, false, 0);
    const auto target = ctx.addBlockAfter();
    ctx.emitInst<BranchCompareMInst>(GMIRInstID::SCmp, ctx.mapOperand(inst->getOperand(0)), ctx.getZero(IntegerType::get(1)),
                                     CompareOp::Equal, target);
    ctx.emitInst<CopyMInst>(ctx.mapOperand(inst->getOperand(1)), false, 0, ret, false, 0);
    ctx.setCurrentBasicBlock(target);
    ctx.addOperand(inst, ret);
}
void LoweringVisitor::lower(StackAllocInst* inst, LoweringContext& ctx) const {
    const auto addr = ctx.getAllocationPool(AddressSpace::Stack).allocate(inst->getType());
    ctx.addOperand(inst, addr);
}
void LoweringVisitor::lower(GetElementPtrInst*, LoweringContext&) const {
    reportNotImplemented();
}
void LoweringVisitor::lower(PtrCastInst* inst, LoweringContext& ctx) const {
    ctx.addOperand(inst, ctx.mapOperand(inst->getOperand(0)));
}
void LoweringVisitor::lower(PtrToIntInst* inst, LoweringContext& ctx) const {
    ctx.addOperand(inst, ctx.mapOperand(inst->getOperand(0)));
}
void LoweringVisitor::lower(IntToPtrInst* inst, LoweringContext& ctx) const {
    ctx.addOperand(inst, ctx.mapOperand(inst->getOperand(0)));
}

CMMC_NAMESPACE_END

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

#include <cmmc/Analysis/BlockArgumentAnalysis.hpp>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Config.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

LoweringContext::LoweringContext(GMIRModule& module, std::unordered_map<Block*, GMIRBasicBlock*>& blockMap,
                                 std::unordered_map<BlockArgument*, Operand>& blockArgs,
                                 std::unordered_map<Value*, Operand>& valueMap)
    : mModule{ module }, mBlockMap{ blockMap }, mBlockArgs{ blockArgs }, mValueMap{ valueMap }, mCurrentBasicBlock{ nullptr } {}
Operand LoweringContext::newReg(uint32_t addressSpace) noexcept {
    // return makeVirtualRegister(++mAllocateBase);
    CMMC_UNUSED(addressSpace);
    reportUnreachable();
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
    if(!operand->isConstant()) {
        operand->dump(reportError() << "undefined operand ");
        reportUnreachable();
    }
    // const auto reg = mTargetInstInfo.emitConstant(operand->as<ConstantValue>(), *this);
    Operand reg;
    mValueMap.emplace(operand, reg);
    return reg;
}
void LoweringContext::setCurrentBasicBlock(GMIRBasicBlock* block) noexcept {
    mCurrentBasicBlock = block;
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
                                   AnalysisPassManager& analysis) {
    std::unordered_map<Block*, GMIRBasicBlock*> blockMap;
    std::unordered_map<BlockArgument*, Operand> blockArgMap;
    std::unordered_map<Value*, Operand> valueMap;
    auto& argMap = analysis.get<BlockArgumentAnalysis>(*func);
    CMMC_UNUSED(argMap);

    uint32_t allocateBase = 0;

    for(auto block : func->blocks()) {
        mfunc.blocks().push_back(GMIRBasicBlock{ &mfunc });
        auto mblock = &mfunc.blocks().back();
        blockMap.emplace(block, mblock);

        for(auto arg : block->args()) {
            const auto reg = allocateBase++;
            blockArgMap[arg] = Operand{ reg, 0 };
            valueMap[arg] = Operand{ reg, 0 };
            if(arg->getType()->isPointer()) {
                // addressMap[arg] = { RegBase{ reg }, 0 };
            }
        }
    }

    auto& target = machineModule.target;
    auto& dataLayout = target->getDataLayout();

    LoweringContext ctx{ machineModule, blockMap, blockArgMap, valueMap };

    for(auto block : func->blocks()) {
        auto mblock = blockMap[block];
        CMMC_UNUSED(mblock);
        for(auto inst : block->instructions()) {
            if(inst->getInstID() == InstructionID::Alloc) {
                const auto type = inst->getType()->as<PointerType>()->getPointee();
                const auto size = type->getSize(dataLayout);
                const auto alignment = type->getAlignment(dataLayout);
                CMMC_UNUSED(size);
                CMMC_UNUSED(alignment);
            }
        }
    }

    for(auto block : func->blocks()) {
        auto mblock = blockMap[block];
        ctx.setCurrentBasicBlock(mblock);

        for(auto inst : block->instructions()) {
            CMMC_UNUSED(inst);
            reportUnreachable();
        }
    }
}

static auto lowerToMachineModule(GMIRModule& machineModule, const Module& module, AnalysisPassManager& analysis) {
    auto& symbols = machineModule.symbols;

    std::unordered_map<GMIRFunction*, Function*> funcTask;

    for(auto global : module.globals()) {
        if(global->isFunction()) {
            auto func = global->as<Function>();
            if(func->blocks().empty()) {
                // TODO: external func
            } else {
                symbols.push_back(GMIRSymbol{ func->getSymbol(), func->getLinkage(),
                                              GMIRFunction{ static_cast<uint32_t>(func->entryBlock()->args().size()) } });
                funcTask.emplace(&std::get<GMIRFunction>(symbols.back().def), func);
            }
        } else {
            reportNotImplemented();
        }
    }

    for(auto [mfunc, func] : funcTask)
        lowerToMachineFunction(*mfunc, func, machineModule, analysis);
    return funcTask;
}

void optimizeBlockLayout(GMIRFunction& func, const Target& target);
void schedule(GMIRFunction& func, const Target& target);
void allocateStackObjects(GMIRFunction& func, const Target& target);

std::unique_ptr<GMIRModule> lowerToMachineModule(Module& module, AnalysisPassManager& analysis) {
    Stage stage{ "lower to MIR" };

    auto& target = module.getTarget();
    // Stage1: instruction selection
    auto machineModule = std::make_unique<GMIRModule>(&target);
    auto funcMap = lowerToMachineModule(*machineModule, module, analysis);

    auto& subTarget = target.getSubTarget();
    for(auto symbol : machineModule->symbols) {
        if(auto func = std::get_if<GMIRFunction>(&symbol.def)) {
            // Stage2: peephole optimizations
            // fuse copy
            // fuse cmp & branch
            subTarget.peepholeOpt(*func);
            // Stage3: block layout optimization
            optimizeBlockLayout(*func, target);
            // Stage4: basic block level DAG scheduling
            schedule(*func, target);
            // Stage5: register allocation
            assignRegisters(*func, *funcMap[func], target);
            // Stage6: stack location
            allocateStackObjects(*func, target);
            // Stage7: post peephole optimizations
            subTarget.postPeepholeOpt(*func);
        }
    }
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
            lower(inst->as<CastInst>(), ctx);
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
    const auto ret = ctx.newReg(AddressSpace::virtualReg);
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

    const auto ret = ctx.newReg(AddressSpace::virtualReg);
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

    const auto ret = ctx.newReg(AddressSpace::virtualReg);
    ctx.emitInst<UnaryArithmeticMIInst>(id, ctx.mapOperand(inst->getOperand(0)), ret);
    ctx.addOperand(inst, ret);
}
void LoweringVisitor::lower(CastInst* inst, LoweringContext& ctx) const {
    CMMC_UNUSED(inst);
    CMMC_UNUSED(ctx);
    reportNotImplemented();
}
void LoweringVisitor::lower(LoadInst* inst, LoweringContext& ctx) const {
    const auto ret = ctx.newReg(AddressSpace::virtualReg);
    ctx.emitInst<CopyMInst>(ctx.mapOperand(inst->getOperand(0)), true, 0U, ret, false, 0U);
    ctx.addOperand(inst, ret);
}
void LoweringVisitor::lower(StoreInst* inst, LoweringContext& ctx) const {
    ctx.emitInst<CopyMInst>(ctx.mapOperand(inst->getOperand(1)), false, 0U, ctx.mapOperand(inst->getOperand(0)), true, 0U);
}
static void emitBranch(const BranchTarget& target, LoweringContext& ctx) {
    const auto dstBlock = target.getTarget();
    auto& dst = dstBlock->args();
    auto& src = target.getArgs();
    for(size_t idx = 0; idx < dst.size(); ++idx) {
        const auto arg = ctx.mapOperand(src[idx]);
        ctx.emitInst<CopyMInst>(arg, false, 0U, ctx.mapBlockArg(dst[idx]), false, 0U);
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
        ctx.emitInst<BranchCompareMInst>(cond, getZero(), CompareOp::NotEqual, falsePrepareBlock);
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
    const auto ret = ctx.newReg(AddressSpace::virtualReg);
    ctx.emitInst<CopyMInst>(ctx.mapOperand(inst->getOperand(2)), false, 0U, ret, false, 0U);
    const auto target = ctx.addBlockAfter();
    ctx.emitInst<BranchCompareMInst>(ctx.mapOperand(inst->getOperand(0)), getZero(), CompareOp::Equal, target);
    ctx.emitInst<CopyMInst>(ctx.mapOperand(inst->getOperand(1)), false, 0U, ret, false, 0U);
    ctx.setCurrentBasicBlock(target);
}
void LoweringVisitor::lower(StackAllocInst*, LoweringContext&) const {
    reportNotImplemented();
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

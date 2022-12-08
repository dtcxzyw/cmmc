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
#include <cmmc/Support/Dispatch.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <deque>
#include <iostream>
#include <queue>
#include <unordered_map>
#include <variant>

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
                                 std::unordered_map<BlockArgument*, Operand>& blockArgs,
                                 std::unordered_map<Value*, Operand>& valueMap, TemporaryPools& pools,
                                 const BlockArgumentAnalysisResult& blockArgMap)
    : mModule{ module }, mBlockMap{ blockMap }, mGlobalMap{ globalMap }, mBlockArgs{ blockArgs }, mValueMap{ valueMap },
      mPools{ pools }, mCurrentBasicBlock{ nullptr }, mBlockArgMap{ blockArgMap } {}

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
    // TODO: use blockArgMap?
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
Value* LoweringContext::queryRoot(Value* val) const {
    return mBlockArgMap.queryRoot(val);
}

static void lowerToMachineFunction(GMIRFunction& mfunc, Function* func, GMIRModule& machineModule,
                                   std::unordered_map<GlobalValue*, GMIRSymbol*>& globalMap, AnalysisPassManager& analysis) {
    auto& blockArgMap = analysis.get<BlockArgumentAnalysis>(*func);
    std::unordered_map<Block*, GMIRBasicBlock*> blockMap;
    std::unordered_map<BlockArgument*, Operand> blockArgs;
    std::unordered_map<Value*, Operand> valueMap;
    LoweringContext ctx{ machineModule, blockMap, globalMap, blockArgs, valueMap, mfunc.pools(), blockArgMap };

    for(auto block : func->blocks()) {
        mfunc.blocks().push_back(GMIRBasicBlock{ &mfunc });
        auto mblock = &mfunc.blocks().back();
        blockMap.emplace(block, mblock);

        for(auto arg : block->args()) {
            const auto reg = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(arg->getType());
            blockArgs[arg] = reg;
            valueMap[arg] = reg;
        }
    }

    {
        auto& parameters = mfunc.parameters();
        for(auto arg : func->entryBlock()->args())
            parameters.push_back(blockArgs[arg]);
    }

    auto& target = machineModule.target;

    auto& info = target.getTargetLoweringInfo();

    for(auto block : func->blocks()) {
        auto mblock = blockMap[block];
        ctx.setCurrentBasicBlock(mblock);
        for(auto inst : block->instructions()) {
            info.lowerInst(inst, ctx);
        }
    }

    if constexpr(Config::debug) {
        func->dump(std::cerr);
        std::cerr << std::endl;
        mfunc.dump(std::cerr, target);
    }
    assert(mfunc.verify(std::cerr, true));
}

void optimizeBlockLayout(GMIRFunction& func, const Target& target);
void schedule(GMIRFunction& func, const Target& target, bool preRA);
void allocateStackObjects(GMIRFunction& func, const Target& target);

static void removeUnusedInsts(GMIRFunction& func) {
    std::unordered_map<Operand, std::vector<GMIRInst*>, OperandHasher> writers;
    std::queue<GMIRInst*> q;

    for(auto& block : func.blocks())
        for(auto& inst : block.instructions()) {
            std::visit(Overload{
                           [&](const ControlFlowIntrinsicMInst&) { q.push(&inst); },  //
                           [&](const CopyMInst& instRef) {
                               // store
                               if(instRef.indirectDst)
                                   q.push(&inst);
                               else if(instRef.dst.addressSpace == AddressSpace::VirtualReg) {  // load/move
                                   writers[instRef.dst].push_back(&inst);
                               }
                           },                                                  //
                           [&](const BranchCompareMInst&) { q.push(&inst); },  //
                           [&](const RetMInst&) { q.push(&inst); },            //
                           [&](const UnreachableMInst&) {},                    //
                           [&](const BranchMInst&) {},                         //
                           [&](const CallMInst&) {},                           //
                           [&](const auto& instRef) {
                               if(instRef.dst.addressSpace == AddressSpace::VirtualReg) {
                                   writers[instRef.dst].push_back(&inst);
                               }
                           },
                       },
                       inst);
        }

    while(!q.empty()) {
        auto& inst = *q.front();
        q.pop();

        auto popSrc = [&](const Operand& operand) {
            if(operand.addressSpace != AddressSpace::VirtualReg)
                return;
            if(auto iter = writers.find(operand); iter != writers.cend()) {
                for(auto inst : iter->second)
                    q.push(inst);
                writers.erase(iter);
            }
        };

        std::visit(Overload{
                       [&](const ControlFlowIntrinsicMInst& inst) { popSrc(inst.src); },  //
                       [&](const CopyMInst& inst) {
                           popSrc(inst.src);
                           if(inst.indirectDst)
                               popSrc(inst.dst);
                       },
                       [&](const BranchCompareMInst& inst) {
                           popSrc(inst.lhs);
                           popSrc(inst.rhs);
                       },                                                   //
                       [&](const RetMInst& inst) { popSrc(inst.retVal); },  //
                       [&](const UnreachableMInst&) {},                     //
                       [&](const BranchMInst&) {},
                       [&](const ConstantMInst&) {},
                       [&](const BinaryArithmeticMIInst& inst) {
                           popSrc(inst.lhs);
                           popSrc(inst.rhs);
                       },
                       [&](const CompareMInst& inst) {
                           popSrc(inst.lhs);
                           popSrc(inst.rhs);
                       },
                       [&](const ArithmeticIntrinsicMInst& inst) {
                           for(auto op : inst.src)
                               popSrc(op);
                       },
                       [&](const CallMInst&) {},
                       [&](const auto& inst) { popSrc(inst.src); },
                   },
                   inst);
    }
    std::unordered_set<GMIRInst*> remove;
    for(auto& [op, writerList] : writers) {
        CMMC_UNUSED(op);
        for(auto writer : writerList)
            remove.insert(writer);
    }

    for(auto& block : func.blocks())
        block.instructions().remove_if([&](auto& inst) { return remove.count(&inst); });
}

void simplifyCFG(GMIRFunction& func);

static void lowerToMachineModule(GMIRModule& machineModule, Module& module, AnalysisPassManager& analysis,
                                 OptimizationLevel optLevel) {
    auto& symbols = machineModule.symbols;

    std::unordered_map<GlobalValue*, GMIRSymbol*> globalMap;

    for(auto global : module.globals()) {
        if(global->isFunction()) {
            auto func = global->as<Function>();
            if(func->blocks().empty()) {
                // TODO: external func
            } else {
                symbols.push_back(GMIRSymbol{ func->getSymbol(), func->getLinkage(), GMIRFunction{} });
                globalMap.emplace(func, &symbols.back());
            }
        } else {
            reportNotImplemented();
        }
    }

    auto& target = module.getTarget();
    auto& subTarget = target.getSubTarget();

    target.legalizeModuleBeforeCodeGen(module, analysis);
    analysis.invalidateModule();

    auto dumpFunc = [&](const GMIRFunction& func) { func.dump(std::cerr, target); };
    CMMC_UNUSED(dumpFunc);

    for(auto [gv, symbol] : globalMap) {
        if(!gv->isFunction())
            continue;
        auto func = gv->as<Function>();
        auto& mfunc = std::get<GMIRFunction>(symbol->def);
        // Stage 1: instruction selection
        lowerToMachineFunction(mfunc, func, machineModule, globalMap, analysis);
        // Stage 2: clean up unused insts
        if(optLevel >= OptimizationLevel::O1)
            removeUnusedInsts(mfunc);
        // Stage 3: legalize
        target.legalizeFunc(mfunc);
        // Stage 4: peephole opt
        if(optLevel >= OptimizationLevel::O1)
            subTarget.peepholeOpt(mfunc);
        // Stage 5: pre-RA scheduling, minimize register pressure
        if(optLevel >= OptimizationLevel::O2)
            schedule(mfunc, target, true);
        // Stage 6: register allocation
        assignRegisters(mfunc, target);  // vr -> GPR/FPR/Stack
        std::cerr << ".global " << symbol->symbol;
        dumpFunc(mfunc);
        std::cerr << "================" << std::endl;
        // Stage 7: legalize stack objects, stack -> sp
        allocateStackObjects(mfunc, target);
        // Stage 8: post-RA scheduling, minimize latency
        if(optLevel >= OptimizationLevel::O3)
            schedule(mfunc, target, false);
        // Stage 9: post peephole opt
        if(optLevel >= OptimizationLevel::O1)
            subTarget.postPeepholeOpt(mfunc);
        // Stage 10: code layout opt
        if(optLevel >= OptimizationLevel::O2)
            optimizeBlockLayout(mfunc, target);
        // Stage 11: remove unreachable block/continuous goto/unused label
        if(optLevel >= OptimizationLevel::O1)
            simplifyCFG(mfunc);
    }
}

std::unique_ptr<GMIRModule> lowerToMachineModule(Module& module, AnalysisPassManager& analysis, OptimizationLevel optLevel) {
    Stage stage{ "lower to MIR" };

    auto& target = module.getTarget();
    auto machineModule = std::make_unique<GMIRModule>(target);
    lowerToMachineModule(*machineModule, module, analysis, optLevel);
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
                reportUnreachable();
        }
    }();
    const auto ret = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    ctx.emitInst<BinaryArithmeticMIInst>(id, ctx.mapOperand(inst->getOperand(0)), ctx.mapOperand(inst->getOperand(1)), ret);
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
                reportUnreachable();
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
                reportUnreachable();
        }
    }();

    const auto ret = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    ctx.emitInst<UnaryArithmeticMIInst>(id, ctx.mapOperand(inst->getOperand(0)), ret);
    ctx.addOperand(inst, ret);
}
void LoweringInfo::lower(CastInst* inst, LoweringContext& ctx) const {
    CMMC_UNUSED(inst);
    CMMC_UNUSED(ctx);
    reportNotImplemented();
}
void LoweringInfo::lower(LoadInst* inst, LoweringContext& ctx) const {
    const auto ret = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    ctx.emitInst<CopyMInst>(ctx.mapOperand(inst->getOperand(0)), true, 0, ret, false, 0);
    ctx.addOperand(inst, ret);
}
void LoweringInfo::lower(StoreInst* inst, LoweringContext& ctx) const {
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
void LoweringInfo::lower(ConditionalBranchInst* inst, LoweringContext& ctx) const {
    const auto emitCondBranch = [&](const Operand& lhs, const Operand& rhs, GMIRInstID instID, CompareOp op) {
        // bnez %cond, else_label
        // then_label:
        // ...
        // else_label:
        // ...
        //
        const auto thenPrepareBlock = ctx.addBlockAfter();
        const auto elsePrepareBlock = ctx.addBlockAfter();
        ctx.emitInst<BranchCompareMInst>(instID, lhs, rhs, op, elsePrepareBlock);
        ctx.setCurrentBasicBlock(thenPrepareBlock);
        emitBranch(inst->getTrueTarget(), ctx);

        ctx.setCurrentBasicBlock(elsePrepareBlock);
        emitBranch(inst->getFalseTarget(), ctx);
    };
    if(inst->getInstID() == InstructionID::Branch) {
        emitBranch(inst->getTrueTarget(), ctx);
    } else if(auto condInst = dynamic_cast<CompareInst*>(ctx.queryRoot(inst->getOperand(0)))) {
        const auto id = [instID = condInst->getInstID()] {
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
        emitCondBranch(ctx.mapOperand(condInst->getOperand(0)), ctx.mapOperand(condInst->getOperand(1)), id, condInst->getOp());
    } else {
        // bnez %cond, false_label
        const auto cond = ctx.mapOperand(inst->getOperand(0));
        emitCondBranch(cond, ctx.getZero(IntegerType::get(1)), GMIRInstID::SCmp, CompareOp::NotEqual);
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
    // BB2:
    const auto ret = ctx.getAllocationPool(AddressSpace::VirtualReg).allocate(inst->getType());
    ctx.emitInst<CopyMInst>(ctx.mapOperand(inst->getOperand(2)), false, 0, ret, false, 0);
    const auto next = ctx.addBlockAfter();
    const auto target = ctx.addBlockAfter();
    ctx.emitInst<BranchCompareMInst>(GMIRInstID::SCmp, ctx.mapOperand(inst->getOperand(0)), ctx.getZero(IntegerType::get(1)),
                                     CompareOp::Equal, target);
    ctx.setCurrentBasicBlock(next);
    ctx.emitInst<CopyMInst>(ctx.mapOperand(inst->getOperand(1)), false, 0, ret, false, 0);
    ctx.setCurrentBasicBlock(target);
    ctx.addOperand(inst, ret);
}
void LoweringInfo::lower(StackAllocInst* inst, LoweringContext& ctx) const {
    auto& pool = ctx.getAllocationPool(AddressSpace::Stack);
    const auto addr = pool.allocate(inst->getType());
    pool.getMetadata(addr) = inst;
    ctx.addOperand(inst, addr);
}
void LoweringInfo::lower(GetElementPtrInst*, LoweringContext&) const {
    reportNotImplemented();
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

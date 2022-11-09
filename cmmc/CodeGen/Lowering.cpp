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
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

LoweringContext::LoweringContext(GMIRModule& module, std::unordered_map<Block*, GMIRBasicBlock*>& blockMap,
                                 std::unordered_map<BlockArgument*, Operand>& blockArgs,
                                 std::unordered_map<Value*, Operand>& valueMap)
    : mModule{ module }, mTargetInstInfo{ module.target->getTargetInstInfo() }, mBlockMap{ blockMap },
      mBlockArgs{ blockArgs }, mValueMap{ valueMap }, mCurrentBasicBlock{ nullptr } {}
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
void LoweringContext::addLink(GMIRBasicBlock* successor) {
    CMMC_UNUSED(successor);
    // mCurrentBasicBlock->successors.push_back(successor);
    // successor->predecessors.push_back(mCurrentBasicBlock);
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
    auto& instInfo = target->getTargetInstInfo();
    CMMC_UNUSED(instInfo);
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

CMMC_NAMESPACE_END

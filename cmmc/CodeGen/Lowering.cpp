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

#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

static void lowerToMachineFunction(MachineFunction* mfunc, Function* func, MachineModule& machineModule) {
    std::unordered_map<Block*, MachineBasicBlock*> blockMap;
    std::unordered_map<BlockArgument*, Register> blockArgMap;
    std::unordered_map<Value*, Register> valueMap;
    std::unordered_map<Value*, Address> addressMap;

    auto allocateBase = makeVirtualRegister(0);

    for(auto block : func->blocks()) {
        auto mblock = make<MachineBasicBlock>();
        blockMap.emplace(block, mblock);
        for(auto arg : block->args())
            blockArgMap[arg] = allocateBase++;
    }

    auto& target = machineModule.getTarget();
    auto& instInfo = target.getTargetInstInfo();

    LoweringContext ctx{ machineModule, blockMap, blockArgMap, valueMap, addressMap, allocateBase };

    for(auto block : func->blocks()) {
        auto mblock = blockMap[block];
        ctx.setCurrentBasicBlock(mblock);

        for(auto inst : block->instructions()) {
            switch(inst->getInstID()) {
                case InstructionID::Alloc: {
                    reportNotImplemented();
                    break;
                }
                case InstructionID::Branch:
                    [[fallthrough]];
                case InstructionID::ConditionalBranch: {
                    reportNotImplemented();
                    break;
                }
                default:
                    if(instInfo.isSupportedInstruction(inst->getInstID())) {
                        instInfo.emit(inst, ctx);
                    } else {
                        // fallback to supported instructions
                        reportNotImplemented();
                    }
                    break;
            }
        }
    }
}

static void lowerToMachineModule(MachineModule& machineModule, const Module& module) {
    auto& symbols = machineModule.symbols();

    std::vector<std::pair<MachineFunction*, Function*>> funcTask;

    for(auto global : module.globals()) {
        if(global.second->isFunction()) {
            auto func = global.second->as<Function>();
            auto mfunc = make<MachineFunction>(String<Arena::Source::MC>{ func->getSymbol() });
            symbols.push_back(mfunc);
            funcTask.emplace_back(mfunc, func);
        } else {
            reportNotImplemented();
        }
    }

    for(auto [mfunc, func] : funcTask)
        lowerToMachineFunction(mfunc, func, machineModule);
}

std::unique_ptr<MachineModule> lowerToMachineModule(Module& module) {
    // Stage1: instruction selection
    auto machineModule = std::make_unique<MachineModule>(module.getTarget());
    lowerToMachineModule(*machineModule, module);

    // Stage2: basic block level DAG scheduling

    // Stage3: register allocation

    // Stage4: stack location

    // Stage5: post peephole optimizations

    return machineModule;
}

CMMC_NAMESPACE_END

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

#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>

CMMC_MIR_NAMESPACE_BEGIN

void forEachOperands(MIRFunction& func, const CodeGenContext& ctx, const std::function<void(MIROperand& op)>& functor) {
    for(auto& param : func.args())
        functor(param);
    for(auto& block : func.blocks())
        forEachOperands(*block, ctx, functor);
}

void forEachOperands(MIRBasicBlock& block, const CodeGenContext& ctx, const std::function<void(MIROperand& op)>& functor) {
    for(auto& inst : block.instructions()) {
        auto& instInfo = ctx.instInfo.getInstInfo(inst);
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            functor(inst.getOperand(idx));
        }
    }
}

void forEachDefOperands(MIRBasicBlock& block, const CodeGenContext& ctx, const std::function<void(MIROperand& op)>& functor) {
    for(auto& inst : block.instructions()) {
        auto& instInfo = ctx.instInfo.getInstInfo(inst);
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagDef)
                functor(inst.getOperand(idx));
        }
    }
}

void forEachUseOperands(MIRFunction& func, const CodeGenContext& ctx,
                        const std::function<void(MIRInst& inst, MIROperand& op)>& functor) {
    for(auto& block : func.blocks())
        forEachUseOperands(*block, ctx, functor);
}

void forEachUseOperands(MIRBasicBlock& block, const CodeGenContext& ctx,
                        const std::function<void(MIRInst& inst, MIROperand& op)>& functor) {
    for(auto& inst : block.instructions()) {
        auto& instInfo = ctx.instInfo.getInstInfo(inst);
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse)
                functor(inst, inst.getOperand(idx));
        }
    }
}

void dumpAssembly(std::ostream& out, const CodeGenContext& ctx, const MIRModule& module, const std::function<void()>& emitData,
                  const std::function<void()>& emitText) {
    //  TODO: rodata/bss

    out << ".data\n"sv;
    emitData();
    const auto dumpSymbol = [&](const MIRGlobal& global) {
        if(!global.reloc->isFunc())
            out << ".align " << global.alignment << std::endl;
        auto symbol = global.reloc->symbol();
        if(global.linkage == Linkage::Global)
            out << ".globl "sv << symbol << '\n';
        out << symbol << ":\n"sv;
    };
    for(auto& global : module.globals()) {
        if(!global->reloc->isFunc()) {
            dumpSymbol(*global);
            global->reloc->dump(out, ctx);
        }
    }

    out << ".text\n"sv;
    emitText();
    for(auto& global : module.globals()) {
        if(global->reloc->isFunc()) {
            auto& func = dynamic_cast<MIRFunction&>(*global->reloc);
            if(func.blocks().empty())
                continue;
            dumpSymbol(*global);
            for(auto& block : func.blocks()) {
                if(&block != &func.blocks().front()) {
                    block->dumpAsTarget(out);
                    out << ":\n";
                }
                for(auto& inst : block->instructions()) {
                    out << '\t';
                    auto& instInfo = ctx.instInfo.getInstInfo(inst);
                    instInfo.print(out, inst, false);
                    out << '\n';
                }
            }
        }
    }
}

[[noreturn]] void reportLegalizationFailure(const MIRInst& inst, const CodeGenContext& ctx, const DiagLocation& location) {
    std::cerr << "Failed to legalize inst: ";
    auto& instInfo = ctx.instInfo.getInstInfo(inst);
    instInfo.print(std::cerr, inst, true);
    std::cerr << '\n';
    reportNotImplemented(location);
}

CMMC_MIR_NAMESPACE_END

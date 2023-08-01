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
#include <cmmc/CodeGen/MIRCFGAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Bits.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <string_view>
#include <unordered_map>
#include <vector>

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
                  const std::function<void()>& emitText, bool emitAlignment) {
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
    enum class DataSection {
        Data,
        RoData,
        Bss,
    };
    const auto selectDataSection = [](MIRRelocable* reloc) {
        if(const auto data = dynamic_cast<MIRDataStorage*>(reloc))
            return data->isReadOnly() ? DataSection::RoData : DataSection::Data;
        if(const auto zero = dynamic_cast<MIRZeroStorage*>(reloc))
            return DataSection::Bss;
        reportUnreachable(CMMC_LOCATION());
    };
    static const char* directives[3] = { ".data", ".section .rodata", ".bss" };  // NOLINT
    std::unordered_map<DataSection, std::vector<MIRGlobal*>> globals;
    for(auto& global : module.globals()) {
        if(!global->reloc->isFunc())
            globals[selectDataSection(global->reloc.get())].push_back(global.get());
    }
    for(uint32_t idx = 0; idx < 3; ++idx) {
        auto& group = globals[static_cast<DataSection>(idx)];
        if(group.empty())
            continue;
        out << directives[idx] << '\n';
        for(auto global : group) {
            dumpSymbol(*global);
            global->reloc->dump(out, ctx);
        }
    }

    out << ".text\n"sv;
    emitText();
    const auto p2Align = ilog2(ctx.dataLayout.getCodeAlignment());

    for(auto& global : module.globals()) {
        if(global->reloc->isFunc()) {
            auto& func = dynamic_cast<MIRFunction&>(*global->reloc);
            if(func.blocks().empty())
                continue;

            for(auto& block : func.blocks()) {
                auto isPCRelLabel = [](const std::string_view& label) { return label == "pcrel"; };
                if(emitAlignment && !isPCRelLabel(block->symbol().prefix()) &&
                   (&block == &func.blocks().front() || block->getTripCount() >= primaryPathThreshold)) {
                    out << ".p2align " << p2Align << '\n';
                }
                if(&block != &func.blocks().front()) {
                    block->dumpAsTarget(out);
                    out << ":\n";
                } else {
                    dumpSymbol(*global);
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

const TargetOptHeuristic& Target::getOptHeuristic() const noexcept {
    static TargetOptHeuristic defaultHeuristic;
    return defaultHeuristic;
}

CMMC_MIR_NAMESPACE_END

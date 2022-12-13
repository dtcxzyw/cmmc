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

#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cmmc/Support/EnumName.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Target/MIPS/MIPSTarget.hpp>
#include <ostream>
#include <unordered_map>
#include <variant>

CMMC_NAMESPACE_BEGIN

[[maybe_unused]] static constexpr auto spimRuntime = R"(read:
    li $v0, 4
    la $a0, _prompt
    syscall
    li $v0, 5
    syscall
    jr $ra
write:
    li $v0, 1
    syscall
    li $v0, 4
    la $a0, _ret
    syscall
    move $v0, $0
    jr $ra
)";

const char* getMIPSTextualName(uint32_t idx) noexcept {
    constexpr const char* name[] = {
        "zero", "at", "v0", "v1", "a0", "a1", "a2", "a3",  //
        "t0",   "t1", "t2", "t3", "t4", "t5", "t6", "t7",  //
        "s0",   "s1", "s2", "s3", "s4", "s5", "s6", "s7",  //
        "t8",   "t9", "k0", "k1", "gp", "sp", "fp", "ra",  //
    };
    return name[idx];
}

static void printOperand(std::ostream& out, const Operand& operand) {
    switch(operand.addressSpace) {
        case MIPSAddressSpace::GPR:
            out << "$" << getMIPSTextualName(operand.id);
            break;
        case MIPSAddressSpace::FPR_S:
            out << "$f" << operand.id;
            break;
        case MIPSAddressSpace::FPR_D:
            out << "$f" << operand.id * 2;
            break;
        default:
            reportUnreachable();
    }
}

static void emitFunc(std::ostream& out, const String& symbol, const GMIRFunction& func,
                     const std::unordered_map<const GMIRBasicBlock*, String>& labelMap,
                     const std::unordered_map<const GMIRSymbol*, String>& symbolMap) {
    out << symbol << ":" << std::endl;

    for(auto& block : func.blocks()) {
        const auto& label = labelMap.at(block.get());
        out << label << ":" << std::endl;

        for(auto& inst : block->instructions()) {
            std::visit(Overload{ [&](const CopyMInst& copy) {
                                    if(copy.indirectSrc) {
                                        // load
                                        if(copy.dst.addressSpace == MIPSAddressSpace::GPR) {
                                            // TODO: lb/lbu/lw/lh/lhu
                                        } else if(copy.dst.addressSpace == MIPSAddressSpace::FPR_S) {
                                        } else if(copy.dst.addressSpace == MIPSAddressSpace::FPR_D) {
                                        }

                                        out << "nop";
                                    } else if(copy.indirectDst) {
                                        // store
                                        reportNotImplemented();

                                        out << "nop";
                                    } else {
                                        // mov
                                        reportNotImplemented();
                                    }
                                },
                                 [&](const ConstantMInst& constant) {
                                     out << "li ";
                                     CMMC_UNUSED(constant);
                                     reportNotImplemented();
                                 },
                                 [&](const UnaryArithmeticMInst& unary) {
                                     CMMC_UNUSED(unary);
                                     reportNotImplemented();
                                 },
                                 [&](const BinaryArithmeticMInst& binary) {
                                     CMMC_UNUSED(binary);
                                     reportNotImplemented();
                                 },
                                 [&](const BranchMInst& branch) {
                                     out << "j " << labelMap.at(branch.targetBlock) << std::endl;
                                     out << "nop";
                                 },
                                 [&](const BranchCompareMInst& branch) {
                                     CMMC_UNUSED(branch);
                                     reportNotImplemented();
                                     out << "nop";
                                 },
                                 [&](const CallMInst& call) {
                                     if(auto dst = std::get_if<Operand>(&call.callee)) {
                                         out << "jalr ";
                                         printOperand(out, *dst);
                                     } else {
                                         out << "jal " << symbolMap.find(std::get<GMIRSymbol*>(call.callee))->second;
                                     }
                                     out << std::endl << "nop";
                                 },
                                 [&](const RetMInst&) {
                                     out << "jr $ra" << std::endl;
                                     out << "nop";
                                 },
                                 [&](const ControlFlowIntrinsicMInst&) { reportNotImplemented(); },
                                 [](auto&&) { reportUnreachable(); } },
                       inst);

            out << std::endl;
        }
    }
    out << std::endl;
}

void MIPSTarget::emitAssembly(GMIRModule& module, std::ostream& out) const {
    LabelAllocator allocator;
    using namespace std::string_literals;

    std::unordered_map<const GMIRBasicBlock*, String> labelMap;
    std::unordered_map<const GMIRSymbol*, String> symbolMap;

    for(auto& symbol : module.symbols) {
        std::visit(Overload{ [&](const GMIRFunction& func) { emitFunc(out, symbol.symbol, func, labelMap, symbolMap); },
                             [](auto&&) { reportUnreachable(); } },
                   symbol.def);
    }
}

CMMC_NAMESPACE_END

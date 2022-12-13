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

#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cmmc/Support/EnumName.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Target/MIPS/MIPSTarget.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <ostream>
#include <unordered_map>
#include <variant>

CMMC_NAMESPACE_BEGIN

static constexpr auto spimRuntimeData = R"(_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n")";
static constexpr auto spimRuntimeText = R"(read:
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

static void printOperand(std::ostream& out, const Operand& operand, const VirtualRegPool& constantPool) {
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
        case MIPSAddressSpace::Constant: {
            const auto metadata = static_cast<ConstantValue*>(constantPool.getMetadata(operand));
            if(metadata->isUndefined())
                out << '0';
            else
                metadata->dump(out);
        } break;
        default:
            reportUnreachable();
    }
}

static void emitFunc(std::ostream& out, const GMIRFunction& func, const std::unordered_map<const GMIRSymbol*, String>& symbolMap,
                     LabelAllocator& allocator, bool hasDelaySlot) {
    std::unordered_map<const GMIRBasicBlock*, String> labelMap;
    auto baseName = String::get(".BB");
    for(auto& block : func.blocks())
        labelMap.emplace(block.get(), allocator.allocate(baseName));

    auto& constantPool = func.pools().pools[MIPSAddressSpace::Constant];
    const auto dumpOperand = [&](const Operand& operand) { printOperand(out, operand, constantPool); };

    for(auto& block : func.blocks()) {
        const auto& label = labelMap.at(block.get());
        if(&block != &func.blocks().front())
            out << label << ":" << std::endl;

        const auto delaySlot = [&] {
            if(hasDelaySlot)
                out << "\n    nop";
        };
        const auto isZero = [&](const Operand& op) {
            if(op.addressSpace == MIPSAddressSpace::Constant) {
                const auto value = static_cast<ConstantValue*>(constantPool.getMetadata(op));
                MatchContext<Value> matchCtx{ value, nullptr };
                return cint_(0)(matchCtx);
            }
            return false;
        };
        const auto dumpCompare = [&](CompareOp compareOp) {
            switch(compareOp) {
                case CompareOp::LessThan:
                    out << "lt";
                    break;
                case CompareOp::LessEqual:
                    out << "le";
                    break;
                case CompareOp::GreaterThan:
                    out << "gt";
                    break;
                case CompareOp::GreaterEqual:
                    out << "ge";
                    break;
                case CompareOp::Equal:
                    out << "eq";
                    break;
                case CompareOp::NotEqual:
                    out << "ne";
                    break;
                default:
                    reportUnreachable();
            }
        };

        for(auto& inst : block->instructions()) {
            out << "    ";
            std::visit(Overload{ [&](const CopyMInst& copy) {
                                    if(copy.indirectSrc && !copy.indirectDst) {
                                        // load
                                        if(copy.size == 4)
                                            out << "lw ";
                                        else if(copy.size == 1)
                                            out << "lb ";
                                        else
                                            reportUnreachable();

                                        dumpOperand(copy.dst);
                                        out << ", " << copy.srcOffset << '(';
                                        dumpOperand(copy.src);
                                        out << ')';

                                        delaySlot();
                                    } else if(copy.indirectDst && !copy.indirectSrc) {
                                        // store
                                        if(copy.size == 4)
                                            out << "sw ";
                                        else if(copy.size == 1)
                                            out << "sb ";
                                        else
                                            reportUnreachable();
                                        dumpOperand(copy.src);
                                        out << ", " << copy.dstOffset << '(';
                                        dumpOperand(copy.dst);
                                        out << ')';
                                    } else {
                                        if(copy.size == 4) {
                                            // move
                                            if(copy.src.addressSpace == MIPSAddressSpace::GPR)
                                                out << "move ";
                                            else if(copy.src.addressSpace == MIPSAddressSpace::Constant)
                                                out << "li ";
                                            else
                                                reportNotImplemented();

                                            dumpOperand(copy.dst);
                                            out << ", ";
                                            dumpOperand(copy.src);
                                        } else
                                            reportUnreachable();
                                    }
                                },
                                 [&](const ConstantMInst& constant) {
                                     out << "li ";
                                     dumpOperand(constant.dst);
                                     out << ", ";
                                     std::visit([&](auto x) { out << x; }, constant.constant);
                                 },
                                 [&](const UnaryArithmeticMInst&) { reportUnreachable(); },
                                 [&](const BinaryArithmeticMInst& binary) {
                                     switch(binary.instID) {
                                         case GMIRInstID::Add:
                                             out << "add";
                                             break;
                                         case GMIRInstID::Sub:
                                             out << "sub";
                                             break;
                                         case GMIRInstID::Mul:
                                             [[fallthrough]];
                                         case GMIRInstID::SDiv:
                                             [[fallthrough]];
                                         case GMIRInstID::UDiv:
                                             [[fallthrough]];
                                         case GMIRInstID::SRem:
                                             [[fallthrough]];
                                         case GMIRInstID::URem:
                                             [[fallthrough]];
                                         case GMIRInstID::FAdd:
                                             [[fallthrough]];
                                         case GMIRInstID::FSub:
                                             [[fallthrough]];
                                         case GMIRInstID::FMul:
                                             [[fallthrough]];
                                         case GMIRInstID::FDiv:
                                             [[fallthrough]];
                                         case GMIRInstID::FNeg:
                                             [[fallthrough]];
                                         case GMIRInstID::SCmp:
                                             [[fallthrough]];
                                         case GMIRInstID::UCmp:
                                             [[fallthrough]];
                                         case GMIRInstID::FCmp:
                                             reportNotImplemented();
                                         case GMIRInstID::And:
                                             out << "and";
                                             break;
                                         case GMIRInstID::Or:
                                             out << "or";
                                             break;
                                         case GMIRInstID::Shl:
                                             [[fallthrough]];
                                         case GMIRInstID::AShr:
                                             [[fallthrough]];
                                         case GMIRInstID::LShr:
                                             reportNotImplemented();
                                         default:
                                             reportUnreachable();
                                     };
                                     if(binary.rhs.addressSpace == MIPSAddressSpace::Constant) {
                                         out << 'i';
                                     }
                                     // no overflow handling
                                     if(binary.instID == GMIRInstID::Add || binary.instID == GMIRInstID::Sub) {
                                         out << 'u';
                                     }
                                     out << ' ';
                                     dumpOperand(binary.dst);
                                     out << ", ";
                                     dumpOperand(binary.lhs);
                                     out << ", ";
                                     dumpOperand(binary.rhs);
                                 },
                                 [&](const BranchMInst& branch) {
                                     out << "b " << labelMap.at(branch.targetBlock);
                                     delaySlot();
                                 },
                                 [&](const BranchCompareMInst& branch) {
                                     out << 'b';
                                     dumpCompare(branch.compareOp);
                                     if(branch.lhs.addressSpace == MIPSAddressSpace::GPR && isZero(branch.rhs)) {
                                         out << "z ";
                                         dumpOperand(branch.lhs);
                                     } else if(branch.lhs.addressSpace == MIPSAddressSpace::GPR &&
                                               branch.rhs.addressSpace == MIPSAddressSpace::GPR) {
                                         out << ' ';
                                         dumpOperand(branch.lhs);
                                         out << ", ";
                                         dumpOperand(branch.rhs);
                                     } else
                                         reportNotImplemented();  // TODO: fp cmp

                                     out << ", " << labelMap.at(branch.targetBlock);
                                     delaySlot();
                                 },
                                 [&](const CallMInst& call) {
                                     if(auto dst = std::get_if<Operand>(&call.callee)) {
                                         out << "jalr ";
                                         dumpOperand(*dst);
                                     } else {
                                         out << "jal " << symbolMap.find(std::get<GMIRSymbol*>(call.callee))->second;
                                     }
                                     delaySlot();
                                 },
                                 [&](const RetMInst&) {
                                     out << "jr $ra";
                                     delaySlot();
                                 },
                                 [&](const ControlFlowIntrinsicMInst&) { reportUnreachable(); },
                                 [](const auto&) { reportUnreachable(); } },
                       inst);

            out << "\n";
        }
    }
    out << std::endl;
}

extern StringOpt targetMachine;

void MIPSTarget::emitAssembly(GMIRModule& module, std::ostream& out) const {
    LabelAllocator allocator;
    using namespace std::string_literals;

    std::unordered_map<const GMIRSymbol*, String> symbolMap;

    for(auto& symbol : module.symbols)
        symbolMap.emplace(&symbol, allocator.allocate(symbol.symbol));

    bool hasDelaySlot = false, hasSpimRuntime = false;
    if(targetMachine.get() == "emulator") {
        hasSpimRuntime = true;
    } else {
        hasDelaySlot = true;
    }

    out << ".data" << std::endl;
    if(hasSpimRuntime) {
        out << spimRuntimeData << std::endl;
    }
    for(auto& symbol : module.symbols) {
        std::visit(Overload{ [&](const GMIRDataStorage&) { reportNotImplemented(); }, [](const auto&) {} }, symbol.def);
    }

    out << ".text" << std::endl;
    if(hasSpimRuntime) {
        out << spimRuntimeText << std::endl;
    }
    for(auto& symbol : module.symbols) {
        std::visit(Overload{ [&](const GMIRFunction& func) {
                                if(symbol.linkage == Linkage::Global)
                                    out << ".globl " << symbol.symbol << std::endl;
                                out << symbol.symbol << ':' << std::endl;
                                emitFunc(out, func, symbolMap, allocator, hasDelaySlot);
                            },
                             [](const auto&) {} },
                   symbol.def);
    }
}

CMMC_NAMESPACE_END

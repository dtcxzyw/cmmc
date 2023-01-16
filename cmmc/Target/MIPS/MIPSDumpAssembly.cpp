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

#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Instruction.hpp>
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

// TODO: remove pseudo instructions

CMMC_NAMESPACE_BEGIN

static constexpr auto spimRuntimeData = R"(_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n")";
static constexpr auto spimRuntimeText = R"(_entry:
    jal main
    move $a0, $v0
    li $v0, 17
    syscall
read:
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

std::string_view getMIPSTextualName(uint32_t idx) noexcept {
    // NOLINTNEXTLINE
    constexpr std::string_view name[] = {
        "zero", "at", "v0", "v1", "a0", "a1", "a2", "a3",  //
        "t0",   "t1", "t2", "t3", "t4", "t5", "t6", "t7",  //
        "s0",   "s1", "s2", "s3", "s4", "s5", "s6", "s7",  //
        "t8",   "t9", "k0", "k1", "gp", "sp", "fp", "ra",  //
    };
    return name[idx];
}

static void printOperand(std::ostream& out, const Operand& operand, const VirtualRegPool& constantPool) {
    switch(operand.addressSpace) {
        case MIPSAddressSpace::Constant: {
            const auto metadata = static_cast<ConstantValue*>(constantPool.getMetadata(operand));
            if(metadata->isUndefined())
                out << '0';
            else {
                if(metadata->getType()->isInteger()) {
                    out << metadata->as<ConstantInteger>()->getSignExtended();
                } else {
                    reportNotImplemented();
                }
            }
        } break;
        case MIPSAddressSpace::GPR:
            out << '$' << getMIPSTextualName(operand.id);
            break;
        case MIPSAddressSpace::FPR_S:
            out << "$f"sv << operand.id;
            break;
        case MIPSAddressSpace::FPR_D:
            out << "$f"sv << operand.id;
            break;
        default:
            reportUnreachable();
    }
}

static void emitFunc(std::ostream& out, const GMIRFunction& func, const std::unordered_map<const GMIRSymbol*, String>& symbolMap,
                     LabelAllocator& allocator, bool hasDelaySlot) {
    std::unordered_map<const GMIRBasicBlock*, String> labelMap;
    auto baseName = String::get(".BB"sv);
    for(auto& block : func.blocks())
        labelMap.emplace(block.get(), allocator.allocate(baseName));

    auto& constantPool = func.pools().pools[MIPSAddressSpace::Constant];
    const auto dumpOperand = [&](const Operand& operand) { printOperand(out, operand, constantPool); };

    for(auto& block : func.blocks()) {
        const auto& label = labelMap.at(block.get());
        if(&block != &func.blocks().front())
            out << label << ":\n"sv;

        const auto delaySlot = [&] {
            if(hasDelaySlot)
                out << "\n    nop"sv;
        };
        const auto isZero = [&](const Operand& op) {
            return op == Operand{ MIPSAddressSpace::GPR, 0 };  //$zero
        };
        const auto dumpCompare = [&](CompareOp compareOp) {
            switch(compareOp) {
                case CompareOp::LessThan:
                    out << "lt"sv;
                    break;
                case CompareOp::LessEqual:
                    out << "le"sv;
                    break;
                case CompareOp::GreaterThan:
                    out << "gt"sv;
                    break;
                case CompareOp::GreaterEqual:
                    out << "ge"sv;
                    break;
                case CompareOp::Equal:
                    out << "eq"sv;
                    break;
                case CompareOp::NotEqual:
                    out << "ne"sv;
                    break;
                default:
                    reportUnreachable();
            }
        };

        for(auto& inst : block->instructions()) {
            out << "    "sv;
            std::visit(Overload{ [&](const CopyMInst& copy) {
                                    if(copy.indirectSrc && !copy.indirectDst) {
                                        // load
                                        if(copy.size == 4) {
                                            if(copy.dst.addressSpace == MIPSAddressSpace::GPR)
                                                out << "lw "sv;
                                            else if(copy.dst.addressSpace == MIPSAddressSpace::FPR_S)
                                                out << "lwc1 "sv;
                                            else if(copy.dst.addressSpace == MIPSAddressSpace::FPR_D)
                                                out << "ldc1 "sv;
                                            else
                                                reportUnreachable();
                                        } else if(copy.size == 1)
                                            out << "lb "sv;
                                        else
                                            reportUnreachable();

                                        dumpOperand(copy.dst);
                                        out << ", "sv << copy.srcOffset << '(';
                                        dumpOperand(copy.src);
                                        out << ')';

                                        delaySlot();
                                    } else if(copy.indirectDst && !copy.indirectSrc) {
                                        // store
                                        if(copy.size == 4) {
                                            if(copy.src.addressSpace == MIPSAddressSpace::GPR)
                                                out << "sw "sv;
                                            else if(copy.src.addressSpace == MIPSAddressSpace::FPR_S)
                                                out << "swc1 "sv;
                                            else if(copy.src.addressSpace == MIPSAddressSpace::FPR_D)
                                                out << "sdc1 "sv;
                                            else
                                                reportUnreachable();
                                        } else if(copy.size == 1)
                                            out << "sb "sv;
                                        else
                                            reportUnreachable();
                                        dumpOperand(copy.src);
                                        out << ", "sv << copy.dstOffset << '(';
                                        dumpOperand(copy.dst);
                                        out << ')';
                                    } else {
                                        // mfacc
                                        if(copy.src.addressSpace == MIPSAddressSpace::HILO) {
                                            out << "mf"sv << (copy.src.id == 0 ? "hi"sv : "lo"sv) << ' ';
                                            dumpOperand(copy.dst);
                                        }
                                        // mtacc
                                        else if(copy.dst.addressSpace == MIPSAddressSpace::HILO) {
                                            out << "mt"sv << (copy.dst.id == 0 ? "hi"sv : "lo"sv) << ' ';
                                            dumpOperand(copy.src);
                                        } else {
                                            // move
                                            if(copy.src.addressSpace == MIPSAddressSpace::GPR) {
                                                if(copy.dst.addressSpace == MIPSAddressSpace::GPR)
                                                    out << "move "sv;
                                                else if(copy.dst.addressSpace == MIPSAddressSpace::FPR_S)
                                                    out << "mtc1 "sv;
                                                else
                                                    reportNotImplemented();
                                            } else if(copy.src.addressSpace == MIPSAddressSpace::Constant)
                                                out << "li "sv;
                                            else if(copy.src.addressSpace == MIPSAddressSpace::FPR_S) {
                                                if(copy.dst.addressSpace == MIPSAddressSpace::GPR)
                                                    out << "mfc1 "sv;
                                                else if(copy.dst.addressSpace == MIPSAddressSpace::FPR_S)
                                                    out << "mov.s "sv;
                                                else
                                                    reportNotImplemented();
                                            } else
                                                reportNotImplemented();

                                            dumpOperand(copy.dst);
                                            out << ", "sv;
                                            dumpOperand(copy.src);
                                        }
                                    }
                                },
                                 [&](const ConstantMInst& constant) {
                                     out << "li "sv;
                                     dumpOperand(constant.dst);
                                     out << ", "sv;
                                     if(std::holds_alternative<intmax_t>(constant.constant)) {
                                         out << std::get<intmax_t>(constant.constant);
                                     } else
                                         reportUnreachable();
                                 },
                                 [&](const GlobalAddressMInst& global) {
                                     out << "la "sv;
                                     dumpOperand(global.dst);
                                     out << ", "sv << symbolMap.at(global.global);
                                 },
                                 [&](const UnaryArithmeticMInst& unary) {
                                     if(unary.instID == GMIRInstID::FNeg) {
                                         if(unary.src.addressSpace == MIPSAddressSpace::FPR_S)
                                             out << "neg.s "sv;
                                         else
                                             out << "neg.d "sv;
                                     } else if(unary.instID == GMIRInstID::S2F) {
                                         if(unary.dst.addressSpace == MIPSAddressSpace::FPR_S) {
                                             out << "cvt.s.w "sv;
                                         } else {
                                             out << "cvt.d.w "sv;
                                         }
                                     } else if(unary.instID == GMIRInstID::F2S) {
                                         if(unary.dst.addressSpace == MIPSAddressSpace::FPR_S) {
                                             out << "cvt.w.s "sv;
                                         } else {
                                             out << "cvt.w.d "sv;
                                         }
                                     } else if(unary.instID == GMIRInstID::Neg) {
                                         out << "subu "sv;
                                     } else
                                         reportNotImplemented();

                                     dumpOperand(unary.dst);
                                     if(unary.instID == GMIRInstID::Neg) {
                                         out << ", $zero, "sv;
                                     } else
                                         out << ", "sv;
                                     dumpOperand(unary.src);
                                 },
                                 [&](const BinaryArithmeticMInst& binary) {
                                     switch(binary.instID) {
                                         case GMIRInstID::Add:
                                             out << "add"sv;
                                             break;
                                         case GMIRInstID::Sub:
                                             out << "sub"sv;
                                             break;
                                         case GMIRInstID::Mul:
                                             out << "mult"sv;
                                             break;
                                         case GMIRInstID::SDiv:
                                             [[fallthrough]];
                                         case GMIRInstID::SRem:
                                             out << "div"sv;
                                             break;
                                         case GMIRInstID::UDiv:
                                             [[fallthrough]];
                                         case GMIRInstID::URem:
                                             out << "divu"sv;
                                             break;
                                         case GMIRInstID::FAdd:
                                             out << "add"sv;
                                             break;
                                         case GMIRInstID::FSub:
                                             out << "sub"sv;
                                             break;
                                         case GMIRInstID::FMul:
                                             out << "mul"sv;
                                             break;
                                         case GMIRInstID::FDiv:
                                             out << "div"sv;
                                             break;
                                         case GMIRInstID::And:
                                             out << "and"sv;
                                             break;
                                         case GMIRInstID::Or:
                                             out << "or"sv;
                                             break;
                                         case GMIRInstID::Xor:
                                             out << "xor"sv;
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
                                     if(binary.lhs.addressSpace == MIPSAddressSpace::FPR_S) {
                                         out << ".s"sv;
                                     } else if(binary.lhs.addressSpace == MIPSAddressSpace::FPR_D) {
                                         out << ".d"sv;
                                     }
                                     out << ' ';
                                     if(binary.instID != GMIRInstID::Mul && binary.instID != GMIRInstID::SDiv &&
                                        binary.instID != GMIRInstID::UDiv && binary.instID != GMIRInstID::SRem &&
                                        binary.instID != GMIRInstID::URem) {
                                         dumpOperand(binary.dst);
                                         out << ", "sv;
                                     } else {
                                         assert(binary.dst == unusedOperand);
                                     }
                                     dumpOperand(binary.lhs);
                                     out << ", "sv;
                                     dumpOperand(binary.rhs);
                                 },
                                 [&](const BranchMInst& branch) {
                                     out << "b "sv << labelMap.at(branch.targetBlock);
                                     delaySlot();
                                 },
                                 [&](const BranchCompareMInst& branch) {
                                     if(branch.instID == GMIRInstID::FCmp) {
                                         out << "c."sv;
                                         dumpCompare(branch.compareOp);
                                         if(branch.lhs.addressSpace == MIPSAddressSpace::FPR_S)
                                             out << ".s "sv;
                                         else
                                             out << ".d "sv;

                                         dumpOperand(branch.lhs);
                                         out << ", "sv;
                                         dumpOperand(branch.rhs);
                                         out << "\n    bc1t "sv << labelMap.at(branch.targetBlock);
                                     } else {
                                         out << 'b';
                                         dumpCompare(branch.compareOp);
                                         if(branch.lhs.addressSpace == MIPSAddressSpace::GPR && isZero(branch.rhs)) {
                                             out << "z "sv;
                                             dumpOperand(branch.lhs);
                                         } else if(branch.lhs.addressSpace == MIPSAddressSpace::GPR &&
                                                   branch.rhs.addressSpace == MIPSAddressSpace::GPR) {
                                             out << ' ';
                                             dumpOperand(branch.lhs);
                                             out << ", "sv;
                                             dumpOperand(branch.rhs);
                                         } else
                                             reportNotImplemented();  // TODO: fp cmp

                                         out << ", "sv << labelMap.at(branch.targetBlock);
                                     }
                                     delaySlot();
                                 },
                                 [&](const CompareMInst& cmp) {
                                     if(cmp.instID == GMIRInstID::SCmp) {
                                         out << 's';
                                         dumpCompare(cmp.compareOp);
                                         out << ' ';
                                         dumpOperand(cmp.dst);
                                         out << ", "sv;
                                         dumpOperand(cmp.lhs);
                                         out << ", "sv;
                                         dumpOperand(cmp.rhs);
                                     } else if(cmp.instID == GMIRInstID::FCmp) {
                                         out << "c."sv;
                                         dumpCompare(cmp.compareOp);
                                         if(cmp.lhs.addressSpace == MIPSAddressSpace::FPR_S)
                                             out << ".s "sv;
                                         else
                                             out << ".d "sv;

                                         dumpOperand(cmp.lhs);
                                         out << ", "sv;
                                         dumpOperand(cmp.rhs);
                                         // clear
                                         out << "\n    li "sv;
                                         dumpOperand(cmp.dst);
                                         // set
                                         out << ", 1\n    movf "sv;
                                         dumpOperand(cmp.dst);
                                         out << ", $zero"sv;
                                     }
                                 },
                                 [&](const CallMInst& call) {
                                     if(auto dst = std::get_if<Operand>(&call.callee)) {
                                         out << "jalr "sv;
                                         dumpOperand(*dst);
                                     } else {
                                         out << "jal "sv << symbolMap.at(std::get<GMIRSymbol*>(call.callee));
                                     }
                                     delaySlot();
                                 },
                                 [&](const RetMInst&) {
                                     out << "jr $ra"sv;
                                     delaySlot();
                                 },
                                 [&](const ControlFlowIntrinsicMInst&) { reportUnreachable(); },
                                 [&](const UnreachableMInst&) { out << "break"; }, [](const auto&) { reportNotImplemented(); } },
                       inst);

            out << '\n';
        }
    }
    out << '\n';
}

extern StringOpt targetMachine;  // NOLINT

void MIPSTarget::emitAssembly(const GMIRModule& module, std::ostream& out) const {
    bool hasDelaySlot = false, hasSpimRuntime = false;
    if(targetMachine.get() == "emulator") {
        hasSpimRuntime = true;
    } else {
        hasDelaySlot = true;
    }

    dumpAssembly(
        out, module,
        [&] {
            if(hasSpimRuntime) {
                out << spimRuntimeData << '\n';
            }
        },
        [&] {
            if(hasSpimRuntime) {
                out << spimRuntimeText << '\n';
            }
        },
        [&](const GMIRFunction& func, const std::unordered_map<const GMIRSymbol*, String>& symbolMap, LabelAllocator& allocator) {
            emitFunc(out, func, symbolMap, allocator, hasDelaySlot);
        });
}

CMMC_NAMESPACE_END

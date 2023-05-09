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
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Support/StaticReflection.hpp>
#include <cmmc/Target/RISCV/RISCVTarget.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <ostream>
#include <unordered_map>
#include <variant>

// TODO: remove pseudo instructions

CMMC_NAMESPACE_BEGIN

static constexpr auto emuRuntimeData = R"(_prompt: .asciz "Enter an integer:"
_ret: .asciz "\n")";
static constexpr auto emuRuntimeText = R"(_entry:
    call main
    li a7, 93
    ecall
read:
    li a7, 4
    la a0, _prompt
    ecall
    li a7, 5
    ecall
    ret
write:
    li a7, 1
    ecall
    li a7, 4
    la a0, _ret
    ecall
    mv a0, x0
    ret
)";

std::string_view getRISCVTextualName(uint32_t idx) noexcept {
    // NOLINTNEXTLINE
    constexpr std::string_view name[] = {
        "zero", "ra", "sp",  "gp",  "tp", "t0", "t1", "t2",  //
        "s0",   "s1", "a0",  "a1",  "a2", "a3", "a4", "a5",  //
        "a6",   "a7", "s2",  "s3",  "s4", "s5", "s6", "s7",  //
        "s8",   "s9", "s10", "s11", "t3", "t4", "t5", "t6",  //
    };
    return name[idx];
}

static void printOperand(std::ostream& out, const Operand& operand, const VirtualRegPool& constantPool) {
    switch(operand.addressSpace) {
        case RISCVAddressSpace::Constant: {
            const auto metadata = static_cast<ConstantValue*>(constantPool.getMetadata(operand));
            if(metadata->isUndefined())
                out << '0';
            else {
                if(metadata->getType()->isInteger()) {
                    out << metadata->as<ConstantInteger>()->getSignExtended();
                } else {
                    reportNotImplemented(CMMC_LOCATION());
                }
            }
        } break;
        case RISCVAddressSpace::GPR:
            out << getRISCVTextualName(operand.id);
            break;
        case RISCVAddressSpace::FPR_S:
            out << "f"sv << operand.id;
            break;
        case RISCVAddressSpace::FPR_D:
            out << "f"sv << operand.id;
            break;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static void emitFunc(std::ostream& out, const GMIRFunction& func, const std::unordered_map<const GMIRSymbol*, String>& symbolMap,
                     LabelAllocator& allocator) {
    std::unordered_map<const GMIRBasicBlock*, String> labelMap;
    auto baseName = String::get(".BB"sv);
    for(auto& block : func.blocks())
        labelMap.emplace(block.get(), allocator.allocate(baseName));

    auto& constantPool = func.pools().pools[RISCVAddressSpace::Constant];
    const auto dumpOperand = [&](const Operand& operand) { printOperand(out, operand, constantPool); };

    for(auto& block : func.blocks()) {
        const auto& label = labelMap.at(block.get());
        if(&block != &func.blocks().front())
            out << label << ":\n"sv;

        const auto isZero = [&](const Operand& op) {
            if(op.addressSpace == RISCVAddressSpace::Constant) {
                const auto value = static_cast<ConstantValue*>(constantPool.getMetadata(op));
                MatchContext<Value> matchCtx{ value, nullptr };
                return cint_(0)(matchCtx);
            }
            return false;
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
                    reportUnreachable(CMMC_LOCATION());
            }
        };

        for(auto& inst : block->instructions()) {
            out << "    "sv;
            std::visit(Overload{ [&](const CopyMInst& copy) {
                                    if(copy.indirectSrc && !copy.indirectDst) {
                                        if(copy.dst.addressSpace != RISCVAddressSpace::GPR)
                                            out << 'f';
                                        // load
                                        if(copy.size == 8)
                                            out << "ld "sv;
                                        else if(copy.size == 4)
                                            out << "lw "sv;
                                        else if(copy.size == 2)
                                            out << "lh "sv;
                                        else if(copy.size == 1)
                                            out << "lb "sv;
                                        else
                                            reportUnreachable(CMMC_LOCATION());

                                        dumpOperand(copy.dst);
                                        out << ", "sv << copy.srcOffset << '(';
                                        dumpOperand(copy.src);
                                        out << ')';
                                    } else if(copy.indirectDst && !copy.indirectSrc) {
                                        if(copy.dst.addressSpace != RISCVAddressSpace::GPR)
                                            out << 'f';
                                        // store
                                        if(copy.size == 8)
                                            out << "sd "sv;
                                        else if(copy.size == 4)
                                            out << "sw "sv;
                                        else if(copy.size == 2)
                                            out << "sh "sv;
                                        else if(copy.size == 1)
                                            out << "sb "sv;
                                        else
                                            reportUnreachable(CMMC_LOCATION());
                                        dumpOperand(copy.src);
                                        out << ", "sv << copy.dstOffset << '(';
                                        dumpOperand(copy.dst);
                                        out << ')';
                                    } else {
                                        // move
                                        if(copy.src.addressSpace == RISCVAddressSpace::GPR) {
                                            if(copy.dst.addressSpace == RISCVAddressSpace::GPR)
                                                out << "mv "sv;
                                            else if(copy.dst.addressSpace == RISCVAddressSpace::FPR_S) {
                                                out << "fmv.w.x "sv;
                                            } else
                                                reportNotImplemented(CMMC_LOCATION());
                                        } else if(copy.src.addressSpace == RISCVAddressSpace::Constant)
                                            out << "li "sv;
                                        else if(copy.src.addressSpace == RISCVAddressSpace::FPR_S) {
                                            if(copy.dst.addressSpace == RISCVAddressSpace::GPR)
                                                out << "fmv.x.w "sv;
                                            else if(copy.dst.addressSpace == RISCVAddressSpace::FPR_S)
                                                out << "fmv.s "sv;
                                            else
                                                reportNotImplemented(CMMC_LOCATION());
                                        } else
                                            reportNotImplemented(CMMC_LOCATION());

                                        dumpOperand(copy.dst);
                                        out << ", "sv;
                                        dumpOperand(copy.src);
                                    }
                                },
                                 [&](const GlobalAddressMInst& global) {
                                     out << "la "sv;
                                     dumpOperand(global.dst);
                                     out << ", "sv << symbolMap.at(global.global);
                                 },
                                 [&](const ConstantMInst& constant) {
                                     out << "li "sv;
                                     dumpOperand(constant.dst);
                                     out << ", "sv;
                                     std::visit([&](auto x) { out << x; }, constant.constant);
                                 },
                                 [&](const UnaryArithmeticMInst& unary) {
                                     if(unary.instID == GMIRInstID::FNeg) {
                                         if(unary.src.addressSpace == RISCVAddressSpace::FPR_S)
                                             out << "fneg.s "sv;
                                         else
                                             out << "fneg.d "sv;
                                     } else if(unary.instID == GMIRInstID::S2F) {
                                         // TODO: 64-bit integer to float
                                         if(unary.dst.addressSpace == RISCVAddressSpace::FPR_S) {
                                             out << "fcvt.s.w "sv;
                                         } else {
                                             out << "fcvt.d.w "sv;
                                         }
                                     } else if(unary.instID == GMIRInstID::F2S) {
                                         // use trunc (not round)
                                         if(unary.dst.addressSpace == RISCVAddressSpace::FPR_S) {
                                             out << "fcvt.w.s "sv;
                                         } else {
                                             out << "fcvt.w.d "sv;
                                         }
                                     } else if(unary.instID == GMIRInstID::Neg) {
                                         out << "neg "sv;
                                     } else
                                         reportNotImplemented(CMMC_LOCATION());

                                     dumpOperand(unary.dst);
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
                                             out << "mul"sv;
                                             break;
                                         case GMIRInstID::SDiv:
                                             out << "div"sv;
                                             break;
                                         case GMIRInstID::SRem:
                                             out << "rem"sv;
                                             break;
                                         case GMIRInstID::UDiv:
                                             out << "divu"sv;
                                             break;
                                         case GMIRInstID::URem:
                                             out << "remu"sv;
                                             break;
                                         case GMIRInstID::FAdd:
                                             out << "fadd"sv;
                                             break;
                                         case GMIRInstID::FSub:
                                             out << "fsub"sv;
                                             break;
                                         case GMIRInstID::FMul:
                                             out << "fmul"sv;
                                             break;
                                         case GMIRInstID::FDiv:
                                             out << "fdiv"sv;
                                             break;
                                         case GMIRInstID::And:
                                             out << "and"sv;
                                             break;
                                         case GMIRInstID::Or:
                                             out << "or"sv;
                                             break;
                                         case GMIRInstID::Shl:
                                             out << "sll"sv;
                                             break;
                                         case GMIRInstID::AShr:
                                             out << "sra"sv;
                                             break;
                                         case GMIRInstID::LShr:
                                             out << "srl"sv;
                                             break;
                                         default:
                                             reportUnreachable(CMMC_LOCATION());
                                     };
                                     if(binary.rhs.addressSpace == RISCVAddressSpace::Constant) {
                                         out << 'i';
                                     } else if(binary.lhs.addressSpace == RISCVAddressSpace::FPR_S) {
                                         out << ".s"sv;
                                     } else if(binary.lhs.addressSpace == RISCVAddressSpace::FPR_D) {
                                         out << ".d"sv;
                                     }
                                     out << ' ';
                                     dumpOperand(binary.dst);
                                     out << ", "sv;
                                     dumpOperand(binary.lhs);
                                     out << ", "sv;
                                     dumpOperand(binary.rhs);
                                 },
                                 [&](const BranchMInst& branch) { out << "j "sv << labelMap.at(branch.targetBlock); },
                                 [&](const BranchCompareMInst& branch) {
                                     out << 'b';
                                     dumpCompare(branch.compareOp);
                                     if(branch.lhs.addressSpace == RISCVAddressSpace::GPR && isZero(branch.rhs)) {
                                         out << "z "sv;
                                         dumpOperand(branch.lhs);
                                     } else if(branch.lhs.addressSpace == RISCVAddressSpace::GPR &&
                                               branch.rhs.addressSpace == RISCVAddressSpace::GPR) {
                                         out << ' ';
                                         dumpOperand(branch.lhs);
                                         out << ", "sv;
                                         dumpOperand(branch.rhs);
                                     } else
                                         reportUnreachable(CMMC_LOCATION());  // fused fp conditional branch is unsupported

                                     out << ", "sv << labelMap.at(branch.targetBlock);
                                 },
                                 [&](const CompareMInst& cmp) {
                                     bool reversed = false;
                                     if(cmp.instID == GMIRInstID::FCmp) {
                                         out << 'f';
                                         const auto dumpCompareFP = [&](CompareOp compareOp) {
                                             switch(compareOp) {
                                                 case CompareOp::LessThan:
                                                     out << "lt"sv;
                                                     return false;
                                                 case CompareOp::LessEqual:
                                                     out << "le"sv;
                                                     return false;
                                                 case CompareOp::GreaterThan:
                                                     out << "lt"sv;
                                                     return true;
                                                 case CompareOp::GreaterEqual:
                                                     out << "lt"sv;
                                                     return true;
                                                 case CompareOp::Equal:
                                                     out << "eq"sv;
                                                     return false;
                                                     // neq should be handled by legalization
                                                 default:
                                                     reportUnreachable(CMMC_LOCATION());
                                             }
                                         };
                                         reversed = dumpCompareFP(cmp.compareOp);
                                         out << (cmp.lhs.addressSpace == RISCVAddressSpace::FPR_S ? ".s "sv : ".d "sv);
                                     } else {
                                         out << 's';
                                         dumpCompare(cmp.compareOp);
                                         if(cmp.rhs.addressSpace == RISCVAddressSpace::Constant) {
                                             out << 'i';
                                         }
                                         if(cmp.instID == GMIRInstID::UCmp)
                                             out << 'u';
                                     }
                                     out << ' ';
                                     dumpOperand(cmp.dst);
                                     out << ", "sv;
                                     dumpOperand(reversed ? cmp.rhs : cmp.lhs);
                                     out << ", "sv;
                                     dumpOperand(reversed ? cmp.lhs : cmp.rhs);
                                 },
                                 [&](const CallMInst& call) {
                                     if(auto dst = std::get_if<Operand>(&call.callee)) {
                                         out << "call "sv;
                                         dumpOperand(*dst);
                                     } else {
                                         out << "call "sv << symbolMap.find(std::get<GMIRSymbol*>(call.callee))->second;
                                     }
                                 },
                                 [&](const RetMInst&) { out << "ret"sv; },
                                 [&](const ControlFlowIntrinsicMInst&) { reportUnreachable(CMMC_LOCATION()); },
                                 [](const auto&) { reportUnreachable(CMMC_LOCATION()); } },
                       inst);

            out << '\n';
        }
    }
    out << '\n';
}

extern StringOpt targetMachine;  // NOLINT

void RISCVTarget::emitAssembly(const GMIRModule& module, std::ostream& out) const {
    bool hasEmuRuntime = false;
    if(targetMachine.get() == "emulator") {
        hasEmuRuntime = true;
    }
    dumpAssembly(
        out, module,
        [&] {
            if(hasEmuRuntime) {
                out << emuRuntimeData << '\n';
            }
        },
        [&] {
            if(hasEmuRuntime) {
                out << emuRuntimeText << '\n';
            }
        },
        [&](const GMIRFunction& func, const std::unordered_map<const GMIRSymbol*, String>& symbolMap, LabelAllocator& allocator) {
            emitFunc(out, func, symbolMap, allocator);
        });
}

CMMC_NAMESPACE_END

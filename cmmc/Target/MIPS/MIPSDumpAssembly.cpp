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
            else
                metadata->dump(out);
        } break;
        case MIPSAddressSpace::GPR:
            out << '$' << getMIPSTextualName(operand.id);
            break;
        case MIPSAddressSpace::FPR_S:
            out << "$f"sv << operand.id;
            break;
        case MIPSAddressSpace::FPR_D:
            out << "$f"sv << operand.id * 2;
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
                                        if(copy.size == 4)
                                            out << "lw "sv;
                                        else if(copy.size == 1)
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
                                        if(copy.size == 4)
                                            out << "sw "sv;
                                        else if(copy.size == 1)
                                            out << "sb "sv;
                                        else
                                            reportUnreachable();
                                        dumpOperand(copy.src);
                                        out << ", "sv << copy.dstOffset << '(';
                                        dumpOperand(copy.dst);
                                        out << ')';
                                    } else {
                                        if(copy.size == 4) {
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
                                                if(copy.src.addressSpace == MIPSAddressSpace::GPR)
                                                    out << "move "sv;
                                                else if(copy.src.addressSpace == MIPSAddressSpace::Constant)
                                                    out << "li "sv;
                                                else
                                                    reportNotImplemented();

                                                dumpOperand(copy.dst);
                                                out << ", "sv;
                                                dumpOperand(copy.src);
                                            }
                                        } else
                                            reportUnreachable();
                                    }
                                },
                                 [&](const ConstantMInst& constant) {
                                     out << "li "sv;
                                     dumpOperand(constant.dst);
                                     out << ", "sv;
                                     std::visit([&](auto x) { out << x; }, constant.constant);
                                 },
                                 [&](const UnaryArithmeticMInst&) { reportUnreachable(); },
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
                                             [[fallthrough]];
                                         case GMIRInstID::FSub:
                                             [[fallthrough]];
                                         case GMIRInstID::FMul:
                                             [[fallthrough]];
                                         case GMIRInstID::FDiv:
                                             [[fallthrough]];
                                         case GMIRInstID::FNeg:
                                             reportNotImplemented();
                                         case GMIRInstID::And:
                                             out << "and"sv;
                                             break;
                                         case GMIRInstID::Or:
                                             out << "or"sv;
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
                                     delaySlot();
                                 },
                                 [&](const CompareMInst& cmp) {
                                     out << 's';
                                     dumpCompare(cmp.compareOp);
                                     if(cmp.instID == GMIRInstID::SCmp) {
                                         out << ' ';
                                         dumpOperand(cmp.dst);
                                         out << ", "sv;
                                         dumpOperand(cmp.lhs);
                                         out << ", "sv;
                                         dumpOperand(cmp.rhs);
                                     } else
                                         reportNotImplemented();  // TODO: fp cmp
                                 },
                                 [&](const CallMInst& call) {
                                     if(auto dst = std::get_if<Operand>(&call.callee)) {
                                         out << "jalr "sv;
                                         dumpOperand(*dst);
                                     } else {
                                         out << "jal "sv << symbolMap.find(std::get<GMIRSymbol*>(call.callee))->second;
                                     }
                                     delaySlot();
                                 },
                                 [&](const RetMInst&) {
                                     out << "jr $ra"sv;
                                     delaySlot();
                                 },
                                 [&](const ControlFlowIntrinsicMInst&) { reportUnreachable(); },
                                 [](const auto&) { reportUnreachable(); } },
                       inst);

            out << '\n';
        }
    }
    out << '\n';
}

extern StringOpt targetMachine;

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

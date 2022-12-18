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
#include <cmmc/Target/ARM/ARMTarget.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <ostream>
#include <unordered_map>
#include <variant>

// TODO: remove pseudo instructions

CMMC_NAMESPACE_BEGIN

std::string_view getARMTextualName(uint32_t idx) noexcept {
    constexpr std::string_view name[] = {
        "a1", "a2", "a3", "a4", "v1", "v2", "v3", "v4",  //
        "v5", "v6", "v7", "v8", "ip", "sp", "lr", "pc",  //
    };
    return name[idx];
}

static void printOperand(std::ostream& out, const Operand& operand, const VirtualRegPool& constantPool) {
    switch(operand.addressSpace) {
        case ARMAddressSpace::Constant: {
            const auto metadata = static_cast<ConstantValue*>(constantPool.getMetadata(operand));
            if(metadata->isUndefined())
                out << '0';
            else
                metadata->dump(out);
        } break;
        case ARMAddressSpace::GPR:
            out << getARMTextualName(operand.id);
            break;
        case ARMAddressSpace::FPR_S:
            out << "f"sv << operand.id;
            break;
        case ARMAddressSpace::FPR_D:
            out << "f"sv << operand.id * 2;
            break;
        default:
            reportUnreachable();
    }
}

static void emitFunc(std::ostream& out, const GMIRFunction& func, const std::unordered_map<const GMIRSymbol*, String>& symbolMap,
                     LabelAllocator& allocator) {
    std::unordered_map<const GMIRBasicBlock*, String> labelMap;
    auto baseName = String::get(".BB"sv);
    for(auto& block : func.blocks())
        labelMap.emplace(block.get(), allocator.allocate(baseName));

    auto& constantPool = func.pools().pools[ARMAddressSpace::Constant];
    const auto dumpOperand = [&](const Operand& operand) { printOperand(out, operand, constantPool); };

    for(auto& block : func.blocks()) {
        const auto& label = labelMap.at(block.get());
        if(&block != &func.blocks().front())
            out << label << ":\n"sv;

        const auto isZero = [&](const Operand& op) {
            if(op.addressSpace == ARMAddressSpace::Constant) {
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
                                            out << "ldr "sv;
                                        else if(copy.size == 1)
                                            out << "ldrb "sv;
                                        else
                                            reportNotImplemented();

                                        dumpOperand(copy.dst);
                                        out << ", "sv << copy.srcOffset << '(';
                                        dumpOperand(copy.src);
                                        out << ')';

                                    } else if(copy.indirectDst && !copy.indirectSrc) {
                                        // store
                                        if(copy.size == 4)
                                            out << "str "sv;
                                        else if(copy.size == 1)
                                            out << "strb "sv;
                                        else
                                            reportNotImplemented();
                                        dumpOperand(copy.src);
                                        out << ", "sv << copy.dstOffset << '(';
                                        dumpOperand(copy.dst);
                                        out << ')';
                                    } else {
                                        if(copy.size == 4) {
                                            // move
                                            if(copy.src.addressSpace == ARMAddressSpace::GPR)
                                                out << "mov "sv;
                                            else
                                                reportNotImplemented();

                                            dumpOperand(copy.dst);
                                            out << ", "sv;
                                            dumpOperand(copy.src);
                                        } else
                                            reportUnreachable();
                                    }
                                },
                                 [&](const ConstantMInst&) { reportNotImplemented(); },
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
                                             out << "mul"sv;
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
                                             out << "orr"sv;
                                             break;
                                         case GMIRInstID::Xor:
                                             out << "eor"sv;
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
                                 [&](const BranchMInst& branch) { out << "b "sv << labelMap.at(branch.targetBlock); },
                                 [&](const BranchCompareMInst& branch) {
                                     out << 'b';
                                     dumpCompare(branch.compareOp);
                                     if(branch.lhs.addressSpace == ARMAddressSpace::GPR && isZero(branch.rhs)) {
                                         out << "z "sv;
                                         dumpOperand(branch.lhs);
                                     } else if(branch.lhs.addressSpace == ARMAddressSpace::GPR &&
                                               branch.rhs.addressSpace == ARMAddressSpace::GPR) {
                                         out << ' ';
                                         dumpOperand(branch.lhs);
                                         out << ", "sv;
                                         dumpOperand(branch.rhs);
                                     } else
                                         reportNotImplemented();  // TODO: fp cmp

                                     out << ", "sv << labelMap.at(branch.targetBlock);
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
                                     out << "bl "sv;
                                     if(auto dst = std::get_if<Operand>(&call.callee)) {
                                         dumpOperand(*dst);
                                     } else {
                                         out << symbolMap.find(std::get<GMIRSymbol*>(call.callee))->second;
                                     }
                                 },
                                 [&](const RetMInst&) { out << "bx lr"sv; },
                                 [&](const ControlFlowIntrinsicMInst&) { reportUnreachable(); },
                                 [](const auto&) { reportUnreachable(); } },
                       inst);

            out << '\n';
        }
    }
    out << '\n';
}

extern StringOpt targetMachine;

void ARMTarget::emitAssembly(const GMIRModule& module, std::ostream& out) const {
    dumpAssembly(
        out, module, [] {}, [] {},
        [&](const GMIRFunction& func, const std::unordered_map<const GMIRSymbol*, String>& symbolMap, LabelAllocator& allocator) {
            emitFunc(out, func, symbolMap, allocator);
        });
}

CMMC_NAMESPACE_END

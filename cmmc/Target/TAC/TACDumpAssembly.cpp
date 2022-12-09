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
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cmmc/Support/EnumName.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Target/TAC/TACTarget.hpp>
#include <variant>

CMMC_NAMESPACE_BEGIN

static std::string_view getCompareOp(CompareOp compare) {
    switch(compare) {
        case CompareOp::Equal:
            return "==";
        case CompareOp::NotEqual:
            return "!=";
        case CompareOp::LessThan:
            return "<";
        case CompareOp::LessEqual:
            return "<=";
        case CompareOp::GreaterThan:
            return ">";
        case CompareOp::GreaterEqual:
            return ">=";
        default:
            reportUnreachable();
    }
}

static void emitFunc(std::ostream& out, const String& symbol, const GMIRFunction& func,
                     std::unordered_map<const GMIRBasicBlock*, String>& labelMap) {
    out << "FUNCTION " << symbol << " :" << std::endl;

    {
        auto& params = func.parameters();
        for(auto param : params) {
            out << "PARAM v" << param.id << std::endl;
        }
    }

    const auto printOperand = [&](const Operand& operand) {
        if(operand.addressSpace == TACAddressSpace::GPR)
            out << 'v' << operand.id;
        else if(operand.addressSpace == TACAddressSpace::Stack)
            out << 'x' << operand.id;
        else if(operand.addressSpace == TACAddressSpace::Constant) {
            out << '#';
            static_cast<ConstantInteger*>(func.pools().pools[TACAddressSpace::Constant].getMetadata(operand))->dump(out);
        }
    };

    for(auto& block : func.blocks()) {
        const auto& label = labelMap[block.get()];

        if(&block != &func.blocks().front())
            out << "LABEL " << label << " :" << std::endl;

        for(auto& inst : block->instructions()) {
            std::visit(Overload{ [&](const CopyMInst& copy) {
                                    // TODO: indirect
                                    auto valid = [&] {
                                        if(copy.src.addressSpace == TACAddressSpace::GPR) {
                                            // copy
                                            if(copy.dst.addressSpace == TACAddressSpace::GPR) {
                                                return true;
                                            }
                                            // fetch
                                            else if(copy.dst.addressSpace == TACAddressSpace::Stack) {
                                                return true;
                                            }
                                        }
                                        // deref
                                        else if(copy.src.addressSpace == TACAddressSpace::Stack) {
                                            if(copy.dst.addressSpace == TACAddressSpace::GPR) {
                                                return true;
                                            }
                                        }
                                        return false;
                                    };
                                    if(valid()) {
                                        if(copy.dst.addressSpace == TACAddressSpace::Stack)
                                            out << '*';
                                        printOperand(copy.dst);
                                        out << " := ";

                                        if(copy.src.addressSpace == TACAddressSpace::Stack)
                                            out << '*';
                                        printOperand(copy.src);
                                    } else
                                        reportUnreachable();
                                },
                                 [&](const ConstantMInst& constant) {
                                     if(constant.dst.addressSpace == TACAddressSpace::Stack)
                                         out << '*';
                                     printOperand(constant.dst);
                                     out << " := #" << std::get<intmax_t>(constant.constant);
                                 },
                                 [&](const UnaryArithmeticMIInst& unary) {
                                     if(unary.instID == GMIRInstID::Neg) {
                                         printOperand(unary.dst);
                                         out << " := #0 - ";
                                         printOperand(unary.src);
                                     } else
                                         reportUnreachable();
                                 },
                                 [&](const BinaryArithmeticMIInst& binary) {
                                     char op;
                                     switch(binary.instID) {
                                         case GMIRInstID::Add:
                                             op = '+';
                                             break;
                                         case GMIRInstID::Sub:
                                             op = '-';
                                             break;
                                         case GMIRInstID::Mul:
                                             op = '*';
                                             break;
                                         case GMIRInstID::SDiv:
                                             op = '/';
                                             break;
                                         default:
                                             reportUnreachable();
                                     }

                                     printOperand(binary.dst);
                                     out << " := ";
                                     printOperand(binary.lhs);
                                     out << ' ' << op << ' ';
                                     printOperand(binary.rhs);
                                 },
                                 [&](const BranchMInst& branch) { out << "GOTO " << labelMap.at(branch.targetBlock); },
                                 [&](const BranchCompareMInst& branch) {
                                     out << "IF ";
                                     printOperand(branch.lhs);
                                     out << ' ' << getCompareOp(branch.compareOp) << ' ';
                                     printOperand(branch.rhs);
                                     out << " GOTO ";
                                     out << labelMap.at(branch.targetBlock);
                                 },
                                 [&](const CallMInst& call) {
                                     printOperand(call.dst);
                                     out << " := CALL ";
                                     out << std::get<GMIRSymbol*>(call.callee)->symbol;
                                 },
                                 [&](const RetMInst& ret) {
                                     out << "RETURN ";
                                     printOperand(ret.retVal);
                                 },
                                 [&](const ControlFlowIntrinsicMInst& inst) {
                                     const auto id = static_cast<TACIntrinsic>(inst.intrinsicID);
                                     if(id == TACIntrinsic::PushArg) {
                                         out << "ARG ";
                                         printOperand(inst.src);
                                     } else if(id == TACIntrinsic::Read) {
                                         out << "READ ";
                                         printOperand(inst.dst);
                                     } else if(id == TACIntrinsic::Write) {
                                         out << "WRITE ";
                                         printOperand(inst.src);
                                     } else
                                         reportUnreachable();
                                 },
                                 [](const auto&) { reportUnreachable(); } },
                       inst);

            out << std::endl;
        }
    }
    out << std::endl;
}

void TACTarget::emitAssembly(GMIRModule& module, std::ostream& out) const {
    LabelAllocator allocator;
    using namespace std::string_literals;

    std::unordered_map<const GMIRBasicBlock*, String> labelMap;
    {
        LabelAllocator allocator;
        String labelBase = String::get("label");
        for(auto& symbol : module.symbols) {
            std::visit(Overload{ [&](const GMIRFunction& func) {
                                    for(auto& block : func.blocks()) {
                                        const auto label = allocator.allocate(labelBase);

                                        // entry block cannot be branch target
                                        if(&block == &func.blocks().front())
                                            continue;

                                        labelMap[block.get()] = label;
                                    }
                                },
                                 [](const auto&) {} },
                       symbol.def);
        }
    }

    for(auto& symbol : module.symbols) {
        std::visit(Overload{ [&](const GMIRFunction& func) { emitFunc(out, symbol.symbol, func, labelMap); },
                             [](const auto&) { reportUnreachable(); } },
                   symbol.def);
    }
}

CMMC_NAMESPACE_END

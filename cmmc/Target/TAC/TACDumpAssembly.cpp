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
#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cmmc/Support/EnumName.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Target/TAC/TACTarget.hpp>
#include <iostream>
#include <unordered_map>
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

struct FunctionNameMap final {
    std::unordered_map<const GMIRBasicBlock*, String> labelMap;
    std::unordered_map<uint32_t, uint32_t> gprMap, stackMap;
};

static void emitFunc(std::ostream& out, const String& symbol, const GMIRFunction& func, const DataLayout& dataLayout,
                     const FunctionNameMap& map) {
    out << "FUNCTION " << symbol << " :" << std::endl;

    {
        auto& params = func.parameters();
        for(auto param : params) {
            out << "PARAM v" << map.gprMap.at(param.id) << std::endl;
        }
    }

    const auto printOperand = [&](const Operand& operand) {
        if(operand.addressSpace == TACAddressSpace::GPR)
            out << 'v' << map.gprMap.at(operand.id);
        else if(operand.addressSpace == TACAddressSpace::Stack)
            out << "&x" << map.stackMap.at(operand.id);
        else if(operand.addressSpace == TACAddressSpace::Constant) {
            out << '#';
            const auto metadata = static_cast<ConstantValue*>(func.pools().pools[TACAddressSpace::Constant].getMetadata(operand));
            if(metadata->isUndefined())
                out << '0';
            else
                metadata->dump(out);
        }
    };

    {
        const auto& allocas = func.pools().pools[TACAddressSpace::Stack].storage();
        for(uint32_t idx = 0; idx < allocas.size(); ++idx) {
            const auto alloc = allocas[idx];
            out << "DEC x" << map.stackMap.at(idx) << " " << alloc.first->getSize(dataLayout) << std::endl;
        }
    }

    for(auto& block : func.blocks()) {
        if(&block != &func.blocks().front()) {
            const auto& label = map.labelMap.at(block.get());
            out << "LABEL " << label << " :" << std::endl;
        }

        for(auto& inst : block->instructions()) {
            std::visit(Overload{ [&](const CopyMInst& copy) {
                                    auto valid = [&] {
                                        if(!copy.indirectSrc) {
                                            // copy or fetch
                                            return true;
                                        } else if(!copy.indirectDst) {
                                            // deref
                                            return true;
                                        }
                                        return false;
                                    };
                                    if(valid()) {
                                        if(copy.indirectDst)
                                            out << '*';
                                        printOperand(copy.dst);
                                        out << " := ";

                                        if(copy.indirectSrc)
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
                                 [&](const UnaryArithmeticMInst& unary) {
                                     if(unary.instID == GMIRInstID::Neg) {
                                         printOperand(unary.dst);
                                         out << " := #0 - ";
                                         printOperand(unary.src);
                                     } else
                                         reportUnreachable();
                                 },
                                 [&](const BinaryArithmeticMInst& binary) {
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
                                 [&](const BranchMInst& branch) { out << "GOTO " << map.labelMap.at(branch.targetBlock); },
                                 [&](const BranchCompareMInst& branch) {
                                     out << "IF ";
                                     printOperand(branch.lhs);
                                     out << ' ' << getCompareOp(branch.compareOp) << ' ';
                                     printOperand(branch.rhs);
                                     out << " GOTO ";
                                     out << map.labelMap.at(branch.targetBlock);
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
    using namespace std::string_literals;

    std::unordered_map<const GMIRFunction*, FunctionNameMap> map;

    {
        LabelAllocator allocator;
        const auto tryAllocate = [](std::unordered_map<uint32_t, uint32_t>& map, uint32_t id, uint32_t& count) {
            if(!map.count(id))
                map.emplace(id, count++);
        };
        uint32_t gprAllocateID = 0, stackAllocateID = 0;
        String labelBase = String::get("label");
        for(auto& symbol : module.symbols) {
            std::visit(Overload{ [&](GMIRFunction& func) {
                                    auto& ref = map[&func];
                                    {
                                        auto& labelMap = ref.labelMap;
                                        for(auto& block : func.blocks()) {
                                            const auto label = allocator.allocate(labelBase);

                                            // entry block cannot be branch target
                                            if(&block == &func.blocks().front())
                                                continue;

                                            labelMap[block.get()] = label;
                                        }
                                    }

                                    {
                                        const auto& allocas = func.pools().pools[TACAddressSpace::Stack].storage();
                                        for(uint32_t idx = 0; idx < allocas.size(); ++idx) {
                                            tryAllocate(ref.stackMap, idx, stackAllocateID);
                                        }
                                    }

                                    forEachOperands(func, [&](const Operand& operand) {
                                        if(operand.addressSpace == TACAddressSpace::GPR) {
                                            tryAllocate(ref.gprMap, operand.id, gprAllocateID);
                                        }
                                    });
                                },
                                 [](auto&) { reportUnreachable(); } },
                       symbol.def);
        }
    }

    const auto& dataLayout = module.target.getDataLayout();

    for(auto& symbol : module.symbols) {
        std::visit(Overload{ [&](const GMIRFunction& func) { emitFunc(out, symbol.symbol, func, dataLayout, map.at(&func)); },
                             [](const auto&) { reportUnreachable(); } },
                   symbol.def);
    }
}

CMMC_NAMESPACE_END

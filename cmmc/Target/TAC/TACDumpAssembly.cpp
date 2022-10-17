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
#include <cmmc/Support/EnumName.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Target/TAC/TACTarget.hpp>

CMMC_NAMESPACE_BEGIN

static void printConstant(std::ostream& out, uint64_t metadata) {
    out << '#' << static_cast<int64_t>(metadata);
}

static void printOperand(std::ostream& out, const MachineInst& inst, uint32_t idx) {
    if(idx == 0 && inst.hasAttr(TACInstAttr::WithImm0)) {
        printConstant(out, inst.getImm(0));
        return;
    }

    if(idx == 1 && inst.hasAttr(TACInstAttr::WithImm1)) {
        printConstant(out, inst.getImm(1));
        return;
    }

    auto reg = inst.getReg(idx);
    out << 'v' << reg;
}

static void printResult(std::ostream& out, const MachineInst& inst, uint32_t fusedIdx) {
    auto reg = inst.getWriteReg();
    if(reg)
        out << 'v' << reg;
    else
        printOperand(out, inst, fusedIdx);
}

static void emitBinary(std::ostream& out, const MachineInst& inst, std::string_view op) {
    printResult(out, inst, 2);
    out << " := ";
    printOperand(out, inst, 0);
    out << ' ' << op << ' ';
    printOperand(out, inst, 1);
    out << std::endl;
}

static std::string_view getCompareOp(const MachineInst& inst) {
    switch(static_cast<TACInstAttr>(inst.getAttr() & static_cast<uint32_t>(TACInstAttr::CmpMask))) {
        case TACInstAttr::CmpEqual:
            return "==";
        case TACInstAttr::CmpNotEqual:
            return "!=";
        case TACInstAttr::CmpLessThan:
            return "<";
        case TACInstAttr::CmpLessEqual:
            return "<=";
        case TACInstAttr::CmpGreaterThan:
            return ">";
        case TACInstAttr::CmpGreaterEqual:
            return ">=";
        default:
            reportUnreachable();
    }
}

void TACTarget::emitAssembly(MachineModule& module, std::ostream& out) const {
    LabelAllocator allocator;
    using namespace std::string_literals;
    constexpr uint32_t invalidIdx = std::numeric_limits<uint32_t>::max();

    for(auto symbol : module.symbols()) {
        if(auto func = dynamic_cast<MachineFunction*>(symbol)) {
            out << "FUNCTION " << func->getSymbol() << " :" << std::endl;
            std::unordered_map<MachineBasicBlock*, String> labelMap;

            String labelBase = String::get("label");
            for(auto block : func->basicblocks) {
                const auto label = allocator.allocate(labelBase);
                labelMap[block] = label;
            }

            for(auto block : func->basicblocks) {
                const auto& label = labelMap[block];
                out << "LABEL " << label << " :" << std::endl;

                for(auto& inst : block->instructions) {
                    switch(inst.getInstID<TACInst>()) {
                        case TACInst::Add: {
                            emitBinary(out, inst, "+");
                            break;
                        }
                        case TACInst::Sub: {
                            emitBinary(out, inst, "-");
                            break;
                        }
                        case TACInst::Mul: {
                            emitBinary(out, inst, "*");
                            break;
                        }
                        case TACInst::Div: {
                            emitBinary(out, inst, "/");
                            break;
                        }
                        case TACInst::Branch: {
                            out << "GOTO ";
                            auto target = reinterpret_cast<MachineBasicBlock*>(inst.getImm(0));
                            out << labelMap.find(target)->second << std::endl;
                            break;
                        }
                        case TACInst::BranchCompare: {
                            out << "IF ";
                            printOperand(out, inst, 0);
                            out << ' ' << getCompareOp(inst) << ' ';
                            printOperand(out, inst, 1);
                            out << " GOTO ";
                            auto target = reinterpret_cast<MachineBasicBlock*>(inst.getImm(2));
                            out << labelMap.find(target)->second << std::endl;
                            break;
                        }
                        case TACInst::Return: {
                            out << "RETURN ";
                            printOperand(out, inst, 0);
                            out << std::endl;
                            break;
                        }
                        case TACInst::Write: {
                            out << "WRITE ";
                            printOperand(out, inst, 0);
                            out << std::endl;
                            break;
                        }
                        case TACInst::Read: {
                            out << "READ ";
                            printResult(out, inst, invalidIdx);  // cannot be fused
                            out << std::endl;
                            break;
                        }
                        case TACInst::PushArg: {
                            out << "ARG ";
                            printOperand(out, inst, 0);
                            out << std::endl;
                            break;
                        }
                        case TACInst::Call: {
                            printResult(out, inst, 0);
                            out << " := CALL " << std::get<Global>(inst.getAddr().base).symbol->getSymbol() << std::endl;
                            break;
                        }
                        default: {
                            reportError() << "Unsupported inst " << enumName(inst.getInstID<TACInst>()) << std::endl;
                            reportUnreachable();
                        }
                    }
                }
            }

            out << std::endl;
        } else
            reportNotImplemented();
    }
}

CMMC_NAMESPACE_END

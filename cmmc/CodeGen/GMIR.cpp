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
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cstdint>
#include <variant>

CMMC_NAMESPACE_BEGIN
void GMIRBasicBlock::dump(std::ostream& out, const Target& target,
                          const std::unordered_map<const GMIRBasicBlock*, String>& blockMap) const {
    auto& loweringVisitor = target.getTargetLoweringVisitor();
    auto dumpOperand = [&](const Operand& operand) { out << loweringVisitor.getOperand(operand); };
    auto dumpTarget = [&](const GMIRBasicBlock* target) { out << blockMap.find(target)->second; };
    auto dumpCompare = [&](GMIRInstID instID, CompareOp compareOp) {
        if(instID == GMIRInstID::FCmp)
            out << 'f';
        out << 's';
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
        }
        if(instID == GMIRInstID::UCmp)
            out << 'u';
    };

    dumpTarget(this);
    out << ":\n";

    for(auto& inst : mInstructions) {
        std::visit(Overload{ [&](const CopyMInst& inst) {
                                if(!inst.indirectSrc && !inst.indirectDst) {
                                    out << "mov ";
                                    dumpOperand(inst.dst);
                                    out << ' ';
                                    dumpOperand(inst.src);
                                } else if(inst.indirectSrc && !inst.indirectDst) {
                                    out << "load ";
                                    dumpOperand(inst.dst);
                                    out << ' ';
                                    dumpOperand(inst.src);
                                    out << '(' << inst.srcOffset << ')';
                                } else if(inst.indirectDst && !inst.indirectSrc) {
                                    out << "store ";
                                    dumpOperand(inst.src);
                                    out << ' ';
                                    dumpOperand(inst.dst);
                                    out << '(' << inst.dstOffset << ')';
                                } else
                                    reportUnreachable();
                            },
                             [&](const ConstantMInst& inst) {
                                 out << "li ";
                                 dumpOperand(inst.dst);
                                 out << ' ';
                                 std::visit([&](auto x) { out << x; }, inst.constant);
                             },
                             [&](const GlobalAddressMInst& inst) {
                                 out << "la ";
                                 dumpOperand(inst.dst);
                                 out << ' ' << inst.global->symbol;
                             },
                             [&](const UnaryArithmeticMIInst& inst) {
                                 switch(inst.instID) {
                                     case GMIRInstID::Neg:
                                         out << "neg ";
                                         break;
                                     case GMIRInstID::FNeg:
                                         out << "fneg ";
                                         break;
                                     default:
                                         reportUnreachable();
                                 }
                                 dumpOperand(inst.dst);
                                 out << ' ';
                                 dumpOperand(inst.src);
                             },
                             [&](const BinaryArithmeticMIInst& inst) {
                                 switch(inst.instID) {
                                     case GMIRInstID::Add:
                                         out << "add ";
                                         break;
                                     case GMIRInstID::Sub:
                                         out << "sub ";
                                         break;
                                     case GMIRInstID::Mul:
                                         out << "mul ";
                                         break;
                                     case GMIRInstID::SDiv:
                                         out << "div ";
                                         break;
                                     case GMIRInstID::UDiv:
                                         out << "divu ";
                                         break;
                                     case GMIRInstID::SRem:
                                         out << "rem ";
                                         break;
                                     case GMIRInstID::URem:
                                         out << "remu ";
                                         break;
                                     case GMIRInstID::FAdd:
                                         out << "fadd ";
                                         break;
                                     case GMIRInstID::FSub:
                                         out << "fsub ";
                                         break;
                                     case GMIRInstID::FMul:
                                         out << "fmul ";
                                         break;
                                     case GMIRInstID::FDiv:
                                         out << "fdiv ";
                                         break;
                                     case GMIRInstID::And:
                                         out << "and ";
                                         break;
                                     case GMIRInstID::Or:
                                         out << "or ";
                                         break;
                                     case GMIRInstID::Xor:
                                         out << "xor ";
                                         break;
                                     case GMIRInstID::Shl:
                                         out << "shl ";
                                         break;
                                     case GMIRInstID::AShr:
                                         out << "ashr ";
                                         break;
                                     case GMIRInstID::LShr:
                                         out << "lshr ";
                                         break;
                                     default:
                                         reportUnreachable();
                                 }

                                 dumpOperand(inst.dst);
                                 out << ' ';
                                 dumpOperand(inst.lhs);
                                 out << ' ';
                                 dumpOperand(inst.rhs);
                             },
                             [&](const ArithmeticIntrinsicMInst& inst) {
                                 out << "ISA." << loweringVisitor.getIntrinsicName(inst.intrinsicID) << ' ';
                                 dumpOperand(inst.dst);
                                 for(auto& op : inst.src)
                                     if(op == unusedOperand) {
                                         break;
                                     } else {
                                         out << ' ';
                                         dumpOperand(op);
                                     }
                             },
                             [&](const CompareMInst& inst) {
                                 dumpCompare(inst.instID, inst.compareOp);
                                 out << ' ';
                                 dumpOperand(inst.dst);
                                 out << ' ';
                                 dumpOperand(inst.lhs);
                                 out << ' ';
                                 dumpOperand(inst.rhs);
                             },
                             [&](const BranchMInst& inst) {
                                 out << "j ";
                                 dumpTarget(inst.targetBlock);
                             },
                             [&](const BranchCompareMInst& inst) {
                                 out << "b";
                                 dumpCompare(inst.instID, inst.compareOp);
                                 out << ' ';
                                 dumpOperand(inst.lhs);
                                 out << ' ';
                                 dumpOperand(inst.rhs);
                                 out << ' ';
                                 dumpTarget(inst.targetBlock);
                             },
                             [&](const CallMInst& inst) {
                                 if(inst.dst == unusedOperand) {
                                     out << "jalr ";
                                 } else {
                                     out << "call ";
                                     dumpOperand(inst.dst);
                                     out << ' ';
                                 }
                                 std::visit(Overload{ [&](const Operand& operand) { dumpOperand(operand); },
                                                      [&](const GMIRSymbol* symbol) { out << symbol->symbol; } },
                                            inst.callee);
                             },
                             [&](const UnreachableMInst&) { out << "unreachable"; },
                             [&](const RetMInst& inst) {
                                 out << "ret";
                                 if(inst.retVal != unusedOperand) {
                                     out << ' ';
                                     dumpOperand(inst.retVal);
                                 }
                             },
                             [&](const ControlFlowIntrinsicMInst& inst) {
                                 out << "ISA." << loweringVisitor.getIntrinsicName(inst.intrinsicID) << ' ';
                                 dumpOperand(inst.dst);
                                 out << ' ';
                                 dumpOperand(inst.src);
                             } },
                   inst);
        out << std::endl;
    }
}
void GMIRFunction::dump(std::ostream& out, const Target& target) const {
    int32_t idx = 0;
    auto base = String::get("b");
    std::unordered_map<const GMIRBasicBlock*, String> blockMap;
    for(auto& block : mBasicBlocks)
        blockMap[&block] = base.withID(idx++);
    out << " # Function" << std::endl;
    for(auto& block : mBasicBlocks)
        block.dump(out, target, blockMap);
}
void GMIRZeroStorage::dump(std::ostream&, const Target&) const {
    reportNotImplemented();
}
void GMIRStringStorage::dump(std::ostream&, const Target&) const {
    reportNotImplemented();
}
void GMIRDataStorage::dump(std::ostream&, const Target&) const {
    reportNotImplemented();
}
void GMIRSymbol::dump(std::ostream& out, const Target& target) const {
    out << (linkage == Linkage::Global ? ".global " : ".internal ") << symbol;
    std::visit(Overload{ [](std::monostate) {}, [&](auto&& x) { x.dump(out, target); } }, def);
}
void GMIRModule::dump(std::ostream& out) const {
    for(auto& symbol : symbols)
        symbol.dump(out, target);
}

Operand VirtualRegPool::allocate(const Type* type) {
    const auto id = static_cast<uint32_t>(mAllocations.size());
    mAllocations.push_back({ type, nullptr });
    return Operand{ mAddressSpace, id };
}
const Type* VirtualRegPool::getType(const Operand& operand) const {
    assert(operand.addressSpace == mAddressSpace);
    return mAllocations[operand.id].first;
}
void*& VirtualRegPool::getMetadata(const Operand& operand) {
    assert(operand.addressSpace == mAddressSpace);
    return mAllocations[operand.id].second;
}

CMMC_NAMESPACE_END

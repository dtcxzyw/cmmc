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
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cstddef>
#include <cstdint>
#include <type_traits>
#include <variant>

CMMC_NAMESPACE_BEGIN
void GMIRBasicBlock::dump(std::ostream& out, const Target& target,
                          const std::unordered_map<const GMIRBasicBlock*, String>& blockMap, const TemporaryPools& pools) const {
    auto& loweringInfo = target.getTargetLoweringInfo();
    auto& stack = pools.pools[AddressSpace::Stack];
    auto& constants = pools.pools[AddressSpace::Constant];
    auto dumpOperand = [&](const Operand& operand) {
        out << loweringInfo.getOperand(operand);
        if(operand.addressSpace == AddressSpace::Constant) {
            out << '[';
            const auto cv = static_cast<ConstantValue*>(constants.getMetadata(operand));
            assert(cv->isConstant());
            cv->dumpAsOperand(out);
            out << ']';
        } else if(operand.addressSpace == AddressSpace::Stack) {
            out << '[';
            if(stack.getType(operand)->isStackStorage()) {
                out << "storage"sv;
            } else if(stack.getMetadata(operand)) {
                out << "alloca"sv;
            } else {
                out << "regspill"sv;
            }
            out << ']';
        }
    };
    auto dumpTarget = [&](const GMIRBasicBlock* targetBlock) { out << blockMap.at(targetBlock); };
    auto dumpCompare = [&](GMIRInstID instID, CompareOp compareOp) {
        if(instID == GMIRInstID::FCmp)
            out << 'f';
        out << 's';
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
        }
        if(instID == GMIRInstID::UCmp)
            out << 'u';
    };

    dumpTarget(this);
    out << ": "sv;

    if(!mUsedStackObjects.empty()) {
        out << "# used stack objects:"sv;
        for(auto used : mUsedStackObjects) {
            assert(used.addressSpace == AddressSpace::Stack);
            out << ' ';
            dumpOperand(used);
        }
    }

    out << '\n';

    for(auto& instruction : mInstructions) {
        std::visit(Overload{ [&](const CopyMInst& inst) {
                                if(!inst.indirectSrc && !inst.indirectDst) {
                                    out << "mov "sv;
                                    dumpOperand(inst.dst);
                                    out << ' ';
                                    dumpOperand(inst.src);
                                } else if(inst.indirectSrc && !inst.indirectDst) {
                                    out << "load "sv;
                                    dumpOperand(inst.dst);
                                    out << ' ' << inst.srcOffset << '(';
                                    dumpOperand(inst.src);
                                    out << ')';
                                } else if(inst.indirectDst && !inst.indirectSrc) {
                                    out << "store "sv;
                                    dumpOperand(inst.src);
                                    out << ' ' << inst.dstOffset << '(';
                                    dumpOperand(inst.dst);
                                    out << ')';
                                } else
                                    reportUnreachable();
                            },
                             [&](const ConstantMInst& inst) {
                                 out << "li "sv;
                                 dumpOperand(inst.dst);
                                 out << ' ';
                                 std::visit([&](auto x) { out << x; }, inst.constant);
                             },
                             [&](const GlobalAddressMInst& inst) {
                                 out << "la "sv;
                                 dumpOperand(inst.dst);
                                 out << ' ' << inst.global->symbol;
                             },
                             [&](const UnaryArithmeticMInst& inst) {
                                 switch(inst.instID) {
                                     case GMIRInstID::Neg:
                                         out << "neg "sv;
                                         break;
                                     case GMIRInstID::FNeg:
                                         out << "fneg "sv;
                                         break;
                                     default:
                                         reportUnreachable();
                                 }
                                 dumpOperand(inst.dst);
                                 out << ' ';
                                 dumpOperand(inst.src);
                             },
                             [&](const BinaryArithmeticMInst& inst) {
                                 switch(inst.instID) {
                                     case GMIRInstID::Add:
                                         out << "add "sv;
                                         break;
                                     case GMIRInstID::Sub:
                                         out << "sub "sv;
                                         break;
                                     case GMIRInstID::Mul:
                                         out << "mul "sv;
                                         break;
                                     case GMIRInstID::SDiv:
                                         out << "div "sv;
                                         break;
                                     case GMIRInstID::UDiv:
                                         out << "divu "sv;
                                         break;
                                     case GMIRInstID::SRem:
                                         out << "rem "sv;
                                         break;
                                     case GMIRInstID::URem:
                                         out << "remu "sv;
                                         break;
                                     case GMIRInstID::FAdd:
                                         out << "fadd "sv;
                                         break;
                                     case GMIRInstID::FSub:
                                         out << "fsub "sv;
                                         break;
                                     case GMIRInstID::FMul:
                                         out << "fmul "sv;
                                         break;
                                     case GMIRInstID::FDiv:
                                         out << "fdiv "sv;
                                         break;
                                     case GMIRInstID::And:
                                         out << "and "sv;
                                         break;
                                     case GMIRInstID::Or:
                                         out << "or "sv;
                                         break;
                                     case GMIRInstID::Xor:
                                         out << "xor "sv;
                                         break;
                                     case GMIRInstID::Shl:
                                         out << "shl "sv;
                                         break;
                                     case GMIRInstID::AShr:
                                         out << "ashr "sv;
                                         break;
                                     case GMIRInstID::LShr:
                                         out << "lshr "sv;
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
                                 out << "ISA."sv << loweringInfo.getIntrinsicName(inst.intrinsicID) << ' ';
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
                                 out << "b "sv;
                                 dumpTarget(inst.targetBlock);
                             },
                             [&](const BranchCompareMInst& inst) {
                                 out << 'b';
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
                                     out << "jalr "sv;
                                 } else {
                                     out << "call "sv;
                                     dumpOperand(inst.dst);
                                     out << ' ';
                                 }
                                 std::visit(Overload{ [&](const Operand& operand) { dumpOperand(operand); },
                                                      [&](const GMIRSymbol* symbol) { out << symbol->symbol; } },
                                            inst.callee);
                             },
                             [&](const UnreachableMInst&) { out << "unreachable"sv; },
                             [&](const RetMInst& inst) {
                                 out << "ret"sv;
                                 if(inst.retVal != unusedOperand) {
                                     out << ' ';
                                     dumpOperand(inst.retVal);
                                 }
                             },
                             [&](const ControlFlowIntrinsicMInst& inst) {
                                 out << "ISA."sv << loweringInfo.getIntrinsicName(inst.intrinsicID) << ' ';
                                 dumpOperand(inst.dst);
                                 out << ' ';
                                 dumpOperand(inst.src);
                             } },
                   instruction);
        out << '\n';
    }
}
void GMIRFunction::dump(std::ostream& out, const Target& target) const {
    int32_t idx = 0;
    auto base = String::get("b"sv);
    std::unordered_map<const GMIRBasicBlock*, String> blockMap;
    for(auto& block : mBasicBlocks)
        blockMap[block.get()] = base.withID(idx++);
    out << " # Function\n"sv;
    auto& info = target.getTargetLoweringInfo();
    for(auto& param : mParameters)
        out << "Param "sv << info.getOperand(param) << '\n';
    for(auto& block : mBasicBlocks)
        block->dump(out, target, blockMap, mPools);
}
void GMIRZeroStorage::dump(std::ostream& out, const Target&) const {
    out << "\t.zero\t" << mSize << '\n';
}
void GMIRDataStorage::dump(std::ostream& out, const Target&) const {
    for(const auto& val : data)
        std::visit(Overload{ [&](const uint32_t word) { out << "\t.word\t" << word << '\n'; },
                             [&](const size_t size) { out << "\t.zero\t" << size << '\n'; },
                             [&](const std::byte byte) { out << "\t.byte\t" << static_cast<uint32_t>(byte) << '\n'; } },
                   val);
}
void GMIRSymbol::dump(std::ostream& out, const Target& target) const {
    out << (linkage == Linkage::Global ? ".global "sv : ".internal "sv) << symbol;
    std::visit(Overload{ [](std::monostate) {}, [&](auto&& x) { x.dump(out, target); } }, def);
}
void GMIRModule::dump(std::ostream& out) const {
    for(auto& symbol : symbols)
        symbol.dump(out, target);
}

Operand VirtualRegPool::allocate(const Type* type) {
    const auto id = static_cast<uint32_t>(mAllocations.size());
    mAllocations.emplace_back(type, nullptr);
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
void* VirtualRegPool::getMetadata(const Operand& operand) const {
    assert(operand.addressSpace == mAddressSpace);
    return mAllocations[operand.id].second;
}
bool GMIRBasicBlock::verify(std::ostream& err, bool checkTerminator) const {
    if(checkTerminator) {
        for(auto& instruction : mInstructions) {
            const auto ret = std::visit(
                [&err, end = &instruction == &mInstructions.back()](auto& inst) -> bool {
                    using T = std::decay_t<decltype(inst)>;
                    if constexpr(std::is_same_v<T, RetMInst> || std::is_same_v<T, UnreachableMInst> ||
                                 std::is_same_v<T, BranchCompareMInst> || std::is_same_v<T, BranchMInst>) {
                        if(!end) {
                            err << "The terminator must be at the end of the basic block."sv << std::endl;
                            return false;
                        }
                    } else {
                        if(end) {
                            err << "The basic block must end up with a terminator."sv << std::endl;
                            return false;
                        }
                    }
                    return true;
                },
                instruction);
            if(!ret)
                return false;
        }
    }

    // check usedStackObjects
    Operand invalidRef = unusedOperand;
    // NOLINTNEXTLINE
    forEachOperands(const_cast<GMIRBasicBlock&>(*this), [&](Operand& op) {
        if(op.addressSpace == AddressSpace::Stack && !mUsedStackObjects.count(op)) {
            invalidRef = op;
        }
    });

    if(invalidRef != unusedOperand) {
        err << "invalid reference to stack object: m" << invalidRef.id << std::endl;
        return false;
    }

    return true;
}

bool GMIRFunction::verify(std::ostream& err, bool checkTerminator) const {
    for(auto& block : mBasicBlocks)
        if(!block->verify(err, checkTerminator))
            return false;
    return true;
}

bool CopyMInst::operator==(const CopyMInst& rhs) const noexcept {
    return this->src == rhs.src && this->indirectSrc == rhs.indirectSrc && this->srcOffset == rhs.srcOffset &&
        this->dst == rhs.dst && this->indirectDst == rhs.indirectDst && this->dstOffset == rhs.dstOffset &&
        this->size == rhs.size && this->signExtend == rhs.signExtend;
}

bool ConstantMInst::operator==(const ConstantMInst& rhs) const noexcept {
    return this->dst == rhs.dst && this->constant == rhs.constant;
}

bool GlobalAddressMInst::operator==(const GlobalAddressMInst& rhs) const noexcept {
    return this->dst == rhs.dst && this->global == rhs.global;
}

bool UnaryArithmeticMInst::operator==(const UnaryArithmeticMInst& rhs) const noexcept {
    return this->instID == rhs.instID && this->src == rhs.src && this->dst == rhs.dst;
}

bool BinaryArithmeticMInst::operator==(const BinaryArithmeticMInst& rhsRef) const noexcept {
    return this->instID == rhsRef.instID && this->lhs == rhsRef.lhs && this->rhs == rhsRef.rhs && this->dst == rhsRef.dst;
}

bool ArithmeticIntrinsicMInst::operator==(const ArithmeticIntrinsicMInst& rhs) const noexcept {
    return this->intrinsicID == rhs.intrinsicID && this->src == rhs.src && this->dst == rhs.dst;
}

bool CompareMInst::operator==(const CompareMInst& rhsRef) const noexcept {
    return this->instID == rhsRef.instID && this->compareOp == rhsRef.compareOp && this->lhs == rhsRef.lhs &&
        this->rhs == rhsRef.rhs && this->dst == rhsRef.dst;
}

bool BranchMInst::operator==(const BranchMInst& rhs) const noexcept {
    return this->targetBlock == rhs.targetBlock;
}

bool BranchCompareMInst::operator==(const BranchCompareMInst& rhsRef) const noexcept {
    return this->instID == rhsRef.instID && this->compareOp == rhsRef.compareOp && this->lhs == rhsRef.lhs &&
        this->rhs == rhsRef.rhs && this->targetBlock == rhsRef.targetBlock;
}

bool CallMInst::operator==(const CallMInst& rhs) const noexcept {
    return this->callee == rhs.callee && this->dst == rhs.dst;
}

bool UnreachableMInst::operator==(const UnreachableMInst&) const noexcept {
    return true;
}

bool RetMInst::operator==(const RetMInst& rhs) const noexcept {
    return this->retVal == rhs.retVal;
}

bool ControlFlowIntrinsicMInst::operator==(const ControlFlowIntrinsicMInst& rhs) const noexcept {
    return this->intrinsicID == rhs.intrinsicID && this->src == rhs.src && this->dst == rhs.dst;
}

CMMC_NAMESPACE_END

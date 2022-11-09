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

#pragma once
#include <array>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cstdint>
#include <limits>
#include <variant>

CMMC_NAMESPACE_BEGIN

class GMIRBasicBlock;
class GMIRFunction;
struct GMIRSymbol;

struct AddressSpace {
    static constexpr uint32_t virtualReg = 0;
    static constexpr uint32_t constant = 1;
    static constexpr uint32_t stack = 2;
    static constexpr uint32_t custom = 3;
};

enum class GMIRInstID {
    // AddressSpace
    Copy,
    Constant,
    GlobalAddress,
    // AddressSpaceIntrinsic,
    // Arithmetic
    Add,
    Sub,
    Mul,
    SDiv,
    UDiv,
    SRem,
    URem,
    Neg,
    FAdd,
    FSub,
    FMul,
    FDiv,
    FNeg,
    SCmp,
    UCmp,
    FCmp,
    And,
    Or,
    Xor,
    Shl,
    AShr,
    LShr,
    ArithIntrinsic,
    // ControlFlow
    Branch,
    BranchCond,
    Call,
    Ret,
    Unreachable,
    ControlFlowIntrinsic
};

struct Operand final {
    uint32_t addressSpace;
    uint32_t id;

    bool operator==(const Operand& rhs) const noexcept {
        return addressSpace == rhs.addressSpace && id == rhs.id;
    }
};

static constexpr Operand unusedOperand{ std::numeric_limits<uint32_t>::max(), std::numeric_limits<uint32_t>::max() };

struct CopyMInst final {
    Operand src;
    bool indirectSrc;
    uint32_t srcOffset;
    Operand dst;
    bool indirectDst;
    uint32_t dstOffset;
};

struct ConstantMInst final {
    Operand dst;
    std::variant<intmax_t, double> constant;
};

struct GlobalAddressMInst final {
    Operand dst;
    GMIRSymbol* constant;
};

/*
struct AddressSpaceIntrinsicMInst final {
    uint32_t mIntrinsicID;

    uint32_t srcAddressSpace;
    uint32_t srcID;
    uint32_t dstAddressSpace;
    uint32_t dstID;
};
*/

struct UnaryArithmeticMIInst final {
    GMIRInstID instID;
    Operand src, dst;
};

struct BinaryArithmeticMIInst final {
    GMIRInstID instID;
    Operand lhs, rhs, dst;
};

struct ArithmeticIntrinsicMInst final {
    uint32_t mIntrinsicID;
    std::array<Operand, 3> src;
    Operand dst;
};

struct CompareMInst final {
    GMIRInstID instID;
    CompareOp compareOp;
    Operand lhs, rhs, dst;
};

struct BranchMInst final {
    GMIRBasicBlock* targetBlock;
};

struct BranchCompareMInst final {
    Operand lhs, rhs;
    CompareOp compareOp;
    GMIRBasicBlock* targetBlock;
};

struct CallMInst final {
    std::variant<Operand, GMIRSymbol*> function;
    Operand dst;
};

struct UnreachableMInst final {};

struct RetMInst final {
    Operand retVal;
};

struct ControlFlowIntrinsicMInst final {
    uint32_t intrinsicID;
    Operand src, dst;
};

using GMIRInst = std::variant<CopyMInst, ConstantMInst, /*AddressSpaceIntrinsicMInst,*/ UnaryArithmeticMIInst,
                              BinaryArithmeticMIInst, ArithmeticIntrinsicMInst, CompareMInst, BranchMInst, BranchCompareMInst,
                              CallMInst, UnreachableMInst, RetMInst, ControlFlowIntrinsicMInst>;

class GMIRBasicBlock final {
    GMIRFunction* mFunction;
    std::list<GMIRInst> mInstructions;

public:
    explicit GMIRBasicBlock(GMIRFunction* function) : mFunction{ function } {}
    GMIRFunction* getFunction() const noexcept {
        return mFunction;
    }
    std::list<GMIRInst>& instructions() noexcept {
        return mInstructions;
    }
    const std::list<GMIRInst>& instructions() const noexcept {
        return mInstructions;
    }
};

class GMIRFunction final {
    uint32_t mUsedParameters;
    std::list<GMIRBasicBlock> mBasicBlocks;

public:
    explicit GMIRFunction(uint32_t usedParameters) : mUsedParameters{ usedParameters } {}
    uint32_t parameters() const noexcept {
        return mUsedParameters;
    }
    std::list<GMIRBasicBlock>& blocks() noexcept {
        return mBasicBlocks;
    }
    const std::list<GMIRBasicBlock>& blocks() const noexcept {
        return mBasicBlocks;
    }
};

class GMIRZeroStorage final {};

class GMIRStringStorage final {};

class GMIRDataStorage final {};

struct GMIRSymbol final {
    String symbol;
    Linkage linkage;
    std::variant<GMIRFunction, GMIRZeroStorage, GMIRStringStorage, GMIRDataStorage, std::monostate> def;
};

class Target;

struct GMIRModule final {
    const Target* target;
    std::list<GMIRSymbol> symbols;

    explicit GMIRModule(const Target* target) : target{ target } {}
};

CMMC_NAMESPACE_END

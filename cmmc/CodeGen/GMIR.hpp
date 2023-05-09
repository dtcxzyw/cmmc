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

#pragma once
#include <array>
#include <cassert>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cstdint>
#include <limits>
#include <memory>
#include <ostream>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <variant>
#include <vector>

CMMC_NAMESPACE_BEGIN

class GMIRBasicBlock;
class GMIRFunction;
struct GMIRSymbol;
class Target;
struct TemporaryPools;

// TODO: global space?
struct AddressSpace {
    static constexpr uint32_t VirtualReg = 0;  // NOLINT
    static constexpr uint32_t Constant = 1;    // NOLINT
    static constexpr uint32_t Stack = 2;       // NOLINT
    static constexpr uint32_t Custom = 3;      // NOLINT
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
    F2U,
    F2S,
    U2F,
    S2F,
    FCast,
    ArithIntrinsic,
    // ControlFlow
    Branch,
    BranchCond,
    Call,
    Ret,
    Unreachable,
    ControlFlowIntrinsic
};

struct alignas(uint64_t) Operand final {
    uint32_t addressSpace;
    uint32_t id;

    bool operator==(const Operand& rhs) const noexcept {
        return addressSpace == rhs.addressSpace && id == rhs.id;
    }
    bool operator!=(const Operand& rhs) const noexcept {
        return addressSpace != rhs.addressSpace || id != rhs.id;
    }
};

struct OperandHasher final {
    size_t operator()(const Operand& val) const {
        return std::hash<uint64_t>{}(*reinterpret_cast<const uint64_t*>(&val));
    }
};

static constexpr Operand unusedOperand{ std::numeric_limits<uint32_t>::max(), std::numeric_limits<uint32_t>::max() };

struct CopyMInst final {
    Operand src;
    bool indirectSrc;
    int32_t srcOffset;
    Operand dst;
    bool indirectDst;
    int32_t dstOffset;
    uint32_t size;
    bool signExtend;

    explicit CopyMInst(Operand srcOp, bool indirectSrcCopy, int32_t srcCopyOffset, Operand dstOp, bool indirectDstCopy,
                       int32_t dstCopyOffset, uint32_t copySize, bool signExtendCopy)
        : src{ srcOp }, indirectSrc{ indirectSrcCopy }, srcOffset{ srcCopyOffset }, dst{ dstOp },
          indirectDst{ indirectDstCopy }, dstOffset{ dstCopyOffset }, size{ copySize }, signExtend{ signExtendCopy } {
        assert(!(indirectSrc && indirectDst));
        assert(size);
    }

    bool operator==(const CopyMInst& rhs) const noexcept;
};

struct ConstantMInst final {
    Operand dst;
    std::variant<intmax_t, double> constant;
    bool operator==(const ConstantMInst& rhs) const noexcept;
};

struct GlobalAddressMInst final {
    Operand dst;
    GMIRSymbol* global;
    bool operator==(const GlobalAddressMInst& rhs) const noexcept;
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

struct UnaryArithmeticMInst final {
    GMIRInstID instID;
    Operand src, dst;
    bool operator==(const UnaryArithmeticMInst& rhs) const noexcept;
};

struct BinaryArithmeticMInst final {
    GMIRInstID instID;
    Operand lhs, rhs, dst;
    bool operator==(const BinaryArithmeticMInst& rhsRef) const noexcept;
};

struct ArithmeticIntrinsicMInst final {
    uint32_t intrinsicID;
    std::array<Operand, 3> src;
    Operand dst;
    bool operator==(const ArithmeticIntrinsicMInst& rhs) const noexcept;
};

struct CompareMInst final {
    GMIRInstID instID;
    CompareOp compareOp;
    Operand lhs, rhs, dst;
    bool operator==(const CompareMInst& rhsRef) const noexcept;
};

struct BranchMInst final {
    const GMIRBasicBlock* targetBlock;
    bool operator==(const BranchMInst& rhs) const noexcept;
};

struct BranchCompareMInst final {
    GMIRInstID instID;
    Operand lhs, rhs;
    CompareOp compareOp;
    double branchProb;
    const GMIRBasicBlock* targetBlock;
    bool operator==(const BranchCompareMInst& rhsRef) const noexcept;
};

struct CallMInst final {
    std::variant<Operand, GMIRSymbol*> callee;
    Operand dst;
    bool operator==(const CallMInst& rhs) const noexcept;
};

struct UnreachableMInst final {
    bool operator==(const UnreachableMInst& rhs) const noexcept;
};

struct RetMInst final {
    Operand retVal;
    bool operator==(const RetMInst& rhs) const noexcept;
};

// TODO: more clear semantic?
// NOTICE: cannot modify PC
struct ControlFlowIntrinsicMInst final {
    uint32_t intrinsicID;
    Operand src, dst;
    bool operator==(const ControlFlowIntrinsicMInst& rhs) const noexcept;
};

using GMIRInst = std::variant<CopyMInst, ConstantMInst, GlobalAddressMInst, /*AddressSpaceIntrinsicMInst,*/ UnaryArithmeticMInst,
                              BinaryArithmeticMInst, ArithmeticIntrinsicMInst, CompareMInst, BranchMInst, BranchCompareMInst,
                              CallMInst, UnreachableMInst, RetMInst, ControlFlowIntrinsicMInst>;

class GMIRBasicBlock final {
    GMIRFunction* mFunction;
    double mTripCount;
    std::unordered_set<Operand, OperandHasher> mUsedStackObjects;
    std::list<GMIRInst> mInstructions;

public:
    explicit GMIRBasicBlock(GMIRFunction* function, double blockTripCount)
        : mFunction{ function }, mTripCount{ blockTripCount } {}
    GMIRFunction* getFunction() const noexcept {
        return mFunction;
    }
    double getTripCount() const noexcept {
        return mTripCount;
    }
    std::list<GMIRInst>& instructions() noexcept {
        return mInstructions;
    }
    auto& usedStackObjects() const noexcept {
        return mUsedStackObjects;
    }
    auto& usedStackObjects() noexcept {
        return mUsedStackObjects;
    }
    const std::list<GMIRInst>& instructions() const noexcept {
        return mInstructions;
    }
    void dump(std::ostream& out, const Target& target, const std::unordered_map<const GMIRBasicBlock*, String>& blockMap,
              const TemporaryPools& pools) const;
    bool verify(std::ostream& err, bool checkTerminator) const;
};

class VirtualRegPool final {
    uint32_t mAddressSpace;
    std::vector<std::pair<const Type*, void*>> mAllocations;

public:
    explicit VirtualRegPool(uint32_t addressSpace) : mAddressSpace{ addressSpace } {}
    Operand allocate(const Type* type);
    void*& getMetadata(const Operand& operand);
    [[nodiscard]] void* getMetadata(const Operand& operand) const;
    [[nodiscard]] const Type* getType(const Operand& operand) const;
    [[nodiscard]] const std::vector<std::pair<const Type*, void*>>& storage() const {
        return mAllocations;
    }
};

struct TemporaryPools final {
    std::array<VirtualRegPool, AddressSpace::Custom> pools{ VirtualRegPool{ AddressSpace::VirtualReg },
                                                            VirtualRegPool{ AddressSpace::Constant },
                                                            VirtualRegPool{ AddressSpace::Stack } };
};

class GMIRFunction final {
    std::vector<Operand> mParameters;
    TemporaryPools mPools;
    std::list<std::unique_ptr<GMIRBasicBlock>> mBasicBlocks;
    std::unordered_set<int32_t> mPrivateStackOffsets;

public:
    TemporaryPools& pools() noexcept {
        return mPools;
    }
    [[nodiscard]] const TemporaryPools& pools() const noexcept {
        return mPools;
    }
    auto& privateStackOffsets() noexcept {
        return mPrivateStackOffsets;
    }
    std::vector<Operand>& parameters() noexcept {
        return mParameters;
    }
    [[nodiscard]] const std::vector<Operand>& parameters() const noexcept {
        return mParameters;
    }
    auto& blocks() noexcept {
        return mBasicBlocks;
    }
    [[nodiscard]] const auto& blocks() const noexcept {
        return mBasicBlocks;
    }

    void dump(std::ostream& out, const Target& target) const;
    bool verify(std::ostream& err, bool checkTerminator) const;
};

class GMIRZeroStorage final {
    size_t mSize;

public:
    explicit GMIRZeroStorage(size_t size) : mSize{ size } {}
    void dump(std::ostream& out, const Target& target) const;
};

class GMIRDataStorage final {
public:
    using Storage = std::vector<std::variant<std::byte, uint32_t, size_t>>;
    // byte, word, zero
    Storage data;
    bool readOnly;

    void dump(std::ostream& out, const Target& target) const;
};

struct GMIRSymbol final {
    String symbol;
    Linkage linkage;
    size_t alignment;
    std::variant<GMIRFunction, GMIRZeroStorage, GMIRDataStorage, std::monostate> def;

    void dump(std::ostream& out, const Target& target) const;
};

struct GMIRModule final {
    const Target& target;
    std::list<GMIRSymbol> symbols;

    explicit GMIRModule(const Target& targetRef) : target{ targetRef } {}
    void dump(std::ostream& out) const;
};

CMMC_NAMESPACE_END

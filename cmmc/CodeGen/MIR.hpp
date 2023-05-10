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
#include <cstddef>
#include <cstdint>
#include <limits>
#include <list>
#include <memory>
#include <ostream>
#include <string>
#include <type_traits>
#include <unordered_map>
#include <unordered_set>
#include <variant>
#include <vector>

#define CMMC_MIR_NAMESPACE_BEGIN namespace cmmc::mir {
#define CMMC_MIR_NAMESPACE_END }

CMMC_MIR_NAMESPACE_BEGIN

struct CodeGenContext;

class MIRRelocable {
public:
    virtual ~MIRRelocable() = default;
    virtual bool verify(std::ostream& out, const CodeGenContext& ctx) const = 0;
    virtual void dump(std::ostream& out, const CodeGenContext& ctx) const = 0;
};

constexpr uint32_t virtualRegBegin = 0xcc000000;
constexpr bool isVirtualReg(uint32_t x) {
    return x >= virtualRegBegin;
}

class MIROperand final {
    std::variant<uint32_t, uint64_t, MIRRelocable*, double, std::monostate> mOperand;

public:
    [[nodiscard]] size_t hash() const {
        return std::hash<std::decay_t<decltype(mOperand)>>{}(mOperand);
    }
    [[nodiscard]] uint64_t imm() const {
        return std::get<uint64_t>(mOperand);
    }
    [[nodiscard]] bool isImm() const {
        return std::holds_alternative<uint64_t>(mOperand);
    }
    [[nodiscard]] uint32_t reg() const {
        return std::get<uint32_t>(mOperand);
    }
    [[nodiscard]] bool isReg() const {
        return std::holds_alternative<uint32_t>(mOperand);
    }
    [[nodiscard]] MIRRelocable* reloc() const {
        return std::get<MIRRelocable*>(mOperand);
    }
    [[nodiscard]] bool isReloc() const {
        return std::holds_alternative<MIRRelocable*>(mOperand);
    }
    [[nodiscard]] double freq() const {
        return std::get<double>(mOperand);
    }
    [[nodiscard]] bool isFreq() const {
        return std::holds_alternative<double>(mOperand);
    }
};
struct MIROperandHasher final {
    size_t operator()(const MIROperand& operand) const {
        return operand.hash();
    }
};
enum MIRGenericInst : uint32_t {
    // control-flow
    InstJump,    // reloc
    InstBranch,  // cond, reloc, prob
    InstPush,    // idx, val
    InstReturn,  // val
    InstReturnVoid,
    InstUnreachable,
    // Memory
    InstLoad,
    InstStore,
    // Arithmetic
    InstAdd,
    InstSub,
    InstMul,
    InstSDiv,
    InstSRem,
    InstUDiv,
    InstURem,
    InstNeg,
    // Bitwise
    InstAnd,
    InstOr,
    InstXor,
    InstShl,
    InstLShr,
    InstAShr,
    // FP
    InstFAdd,
    InstFSub,
    InstFMul,
    InstFDiv,
    InstFNeg,
    InstFFma,
    // Comparison
    InstSCmp,  // lhs, rhs, op
    InstUCmp,  // lhs, rhs, op
    InstFCmp,  // lhs, rhs, op
    // Conversion
    InstSExt,
    InstZExt,
    InstTrunc,
    InstBitcast,
    InstF2U,
    InstF2S,
    InstU2F,
    InstS2F,
    InstFCast,
    // Misc
    InstGetElementPtr,
    InstCopy,
    InstSelect,

    ISASpecificBegin,
};
class MIRInst final {
    static constexpr uint32_t maxOperandCount = 4;
    uint32_t mOpcode;
    std::array<MIROperand, maxOperandCount> mOperands;

public:
    explicit MIRInst(uint32_t opcode) : mOpcode{ opcode } {}
    [[nodiscard]] uint32_t opcode() const {
        return mOpcode;
    }
};
class MIRFunction;
class MIRBasicBlock final : public MIRRelocable {
    MIRFunction* mFunction;
    double mTripCount;
    std::list<MIRInst> mInsts;

public:
    MIRBasicBlock(MIRFunction* func, double tripCount) : mFunction{ func }, mTripCount{ tripCount } {}
    MIRFunction* getFunction() const {
        return mFunction;
    }
    [[nodiscard]] double getTripCount() const {
        return mTripCount;
    }
    [[nodiscard]] std::list<MIRInst>& instructions() {
        return mInsts;
    }
    [[nodiscard]] const std::list<MIRInst>& instructions() const {
        return mInsts;
    }

    bool verify(std::ostream& out, const CodeGenContext& ctx) const override;
    void dump(std::ostream& out, const CodeGenContext& ctx) const override;
};

class MIRFunction final : public MIRRelocable {
    std::list<std::unique_ptr<MIRBasicBlock>> mBlocks;

public:
    std::list<std::unique_ptr<MIRBasicBlock>>& blocks() {
        return mBlocks;
    }
    const std::list<std::unique_ptr<MIRBasicBlock>>& blocks() const {
        return mBlocks;
    }
    bool verify(std::ostream& out, const CodeGenContext& ctx) const override;
    void dump(std::ostream& out, const CodeGenContext& ctx) const override;
};

class MIRZeroStorage final : public MIRRelocable {
    size_t mSize;

public:
    explicit MIRZeroStorage(size_t size) : mSize{ size } {}
    bool verify(std::ostream& out, const CodeGenContext& ctx) const override;
    void dump(std::ostream& out, const CodeGenContext& ctx) const override;
};

class MIRDataStorage final : public MIRRelocable {
public:
    using Storage = std::vector<std::variant<std::byte, uint32_t, size_t>>;

private:
    // byte, word, zero
    Storage mData;
    bool mReadOnly;

public:
    MIRDataStorage(Storage data, bool readOnly);

    bool verify(std::ostream& out, const CodeGenContext& ctx) const override;
    void dump(std::ostream& out, const CodeGenContext& ctx) const override;
};

struct MIRGlobal final {
    String symbol;
    Linkage linkage;
    size_t alignment;
    std::unique_ptr<MIRRelocable> reloc;

    MIRGlobal(String sym, Linkage globalLinkage, size_t align, std::unique_ptr<MIRRelocable> relocable)
        : symbol{ std::move(sym) }, linkage{ globalLinkage }, alignment{ align }, reloc{ std::move(relocable) } {}

    bool verify(std::ostream& out, const CodeGenContext& ctx) const;
    void dump(std::ostream& out, const CodeGenContext& ctx) const;
};

class Target;
class MIRModule final {
    const Target& mTarget;
    std::vector<std::unique_ptr<MIRGlobal>> mGlobals;

public:
    explicit MIRModule(const Target& target) : mTarget{ target } {}
    std::vector<std::unique_ptr<MIRGlobal>>& globals() {
        return mGlobals;
    }
    const Target& getTarget() const {
        return mTarget;
    }
    bool verify(std::ostream& out, const CodeGenContext& ctx) const;
    void dump(std::ostream& out, const CodeGenContext& ctx) const;
};

CMMC_MIR_NAMESPACE_END

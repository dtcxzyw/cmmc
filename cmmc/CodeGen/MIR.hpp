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
#include <utility>
#include <variant>
#include <vector>

#define CMMC_MIR_NAMESPACE_BEGIN namespace cmmc::mir {
#define CMMC_MIR_NAMESPACE_END }

CMMC_MIR_NAMESPACE_BEGIN

struct CodeGenContext;

class MIRRelocable {
    String mSymbol;

public:
    explicit MIRRelocable(String sym) : mSymbol{ sym } {}
    virtual ~MIRRelocable() = default;
    virtual bool verify(std::ostream& out, const CodeGenContext& ctx) const = 0;
    void dumpAsTarget(std::ostream& out) const;
    virtual void dump(std::ostream& out, const CodeGenContext& ctx) const = 0;
};

constexpr uint32_t virtualRegBegin = 0xcc000000;
constexpr uint32_t stackObjectBegin = 0xdd000000;
constexpr uint32_t invalidReg = 0xdeadbeef;
constexpr bool isVirtualReg(uint32_t x) {
    return (x & virtualRegBegin) == virtualRegBegin;
}
constexpr bool isStackObject(uint32_t x) {
    return (x & stackObjectBegin) == stackObjectBegin;
}

enum class OperandType : uint32_t { Bool, Int8, Int16, Int32, Int64, Float32, Special };

class MIROperand final {
    std::variant<uint32_t, intmax_t, MIRRelocable*, double, std::monostate> mOperand;
    OperandType mType = OperandType::Special;

public:
    MIROperand() = default;
    template <typename T>
    MIROperand(T x, OperandType type) : mOperand{ x }, mType{ type } {}
    [[nodiscard]] const auto& getStorage() const noexcept {
        return mOperand;
    }
    bool operator==(const MIROperand& rhs) const {
        return mOperand == rhs.mOperand;
    }
    [[nodiscard]] OperandType type() const noexcept {
        return mType;
    }
    [[nodiscard]] size_t hash() const {
        return std::hash<std::decay_t<decltype(mOperand)>>{}(mOperand);
    }
    [[nodiscard]] intmax_t imm() const {
        return std::get<intmax_t>(mOperand);
    }
    [[nodiscard]] bool isImm() const {
        return std::holds_alternative<intmax_t>(mOperand);
    }
    template <typename T>
    [[nodiscard]] static MIROperand asImm(T val, OperandType type) {
        static_assert(std::is_integral_v<T> || std::is_enum_v<T>);
        return MIROperand{ static_cast<intmax_t>(val), type };
    }
    [[nodiscard]] static MIROperand asReg(uint32_t reg, OperandType type) {
        return MIROperand{ reg, type };
    }
    [[nodiscard]] static MIROperand asReloc(MIRRelocable* val) {
        return MIROperand{ val, OperandType::Special };
    }
    [[nodiscard]] static MIROperand asFreq(double val) {
        return MIROperand{ val, OperandType::Special };
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
    InstCall,    // reloc
    InstRet,     // val
    InstRetVoid,
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
    // Bitwise
    InstAnd,
    InstOr,
    InstXor,
    InstShl,
    InstLShr,
    InstAShr,
    // Int Unary
    InstNeg,
    // FP
    InstFAdd,
    InstFSub,
    InstFMul,
    InstFDiv,
    InstFNeg,
    InstFFma,
    // Comparison
    InstSCmp,  // dst, lhs, rhs, op
    InstUCmp,  // dst, lhs, rhs, op
    InstFCmp,  // dst, lhs, rhs, op
    // Conversion
    InstSExt,
    InstZExt,
    InstTrunc,
    InstF2U,
    InstF2S,
    InstU2F,
    InstS2F,
    InstFCast,
    // Misc
    InstCopy,
    InstSelect,
    InstLoadGlobalAddress,

    ISASpecificBegin,
};
class MIRInst final {
    static constexpr uint32_t maxOperandCount = 6;
    uint32_t mOpcode;
    std::array<MIROperand, maxOperandCount> mOperands;

public:
    explicit MIRInst(uint32_t opcode) : mOpcode{ opcode } {}
    [[nodiscard]] uint32_t opcode() const {
        return mOpcode;
    }
    [[nodiscard]] const MIROperand& getOperand(uint32_t idx) const {
        return mOperands[idx];
    }
    [[nodiscard]] MIROperand& getOperand(uint32_t idx) {
        return mOperands[idx];
    }
    template <uint32_t Idx>
    MIRInst& setOperand(const MIROperand& operand) {
        static_assert(Idx < maxOperandCount);
        mOperands[Idx] = operand;
        return *this;
    }
};
class MIRFunction;
class MIRBasicBlock final : public MIRRelocable {
    MIRFunction* mFunction;
    double mTripCount;
    std::list<MIRInst> mInsts;

public:
    MIRBasicBlock(String label, MIRFunction* func, double tripCount)
        : MIRRelocable{ label }, mFunction{ func }, mTripCount{ tripCount } {}
    [[nodiscard]] MIRFunction* getFunction() const {
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

struct StackObject final {
    uint32_t size;
    uint32_t alignment;
    int32_t offset;
    bool fixed;
};

class MIRFunction final : public MIRRelocable {
    std::list<std::unique_ptr<MIRBasicBlock>> mBlocks;
    std::vector<StackObject> mStackObjects;
    std::vector<MIROperand> mArgs;

public:
    explicit MIRFunction(String symbol) : MIRRelocable{ symbol } {}
    MIROperand addStackObject(uint32_t size, uint32_t alignment, OperandType ptrType);
    StackObject& getStackObject(uint32_t idx);
    std::list<std::unique_ptr<MIRBasicBlock>>& blocks() {
        return mBlocks;
    }
    std::vector<MIROperand>& args() {
        return mArgs;
    }
    [[nodiscard]] const std::list<std::unique_ptr<MIRBasicBlock>>& blocks() const {
        return mBlocks;
    }
    bool verify(std::ostream& out, const CodeGenContext& ctx) const override;
    void dump(std::ostream& out, const CodeGenContext& ctx) const override;
};

class MIRZeroStorage final : public MIRRelocable {
    size_t mSize;

public:
    explicit MIRZeroStorage(String symbol, size_t size) : MIRRelocable{ symbol }, mSize{ size } {}
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
    MIRDataStorage(String symbol, Storage data, bool readOnly)
        : MIRRelocable{ symbol }, mData{ std::move(data) }, mReadOnly{ readOnly } {}
    [[nodiscard]] bool isReadOnly() const noexcept {
        return mReadOnly;
    }
    bool verify(std::ostream& out, const CodeGenContext& ctx) const override;
    void dump(std::ostream& out, const CodeGenContext& ctx) const override;
};

struct MIRGlobal final {
    Linkage linkage;
    size_t alignment;
    std::unique_ptr<MIRRelocable> reloc;

    MIRGlobal(Linkage globalLinkage, size_t align, std::unique_ptr<MIRRelocable> relocable)
        : linkage{ globalLinkage }, alignment{ align }, reloc{ std::move(relocable) } {}

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
    [[nodiscard]] const Target& getTarget() const {
        return mTarget;
    }
    bool verify(std::ostream& out, const CodeGenContext& ctx) const;
    void dump(std::ostream& out, const CodeGenContext& ctx) const;
};

CMMC_MIR_NAMESPACE_END

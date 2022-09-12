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
#include "cmmc/IR/Value.hpp"
#include "cmmc/Support/Arena.hpp"
#include <ostream>

CMMC_NAMESPACE_BEGIN

class Block;
class Type;

enum class InstructionID {
    // control-flow
    // terminators
    TerminatorBegin,
    Ret,
    Break,
    ConditionalBreak,
    Unreachable,
    TerminatorEnd,
    // memory ops
    MemoryOpBegin,
    Load,
    Store,
    MemoryOpEnd,
    // integer arithmetic ops
    IntegerOpBegin,
    Add,
    Sub,
    Mul,
    SDiv,
    UDiv,
    SRem,
    URem,
    // bitwise ops
    And,
    Or,
    Not,
    Xor,
    Shl,
    LShr,
    AShr,
    IntegerOpEnd,
    // floating point ops
    FloatingPointOpBegin,
    FAdd,
    FSub,
    FMul,
    FDiv,
    FNeg,
    FFma,
    // compare ops
    SCmp,
    UCmp,
    FCmp,
    FloatingPointOpEnd,
    // convert ops
    ConvertOpBegin,
    SExt,
    ZExt,
    Trunc,
    Bitcast,
    F2U,
    F2S,
    U2F,
    S2F,
    ConvertOpEnd,
    // miscellaneous
    Alloc,
    Select,
    Call,
    // Pesudo Ops
    PesudoOpBegin,
    Assume,
    PesudoOpEnd
};

class Instruction : public Value {
    InstructionID mInstID;
    List<Value*> mOperands;
    // bool isVolatile;
public:
    InstructionID getInstID() const noexcept {
        return mInstID;
    }
    virtual void dump(std::ostream& out) const = 0;

#define CMMC_GET_INST_CATEGORY(KIND)                                                       \
    bool is##KIND() const noexcept {                                                       \
        return InstructionID::KIND##Begin < mInstID && mInstID < InstructionID::KIND##End; \
    }

    CMMC_GET_INST_CATEGORY(Terminator);
    CMMC_GET_INST_CATEGORY(MemoryOp);
    CMMC_GET_INST_CATEGORY(IntegerOp);
    CMMC_GET_INST_CATEGORY(FloatingPointOp);
    CMMC_GET_INST_CATEGORY(ConvertOp);
    CMMC_GET_INST_CATEGORY(PesudoOp);

#undef CMMC_GET_INST_CATEGORY
};

class BinaryInstruction final : public Instruction {
public:
    void dump(std::ostream& out) const override;
};

enum class CompareOp { LessThan, LessEqual, GreaterThan, GreaterEqual, Equal, NotEqual };

class IntegerCompareInstruction final : public Instruction {
    bool mIsSigned;
    CompareOp mCompare;

public:
    void dump(std::ostream& out) const override;
};

class FloatingPointCompareInstruction final : public Instruction {
    CompareOp mCompare;

public:
    void dump(std::ostream& out) const override;
};

class UnaryInstruction final : public Instruction {
public:
    void dump(std::ostream& out) const override;
};

class LoadInst final : public Instruction {
    Value* mAddress;

public:
    void dump(std::ostream& out) const override;
};

class StoreInst final : public Instruction {
    Value* mAddress;
    Value* mValue;

public:
    void dump(std::ostream& out) const override;
};

class ConditionalBranch final : public Instruction {
    Block *mIfTarget, *mElseTarget;

public:
    void dump(std::ostream& out) const override;
};

class ReturnInst final : public Instruction {
public:
    void dump(std::ostream& out) const override;
};

class UnreachableInst final : public Instruction {
public:
    void dump(std::ostream& out) const override;
};

class FunctionCall final : public Instruction {
public:
    void dump(std::ostream& out) const override;
};

class SelectInst final : public Instruction {
public:
    void dump(std::ostream& out) const override;
};

class AssumeInst final : public Instruction {
public:
    void dump(std::ostream& out) const override;
};

class StackAllocInst final : public Instruction {
public:
    void dump(std::ostream& out) const override;
};

CMMC_NAMESPACE_END

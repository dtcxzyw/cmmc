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
#include "cmmc/IR/Value.h"
#include "cmmc/Support/List.h"

struct BasicBlock;

enum InstructionID {
    // control-flow
    // terminators
    Ret,
    Break,
    Unreachable,
    // memory ops
    Alloc,
    Load,
    Store,
    // integer arithmetic ops
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
    // floating point ops
    FAdd,
    FSub,
    FMul,
    FDiv,
    FNeg,
    // compare ops
    SCmp,
    UCmp,
    FCmp,
    // convert ops
    SExt,
    ZExt,
    Trunc,
    Bitcast,
    F2U,
    F2S,
    U2F,
    S2F,
    // miscellaneous
    Select,
    Call
};

struct Instruction {
    struct Value value;

    enum InstructionID instID;

    union {
        struct {
            struct Instruction* op1;
            struct Instruction* op2;
            struct Instruction* op3;
        };

        LIST_NODE(Instruction) ops;
    };

    struct BasicBlock* target1;
    struct BasicBlock* target2;

    struct Type* type;

    // bool isVolatile;
};

LIST_NODE_DECL(Instruction, struct Instruction);

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

CMMC_NAMESPACE_BEGIN

class BasicBlock;
class Type;

enum class InstructionID {
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

class Instruction final : public Value {
    InstructionID instID;

    struct {
        Instruction* op1;
        Instruction* op2;
        Instruction* op3;
    };

    List<Instruction*> ops;

    BasicBlock* target1;
    BasicBlock* target2;

    Type* type;

    // bool isVolatile;
};

CMMC_NAMESPACE_END

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
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/StringFlyWeight.hpp>
#include <cstdint>

#include <variant>
#include <vector>

CMMC_NAMESPACE_BEGIN
enum class TACOperandType { Label, Variable, Constant, Pointer };

struct TACOperand final {
    TACOperandType kind;
    std::variant<String, int> val;
};

struct TACLabel final {
    TACOperand label;
};

struct TACFunctionDecl final {
    String symbol;
};

struct TACAssign final {
    TACOperand lhs, rhs;
};

struct TACBinary final {
    InstructionID instruction;
    TACOperand result;
    TACOperand lhs, rhs;
};

struct TACAddr final {
    TACOperand lhs, rhs;
};

struct TACFetch final {
    TACOperand lhs, rhsAddr;
};

struct TACDeref final {
    TACOperand lhsAddr, rhs;
};

struct TACGoto final {
    TACOperand label;
};

struct TACConditionalGoto final {
    CompareOp cmp;
    TACOperand lhs, rhs;
    TACOperand label;
};

struct TACReturn final {
    TACOperand val;
};

struct TACLocalDecl final {
    TACOperand var;
    uint32_t size;
};

struct TACRead final {
    TACOperand var;
};

struct TACWrite final {
    TACOperand val;
};

struct TACArg final {
    TACOperand val;
};

struct TACCall final {
    String callee;
    TACOperand ret;
};

struct TACParam final {
    TACOperand name;
};

using TACInstStorage =
    std::variant<TACLabel, TACFunctionDecl, TACAssign, TACBinary, TACAddr, TACFetch, TACDeref, TACGoto, TACConditionalGoto,
                 TACReturn, TACLocalDecl, TACRead, TACWrite, TACArg, TACCall, TACParam, std::monostate>;

std::vector<TACInstStorage> readTACSeq(std::istream& buf);
CMMC_NAMESPACE_END

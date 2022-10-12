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

#include <cassert>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/TACImpl.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cstdint>
#include <cstring>
#include <string>
#include <string_view>
#include <variant>

CMMC_NAMESPACE_BEGIN

static void split(std::string_view line, std::array<std::string_view, 6>& tokens, uint32_t& count) {
    auto push = [&](std::string_view token) {
        const auto idx = count++;
        if(idx < tokens.size())
            tokens[idx] = token;
        else
            reportUnreachable();
    };

    size_t startPos = 0;
    for(size_t idx = 0; idx < line.size(); ++idx) {
        if(!isgraph(line[idx])) {
            if(startPos != idx) {
                push(line.substr(startPos, idx - startPos));
            }
            startPos = idx + 1;
        }
    }
    if(startPos != line.size())
        push(line.substr(startPos, line.size() - startPos));
}

static TACOperand parseTACOperand(const std::string_view tk) {
    if(tk[0] == '#') {
        return { TACOperandType::Constant, atoi(tk.substr(1).data()) };
    } else if(tk[0] == '&') {
        return { TACOperandType::Pointer, String::get(tk.substr(1)) };
    } else if(tk.size() > 5 && tk.substr(0, 5) == "label") {
        return { TACOperandType::Label, atoi(tk.substr(5).data()) };
    } else {
        return { TACOperandType::Variable, String::get(tk) };
    }
}

static TACInstStorage parseTACLine(std::string_view line) {
    TACOperand t1, t2, t3;
    std::array<std::string_view, 6> tokens;
    uint32_t count = 0;
    split(line, tokens, count);

    if(count == 0)
        return std::monostate{};

    switch(count) {
        case 2: {
            const auto key = tokens[0];
            t1 = parseTACOperand(tokens[1]);
            if(key == "GOTO")
                return TACGoto{ t1 };
            else if(key == "RETURN")
                return TACReturn{ t1 };
            else if(key == "ARG")
                return TACArg{ t1 };
            else if(key == "PARAM")
                return TACParam{ t1 };
            else if(key == "READ")
                return TACRead{ t1 };
            else if(key == "WRITE")
                return TACWrite{ t1 };
            else
                reportUnreachable();
        }
        case 3: {
            const auto key = tokens[0];

            if(key == "LABEL") {
                t1 = parseTACOperand(tokens[1]);
                return TACLabel{ t1 };
            } else if(key == "FUNCTION") {
                return TACFunctionDecl{ String::get(tokens[1]) };
            } else if(key == "DEC") {
                t1 = { TACOperandType::Pointer, String::get(tokens[1]) };
                const auto i = atoi(tokens[2].data());
                return TACLocalDecl{ t1, static_cast<uint32_t>(i) };
            } else {
                if(tokens[0][0] == '*') {
                    t1 = parseTACOperand(tokens[0].substr(1));
                    t2 = parseTACOperand(tokens[2]);
                    return TACDeref{ t1, t2 };
                } else if(tokens[2][0] == '*') {
                    t1 = parseTACOperand(tokens[0]);
                    t2 = parseTACOperand(tokens[2].substr(1));
                    return TACFetch{ t1, t2 };
                } else if(tokens[2][0] == '&') {
                    t1 = parseTACOperand(tokens[0]);
                    t2 = parseTACOperand(tokens[2]);
                    return TACAddr{ t1, t2 };
                } else {
                    t1 = parseTACOperand(tokens[0]);
                    t2 = parseTACOperand(tokens[2]);
                    return TACAssign{ t1, t2 };
                }
                reportUnreachable();
            }
        }
        case 4: {
            t1 = parseTACOperand(tokens[0]);
            return TACCall{ String::get(tokens[3]), t1 };
        }
        case 5: {
            t1 = parseTACOperand(tokens[0]);
            t2 = parseTACOperand(tokens[2]);
            t3 = parseTACOperand(tokens[4]);
            TACBinary binary{ InstructionID::None, t1, t2, t3 };
            switch(tokens[3][0]) {
                case '+':
                    binary.instruction = InstructionID::Add;
                    break;
                case '-':
                    binary.instruction = InstructionID::Sub;
                    break;
                case '*':
                    binary.instruction = InstructionID::Mul;
                    break;
                case '/':
                    binary.instruction = InstructionID::SDiv;
                    break;
                default:
                    reportUnreachable();
            }
            return binary;
        }
        case 6: {
            t1 = parseTACOperand(tokens[1]);
            t2 = parseTACOperand(tokens[3]);
            t3 = parseTACOperand(tokens[5]);

            TACConditionalGoto inst{ CompareOp::Equal, t1, t2, t3 };
            if(tokens[2] == "<")
                inst.cmp = CompareOp::LessThan;
            else if(tokens[2] == ">")
                inst.cmp = CompareOp::GreaterThan;
            else if(tokens[2] == "<=")
                inst.cmp = CompareOp::LessEqual;
            else if(tokens[2] == ">=")
                inst.cmp = CompareOp::GreaterEqual;
            else if(tokens[2] == "!=")
                inst.cmp = CompareOp::NotEqual;
            else if(tokens[2] == "==")
                inst.cmp = CompareOp::Equal;
            else
                reportUnreachable();
            return inst;
        }
        default:
            reportUnreachable();
    }
}

std::vector<TACInstStorage> readTACSeq(std::istream& buf) {
    std::vector<TACInstStorage> seq;
    std::string line;
    while(std::getline(buf, line))
        seq.push_back(parseTACLine(line.data()));
    return seq;
}

CMMC_NAMESPACE_END

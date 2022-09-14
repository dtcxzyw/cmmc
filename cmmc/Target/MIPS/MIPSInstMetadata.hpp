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

#ifndef INST
#define INST(ID, MNEMONIC, FORMAT, OPCODE, FUNCT, FMT, FT)
#endif

#define R_FORMAT(ID, MNEMONIC, FUNCT) INST(ID, MNEMONIC, R, 0, FUNCT, 0, 0)
#define I_FORMAT(ID, MNEMONIC, OPCODE) INST(ID, MNEMONIC, I, OPCODE, 0, 0, 0)
#define J_FORMAT(ID, MNEMONIC, OPCODE) INST(ID, MNEMONIC, J, OPCODE, 0, 0, 0)
#define FR_FORMAT(ID, MNEMONIC, FUNCT, FMT) INST(ID, MNEMONIC, FR, 0x11, FUNCT, FMT, 0)
#define FI_FORMAT(ID, MNEMONIC, FMT, FT) INST(ID, MNEMONIC, FI, 0x11, 0, FMT, FT)

I_FORMAT(AddImmU, "addiu", 0x9)
R_FORMAT(AddU, "addu", 0x21)
R_FORMAT(And, "and", 0x24)
I_FORMAT(AndImm, "andi", 0xc)
I_FORMAT(BranchEq, "beq", 0x4)
I_FORMAT(BranchNeq, "bne", 0x5)
J_FORMAT(Jump, "j", 0x2)
J_FORMAT(JumpAndLink, "jal", 0x3)
R_FORMAT(JumpRegister, "jr", 0x8)
I_FORMAT(LoadByteU, "lbu", 0x24)
I_FORMAT(LoadHalfWordU, "lhu", 0x25)
I_FORMAT(LoadUpperImm, "lui", 0xf)
I_FORMAT(LoadWord, "lw", 0x23)
R_FORMAT(Nor, "nor", 0x27)
R_FORMAT(Or, "or", 0x25)
R_FORMAT(OrImm, "ori", 0xd)
R_FORMAT(SetLessThan, "slt", 0x2a)
I_FORMAT(SetLessThanImm, "slti", 0xa)
I_FORMAT(SetLessThanImmU, "sltiu", 0xb)
R_FORMAT(SetLessThanU, "sltu", 0x2b)
R_FORMAT(ShiftLeftLogical, "sll", 0x0)
R_FORMAT(ShiftRightLogical, "srl", 0x2)
I_FORMAT(StoreByte, "sb", 0x28)
I_FORMAT(StoreHalfWord, "sh", 0x29)
I_FORMAT(StoreWord, "sw", 0x2b)
R_FORMAT(Sub, "sub", 0x22)

FI_FORMAT(BranchOnFPTrue, "bclt", 0x8, 0x1)
FI_FORMAT(BranchOnFPFalse, "bclf", 0x8, 0x0)
R_FORMAT(Div, "div", 0x1a)
R_FORMAT(DivU, "divu", 0x1b)
R_FORMAT(MulU, "multu", 0x19)
FR_FORMAT(FAddS, "add.s", 0x0, 0x10)
FR_FORMAT(FAddD, "add.d", 0x0, 0x11)
FR_FORMAT(FCmpEqS, "c.eq.s", 0x32, 0x10)
FR_FORMAT(FCmpEqD, "c.eq.d", 0x32, 0x11)
FR_FORMAT(FCmpLtS, "c.lt.s", 0x3c, 0x10)
FR_FORMAT(FCmpLtD, "c.lt.d", 0x3c, 0x11)
FR_FORMAT(FCmpLeS, "c.le.s", 0x3e, 0x10)
FR_FORMAT(FCmpLeD, "c.le.d", 0x3e, 0x11)
FR_FORMAT(FDivS, "div.s", 0x3, 0x10)
FR_FORMAT(FDivD, "div.d", 0x3, 0x11)
FR_FORMAT(FMulS, "mul.s", 0x2, 0x10)
FR_FORMAT(FMulD, "mul.d", 0x2, 0x11)
FR_FORMAT(FSubS, "sub.s", 0x1, 0x10)
FR_FORMAT(FSubD, "sub.d", 0x1, 0x11)
I_FORMAT(LoadS, "lwc1", 0x31)
I_FORMAT(LoadD, "ldc1", 0x35)
I_FORMAT(StoreS, "swc1", 0x39)
I_FORMAT(StoreD, "sdc1", 0x3d)

#undef R_FORMAT
#undef I_FORMAT
#undef FR_FORMAT
#undef FI_FORMAT

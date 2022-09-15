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
#define INST(ID, MNEMONIC, FORMAT, OPCODE, U20)
#endif

#define R_FORMAT(ID, MNEMONIC, OPCODE, FUNCT3, FUNCT7) INST(ID, MNEMONIC, R, OPCODE, FUNCT7<<13 | FUNCT3)
#define I_FORMAT(ID, MNEMONIC, OPCODE, FUNCT3) INST(ID, MNEMONIC, I, OPCODE, FUNCT3)
#define S_FORMAT(ID, MNEMONIC, OPCODE, FUNCT3) INST(ID, MNEMONIC, S, OPCODE, FUNCT3)
#define B_FORMAT(ID, MNEMONIC, OPCODE, FUNCT3) INST(ID, MNEMONIC, B, OPCODE, FUNCT3)
#define U_FORMAT(ID, MNEMONIC, OPCODE) INST(ID, MNEMONIC, U, OPCODE, 0)
#define J_FORMAT(ID, MNEMONIC, OPCODE) INST(ID, MNEMONIC, J, OPCODE, 0)
#define R4_FORMAT(ID, MNEMONIC, OPCODE, FUNCT2) INST(ID, MNEMONIC, R4, OPCODE, FUNCT2<<13 | FUNCT3)

// RV32I
U_FORMAT(LoadUpperImm, "lui", 0x37);
U_FORMAT(AddUpperImmPC, "auipc", 0x17);
J_FORMAT(JumpAndLink, "jal", 0x6f);
I_FORMAT(JumpAndLinkReg, "jal", 0x67, 0x0);
B_FORMAT(BranchEq, "beq", 0x63, 0x0);
B_FORMAT(BranchNeq, "bne", 0x63, 0x1);
B_FORMAT(BranchLt, "blt", 0x63, 0x4);
B_FORMAT(BranchGeq, "bge", 0x63, 0x5);
B_FORMAT(BranchLtU, "bltu", 0x63, 0x6);
B_FORMAT(BranchGeqU, "bgeu", 0x63, 0x7);
I_FORMAT(LoadByte, "lb", 0x03, 0x0);
I_FORMAT(LoadHalfWord, "lh", 0x03, 0x1);
I_FORMAT(LoadWord, "lw", 0x03, 0x2);
I_FORMAT(LoadByteU, "lbu", 0x03, 0x4);
I_FORMAT(LoadHalfWordU, "lhu", 0x03, 0x5);
S_FORMAT(StoreByte, "sb", 0x23, 0x0);
S_FORMAT(StoreHalf, "sh", 0x23, 0x1);
S_FORMAT(StoreWord, "sw", 0x23, 0x2);
I_FORMAT(AddImm, "addi", 0x13, 0x0);
I_FORMAT(SetLtImm, "slti", 0x13, 0x2);
I_FORMAT(SetLtImmU, "sltiu", 0x13, 0x3);
I_FORMAT(XorImm, "xori", 0x13, 0x4);
I_FORMAT(OrImm, "ori", 0x13, 0x6);
I_FORMAT(AndImm, "andi", 0x13, 0x7);
R_FORMAT(ShiftLeftLogicalImm, "slli", 0x13, 0x1, 0x00);
R_FORMAT(ShiftRightLogicalImm, "srli", 0x13, 0x5, 0x00);
R_FORMAT(ShiftRightArithmeticImm, "srai", 0x13, 0x5, 0x20);
R_FORMAT(Add, "add", 0x33, 0x0, 0x00);
R_FORMAT(Sub, "sub", 0x33, 0x0, 0x20);
R_FORMAT(ShiftLeftLogical, "sll", 0x33, 0x1, 0x00);
R_FORMAT(SetLt, "slt", 0x33, 0x2, 0x00);
R_FORMAT(SetLtU, "sltu", 0x33, 0x3, 0x00);
R_FORMAT(Xor, "xor", 0x33, 0x4, 0x00);
R_FORMAT(ShiftRightLogical, "srl", 0x33, 0x5, 0x00);
R_FORMAT(ShiftRightArithmetic, "sra", 0x33, 0x5, 0x20);
R_FORMAT(Or, "or", 0x33, 0x6, 0x0);
R_FORMAT(And, "and", 0x33, 0x7, 0x0);
I_FORMAT(Fence, "fence", 0x0f, 0x0);
I_FORMAT(Ecall, "ecall", 0x73, 0x00);
I_FORMAT(Ebreak, "ebreak", 0x73, 0x01);

// RV32M
R_FORMAT(Mul, "mul", 0x33, 0x0, 0x01);
R_FORMAT(MulHalfWord, "mulh", 0x33, 0x1, 0x01);
R_FORMAT(MulHalfWordSU, "mulhsu", 0x33, 0x2, 0x01);
R_FORMAT(MulHalfWordU, "mulhu", 0x33, 0x3, 0x01);
R_FORMAT(Div, "div", 0x33, 0x4, 0x01);
R_FORMAT(DivU, "divu", 0x33, 0x5, 0x01);
R_FORMAT(Rem, "rem", 0x33, 0x6, 0x01);
R_FORMAT(RemU, "remu", 0x33, 0x7, 0x01);

// RV32F
I_FORMAT(FLoadWord, "flw", 0x07, 0x2);
S_FORMAT(FStoreWord, "fsw", 0x27, 0x2);
R4_FORMAT(FMAddS, "fmadd.s", 0x43, 0x0);
R4_FORMAT(FMSubS, "fmsub.s", 0x47, 0x0);
R4_FORMAT(FNMAddS, "fnmadd.s", 0x4b, 0x0);
R4_FORMAT(FNMSubS, "fnmsub.s", 0x4f, 0x0);
R_FORMAT(FAddS, "fadd.s", 0x53, 0x0, 0x00);
R_FORMAT(FSubS, "fsub.s", 0x53, 0x0, 0x04);
R_FORMAT(FMulS, "fmul.s", 0x53, 0x0, 0x08);
R_FORMAT(FDivS, "fdiv.s", 0x53, 0x0, 0x0c);
R_FORMAT(FSqrtS, "fsqrt.s", 0x53, 0x0, 0x2c);
R_FORMAT(FSignInjS, "fsgnj.s", 0x53, 0x0, 0x10);
R_FORMAT(FSignInjNS, "fsgnjn.s", 0x53, 0x1, 0x10);
R_FORMAT(FSignInjXS, "fsgnjx.s", 0x53, 0x2, 0x10);
R_FORMAT(FMinS, "fmin.s", 0x53, 0x0, 0x14);
R_FORMAT(FMaxS, "fmax.s", 0x53, 0x1, 0x14);
R_FORMAT(FCvtWS, "fcvt.w.s", 0x53, 0x0, 0x60);
R_FORMAT(FCvtWUS, "fcvt.wu.s", 0x53, 0x0, 0x60);
R_FORMAT(FMvXW, "fmv.x.w", 0x53, 0x0, 0x70);
R_FORMAT(FEqS, "feq.s", 0x53, 0x2, 0x50);
R_FORMAT(FLtS, "flt.s", 0x53, 0x1, 0x50);
R_FORMAT(FLeS, "fle.s", 0x53, 0x0, 0x50);
R_FORMAT(FClassS, "fclass.s", 0x53, 0x1, 0x70);
R_FORMAT(FCvtSW, "fcvt.s.w", 0x53, 0x0, 0x68);
R_FORMAT(FCvtSWU, "fcvt.s.wu", 0x53, 0x0, 0x68);
R_FORMAT(FMvWX, "fmv.w.x", 0x53, 0x0, 0x78);

// RV32D
I_FORMAT(FLoadWord, "fld", 0x07, 0x3);
S_FORMAT(FStoreWord, "fsd", 0x27, 0x3);
R4_FORMAT(FMAddD, "fmadd.d", 0x43, 0x1);
R4_FORMAT(FMSubD, "fmsub.d", 0x47, 0x1);
R4_FORMAT(FNMAddD, "fnmadd.d", 0x4b, 0x1);
R4_FORMAT(FNMSubD, "fnmsub.d", 0x4f, 0x1);
R_FORMAT(FAddD, "fadd.d", 0x53, 0x0, 0x01);
R_FORMAT(FSubD, "fsub.d", 0x53, 0x0, 0x05);
R_FORMAT(FMulD, "fmul.d", 0x53, 0x0, 0x09);
R_FORMAT(FDivD, "fdiv.d", 0x53, 0x0, 0x0d);
R_FORMAT(FSqrtD, "fsqrt.d", 0x53, 0x0, 0x2d);
R_FORMAT(FSignInjD, "fsgnj.d", 0x53, 0x0, 0x11);
R_FORMAT(FSignInjND, "fsgnjn.d", 0x53, 0x1, 0x11);
R_FORMAT(FSignInjXD, "fsgnjx.d", 0x53, 0x2, 0x11);
R_FORMAT(FMinD, "fmin.d", 0x53, 0x0, 0x15);
R_FORMAT(FMaxD, "fmax.d", 0x53, 0x1, 0x15);
R_FORMAT(FCvtSD, "fcvt.s.d", 0x53, 0x0, 0x10);
R_FORMAT(FCvtDS, "fcvt.d.s", 0x53, 0x0, 0x11);
R_FORMAT(FEqD, "feq.d", 0x53, 0x2, 0x51);
R_FORMAT(FLtD, "flt.d", 0x53, 0x1, 0x51);
R_FORMAT(FLeD, "fle.d", 0x53, 0x0, 0x51);
R_FORMAT(FClassD, "fclass.d", 0x53, 0x1, 0x71);
R_FORMAT(FCvtWD, "fcvt.w.d", 0x53, 0x0, 0x61);
R_FORMAT(FCvtWUD, "fcvt.wu.d", 0x53, 0x0, 0x61);
R_FORMAT(FCvtDW, "fcvt.d.w", 0x53, 0x0, 0x69);
R_FORMAT(FCvtDWU, "fcvt.d.wu", 0x53, 0x0, 0x69);

// RVZicsr
I_FORMAT(CSRRW, "csrrw", 0x73, 0x1);
I_FORMAT(CSRRS, "csrrs", 0x73, 0x2);
I_FORMAT(CSRRC, "csrrc", 0x73, 0x3);
I_FORMAT(CSRRWImm, "csrrwi", 0x73, 0x5);
I_FORMAT(CSRRSImm, "csrrsi", 0x73, 0x6);
I_FORMAT(CSRRCImm, "csrrci", 0x73, 0x7);

#undef R_FORMAT
#undef I_FORMAT
#undef S_FORMAT
#undef B_FORMAT
#undef U_FORMAT
#undef J_FORMAT
#undef R4_FORMAT

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
%{
#include "cmmc/Frontend/Lexer.h"
void yyerror(const char*);
%}
%token INT FLOAT CHAR STRING // Literals
%token ID
// Control Flow Keywords
%token IF ELSE WHILE DO FOR CONTINUE BREAK RETURN GOTO SWITCH CASE
// Aggregate Keywords
%token STRUCT UNION
// Unary/Binary Operators
%token ADD SUB MUL DIV MOD 
%token LNOT BNOT LAND BAND LOR BOR XOR
%token LT GT LE GE EQ NEQ
%token ASSIGN
// Miscellaneous
// . : , #
%token DOT SEMI COMMA SHARP
// ( ) [ ] { }
%token LP RP LB RB LC RC
%%
Program: ExtDefList;
ExtDefList: ExtDef ExtDefList
|
;
ExtDef: Specifier ExtDecList SEMI
| Specifier SEMI
| Specifier FunDec CompSt
;
ExtDecList: VarDec
| VarDec COMMA ExtDecList
;
/* specifier */
Specifier: TYPE
| StructSpecifier
;
StructSpecifier: STRUCT ID LC DefList RC
| STRUCT ID
;
TYPE: ID
;
/* declarator */
VarDec: ID
| VarDec LB INT RB
;
FunDec: ID LP VarList RP
| ID LP RP
;
VarList: ParamDec COMMA VarList
| ParamDec
;
ParamDec: Specifier VarDec
;
/* statement */
CompSt: LC DefList StmtList RC
StmtList: Stmt StmtList
|
;
Stmt: Exp SEMI
| CompSt
| RETURN Exp SEMI
| IF LP Exp RP Stmt
| IF LP Exp RP Stmt ELSE Stmt
| WHILE LP Exp RP Stmt
;
/* local definition */
DefList: Def DefList
|
;
Def: Specifier DecList SEMI
;
DecList: Dec
| Dec COMMA DecList
;
Dec: VarDec
| VarDec ASSIGN Exp
;
/* Expression */
Exp: Exp ASSIGN Exp
| Exp LAND Exp
| Exp LOR Exp
| Exp LT Exp
| Exp LE Exp
| Exp GT Exp
| Exp GE Exp
| Exp NEQ Exp
| Exp EQ Exp
| Exp ADD Exp
| Exp SUB Exp
| Exp MUL Exp
| Exp DIV Exp
| LP Exp RP
| SUB Exp
| LNOT Exp
| ID LP Args RP
| ID LP RP
| Exp LB Exp RB
| Exp DOT ID
| ID
| INT
| FLOAT
| CHAR
;
Args: Exp COMMA Args
| Exp
;
%%
void yyerror(const char *s){
fprintf(stderr, "%s\n", s);
}
void parse() {
yyparse();
}

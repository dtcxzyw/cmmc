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

%defines
%skeleton "lalr1.cc"
%locations
%define api.token.constructor
%define api.value.type variant
%define parse.assert
%define parse.trace

%code requires {
  #include "cmmc/Support/Arena.hpp"
  namespace cmmc {
    class Driver;
  }
}
%param { cmmc::Driver& driver }
%code {
#include "cmmc/Frontend/Driver.hpp"
using namespace cmmc;
}

%token END 0 "End of file"
// Literals
%token <uintmax_t> INT "IntegerOpt"
%token <double> FLOAT "Float"
%token <char> CHAR "Char"
%token <std::string> String "String"

%token <std::string> ID "Identifier"
// Control Flow Keywords
%token IF ELSE WHILE DO FOR CONTINUE BREAK RETURN GOTO SWITCH CASE
// Aggregate Keywords
%token STRUCT UNION
// Unary/Binary Operators
%token ADD SUB MUL DIV REM
%token LNOT BNOT LAND BAND LOR BOR XOR
%token LT GT LE GE EQ NEQ
%token ASSIGN
// Miscellaneous
// . ; , #
%token DOT SEMI COMMA SHARP
// ( ) [ ] { }
%token LP RP LB RB LC RC
%%
Program: ExtDefList END { driver.markEnd(); }
;
ExtDefList: ExtDef ExtDefList
| %empty
;
ExtDef: Specifier ExtDecList SEMI
| Specifier SEMI
| Specifier FunDec CompSt { $<FunctionDeclaration>2.retType = $<TypeRef>1; driver.addFunctionDef($<FunctionDeclaration>2, $<StatementBlock>3); }
;
ExtDecList: VarDec
| VarDec COMMA ExtDecList
;
/* specifier */
Specifier: ID { $<TypeRef>$ = { CMMC_STR($<std::string>1), TypeRef::LookupSpace::Default }; }
| StructSpecifier { $<TypeRef>$ = $<TypeRef>1; }
;
StructSpecifier: STRUCT ID LC DefList RC
| STRUCT ID { $<TypeRef>$ = { CMMC_STR($<std::string>2), TypeRef::LookupSpace::Struct }; }
;
/* declarator */
VarDec: ID { $<std::string>$ = $<std::string>1; }
// | VarDec LB INT RB
;
FunDec: ID LP VarList RP { $<FunctionDeclaration>$.symbol = CMMC_STR($<std::string>1); $<FunctionDeclaration>$.args = $<ArgList>3;  }
| ID LP RP { $<FunctionDeclaration>$.symbol = CMMC_STR($<std::string>1); }
;
VarList: ParamDec COMMA VarList { CMMC_CONCAT_PACK($<ArgList>$, $<NamedArg>1, $<ArgList>3); }
| ParamDec { $<ArgList>$ = CMMC_SINGLE_PACK(NamedArg, $<NamedArg>1); }
;
ParamDec: Specifier VarDec { $<NamedArg>$ = { $<TypeRef>1, CMMC_STR($<std::string>2) }; }
;
/* statement */
CompSt: LC DefList StmtList RC
StmtList: Stmt StmtList { CMMC_CONCAT_PACK($<ExprPack>$, $<Expr*>1, $<ExprPack>2); }
| %empty { $<ExprPack>$ = CMMC_EMPTY_PACK(Expr*); }
;
Stmt: Exp SEMI { $<Expr*>$ = $<Expr*>1; }
| CompSt { $<Expr*>$ = $<Expr*>1; }
| RETURN Exp SEMI { $<Expr*>$ = CMMC_RETURN($<Expr*>1); }
| RETURN SEMI { $<Expr*>$ = CMMC_RETURN(nullptr); }
| IF LP Exp RP Stmt { $<Expr*>$ = CMMC_IF($<Expr*>3, $<Expr*>5); }
| IF LP Exp RP Stmt ELSE Stmt { $<Expr*>$ = CMMC_IF_ELSE($<Expr*>3, $<Expr*>5, $<Expr*>7); }
// | WHILE LP Exp RP Stmt { $<Expr*>$ = CMMC_WHILE($<Expr*>3, $<Expr*>5); }
;
/* local definition */
DefList: Def DefList
| %empty
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
Exp : Exp ASSIGN Exp { $<Expr*>$ = CMMC_BINARY_OP(Assign, $<Expr*>1, $<Expr*>3); }
| Exp LAND Exp { $<Expr*>$ = CMMC_BINARY_OP(LogicalAnd, $<Expr*>1, $<Expr*>3); }
| Exp LOR Exp { $<Expr*>$ = CMMC_BINARY_OP(LogicalOr, $<Expr*>1, $<Expr*>3); }
| Exp LT Exp { $<Expr*>$ = CMMC_BINARY_OP(LessThan, $<Expr*>1, $<Expr*>3); }
| Exp LE Exp { $<Expr*>$ = CMMC_BINARY_OP(LessEqual, $<Expr*>1, $<Expr*>3); }
| Exp GT Exp { $<Expr*>$ = CMMC_BINARY_OP(GreaterThan, $<Expr*>1, $<Expr*>3); }
| Exp GE Exp { $<Expr*>$ = CMMC_BINARY_OP(GreaterEqual, $<Expr*>1, $<Expr*>3); }
| Exp NEQ Exp { $<Expr*>$ = CMMC_BINARY_OP(NotEqual, $<Expr*>1, $<Expr*>3); }
| Exp EQ Exp { $<Expr*>$ = CMMC_BINARY_OP(Equal, $<Expr*>1, $<Expr*>3); }
| Exp ADD Exp { $<Expr*>$ = CMMC_BINARY_OP(Add, $<Expr*>1, $<Expr*>3); }
| Exp SUB Exp { $<Expr*>$ = CMMC_BINARY_OP(Sub, $<Expr*>1, $<Expr*>3); }
| Exp MUL Exp { $<Expr*>$ = CMMC_BINARY_OP(Mul, $<Expr*>1, $<Expr*>3); }
| Exp DIV Exp { $<Expr*>$ = CMMC_BINARY_OP(Div, $<Expr*>1, $<Expr*>3); }
| Exp REM Exp { $<Expr*>$ = CMMC_BINARY_OP(Rem, $<Expr*>1, $<Expr*>3); }
| LP Exp RP { $<Expr*>$ = $<Expr*>2; }
| SUB Exp { $<Expr*>$ = CMMC_UNARY_OP(Neg, $<Expr*>2); }
| LNOT Exp { $<Expr*>$ = CMMC_UNARY_OP(LogicalNot, $<Expr*>2); }
| Exp LP Args RP { $<Expr*>$ = CMMC_CALL($<Expr*>1, $<ExprPack>3); }
| Exp LP RP { $<Expr*>$ = CMMC_CALL($<Expr*>1, CMMC_EMPTY_PACK(Expr*)); }
// | Exp LB Exp RB
// | Exp DOT ID
| ID { $<Expr*>$ = CMMC_ID(CMMC_STR($<std::string>1)); }
| INT { $<Expr*>$ = CMMC_INT($<uintmax_t>1, 32, true); }
// | FLOAT
// | CHAR
;
Args: Exp COMMA Args { CMMC_CONCAT_PACK($<ExprPack>$, $<Expr*>1, $<ExprPack>3); }
| Exp { $<ExprPack>$ = CMMC_SINGLE_PACK(Expr*, $<Expr*>1); }
;
%%
void yy::parser::error(const location_type& l, const std::string& m) {
  std::cerr << l << ": " << m << '\n';
}

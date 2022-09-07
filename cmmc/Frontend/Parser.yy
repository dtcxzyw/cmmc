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
%define parse.error verbose

%code requires {
  #include "cmmc/Support/Arena.hpp"
  #include "cmmc/Frontend/Driver.hpp"
  using namespace cmmc;
}
%param { cmmc::DriverImpl& driver }
%code {

}

%token END 0 "End of file"
// Literals
%token <uintmax_t> INT "Integer"
%token <double> FLOAT "Float"
%token <char> CHAR "Char"
%token <StringAST> String "String"

%token <StringAST> ID "Identifier"
%token <StringAST> TYPE "Type"

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

%type <TypeRef> Specifier;
%type <TypeRef> StructSpecifier;
%type <StringAST> VarDec;
%type <FunctionDeclaration> FunDec;
%type <ArgList> VarList;
%type <NamedArg> ParamDec;
%type <ExprPack> CompSt;
%type <ExprPack> StmtList;
%type <Expr*> Stmt;
%type <Expr*> Exp;
%type <ExprPack> Args;

%start Program;

Program: ExtDefList END { driver.markEnd(); CMMC_NONTERMINAL(Program, 1); }
;
ExtDefList: ExtDef ExtDefList { CMMC_NONTERMINAL(ExtDefList, 2); }
| %empty { CMMC_EMPTY(); }
;
ExtDef: Specifier ExtDecList SEMI { CMMC_NONTERMINAL(ExtDef, 3); }
| Specifier SEMI { CMMC_NONTERMINAL(ExtDef, 2); }
| Specifier FunDec CompSt { $2.retType = $1; driver.addFunctionDef({$2, $3}); CMMC_NONTERMINAL(ExtDef, 3); }
;
ExtDecList: VarDec { CMMC_NONTERMINAL(ExtDecList, 1); }
| VarDec COMMA ExtDecList { CMMC_NONTERMINAL(ExtDecList, 3); }
;
/* specifier */
Specifier: TYPE { $$ = { $1, TypeRef::LookupSpace::Default }; CMMC_NONTERMINAL(Specifier, 1); }
| StructSpecifier { $$ = $1; CMMC_NONTERMINAL(Specifier, 1); }
;
StructSpecifier: STRUCT ID LC DefList RC { CMMC_NONTERMINAL(StructSpecifier, 5); }
| STRUCT ID { $$ = { $2, TypeRef::LookupSpace::Struct }; CMMC_NONTERMINAL(StructSpecifier, 2); }
;
/* declarator */
VarDec: ID { $$ = $1; CMMC_NONTERMINAL(VarDec, 1); }
| VarDec LB INT RB { CMMC_NONTERMINAL(VarDec, 4); }
;
FunDec: ID LP VarList RP { $$.symbol = $1; $$.args = $3; CMMC_NONTERMINAL(FunDec, 4); }
| ID LP RP { $$.symbol = $1; CMMC_NONTERMINAL(FunDec, 3); }
;
VarList: ParamDec COMMA VarList { CMMC_CONCAT_PACK($$, $1, $3); CMMC_NONTERMINAL(VarList, 3); }
| ParamDec { $$ = { $1 }; CMMC_NONTERMINAL(VarList, 1); }
;
ParamDec: Specifier VarDec { $$ = { $1, $2 }; CMMC_NONTERMINAL(ParamDec, 2); }
;
/* statement */
CompSt: LC DefList StmtList RC { $$ = $3; CMMC_NONTERMINAL(CompSt, 4); }
StmtList: Stmt StmtList { CMMC_CONCAT_PACK($$, $1, $2); CMMC_NONTERMINAL(StmtList, 2); }
| %empty { $$ = {}; CMMC_EMPTY();}
;
Stmt: Exp SEMI { $$ = $1; CMMC_NONTERMINAL(Stmt, 2); }
| CompSt { $$ = CMMC_SCOPE($1); CMMC_NONTERMINAL(Stmt, 1); }
| RETURN Exp SEMI { $$ = CMMC_RETURN($2); CMMC_NONTERMINAL(Stmt, 3); }
| RETURN SEMI { $$ = CMMC_RETURN(nullptr); CMMC_NONTERMINAL(Stmt, 2); }
| IF LP Exp RP Stmt { $$ = CMMC_IF($3, $5); CMMC_NONTERMINAL(Stmt, 5); }
| IF LP Exp RP Stmt ELSE Stmt { $$ = CMMC_IF_ELSE($3, $5, $7); CMMC_NONTERMINAL(Stmt, 7); }
// | WHILE LP Exp RP Stmt { CMMC_EXTENSION(While); $$ = CMMC_WHILE($3, $5); CMMC_NONTERMINAL(Stmt, 5); }
;
/* local definition */
DefList: Def DefList { CMMC_NONTERMINAL(DefList, 2); }
| %empty { CMMC_EMPTY(); }
;
Def: Specifier DecList SEMI { CMMC_NONTERMINAL(Def, 3); }
;
DecList: Dec { CMMC_NONTERMINAL(DecList, 1); }
| Dec COMMA DecList { CMMC_NONTERMINAL(DecList, 3); }
;
Dec: VarDec { CMMC_NONTERMINAL(Dec, 1); }
| VarDec ASSIGN Exp { CMMC_NONTERMINAL(Dec, 3); }
;
/* Expression */
Exp : Exp ASSIGN Exp { $$ = CMMC_BINARY_OP(Assign, $1, $3); CMMC_NONTERMINAL(Expr, 3); }
| Exp LAND Exp { $$ = CMMC_BINARY_OP(LogicalAnd, $1, $3); CMMC_NONTERMINAL(Expr, 3); }
| Exp LOR Exp { $$ = CMMC_BINARY_OP(LogicalOr, $1, $3); CMMC_NONTERMINAL(Expr, 3); }
| Exp LT Exp { $$ = CMMC_BINARY_OP(LessThan, $1, $3); CMMC_NONTERMINAL(Expr, 3); }
| Exp LE Exp { $$ = CMMC_BINARY_OP(LessEqual, $1, $3); CMMC_NONTERMINAL(Expr, 3); }
| Exp GT Exp { $$ = CMMC_BINARY_OP(GreaterThan, $1, $3); CMMC_NONTERMINAL(Expr, 3); }
| Exp GE Exp { $$ = CMMC_BINARY_OP(GreaterEqual, $1, $3); CMMC_NONTERMINAL(Expr, 3); }
| Exp NEQ Exp { $$ = CMMC_BINARY_OP(NotEqual, $1, $3); CMMC_NONTERMINAL(Expr, 3); }
| Exp EQ Exp { $$ = CMMC_BINARY_OP(Equal, $1, $3); CMMC_NONTERMINAL(Expr, 3); }
| Exp ADD Exp { $$ = CMMC_BINARY_OP(Add, $1, $3); CMMC_NONTERMINAL(Expr, 3); }
| Exp SUB Exp { $$ = CMMC_BINARY_OP(Sub, $1, $3); CMMC_NONTERMINAL(Expr, 3); }
| Exp MUL Exp { $$ = CMMC_BINARY_OP(Mul, $1, $3); CMMC_NONTERMINAL(Expr, 3); }
| Exp DIV Exp { $$ = CMMC_BINARY_OP(Div, $1, $3); CMMC_NONTERMINAL(Expr, 3); }
| Exp REM Exp { CMMC_EXTENSION(Remainder); $$ = CMMC_BINARY_OP(Rem, $1, $3); CMMC_NONTERMINAL(Expr, 3); }
| LP Exp RP { $$ = $2; CMMC_NONTERMINAL(Expr, 3); }
| SUB Exp { $$ = CMMC_UNARY_OP(Neg, $2); CMMC_NONTERMINAL(Expr, 2); }
| LNOT Exp { $$ = CMMC_UNARY_OP(LogicalNot, $2); CMMC_NONTERMINAL(Expr, 3); }
| Exp LP Args RP { $$ = CMMC_CALL($1, $3); CMMC_NONTERMINAL(Expr, 4); }
| Exp LP RP { $$ = CMMC_CALL($1, ExprPack{}); CMMC_NONTERMINAL(Expr, 3); }
| Exp LB Exp RB { CMMC_NONTERMINAL(Expr, 4); }
| Exp DOT ID { CMMC_NONTERMINAL(Expr, 3); }
| ID { $$ = CMMC_ID($1); CMMC_NONTERMINAL(Expr, 1); }
| INT { $$ = CMMC_INT($1, 32, true); CMMC_NONTERMINAL(Expr, 1); }
// | FLOAT
| CHAR { $$ = CMMC_CHAR($1); CMMC_NONTERMINAL(Expr, 1); }
;
Args: Exp COMMA Args { CMMC_CONCAT_PACK($$, $1, $3); CMMC_NONTERMINAL(Args, 3); }
| Exp { $$ = { $1 }; CMMC_NONTERMINAL(Args, 1); }
;
%%
void yy::parser::error(const location_type& l, const std::string& m) {
  std::cerr << l << ": " << m << '\n';
}
